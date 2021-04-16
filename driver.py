import Pool
import Player
import MinionVector

import subprocess
import os

pool = Pool.Pool()
minion_vectors = MinionVector.MinionVector()

players = []

for i in range(0, 7):
    players.append(Player.Player(pool))

dir_path = os.path.dirname(os.path.realpath(__file__))

process = subprocess.Popen([dir_path + "\hsbg.exe", dir_path + "\\run1.txt"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
stdout, _ = map(lambda x: x.decode(), process.communicate())

print(pool.tier5)

for m in pool.tier5:
    if minion_vectors.get_vector(m):
        print("Passed")
    else:
        print("Failed to get key")
        print(m)
        break

# for player in players:
#     if player.health <= 0:
#         continue
#
#     player.roundStart()
#
#
#
#     player.roundEnd()

# players[0].roundStart()
# print(players[0].getRoll())
#
# print(pool.tier1.keys())
#
# for m in pool.tier1:
#     print(pool.tier1[m]["count"])
#
# players[0].buy(1)
#
# print(players[0].getRoll())
#
# print(players[0].hand[0].name)

# Player.roundStart()
# Player.roundEnd()
# Player.freezeTavern()
# Player.reroll()
# Player.upgradeTavern()
# Player.buy()
# Player.getTavernCost()




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