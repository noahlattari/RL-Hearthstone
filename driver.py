import Player
'''TODO
initialize player
simulate buy & sell
simulate next round start
simulate tier up
'''

player = Player.Player()
player.roundStart()
print("Tavern: " + str(player.tavern.roll))
print("Hand: " + str(player.hand))
print("Board: " + str(player.board))
print("Gold: " + str(player.gold))

player.buy(0)
print("\nBuy\n")
print("Tavern: " + str(player.tavern.roll))
print("Hand: " + str(player.hand))
print("Board: " + str(player.board))
print("Gold: " + str(player.gold))

player.play(0)
print("\nPlay\n")
print("Tavern: " + str(player.tavern.roll))
print("Hand: " + str(player.hand))
print("Board: " + str(player.board))
print("Gold: " + str(player.gold))

player.sell(0)
print("\nSell\n")
print("Tavern: " + str(player.tavern.roll))
print("Player's Hand: " + str(player.hand))
print("Board: " + str(player.board))
print("Gold: " + str(player.gold))

player.reroll()
print("\nReroll\n")
print("Tavern: " + str(player.tavern.roll))
print("Player's Hand: " + str(player.hand))
print("Board: " + str(player.board))
print("Gold: " + str(player.gold))

player.roundStart()
print("\nRound2\n")
print("Tavern: " + str(player.tavern.roll))
print("Player's Hand: " + str(player.hand))
print("Board: " + str(player.board))
print("Gold: " + str(player.gold))

player.upgradeTavern()
print("\nUpgrade\n")
print(player.tavern.tier)
print("Gold: " + str(player.gold))
