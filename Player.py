import Tavern
import random

class Player:

    STARTING_GOLD = 3
    MAX_GOLD = 10
    MAX_HAND = 10
    MAX_BOARD = 7
    UPGRADE_COST = {2:5, 3:7, 4:8, 5:9, 6:10}
    REROLL_COST = 1

    def __init__(self, pool):
        self.tavern = Tavern.Tavern(pool)
        self.gold = Player.STARTING_GOLD
        self.health = 40
        self.freeze = False
        self.hand = []
        self.board = []
        self.round = 0
        self.discount = 0
        self.tieredUp = False

        # minion specific variables
        self.khadgar = False
        self.khadgar_gold = False
        self.khadgar_count = 0
        self.khadgar_gold_count = 0

        self.pack_leader = False
        self.pack_leader_gold = False

        self.wrath_weaver = False
        self.wrath_weaver_count = 0

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

    def sell(self, minion_index):
        #check if minion (by index) is in board
        if 0 <= minion_index < len(self.board):
            #remove minion from board 
            self.board.pop(minion_index)
            self.gold += 1
        #TODO: return this minion to the pool, when you sell a token they just die

    def buy(self, minion_index):
        #check if we can fit it in our hand
        if self.gold >= 3 and len(self.hand) < Player.MAX_HAND:
            bought_minion = self.tavern.buy(minion_index)
            if bought_minion:
                self.hand.append(bought_minion)
                self.gold -= 3
        
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

    def play(self, minion_index, pos):
        #check if minion (by index) is in hand
        if 0 <= minion_index < len(self.hand):
            if len(self.board) < Player.MAX_BOARD:
                curr_minion = self.hand.pop(minion_index)

                #use pos variable to determine where to put curr_minion
                if 0 <= pos < len(self.hand):
                    self.board.insert(pos, curr_minion)
                else:
                    self.board.append(curr_minion)

                ### Demon ###
                if curr_minion.minion_type == "Demon":
                    if wrath_weaver
                    wrathWeaverEffect()

                ### Neutral ###
                if curr_minion.name == "Defender of Argus":
                    attack_buff = 1
                    health_buff = 1
                    if curr_minion.gold:
                        attack_buff += 1
                        health_buff += 1
                    if minion_index > 0:
                        self.board[minion_index-1].giveTaunt()
                        self.board[minion_index-1].buff(attack_buff, health_buff)
                    if minion_index < len(self.hand) - 1:
                        self.board[minion_index+1].giveTaunt()
                        self.board[minion_index-1].buff(attack_buff, health_buff)
                
                if curr_minion.name == "Crystalweaver":
                    attack_buff = 1
                    health_buff = 1
                    if curr_minion.gold:
                        attack_buff += 1
                        health_buff += 1
                    for m in self.board:
                        if m.minion_type == "Demon":
                            m.buff(attack_buff, health_buff)

                if curr_minion.name == "Virmen Sensei":
                    attack_buff = 2
                    health_buff = 2
                    if curr_minion.gold:
                        attack_buff += 2
                        health_buff += 2
                    for m in self.board:
                        if m.minion_type == "Beast":
                            m.buff(attack_buff, health_buff)

                if curr_minion.name == "Menagerie Mug": #also basically just jug
                    attack_buff = 1
                    health_buff = 1
                    if curr_minion.gold:
                        attack_buff += 1
                        health_buff += 1
                    #TODO: finish menagerie mug / jug

                #TODO: add "battlecries for boolean boys"
                

        def wrathWeaverEffect(self):
            #TODO: finish the effect

            #check wrath weaver booleans

            #iterate through board
            #for every wrath weaver deal 1 damage to health
            #buff wrath weaver by 2/2, 4/4 if gold

    