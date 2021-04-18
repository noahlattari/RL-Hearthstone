import Pool
import Player
import MinionVector
import Agent
import AgentHelper
import Combat

import tensorflow as tf
from tf_agents.trajectories.time_step import StepType

DISCOUNT_FACTOR = 0.99

EPOCHS = 100
TRAIN_EPOCHS = 10
AVERAGE_RETURN_EPOCHS = 50
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

for i in range(0, EPOCHS):
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

        for player in players:
            print(player.getHealth())

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
                actions = agents[index].get_action_policy(step_type, prev_reward, DISCOUNT_FACTOR, obs).action

                curr_action = -1
                largest_index = 0
                while True:
                    values, indices = tf.nn.top_k(actions, largest_index + 1)
                    if agent_helper.is_move_possible(player, indices.numpy()[largest_index]):
                        curr_action = indices.numpy()[largest_index]
                        break

                    largest_index += 1

                if curr_action == 27:
                    # Action for ending turn
                    break

                # print(obs.shape)
                # print(tf.reshape(tf.convert_to_tensor(obs, dtype=tf.float32), [1, 1, 246]).shape)
                # print(tf.reshape(tf.convert_to_tensor(obs, dtype=tf.float32), [1, 1, 246]))
                # exit()

                if largest_index > 0:
                    curr_reward = agent_helper.calculate_action_reward(curr_round)
                    total_rewards[index].append(curr_reward)
                    experience[index].append(
                        agent_helper.create_trajectory(
                            tf.convert_to_tensor(step_type),
                            tf.convert_to_tensor(obs, dtype=tf.float32), actions,
                            agents[index].get_policy_info(),
                            tf.convert_to_tensor(StepType.MID),
                            tf.convert_to_tensor(curr_reward, dtype=tf.float32),
                            tf.convert_to_tensor(DISCOUNT_FACTOR)))
                    prev_reward = curr_reward

                if not agent_helper.do_move(player, curr_action):
                    print("Something went wrong. Code failure???")
                    print("Moved Tried (in regards to action array): " + curr_action)
                    print("Gold: " + player.getGold())
                    print("Tavern Cost: " + player.getTavernCost())
                    print("Roll: " + player.getRoll())
                    print("Board: " + player.getBoard())
                    print("Hand: " + player.getHand())

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
                damage_taken = combat_simulation.mean_damage_taken
                damage_dealt = combat_simulation.mean_damage_dealt

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
                        experience[friendly][len(experience[friendly]) - 2].replace(next_step_type=StepType.LAST)

            if not players[enemy].getHealth() == 0:
                experience[enemy].append(
                    agent_helper.generate_combat_experience(
                        minion_vectors, players, agents, reward_enemy,
                        damage_dealt, enemy, friendly,
                        prev_reward_enemy, DISCOUNT_FACTOR))

                if players[enemy].getHealth() == 0:
                    experience[enemy][len(experience[enemy]) - 2] = \
                        experience[enemy][len(experience[enemy]) - 2].replace(next_step_type=StepType.LAST)

        print("Player Round Done: " + str(players[0].getRound()))

        if len([x for x in players if x.getHealth() > 0]) <= 1:
            break

    # Train each agent
    if i % TRAIN_EPOCHS == 0:
        for j in range(0, AMOUNT_OF_PLAYERS):
            agents[j].train(experience[j])

            experience[j] = []

    # Output Average Rewards
    if i + 1 % AVERAGE_RETURN_EPOCHS == 0:
        for j in range(0, AMOUNT_OF_PLAYERS):
            average_return = sum(total_rewards[j]) / len(total_rewards)
            print("Average Return (Player: " + str(j) + ", Epochs: " +
                  str(AVERAGE_RETURN_EPOCHS) + "): " + str(average_return))
            total_rewards[j] = []

    print("Epoch done: " + str(i))

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
