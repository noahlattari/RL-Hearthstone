import Pool
import Player
import MinionVector
import Combat

pool = Pool.Pool()
minion_vectors = MinionVector.MinionVector()

players = []

for i in range(0, 7):
    players.append(Player.Player(pool))

# print(pool.tier5)
#
# for m in pool.tier5:
#     if minion_vectors.get_vector(m):
#         print("Passed")
#     else:
#         print("Failed to get key")
#         print(m)
#         break

# for player in players:
#     if player.health <= 0:
#         continue
#
#     player.roundStart()
#
#
#
#     player.roundEnd()

players[0].roundStart()
players[0].buy(1)
players[0].play(0, len(players[0].board))
players[0].roundEnd()

players[1].roundStart()
players[1].buy(1)
players[1].play(0, len(players[0].board))
players[1].roundEnd()

print(players[0].board)
print(players[1].board)

# Player.roundStart()
# Player.roundEnd()
# Player.freezeTavern()
# Player.reroll()
# Player.upgradeTavern()
# Player.buy()
# Player.getTavernCost()
# Player.getRoll()
# Player.sell()
# Player.play()




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