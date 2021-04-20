import Pool
import Player
import MinionVector
import Agent
import AgentHelper
import Combat
import random
from datetime import datetime

import tensorflow as tf
from tf_agents.trajectories.time_step import StepType

DISCOUNT_FACTOR = 0.99

EPOCHS = 1000
TRAIN_EPOCHS = 2
POLICY_SAVE_FREQUENCY = 100
AVERAGE_RETURN_EPOCHS = 20
AMOUNT_OF_PLAYERS = 8

minion_vectors = MinionVector.MinionVector()
agent_helper = AgentHelper.AgentHelper()

agents = []
experience = {}
total_rewards = {}

for i in range(0, AMOUNT_OF_PLAYERS):
    # agents.append(Agent.Agent(agent_number=(i + 1), load_prev=agent_helper.is_agent_saved(i + 1)))
    agents.append(Agent.Agent())
    experience[i] = []
    total_rewards[i] = []

filepath = datetime.now().strftime('%m-%d-%Y-%H-%M-%S')
summary_writer = tf.summary.create_file_writer(f'results/logs/{filepath}/')

i = 0
while i < EPOCHS:
    try:
        # Generate new game (Pool/Players)
        pool = Pool.Pool()

        players = []

        for j in range(0, AMOUNT_OF_PLAYERS):
            players.append(Player.Player(pool))

        combat = {}
        players_dead = set()

        # Run simulation until only one person is left
        while True:
            player_count = 0

            for index, player in enumerate(players):
                if player.health > 0:
                    player_count += 1
                else:
                    players_dead.add(index)

            if player_count % 2 != 0:
                player_count += 1

            combat = agent_helper.gen_combat_pairs(0, 7, int(player_count / 2), combat, players_dead)

            # Run current recruitment round
            for index, player in enumerate(players):
                if player.health <= 0:
                    continue

                player.roundStart()

                if index in combat:
                    enemy_index = combat[index]
                else:
                    enemy_index = [enemy for enemy, me in combat.items() if me == index][0]

                prev_reward = 0

                while True:
                    roll = player.getRoll()
                    board = player.getBoard()
                    hand = player.getHand()
                    tavern_cost = player.getTavernCost()
                    gold_avail = player.getGold()
                    health = player.getHealth()
                    curr_round = player.getRound()

                    obs = agent_helper.setup_observation(minion_vectors, roll, board, hand, tavern_cost, gold_avail,
                                                         health, curr_round, players[enemy_index].health,
                                                         players[enemy_index].tavern.tier)

                    step_type = StepType.FIRST if prev_reward == 0 else StepType.MID
                    policy_info = agents[index].get_action_policy(step_type, prev_reward, DISCOUNT_FACTOR, obs)
                    actions = policy_info.action

                    if any(tf.math.is_nan(actions)):
                        print('Uh-oh! :-(')
                        print(actions)

                    poss_actions = []

                    for temp in range(0, len(actions)):
                        if agent_helper.is_move_possible(player, temp):
                            poss_actions.append(temp)

                    curr_action = random.choices(poss_actions, weights=[actions[i] for i in poss_actions], k=1)[0]

                    if curr_action == 27:
                        # Action for ending turn
                        break

                    if not agent_helper.do_move(player, curr_action):
                        print("Something went wrong. Code failure???")

                player.roundEnd()

            # Run combat simulator, update health and rewards
            for friendly, enemy in combat.items():
                do_not_run = False

                win_probability = 0.0
                lose_probability = 0.0
                damage_taken = 0.0
                damage_dealt = 0.0

                if len(players[friendly].board) == 0 and len(players[enemy].board) == 0:
                    do_not_run = True

                if len(players[friendly].board) != 0 and len(players[enemy].board) == 0:
                    do_not_run = True
                    win_probability = 1.0
                    lose_probability = 0.0
                    damage_taken = 0.0
                    damage_dealt = float(players[friendly].tavern.tier +
                                         sum([x.tier for x in players[friendly].getBoard()]))

                if len(players[friendly].board) == 0 and len(players[enemy].board) != 0:
                    do_not_run = True
                    win_probability = 0.0
                    lose_probability = 1.0
                    damage_taken = float(players[enemy].tavern.tier +
                                         sum([x.tier for x in players[enemy].getBoard()]))
                    damage_dealt = 0.0

                if not do_not_run:
                    combat_simulation = Combat.Combat(players[friendly].getBoard(), players[enemy].getBoard())
                    win_probability = combat_simulation.win_probability
                    lose_probability = combat_simulation.lose_probability
                    damage_taken = combat_simulation.mean_damage_taken + \
                        (players[enemy].tavern.tier * lose_probability)
                    damage_dealt = combat_simulation.mean_damage_dealt + \
                        (players[friendly].tavern.tier * win_probability)

                prev_reward_friendly = float(experience[friendly][len(experience[friendly]) - 1].reward) \
                    if len(experience[friendly]) > 0 else 0.0
                prev_reward_enemy = float(experience[enemy][len(experience[enemy]) - 1].reward) \
                    if len(experience[enemy]) > 0 else 0.0

                reward_friendly = agent_helper.calculate_combat_reward(
                    players[friendly].getRound(), win_probability,
                    lose_probability, damage_taken, damage_dealt)
                total_rewards[friendly].append(reward_friendly)

                reward_enemy = agent_helper.calculate_combat_reward(
                    players[enemy].getRound(), lose_probability,
                    win_probability, damage_dealt, damage_taken)
                total_rewards[enemy].append(reward_enemy)

                # If they died in a previous round, don't add more experience
                # They could be in combat as a "Ghost"
                if not players[friendly].getHealth() == 0:
                    experience[friendly].append(
                        agent_helper.generate_combat_experience(
                            minion_vectors, players, agents, reward_friendly,
                            damage_taken, friendly, enemy,
                            prev_reward_friendly, DISCOUNT_FACTOR))

                    if players[friendly].getHealth() == 0:
                        experience[friendly][len(experience[friendly]) - 2] = \
                            experience[friendly][len(experience[friendly]) - 2].replace(
                                next_step_type=tf.convert_to_tensor(StepType.LAST))

                if not players[enemy].getHealth() == 0:
                    experience[enemy].append(
                        agent_helper.generate_combat_experience(
                            minion_vectors, players, agents, reward_enemy,
                            damage_dealt, enemy, friendly,
                            prev_reward_enemy, DISCOUNT_FACTOR))

                    if players[enemy].getHealth() == 0:
                        experience[enemy][len(experience[enemy]) - 2] = \
                            experience[enemy][len(experience[enemy]) - 2].replace(
                                next_step_type=tf.convert_to_tensor(StepType.LAST))

            print("Player Round Done:", max([player.getRound() for player in players]))

            if max([player.getRound() for player in players]) > 100:
                raise Exception("Taking too long, trying again")

            if len([x for x in players if x.getHealth() > 0]) <= 1:
                break

        with summary_writer.as_default():
            tf.summary.scalar('Game Length', max([player.getRound() for player in players]), step=i)

            for j in range(0, AMOUNT_OF_PLAYERS):
                tf.summary.scalar(f'Total Reward - player {j + 1}', sum(total_rewards[j]), step=i)

        # Train each agent
        if (i + 1) % TRAIN_EPOCHS == 0:
            with summary_writer.as_default():
                for j in range(0, AMOUNT_OF_PLAYERS):
                    loss_info = agents[j].train(experience[j])
                    tf.summary.scalar(f'loss - player {j + 1}', loss_info.loss, step=i)
                    tf.summary.scalar(f'lr - player {j + 1}', agents[j].agent._optimizer._lr, step=i)
                    experience[j] = []

            print(f'Trained on Epoch {i}')

        if (i + 1) % POLICY_SAVE_FREQUENCY == 0:
            for j in range(0, AMOUNT_OF_PLAYERS):
                agents[j].store_network_policy(j)

        # Output Average Rewards
        if i + 1 % AVERAGE_RETURN_EPOCHS == 0:
            with summary_writer.as_default():
                for j in range(0, AMOUNT_OF_PLAYERS):
                    average_return = sum(total_rewards[j]) / len(total_rewards)
                    summary_writer.summary.scalar(f'Average Reward - Player {j + 1}', average_return, step=i)
                    print("Average Return (Player: " + str(j) + ", Epochs: " +
                          str(AVERAGE_RETURN_EPOCHS) + "): " + str(average_return))
                    total_rewards[j] = []

        print("Epoch done: " + str(i))
        i += 1
    except Exception as error:
        with summary_writer.as_default():
            tf.summary.text(f'Error while simulating Game {i}', str(error), step=i)
        print(error)

