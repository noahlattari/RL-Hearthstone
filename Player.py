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

        #Stasis Elemental: see stasisElementalBC()
        self.stasis_elemental = False
        self.stasis_elemental_count = 0

        #Party Elemental: see partyElementalEffect()
        self.party_elemental = False
        self.party_elemental_gold = False
        self.party_elemental_count = 0
        self.party_elemental_gold_count = 0

        #Refreshing Anomaly: effects reroll
        self.refreshing_anomaly = False
        self.refreshing_anomaly_gold = False
        self.anomaly_gold_counter = 2

        #Nathrezim Overseer: see nathrezimOverseerBC()
        self.nathrezim_overseer = False
        self.nathrezim_overseer_gold = False

        #Majordomo Executus: at the end of the turn give left most minion +1/+1 (+2/+2 if gold)
        #give an additional buff for each elemental played this turn
        self.majodomo = False
        self.majodomo_count = 0
        self.majordomo_elemental_counter = 0

        #Southsea Captain: see southseaCaptainEffect()
        self.southsea_captain = False
        self.southsea_captain_gold = False

        #Bloodsail Cannoneer: see bloodsailCanoneerBC()
        self.bloodsail_cannoneer = False
        self.bloodsail_cannoneer_gold = False

        #Salty Looter: see saltyLooterBC()
        self.salty_looter = False
        self.salty_looter_gold = False 

        #Deck Swabbie: see deckSwabbieBC()
        self.deck_swabbie_gold = False  


    def freezeTavern(self):
        self.freeze = True

    def reroll(self):
        #refreshing anomaly gives a free reroll, refreshing anomoly gold gives two rerolls
        
        #if normal anomoly has been plaued
        if self.refreshing_anomaly:
            Player.REROLL_COST = 0
            self.refreshing_anomaly = False
            if self.gold >= Player.REROLL_COST:
                self.gold -= Player.REROLL_COST #- reroll discount
                self.tavern.getRoll(stasis_elemental=False)
            Player.REROLL_COST = 1
        if self.refreshing_anomaly_gold:
            if self.anomaly_gold_counter != 0:
                Player.REROLL_COST = 0
                if self.gold >= Player.REROLL_COST:
                    self.gold -= Player.REROLL_COST
                    self.tavern.getRoll(stasis_elemental=False)
                self.anomaly_gold_counter -= 1
            else:
                Player.REROLL_COST = 1
                self.refreshing_anomaly_gold = False
        else:
            if self.gold >= Player.REROLL_COST:
                self.gold -= Player.REROLL_COST
                self.tavern.getRoll(stasis_elemental=False)

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

    #call this function at the end of the turn
    def roundEnd(self):
        for m in self.board:
            if m.name == "Micro Mummy":
                self.microMummyEffect(self.board, m)
            if m.name == "Iron Sensei":
                self.ironSenseiEffect(self.board, m)
            if m.name == "Cobalt Scalebane":
                self.cobaltScalebaneEffect(self.board, m)
            if m.name == "Majordomo Executus":
                self.majordomoEffect(self.board, m)
            if m.name == "Lightfang Enforcer":
                self.lightfangEffect(self.board, m)

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
                    self.khadgar_gold_count -= 1
                    if self.khadgar_gold_count == 0:
                        self.khadgar_gold = False
                else:
                    self.khadgar_count -= 1
                    if self.khadgar_count == 0:
                        self.khadgar = False

            if sold_minion.name == "Pack Leader":
                if sold_minion.gold:
                    self.pack_leader_gold_count -= 1
                    if self.pack_leader_gold_count == 0:
                        self.pack_leader_gold = False
                else:
                    self.pack_leader_count -= 1
                    if self.pack_leader_count == 0:
                        self.pack_leader = False

            if sold_minion.name == "Wrath Weaver":
                self.wrath_weaver_count -= 1
                if self.wrath_weaver_count == 0:
                    self.wrath_weaver = False

            if sold_minion.name == "Rabid Saurolisk":
                self.rabid_saurolisk_count -= 1
                if self.rabid_saurolisk_count == 0:
                    self.rabid_saurolisk = False

            if sold_minion.name == "Majordomo Executus":
                self.majodomo_count -= 1
                if self.majodomo_count == 0:
                    self.majodomo = False
                    self.majordomo_elemental_counter = 0

            if sold_minion.name == "Sellemental":
                #When you sell a sellemental, get a water_droplet in your hand, gold gives you two
                if len(self.hand) < Player.MAX_HAND:
                    gold_token = False
                    if sold_minion.gold:
                        gold_token = True
                        if len(self.hand) < Player.MAX_HAND - 1:
                            extra_water_droplet = self.pool.summonToken("Water Droplet", gold=gold_token)
                            self.hand.append(extra_water_droplet)
                    water_droplet = self.pool.summonToken("Water Droplet", gold=gold_token)
                    self.hand.append(water_droplet)

            if sold_minion.name == "Stasis Elemental":
                self.stasis_elemental_count -= 1
                if self.stasis_elemental_count == 0:
                    self.stasis_elemental = False

            if sold_minion.name == "Party Elemental":
                self.party_elemental_count -= 1
                if self.party_elemental_count == 0:
                    self.party_elemental = False

            if sold_minion.name == "Steward of Time":
                self.stewardOfTimeEffect(self.tavern.roll, sold_minion)

            if sold_minion.name == "Freedealing Gambler":
                self.gold += 2 #because we already add 1 in the begining 

            if sold_minion.name == "Southsea Captain":
                self.southsea_captain = False
                self.southseaCaptainEffect(self.board)


    #TODO: refactor most conditionals to functions
    def play(self, minion_index, pos):

        #check if minion (by index) is in hand
        if 0 <= minion_index < len(self.hand):
            if len(self.board) < Player.MAX_BOARD:
                curr_minion = self.hand.pop(minion_index)

                #use pos variable to determine where to put curr_minion
                if 0 <= pos < len(self.board):
                    self.board.insert(pos, curr_minion)
                else:
                    pos = len(self.board)
                    self.board.append(curr_minion)

                ### Beast ###
                if curr_minion.name == "Alleycat":
                    self.alleyCatBC(self.board, pos, curr_minion)

                if curr_minion.name == "Houndmaster":
                    self.houndmasterBC(self.board, curr_minion)

                if curr_minion.name == "Rabid Saurolisk":
                    self.rabid_saurolisk = True
                    self.rabid_saurolisk_count += 1

                if curr_minion.death_rattle:
                    if self.rabid_saurolisk:
                        self.rabidSauroliskEffect()

                if curr_minion.minion_type == "Beast":
                    if self.pack_leader_gold:
                        curr_minion.buff(4 * self.pack_leader_gold_count, 0)
                    if self.pack_leader:
                        curr_minion.buff(2 * self.pack_leader_count, 0)

                ### Demon ###

                if curr_minion.name == "Vulgar Hommunculus":
                    self.vulgarHommunculusBC()

                if curr_minion.minion_type == "Demon":
                    if self.wrath_weaver:
                        self.wrathWeaverEffect()

                if curr_minion.name == "Soul Devourer":
                    self.soulDevourerBC(self.board, curr_minion)

                if curr_minion.name == "Nathrezim Overseer":
                    self.nathrezim_overseer = True
                    self.nathrezimOverseerBC(self.board)
                
                ### Neutral ###
                if curr_minion.name == "Defender of Argus":
                    self.defenderOfArgusBC(self.board, minion_index, curr_minion)
                
                if curr_minion.name == "Crystalweaver":
                    self.crystalweaverBC(self.board, curr_minion)

                if curr_minion.name == "Virmen Sensei":
                    self.virmenSenseiBC(self.board, curr_minion)
                
                if curr_minion.name == "Menagerie Mug" or curr_minion.name == "Menagerie Jug":
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

                if curr_minion.name == "Majordomo Executus":
                    self.majodomo = True
                    self.majodomo_count += 1

                ### Elemental ###

                if curr_minion.name == "Refreshing Anomaly":
                    self.refreshing_anomaly = True
                
                #If you have a party elemental and play an elemental, buff an elemental
                if curr_minion.minion_type == "Elemental":
                    if self.party_elemental:
                        self.partyElementalEffect(self.board)
                    if self.majodomo:
                        self.majordomo_elemental_counter += 1
        
                if curr_minion.name == "Stasis Elemental":
                    self.stasis_elemental = True
                    self.stasisElementalBC(self.board)

                if curr_minion.name == "Party Elemental":
                    self.party_elemental = True

                if curr_minion.name == "Arcane Assistant":
                    self.arcaneAssistantBC(self.board)
                
                ### Mech ###
                if curr_minion.name == "Screwjank Clunker":
                    self.screwjankClunkerBC(self.board, curr_minion)
                
                if curr_minion.name == "Metaltooth Leaper":
                    self.metaltoothLeaperBC(self.board, curr_minion)
                
                ### Dragon ###
                if curr_minion.name == "Twilight Emissary":
                    self.twilightEmissaryBC(self.board, curr_minion)
                    
                ### Pirate
                if curr_minion.minion_type == "Pirate":
                    if self.salty_looter:
                        self.saltyLooterBC(curr_minion)

                if curr_minion.name == "Southsea Captain":
                    self.southsea_captain = True
                    self.southseaCaptainEffect(self.board)

                if curr_minion.name == "Bloodsail Cannoneer":
                    self.bloodsailCannoneerBC(self.board)

                if curr_minion.name == "Salty Looter":
                    self.salty_looter = True

                if curr_minion.name == "Deck Swabbie":
                    self.deckSwabbieBC()


    
    ### Battlecries ###
    #TODO: Write unit tests for battlecries / effects
    def deckSwabbieBC(self):
        self.discount += 1
        
    def saltyLooterBC(self, curr_minion):
        curr_minion.buff(1, 1)

    def bloodsailCannoneerBC(self, board):
        attack_buff = 3
        health_buff = 3
        if self.bloodsail_cannoneer_gold:
            attack_buff += 3
            health_buff += 3
        for m in board:
            if m.minion_type == "Pirate":
                m.buff(attack_buff, health_buff)
        
    def southseaCaptainEffect(self, board):
        if self.southsea_captain:
            attack_buff = 1
            health_buff = 1
            if self.southsea_captain_gold:
                attack_buff += 1
                health_buff += 1
            for m in board:
                if m.minion_type == "Pirate":
                    m.buff(attack_buff, health_buff)
        else: #When card is sold, remove the buffs
            attack_buff = -1
            health_buff = -1
            if self.southsea_captain_gold:
                attack_buff -= 1
                health_buff -= 1
            for m in board:
                if m.minion_type == "Pirate":
                    m.buff(attack_buff, health_buff)

    def nathrezimOverseerBC(self, board):
        attack_buff = 2
        health_buff = 2
        if self.nathrezim_overseer_gold:
            attack_buff += 2
            health_buff += 2
        self.buffFriendly(board, attack_buff, health_buff, minion_type="Demon")
        
    def soulDevourerBC(self, board, curr_minion):
        #TODO: Can you manually replace minions?
        #manually select friendly demon, remove it and gain its stats and gold
        for m in board:
            if m.minion_type == "Demon" and m.name != "Soul Devourer":
                curr_minion.buff(m.attack, m.health)
                board.pop(board.index(m))
        

        
    def vulgarHommunculusBC(self):
        self.health -= 2

    def arcaneAssistantBC(self, board):
        for m in self.board:
            if m.minion_type == "Elemental":
                m.buff(1, 1)
        #TODO: Handle if arcane assistant is gold or not

    def partyElementalEffect(self, board):
        
        if self.party_elemental_gold:
            attack_buff = 2
            health_buff = 2
        self.buffFriendly(board, attack_buff, health_buff, minion_type="Elemental")
            
    def stasisElementalBC(self, curr_minion):
        #add random elemental to hand, possible?
        self.tavern.getRoll(self.stasis_elemental) #WIP
        self.freezeTavern()

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

    def majordomoEffect(self, board, curr_minion):
        attack_buff = 0
        health_buff = 0
        #do the effect once for majordomo and once for each elemental played this turn
        for i in range(self.majordomo_elemental_counter + 1):
            if curr_minion.gold:
                attack_buff += 2
                health_buff += 2
            else:
                attack_buff += 1
                health_buff += 1
            
        board[len(board)-1].buff(attack_buff, health_buff)
        self.majordomo_elemental_counter = 0

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

    def alleyCatBC(self, board, pos, curr_minion):
        gold = False
        if curr_minion.gold:
            gold = True
        self.summonToken(board, pos, "Tabbycat", gold)

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
            if m == curr_minion:
                continue
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
            minion_map_keys = list(minion_map.keys())
            random_type = minion_map_keys[random.randint(0,len(minion_map)-1)]
            type_list = minion_map.pop(random_type)
            random_minion = type_list[random.randint(0, len(type_list)-1)]
            random_minion.buff(attack_buff, health_buff)
            count += 1
    
    def lightfangEffect(self, board, curr_minion):
        attack_buff = 2
        health_buff = 2
        if curr_minion.gold:
            attack_buff += 2
            health_buff += 2
        minion_map = {}
        for m in board:
            if m == curr_minion:
                continue
            if m.minion_type in minion_map:
                minion_map[m.minion_type].append(m)
            else:
                minion_type_list = []
                minion_type_list.append(m)
                minion_map[m.minion_type] = minion_type_list
        
        for i in minion_map:
            random_minion = minion_map[i][random.randint(0,len(i)-1)]
            random_minion.buff(attack_buff, health_buff)


    def screwjankClunkerBC(self, board, curr_minion):
        attack_buff = 2
        health_buff = 2
        if curr_minion.gold:
            attack_buff += 2
            health_buff += 2
        self.buffFriendly(board, attack_buff, health_buff, minion_type="Mech")

    def metaltoothLeaperBC(self, board, curr_minion):
        attack_buff = 2
        if curr_minion.gold:
            attack_buff += 2
        for m in board:
            if m.minion_type == "Mech":
                m.buff(attack_buff, 0)

    def microMummyEffect(self, board, curr_minion):
        attack_buff = 1
        if curr_minion.gold:
            attack_buff += 1
        self.buffFriendly(board, attack_buff, 0)

    def ironSenseiEffect(self, board, curr_minion):
        attack_buff = 2
        health_buff = 2
        if curr_minion.gold:
            attack_buff += 2
            health_buff += 2
        self.buffFriendly(board, attack_buff, health_buff, minion_type="Mech")

    def twilightEmissaryBC(self, board, curr_minion):
        attack_buff = 2
        health_buff = 2
        if curr_minion.gold:
            attack_buff += 2
            health_buff += 2
        self.buffFriendly(board, attack_buff, health_buff, minion_type="Dragon")

    def cobaltScalebaneEffect(self, board, curr_minion):
        attack_buff = 3
        if curr_minion.gold:
            attack_buff += 3
        self.buffFriendly(board, attack_buff, 0, minion_type="Dragon")

    def stewardOfTimeEffect(self, roll, curr_minion):
        attack_buff = 2
        health_buff = 2
        if curr_minion.gold:
            attack_buff += 2
            health_buff += 2
        for m in roll:
            m.buff(attack_buff, health_buff)

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

    #helper function for summoning tokens WIP
    def summonToken(self, board, pos, token_name, gold=False):
        summon_multiplier = 1
        if self.khadgar:
            summon_multiplier *= (self.khadgar_count * 2)
        if self.khadgar_gold:
            summon_multiplier *= (self.khadgar_gold_count * 3)
        for i in range(summon_multiplier):
            if len(board) < Player.MAX_BOARD:
                curr_token = self.pool.summonToken(token_name, gold)
                board.insert(pos+1, curr_token)
            else: 
                break #if the board is full no point in looping
        

