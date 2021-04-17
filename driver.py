import Pool
import Player
import MinionVector
import Combat

pool = Pool.Pool()
minion_vectors = MinionVector.MinionVector()

players = []

for i in range(0, 7):
    players.append(Player.Player(pool))

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

for player in players:
    if player.health <= 0:
        continue

    player.roundStart()

    roll = player.getRoll()
    board = player.getBoard()
    hand = player.getHand()
    tavern_cost = player.getTavernCost()

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

    player.roundEnd()

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

# print(pool.tier5)
#
# for m in pool.tier5:
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