# Pass all the information to RL algo to get a decision/make random decision or something

# Decision should be buy a minion, specific index
# If impossible, aka not enough gold or hand full, negative reward and try again?
# Try again if makes sense, e.g. still got gold or minion in hand but board not full

# Decision should be sell a minion, specific index
# If impossible, negative reward and try again?

# Decision should be play a minion, assume right most spot
# If impossible, negative reward and try again?

# Decision should be upgrade tavern
# If impossible, aka not enough gold, negative reward

# Decision should be reroll
# If impossible, aka not enough gold, negative reward

# Decision should be freeze tavern

# Should probably need to loop as multiple decisions per turn

# Player.roundStart()
# Player.roundEnd()

# Player.getRoll()
# Player.getBoard()
# Player.getHand()
# Player.getTavernCost()

# Player.freezeTavern()
# Player.reroll()
# Player.upgradeTavern()
# Player.buy()
# Player.sell()
# Player.play()

# For battle, choose 2 random opponents, trying to maximize the amount alive
# Need to ensure no player is playing the same player as the previous round
# If odd number alive, one person needs to play the one who got out last
# This can be done by tracking whether a person is alive, and how many rounds ago they died

# players[0].roundStart()
# players[0].buy(1)
# players[0].play(0, len(players[0].board))
# players[0].roundEnd()
#
# players[1].roundStart()
# players[1].buy(1)
# players[1].play(0, len(players[1].board))
# players[1].roundEnd()
#
# combat = Combat.Combat(players[0].board, players[1].board)
#
# print(combat.combat)
# print(combat.win_probability)
# print(combat.tie_probability)
# print(combat.lose_probability)
# print(combat.mean_score)
# print(combat.median_score)
# print(combat.mean_damage_taken)
# print(combat.mean_damage_dealt)

# print(pool.tier6)
#
# for m in pool.tier6:
#     if minion_vectors.get_vector(m):
#         print("Passed")
#     else:
#         print("Failed to get key")
#         print(m)
#         break


'''
beast = Minion.Minion("Test Beast", 1, 1, "Beast", 1)
buffed_beast = Minion.Minion("Test Beast", 2, 2, "Beast", 1)

beast.buff(1,1)
print(beast)
print(buffed_beast)

first = [beast]
second = [buffed_beast]
print(str(first))
print(str(second))

if str(first) == str(second):
    print("yes")
else:
    print("no")
'''

### SAMPLE GAME FLOW ###
# pool = Pool.Pool()
# player = Player.Player()
# player.roundStart()
# player.getRoll()
# player.buy(index) or player.reRoll()
# player.sell(index)
# etc ...
# player.roundEnd()
