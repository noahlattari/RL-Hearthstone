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
        self.pool = pool
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
        # Khadgar: Your cards that summon minions summon twice as many (thrice when gold)
        # Stacks multiplicatively eg. 2 Khadgars makes it 4 times as many, 3 makes it 6 times as many, etc.
        self.khadgar = False
        self.khadgar_gold = False
        self.khadgar_count = 0
        self.khadgar_gold_count = 0

        # Pack Leader: Whenever you summon a Beast, give it +2 Attack (+4 when gold) for each Pack Leader on the board
        self.pack_leader = False
        self.pack_leader_gold = False
        self.pack_leader_count = 0
        self.pack_leader_gold_count = 0

        # Wrath Weaver: see wrathWeaverEffect()
        self.wrath_weaver = False
        self.wrath_weaver_count = 0

        # Rabid Saurolisk: see rabidSaurolistEffect()
        self.rabid_saurolisk = False
        self.rabid_saurolisk_count = 0

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
    
    def sell(self, minion_index):
        #check if minion (by index) is in board
        if 0 <= minion_index < len(self.board):
            #remove minion from board 
            sold_minion = self.board.pop(minion_index)
            self.gold += 1
            #TODO: return this minion to the pool, when you sell a token they just die

            # Handling removal of specific minions
            if sold_minion.name == "Khadgar":
                if sold_minion.gold:
                    khadgar_gold_count -= 1
                    if khadgar_gold_count == 0:
                        khadgar_gold = False
                else:
                    khadgar_count -= 1
                    if khadgar_count == 0:
                        khadgar = False

            if sold_minion.name == "Pack Leader":
                if sold_minion.gold:
                    pack_leader_gold_count -= 1
                    if pack_leader_gold_count == 0:
                        pack_leader_gold = False
                else:
                    pack_leader_count -= 1
                    if pack_leader_count == 0:
                        pack_leader = False

            if sold_minion.name == "Wrath Weaver":
                wrath_weaver_count -= 1
                if wrath_weaver_count == 0:
                    wrath_weaver = False

            if sold_minion.name == "Rabid Saurolisk":
                rabid_saurolisk_count -= 1
                if rabid_saurolisk_count == 0:
                    rabid_saurolisk = False

    #TODO: refactor most conditionals to functions
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

                ### Beast ###
                if curr_minion.name == "Alleycat":
                    self.alleyCatBC(self.board)

                if curr_minion.name == "Houndmaster":
                    self.houndmasterBC(self.board, curr_minion)

                if curr_minion.name == "Rabid Saurolisk":
                    self.rabid_saurolisk = True
                    self.rabid_saurolisk_count += 1

                if curr_minion.death_rattle:
                    if self.rabid_saurolisk:
                        self.rabidSauroliskEffect()

                ### Demon ###
                if curr_minion.minion_type == "Demon":
                    if self.wrath_weaver:
                        self.wrathWeaverEffect()

                ### Neutral ###
                if curr_minion.name == "Defender of Argus":
                    self.defenderOfArgusBC(self.board, minion_index, curr_minion)
                
                if curr_minion.name == "Crystalweaver":
                    self.crystalweaverBC(self.board, curr_minion)

                if curr_minion.name == "Virmen Sensei":
                    self.virmenSenseiBC(self.board, curr_minion)

                if curr_minion.name == "Menagerie Mug" or "Menagerie Jug":
                    self.mugAndJugBC(self.board, curr_minion)
                    
                if curr_minion.name == "Khadgar":
                    if curr_minion.gold:
                        self.khadgar_gold = True
                        self.khadgar_gold_count += 1
                    else:
                        self.khadgar = True
                        self.khadgar_count += 1
                        
                if curr_minion.name == "Pack Leader":
                    if curr_minion.gold:
                        self.pack_leader_gold = True
                        self.pack_leader_gold_count += 1
                    else:
                        self.pack_leader = True
                        self.pack_leader_count += 1
                
                if curr_minion.name == "Wrath Weaver":
                    self.wrath_weaver = True
                    self.wrath_weaver_count += 1
                
    
    ### Battlecries ###
    #TODO: Write unit tests for battlecries / effects

    def wrathWeaverEffect(self):
        for m in self.board:
            if m.name == "Wrath Weaver":
                self.health -= 1
                if m.gold:
                    m.buff(4,4)
                else:
                    m.buff(2,2)

    def rabidSauroliskEffect(self):
        for m in self.board:
            if m.name == "Rabid Saurolisk":
                if m.gold:
                    m.buff(2,4)
                else:
                    m.buff(1,2)

    def defenderOfArgusBC(self, board, minion_index, curr_minion):
        attack_buff = 1
        health_buff = 1
        if curr_minion.gold:
            attack_buff += 1
            health_buff += 1
        if minion_index > 0:
            board[minion_index-1].giveTaunt()
            board[minion_index-1].buff(attack_buff, health_buff)
        if minion_index < len(self.hand) - 1:
            board[minion_index+1].giveTaunt()
            board[minion_index+1].buff(attack_buff, health_buff)
    
    def crystalweaverBC(self, board, curr_minion):
        attack_buff = 1
        health_buff = 1
        if curr_minion.gold:
            attack_buff += 1
            health_buff += 1
        for m in board:
            if m.minion_type == "Demon":
                m.buff(attack_buff, health_buff)
    
    def virmenSenseiBC(self, board, curr_minion):
        attack_buff = 2
        health_buff = 2
        if curr_minion.gold:
            attack_buff += 2
            health_buff += 2
        self.buffFriendly(board, attack_buff, health_buff, minion_type="Beast")

    def houndmasterBC(self, board, curr_minion):
        attack_buff = 2
        health_buff = 2
        if curr_minion.gold:
            attack_buff += 2
            health_buff += 2
        self.buffFriendly(board, attack_buff, health_buff, minion_type="Beast", taunt=True)

    #WIP
    def alleyCatBC(self, board):
        self.pool
        return

    def mugAndJugBC(self, board, curr_minion):
        attack_buff = 1
        health_buff = 1
        if curr_minion.gold:
            attack_buff += 1
            health_buff += 1
        if curr_minion.name == "Menagerie Jug":
            attack_buff *= 2
            health_buff *= 2

        minion_map = {}
        for m in board:
            if m.minion_type in minion_map:
                minion_map[m.minion_type].append(m)
            else:
                minion_type_list = []
                minion_type_list.append(m)
                minion_map[m.minion_type] = minion_type_list

        count = 0
        #empty minion_map evaluates to False
        while(minion_map and count < 3):
            #pick a random type
            random_type = minion_map[minion_map.keys()[random.randint(0,len(minion_map))]]
            type_list = minion_map.pop(random_type)
            random_minion = type_list[random.randint(0, len(type_list))]
            random_minion.buff(attack_buff, health_buff)
            count += 1

    #helper function for "give a friendly minion..." effects
    #randomly buffs a friendly minion, can be specified by type
    def buffFriendly(self, board, attack, health, minion_type=None, taunt=False): #add more cases as necessary eg. windfury, divine_shield, etc
        
        if minion_type is not None:
            type_specific_list = [m for m in board if m.minion_type == minion_type]
        else:
            type_specific_list = board

        #fails if type_specific_list is empty
        if type_specific_list:
            random_friend = type_specific_list[random.randint(0, len(type_specific_list))]
            random_friend.buff(attack, health)
            if taunt:
                random_friend.giveTaunt()

