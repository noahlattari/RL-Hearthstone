import Tavern

class Player:

    STARTING_GOLD = 3
    MAX_GOLD = 10
    MAX_HAND = 10
    MAX_BOARD = 7
    UPGRADE_COST = {2:5, 3:7, 4:8, 5:9, 6:10}
    REROLL_COST = 1

    def __init__(self):
        self.tavern = Tavern.Tavern()
        self.gold = Player.STARTING_GOLD
        self.health = 40
        self.freeze = False
        self.hand = []
        self.board = []
        self.round = 0
        self.discount = 0
        self.tieredUp = False

    def freezeTavern(self):
        self.freeze = True

    def reroll(self):
        if self.gold >= Player.REROLL_COST:
            self.gold -= Player.REROLL_COST #- reroll discount
            self.tavern.getRoll()

    def upgradeTavern(self):
        #check if we have enough money see upgrade_cost constant
        #if we do then we need to invoke the tavern's upgrade function
        cost = Player.UPGRADE_COST[self.tavern.tier + 1] - self.discount
        if cost <= 0:
            cost = 0
        if self.gold >= cost:
            self.tavern.tierUp()
            self.tieredUp = True
            self.gold -= cost

    def sell(self, minion):
        #check if minion (by index) is in board
        if 0 <= minion < len(self.board):
            #remove minion from board 
            self.board.pop(minion)
            self.gold += 1
        #TODO: return this minion to the pool, when you sell a token they just die

    def buy(self, minion):
        #check if we can fit it in our hand
        if self.gold >= 3 and len(self.hand) < Player.MAX_HAND:
            bought_minion = self.tavern.buy(minion)
            if bought_minion:
                self.hand.append(bought_minion)
                self.gold -= 3
    
    def play(self, minion):
        #check if minion (by index) is in hand
        if 0 <= minion < len(self.hand):
            if len(self.board) < Player.MAX_BOARD:
                self.board.append(self.hand.pop(minion))
        #move minion from hand to board, activate effect of minion if applicable
        #either event or bunch of conditionals
        
    #call this function at the start of each round
    #start at round 0 so first round is STARTING_GOLD + self.round = 3 + 0
    def roundStart(self):
        self.resetGold()
        self.calcDiscount()
        if not self.freeze:
            self.tavern.getRoll()
        else:
            self.freeze = False
        self.round += 1
        #make a function for determining the upgrade discount

    def resetGold(self):
        if Player.STARTING_GOLD + self.round > Player.MAX_GOLD:
            self.gold = Player.MAX_GOLD
        else:
            self.gold = Player.STARTING_GOLD + self.round
    
    def calcDiscount(self):
        if self.tieredUp or self.round == 0:
            self.tieredUp = False
            self.discount = 0
        else:
            self.discount += 1

    