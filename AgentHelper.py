import os

import tensorflow as tf
import numpy as np
from os import path
from random import randint

from tf_agents.trajectories.time_step import StepType
from tf_agents.trajectories.trajectory import Trajectory

# Average game length is the round in which the average player will die
# Making it past this round is generally someone who wins the game (top 4)
AVERAGE_GAME_LENGTH = 10

ZEROS_VECTOR = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
MAX_ROLL_SIZE = 7
MAX_BOARD_SIZE = 7
MAX_HAND_SIZE = 10


class AgentHelper:

    @staticmethod
    def calculate_combat_reward(curr_round, win_probability, lose_probability, damage_taken, damage_dealt):
        # Reward is calculated based on the change of you dealing damage and the change of taking damage
        # and then scaled based on the turn you're on to have late game turns be more important then early
        # Current round is also 0 based, +1 to make 1 based
        reward = (win_probability * damage_dealt) - (lose_probability * damage_taken) * \
                 (curr_round / AVERAGE_GAME_LENGTH)

        return float(reward)

    @staticmethod
    def calculate_action_reward(curr_round):
        return -1 * (curr_round / AVERAGE_GAME_LENGTH)

    @staticmethod
    def setup_observation(minion_vectors, roll, board, hand, tavern_cost,
                          gold_avail, health, curr_round, enemy_health, enemy_tier):
        curr_input = np.array([health, curr_round, gold_avail, tavern_cost, enemy_health, enemy_tier], dtype=np.float32)

        # Add roll to curr model input
        for m in roll:
            curr_m = minion_vectors.get_vector(m.name)
            curr_input = np.append(curr_input, curr_m)

        for i in range(0, MAX_ROLL_SIZE - len(roll)):
            curr_input = np.append(curr_input, ZEROS_VECTOR)

        # Add board to curr model input
        for m in board:
            curr_m = minion_vectors.get_vector(m.name)
            curr_input = np.append(curr_input, curr_m)

        for i in range(0, MAX_BOARD_SIZE - len(board)):
            curr_input = np.append(curr_input, ZEROS_VECTOR)

        # Add hand to curr model input
        for m in hand:
            curr_m = minion_vectors.get_vector(m.name)
            curr_input = np.append(curr_input, curr_m)

        for i in range(0, MAX_HAND_SIZE - len(hand)):
            curr_input = np.append(curr_input, ZEROS_VECTOR)

        return curr_input

    @staticmethod
    def get_observation_shape():
        # value for health, curr_round, gold_avail, tavern_cost, enemy_health, enemy_tier
        shape = 6

        for i in range(0, MAX_ROLL_SIZE):
            shape += len(ZEROS_VECTOR)

        for i in range(0, MAX_BOARD_SIZE):
            shape += len(ZEROS_VECTOR)

        for i in range(0, MAX_HAND_SIZE):
            shape += len(ZEROS_VECTOR)

        return shape

    @staticmethod
    def get_action_shape():
        # Whether to upgrade the tavern, reroll, freeze tavern
        shape = 3

        # Which minion to buy
        for i in range(0, MAX_ROLL_SIZE):
            shape += 1

        # Which minion to sell
        for i in range(0, MAX_BOARD_SIZE):
            shape += 1

        # Which minion to play
        for i in range(0, MAX_HAND_SIZE):
            shape += 1

        # Whether to end turn
        shape += 1

        return shape

    @staticmethod
    def is_agent_saved(agent_number):
        if not path.exists("results"):
            return False

        if not path.exists("results/agent" + str(agent_number)):
            return False

        if not len(os.listdir("results/agent" + str(agent_number) + "/")) > 0:
            return False

        return True

    @staticmethod
    def gen_combat_pairs(min_pair, max_pair, pair_amount, prev_combat, players_dead):
        combat = dict()
        players_alive = set()

        for i in range(min_pair, max_pair + 1):
            if i not in players_dead:
                players_alive.add(i)

        print(players_alive)

        if len(players_alive) % 2 != 0:
            players_alive.add(next(iter(players_dead)))

        while len(combat.keys()) != pair_amount:
            if len(combat.keys()) == pair_amount - 1:
                temp = -1
                for i in players_alive:
                    if i not in combat and i not in combat.values():
                        if temp != -1:
                            combat[temp] = i
                            break
                        else:
                            temp = i

            if len(combat.keys()) != pair_amount:
                while True:
                    x, y = randint(min_pair, max_pair), randint(min_pair, max_pair)

                    if x != y and x not in combat.keys() and y not in combat.keys() \
                            and x not in combat.values() and y not in combat.values() \
                            and not (x in prev_combat and prev_combat[x] == y) \
                            and not (y in prev_combat and prev_combat[y] == x) \
                            and x in players_alive and y in players_alive:
                        combat[x] = y
                        break

        print(combat)

        return combat

    @staticmethod
    def create_trajectory(step_type, obs, action, policy_info, next_step_type, reward, discount):
        return Trajectory(step_type, obs, action, policy_info, next_step_type, reward, discount)

    @staticmethod
    def is_move_possible(player, move_index):
        if move_index == 0:
            if player.tavern.tier != 6 and player.getGold() >= player.getTavernCost():
                return True
        elif move_index == 1:
            if player.getGold() >= player.REROLL_COST:
                return True
        elif move_index == 2:
            if not player.isTavernFrozen():
                return True
        elif 2 < move_index <= 9:
            buy_index = move_index - 3
            if player.getGold() >= 3 and buy_index < len(player.getRoll()) and len(player.getHand()) < MAX_HAND_SIZE:
                return True
        elif 9 < move_index <= 16:
            sell_index = move_index - 10
            if sell_index < len(player.getBoard()):
                return True
        elif 16 < move_index <= 26:
            play_index = move_index - 17
            if play_index < len(player.getHand()) and len(player.getBoard()) < MAX_BOARD_SIZE:
                return True
        elif move_index == 27:
            return True

        return False

    @staticmethod
    def do_move(player, move_index):
        if move_index == 0:
            if not player.upgradeTavern():
                return False
        elif move_index == 1:
            if not player.reroll():
                return False
        elif move_index == 2:
            if not player.freezeTavern():
                return False
        elif 2 < move_index <= 9:
            buy_index = move_index - 3
            if player.getGold() >= 3 and buy_index < len(player.getRoll()):
                player.buy(buy_index)
                return True
            return False
        elif 9 < move_index <= 16:
            sell_index = move_index - 10
            if sell_index < len(player.getBoard()):
                player.sell(sell_index)
                return True
            return False
        elif 16 < move_index <= 26:
            play_index = move_index - 17
            if play_index < len(player.getHand()) and len(player.getBoard()) < MAX_BOARD_SIZE:
                player.play(play_index, len(player.getBoard()))
                return True
            return False
        return True

    @staticmethod
    def generate_combat_experience(minion_vectors, players, agents, reward, damage_taken,
                                   friendly, enemy, prev_reward, discount_factor):
        player = players[friendly]

        player.health -= damage_taken

        if player.health <= 0:
            player.health = 0

        roll = player.getRoll()
        board = player.getBoard()
        hand = player.getHand()
        tavern_cost = player.getTavernCost()
        gold_avail = player.getGold()
        health = player.getHealth()
        curr_round = player.getRound()

        step_type = StepType.LAST if player.getHealth() == 0 else StepType.MID
        next_step_type = StepType.FIRST if step_type == StepType.LAST else StepType.MID

        obs = AgentHelper.setup_observation(minion_vectors, roll, board, hand,
                                            tavern_cost, gold_avail,
                                            health, curr_round, players[enemy].health,
                                            players[enemy].tavern.tier)

        actions = agents[friendly].get_action_policy(step_type, prev_reward, discount_factor, obs).action

        return AgentHelper.create_trajectory(tf.convert_to_tensor(step_type),
                                             tf.convert_to_tensor(obs, dtype=tf.float32), actions,
                                             agents[friendly].get_policy_info(),
                                             tf.convert_to_tensor(next_step_type),
                                             tf.convert_to_tensor(reward, dtype=tf.float32),
                                             tf.convert_to_tensor(discount_factor))
