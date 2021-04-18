import Tavern
import random

class Player:

    STARTING_GOLD = 3
    MAX_GOLD = 10
    MAX_HAND = 10
    MAX_BOARD = 7
    UPGRADE_COST = {2: 5, 3: 7, 4: 8, 5: 9, 6: 10}
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

        # Lil' Rag: see lilRagEffect()
        self.lil_rag_count = 0
        self.lil_rag_gold_count = 0

        #Nathrezim Overseer: see nathrezimOverseerBC()
        self.nathrezim_overseer = False
        self.nathrezim_overseer_gold = False

        #Majordomo Executus: at the end of the turn give left most minion +1/+1 (+2/+2 if gold)
        #give an additional buff for each elemental played this turn
        self.majodomo = False
        self.majodomo_count = 0
        self.majordomo_elemental_counter = 0

        #Salty Looter: see saltyLooterEffect()
        self.salty_looter = False
        self.salty_looter_gold = False 

        #Murloc Tidecaller: see murlocTidecallerEffect()
        self.murloc_tidecaller_count = 0
        self.murloc_tidecaller = False

        #Lieutenant Garr: see lieutenantGarrEffect()
        self.lieutenant_garr = False
        self.lieutenant_garr_count = 0

        #Cap'n Hoggarr
        self.capn_hoggarr = False
        self.capn_hoggarr_gold = False
        self.capn_hoggarr_count = 0

        #Molten Rock
        self.molten_rock = False
        self.molten_rock_count = 0

        #Mama Bear 
        self.mama_bear = False
        self.mama_bear_count = 0
        self.mama_bear_gold = False
        self.mama_bear_gold_count = 0

    def getRoll(self):
        return self.tavern.roll

    def getBoard(self):
        return self.board

    def getHand(self):
        return self.hand

    def getTavernCost(self):
        if self.tavern.tier != 6:
            cost = Player.UPGRADE_COST[self.tavern.tier + 1] - self.discount
            if cost <= 0:
                cost = 0
            return cost
        else:
            return -1

    def getGold(self):
        return self.gold

    def getHealth(self):
        return self.health

    def getRound(self):
        return self.round

    def freezeTavern(self):
        if self.freeze:
            return False

        self.freeze = True
        return True

    def isTavernFrozen(self):
        return self.freeze

    def reroll(self):
        #refreshing anomaly gives a free reroll, refreshing anomoly gold gives two rerolls

        if self.refreshing_anomaly:
            Player.REROLL_COST = 0
            self.refreshing_anomaly = False

        if self.refreshing_anomaly_gold:
            if self.anomaly_gold_counter != 0:
                Player.REROLL_COST = 0
                self.anomaly_gold_counter -= 1
            else:
                Player.REROLL_COST = 1
                self.refreshing_anomaly_gold = False

        if self.gold >= Player.REROLL_COST:
            self.gold -= Player.REROLL_COST
            self.tavern.getRoll(stasis_elemental=False)
            Player.REROLL_COST = 1
            return True

        Player.REROLL_COST = 1
        return False

    def upgradeTavern(self):
        if self.tavern.tier == 6:
            return False

        #check if we have enough money see upgrade_cost constant
        #if we do then we need to invoke the tavern's upgrade function
        cost = Player.UPGRADE_COST[self.tavern.tier + 1] - self.discount
        if cost <= 0:
            cost = 0
        if self.gold >= cost:
            self.tavern.tierUp()
            self.gold -= cost
            self.calcDiscount(True)
            return True
        return False

    def buy(self, minion_index):
        #check if we can fit it in our hand
        if self.gold >= 3 and len(self.hand) < Player.MAX_HAND:
            bought_minion = self.tavern.buy(minion_index)
            if bought_minion:
                self.hand.append(bought_minion)
                self.gold -= 3
        
        self.goldCheck(self.board, self.hand)
        
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
        self.capn_hoggarr = False
        self.capn_hoggarr_gold = False
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
            if m.name == "Razorgore, the Untamed":
                self.razorgoreEffect(self.board, m)
            if m.name == "Mythrax the Unraveler":
                self.mythraxEffect(self.board, m)

        self.tavern.returnRoll()

    def resetGold(self):
        if Player.STARTING_GOLD + self.round > Player.MAX_GOLD:
            self.gold = Player.MAX_GOLD
        else:
            self.gold = Player.STARTING_GOLD + self.round
    
    def calcDiscount(self, tieredUp=False):
        if tieredUp or self.round == 0:
            self.discount = 0
        else:
            self.discount += 1
    
    def sell(self, minion_index):
        #check if minion (by index) is in board
        if 0 <= minion_index < len(self.board):
            #remove minion from board 
            sold_minion = self.board.pop(minion_index)
            self.addGold(1)
            self.pool.returnToPool(sold_minion.name, sold_minion.tier)

            self.boardRemoval(sold_minion)
            


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
                    if self.mama_bear:
                        curr_minion.buff(4 * self.mama_bear_count, 4 * self.mama_bear_count)
                    if self.mama_bear_gold:
                        curr_minion.buff(8 * self.mama_bear_gold_count, 8 * self.mama_bear_gold_count)

                if curr_minion.name == "Mama Bear":
                    if curr_minion.gold:
                        self.mama_bear_gold_count = True
                        self.mama_bear_gold_count += 1
                    else:
                        self.mama_bear = True
                        self.mama_bear_count += 1

                if curr_minion.name == "Pack Leader":
                    if curr_minion.gold:
                        self.pack_leader_gold = True
                        self.pack_leader_gold_count += 1
                    else:
                        self.pack_leader = True
                        self.pack_leader_count += 1

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
                    self.nathrezimOverseerBC(self.board, curr_minion)

                if curr_minion.name == "Annihilan Battlemaster":
                    self.annihilanBattlemasterBC(curr_minion)
                
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

                if curr_minion.name == "Strongshell Scavenger":
                    self.strongShellBC(self.board, curr_minion)

                ### Elemental ###

                if curr_minion.name == "Molten Rock":
                    self.molten_rock = True
                    self.molten_rock_count += 1

                if curr_minion.name == "Refreshing Anomaly":
                    self.refreshing_anomaly = True

                if curr_minion.name == "Lil' Rag":
                    if curr_minion.gold:
                        self.lil_rag_gold_count += 1
                    else:
                        self.lil_rag_count += 1
                
                #If you have a party elemental and play an elemental, buff an elemental
                if curr_minion.minion_type == "Elemental":
                    if self.party_elemental:
                        self.partyElementalEffect(self.board)
                    if self.majodomo:
                        self.majordomo_elemental_counter += 1
                    if self.lil_rag_count > 0:
                        for i in range(self.lil_rag_count-1):
                            self.lilRagEffect(self.board, curr_minion)
                    if self.lil_rag_gold_count > 0:
                        for i in range(self.lil_rag_gold_count-1):
                            self.lilRagEffect(self.board, curr_minion)
                            self.lilRagEffect(self.board, curr_minion)
                    if self.lieutenant_garr:
                        self.lieutenant_garr_count += 1
                        self.lieutenantGarrEffect(self.board, curr_minion)
                    if self.molten_rock:
                        self.moltenRockEffect(self.board)
                    
        
                if curr_minion.name == "Stasis Elemental":
                    self.stasis_elemental = True

                if curr_minion.name == "Party Elemental":
                    self.party_elemental = True

                if curr_minion.name == "Arcane Assistant":
                    self.arcaneAssistantBC(self.board, curr_minion)

                if curr_minion.name == "Lieutenant Garr":
                    self.lieutenantGarrEffect(self.board, curr_minion)
                
                ### Mech ###
                if curr_minion.name == "Screwjank Clunker":
                    self.screwjankClunkerBC(self.board, curr_minion)
                
                if curr_minion.name == "Metaltooth Leaper":
                    self.metaltoothLeaperBC(self.board, curr_minion)
                
                ### Dragon ###
                if curr_minion.name == "Twilight Emissary":
                    self.twilightEmissaryBC(self.board, curr_minion)
                    
                ### Pirate ###
                if curr_minion.minion_type == "Pirate":
                    if self.salty_looter:
                        self.saltyLooterEffect(self.board)

                if curr_minion.name == "Seabreaker Goliath":
                    self.seabreakerGoliathEffect(self.board, curr_minion)

                if curr_minion.name == "Cap'n Hoggarr":
                    if curr_minion.gold == True:
                        self.capn_hoggarr_gold = True
                    self.capn_hoggarr = True

                if curr_minion.name == "Bloodsail Cannoneer":
                    self.bloodsailCannoneerBC(self.board, curr_minion)

                if curr_minion.name == "Salty Looter":
                    self.salty_looter = True

                if curr_minion.name == "Deck Swabbie":
                    self.deckSwabbieBC(curr_minion)
                    
                ### Murloc ###
                if curr_minion.minion_type == "Murloc":
                    if self.murloc_tidecaller:
                        self.murlocTidecallerEffect(curr_minion)

                if curr_minion.name == "Toxfin":
                    self.toxfinBC(self.board, curr_minion)

                if curr_minion.name == "Coldlight Seer":
                    self.coldlightSeerBC(self.board, curr_minion)

                if curr_minion.name == "Rockpool Hunter":
                    self.rockpoolHunterBC(self.board, curr_minion)

                if curr_minion.name == "Felfin Navigator":
                    self.felfinNavigatorBC(self.board, curr_minion)

                if curr_minion.name == "Murloc Tidehunter":
                    self.murlocTidehunterBC(self.board, pos, curr_minion)

                if curr_minion.name == "Murloc Tidecaller":
                    self.murloc_tidecaller = True

                if curr_minion.name == "Primalfin Lookout":
                    self.primalfinLookoutBC(self.board, curr_minion)

                if curr_minion.name == "King Bagurgle":
                    self.kingBagurgleBC(self.board, curr_minion)


    def goldCheck(self, board, hand):
        #loop through board looking for triples, when one is found combine the three minions and return 1 gold minion to the hand
        minion_map = {}
        for m in board:
            # collect non gold minions into arrays by name, we are looking for sets of 3 or more
            if not m.gold:
                if m.name in minion_map:
                    minion_map[m.name].append(m)
                else:
                    minion_list = []
                    minion_list.append(m)
                    minion_map[m.name] = minion_list

        for m in hand:
            # collect non gold minions into arrays by name, we are looking for sets of 3 or more
            if not m.gold:
                if m.name in minion_map:
                    minion_map[m.name].append(m)
                else:
                    minion_list = []
                    minion_list.append(m)
                    minion_map[m.name] = minion_list

        for i in minion_map:
            if len(minion_map[i]) >= 3: #if we find a set of 3
                self.makeGold(minion_map[i], self.board, self.hand) #create the gold card and add it to your hand
                self.discover(self.tavern.tier, self.hand) #also get a card from discovery

    def makeGold(self, triple, board, hand):
        first = triple[0]
        second = triple[1]
        third = triple[2]

        gold = self.pool.combine_minions([first, second, third])

        if len(hand) < Player.MAX_HAND:
            hand.append(gold)

        #loop through and remove if minion is on the board
        for m in [first, second, third]:
            if m in board:
                board.remove(m)
                self.boardRemoval(m)

    def discover(self, tier, hand):
        #check if there's room in our hand then call pool.discovery and pass in self.tavern.tier
        if len(hand) < Player.MAX_HAND:
            hand.append(self.pool.discovery(tier))
        return

    def murloc_discover(self, tier, hand):
        #check if there's room in our hand then call pool.murloc_discovery and pass in self.tavern.tier
        if len(hand) < Player.MAX_HAND:
            hand.append(self.pool.murloc_discovery(tier))
        return

    ### Battlecries ###
    def strongShellBC(self, board, curr_minon):
        for m in board:
            if m.taunt:
                if curr_minon.gold:
                    m.buff(4,4)
                else:
                    m.buff(2,2)

    def seabreakerGoliathEffect(self, board, curr_minion):
        attack_buff = 1
        health_buff = 1
        if curr_minion.gold:
            attack_buff = 2
            health_buff = 2
        for m in board:
            if m.minion_type == "Pirate":
                m.buff(attack_buff, health_buff)

    def annihilanBattlemasterBC(self, curr_minion):
        damage_taken = 40 - self.health
        if curr_minion.gold:
            curr_minion.buff(0, damage_taken*2)
        curr_minion.buff(0, damage_taken)

    def lieutenantGarrEffect(self, board, curr_minion):
        health_buff = 0
        for m in board:
            if m.minion_type == "Elemental":
                health_buff += 1
        if curr_minion.gold:
            health_buff *= 2
        health_buff -= 1 #This is implying he doesn't count himself as an elemental to buff
        curr_minion.buff(0, health_buff)
    
    def murlocTidecallerEffect(self, curr_minion):
        if curr_minion.gold:
            curr_minion.buff(2, 0)
        curr_minion.buff(1, 0)

    def murlocTidehunterBC(self, board, pos, curr_minion):
        gold = False
        if curr_minion.gold:
            gold = True
        self.summonToken(board, pos, "Murloc Scout", gold)
    
    def deckSwabbieBC(self, curr_minion):
        if curr_minion.gold:
            self.discount += 2
        else:
            self.discount += 1
        
    def saltyLooterEffect(self, board):
        for m in board:
            if m.name == "Salty Looter":
                if m.gold:
                    m.buff(2,2)
                else:
                    m.buff(1,1)
        
    def bloodsailCannoneerBC(self, board, curr_minion):
        attack_buff = 3
        health_buff = 3
        if curr_minion.gold:
            attack_buff += 3
            health_buff += 3
        for m in board:
            if m.minion_type == "Pirate" and m != curr_minion:
                m.buff(attack_buff, health_buff)

    def nathrezimOverseerBC(self, board, curr_minon):
        attack_buff = 2
        health_buff = 2
        if self.nathrezim_overseer_gold:
            attack_buff += 2
            health_buff += 2
        self.buffFriendly(board, attack_buff, health_buff, minion_type="Demon", this_minion=curr_minon)
        
    def soulDevourerBC(self, board, curr_minion):
        if curr_minion.gold:
            for m in board:
                if m.minion_type == "Demon" and m != curr_minion:
                    curr_minion.buff(2*m.attack, 2*m.health)
                    self.addGold(6)
                    board.pop(board.index(m))
        else:
            for m in board:
                if m.minion_type == "Demon" and m != curr_minion:
                    curr_minion.buff(m.attack, m.health)
                    self.addGold(3)
                    board.pop(board.index(m))
        
    def vulgarHommunculusBC(self):
        self.health -= 2 #gold case is the same

    def arcaneAssistantBC(self, board, curr_minion):
        for m in self.board:
            if m.minion_type == "Elemental" and m != curr_minion:
                if curr_minion.gold:
                    m.buff(2,2)
                else:
                    m.buff(1,1)

    def partyElementalEffect(self, board):
        for m in board:
            if m.name == "Party Elemental":
                if m.gold:
                    self.buffFriendly(board, 2, 2, minion_type="Elemental", this_minion=m)
                else:
                    self.buffFriendly(board, 1, 1, minion_type="Elemental", this_minion=m)

    def wrathWeaverEffect(self):
        for m in self.board:
            if m.name == "Wrath Weaver":
                self.health -= 1
                if m.gold:
                    m.buff(4, 4)
                else:
                    m.buff(2, 2)

    def rabidSauroliskEffect(self):
        for m in self.board:
            if m.name == "Rabid Saurolisk":
                if m.gold:
                    m.buff(2, 4)
                else:
                    m.buff(1, 2)

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
        if len(board) == 1:
            return

        attack_buff = 1
        health_buff = 1
        if curr_minion.gold:
            attack_buff += 1
            health_buff += 1
        if minion_index > 0:
            if minion_index == len(board):
                board[minion_index - 2].giveTaunt()
                board[minion_index - 2].buff(attack_buff, health_buff)
            elif minion_index > len(board):
                board[len(board) - 2].giveTaunt()
                board[len(board) - 2].buff(attack_buff, health_buff)
            else:
                board[minion_index - 1].giveTaunt()
                board[minion_index - 1].buff(attack_buff, health_buff)
        if minion_index < len(self.board) - 1:
            board[minion_index + 1].giveTaunt()
            board[minion_index + 1].buff(attack_buff, health_buff)
    
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
            if m == curr_minion or m.minion_type == "Neutral":
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
            if m == curr_minion or m.minion_type == "Neutral":
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

    def mythraxEffect(self, board, curr_minion):
        type_set = set()
        for m in board:
            if m.minion_type != "Neutral":
                type_set.add(m.minion_type)
        if curr_minion.gold:
            curr_minion.buff(2 * len(type_set), 4 * len(type_set))
        else:
            curr_minion.buff(1 * len(type_set), 2 * len(type_set))
        

    def screwjankClunkerBC(self, board, curr_minion):
        attack_buff = 2
        health_buff = 2
        if curr_minion.gold:
            attack_buff += 2
            health_buff += 2
        self.buffFriendly(board, attack_buff, health_buff, minion_type="Mech", this_minion=curr_minion)

    def metaltoothLeaperBC(self, board, curr_minion):
        attack_buff = 2
        if curr_minion.gold:
            attack_buff += 2
        for m in board:
            if m.minion_type == "Mech" and m != curr_minion:
                m.buff(attack_buff, 0)

    def microMummyEffect(self, board, curr_minion):
        attack_buff = 1
        if curr_minion.gold:
            attack_buff += 1
        self.buffFriendly(board, attack_buff, 0, this_minion=curr_minion)

    def ironSenseiEffect(self, board, curr_minion):
        attack_buff = 2
        health_buff = 2
        if curr_minion.gold:
            attack_buff += 2
            health_buff += 2
        self.buffFriendly(board, attack_buff, health_buff, minion_type="Mech", this_minion=curr_minion)

    def twilightEmissaryBC(self, board, curr_minion):
        attack_buff = 2
        health_buff = 2
        if curr_minion.gold:
            attack_buff += 2
            health_buff += 2
        self.buffFriendly(board, attack_buff, health_buff, minion_type="Dragon", this_minion=curr_minion)

    def cobaltScalebaneEffect(self, board, curr_minion):
        attack_buff = 3
        if curr_minion.gold:
            attack_buff += 3
        self.buffFriendly(board, attack_buff, 0, minion_type="Dragon", this_minion=curr_minion)

    def stewardOfTimeEffect(self, roll, curr_minion):
        attack_buff = 2
        health_buff = 1
        if curr_minion.gold:
            attack_buff += 2
            health_buff += 1
        for m in roll:
            m.buff(attack_buff, health_buff)

    def toxfinBC(self, board, curr_minion):
        self.buffFriendly(board, 0, 0, minion_type="Murloc", poisonous=True, this_minion=curr_minion) #gold is same case

    def coldlightSeerBC(self, board, curr_minion):
        health_buff = 2
        if curr_minion.gold:
            health_buff += 2
        self.buffAllFriendly(board, 0, health_buff, this_minion=curr_minion)

    def rockpoolHunterBC(self, board, curr_minion):
        attack_buff = 1
        health_buff = 1
        if curr_minion.gold:
            attack_buff += 1
            health_buff += 1
        self.buffFriendly(board, attack_buff, health_buff, minion_type="Murloc", this_minion=curr_minion)

    def felfinNavigatorBC(self, board, curr_minion):
        attack_buff = 1
        health_buff = 1
        if curr_minion.gold:
            attack_buff += 1
            health_buff += 1
        self.buffAllFriendly(board, attack_buff, health_buff, minion_type="Murloc", this_minion=curr_minion)
    

    def primalfinLookoutBC(self, board, curr_minion):
        lookout_num = 0
        for m in board:
            if m.name == "Primalfin Lookout":
                lookout_num += 1

            if m.minion_type == "Murloc" and lookout_num > 1:
                self.murloc_discover(self.tavern.tier, self.hand)
                if curr_minion.gold:
                    self.murloc_discover(self.tavern.tier, self.hand)
                break

    def razorgoreEffect(self, board, curr_minion):
        if curr_minion.gold:
            val = 2
        else:
            val = 1
        for m in board:
            if m.minion_type == "Dragon":
                curr_minion.buff(val, val)

    def kingBagurgleBC(self, board, curr_minion):
        if curr_minion.gold:
            val = 4
        else:
            val = 2
        self.buffAllFriendly(board, val, val, minion_type="Murloc", this_minion=curr_minion)

    def lilRagEffect(self, board, elemental):
        val = elemental.tier
        self.buffFriendly(board, val, val)

    def moltenRockEffect(self, board):
        for m in board:
            if m.name == "Molten Rock":
                if m.gold:
                    m.buff(0, 1)
                m.buff(0, 1)

    #helper function for "give a friendly minion..." effects
    #randomly buffs a friendly minion, can be specified by type
    def buffFriendly(self, board, attack, health, minion_type=None, taunt=False, poisonous=False, this_minion=None): #add more cases as necessary eg. windfury, divine_shield, etc
        if minion_type is not None:
            type_specific_list = [m for m in board if m.minion_type == minion_type and m != this_minion]
        else:
            type_specific_list = board

        #fails if type_specific_list is empty
        if type_specific_list:
            random_friend = type_specific_list[random.randint(0, len(type_specific_list) -1)]
            random_friend.buff(attack, health)
            if taunt:
                random_friend.giveTaunt()
            if poisonous:
                random_friend.givePoisonous()

    def buffAllFriendly(self, board, attack, health, minion_type=None, taunt=False, poisonous=False, this_minion=None): #add more cases as necessary eg. windfury, divine_shield, etc
        if minion_type is not None:
            type_specific_list = [m for m in board if m.minion_type == minion_type and m != this_minion]
        else:
            type_specific_list = board

        #fails if type_specific_list is empty
        if type_specific_list:
            for m in type_specific_list:
                m.buff(attack, health)
                if taunt:
                    m.giveTaunt()
                if poisonous:
                    m.givePoisonous()

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

    def addGold(self, amount):
        self.gold += amount
        if self.gold > Player.MAX_GOLD:
            self.gold = Player.MAX_GOLD

    def boardRemoval(self, removed_minion):
        # Handling removal of specific minions
        if removed_minion.minion_type == "Pirate":
            if self.capn_hoggarr_gold:
                self.addGold(2)
            self.addGold(1)
        if removed_minion.name == "Khadgar":
            if removed_minion.gold:
                self.khadgar_gold_count -= 1
                if self.khadgar_gold_count == 0:
                    self.khadgar_gold = False
            else:
                self.khadgar_count -= 1
                if self.khadgar_count == 0:
                    self.khadgar = False

        if removed_minion.name == "Pack Leader":
            if removed_minion.gold:
                self.pack_leader_gold_count -= 1
                if self.pack_leader_gold_count == 0:
                    self.pack_leader_gold = False
            else:
                self.pack_leader_count -= 1
                if self.pack_leader_count == 0:
                    self.pack_leader = False

        if removed_minion.name == "Wrath Weaver":
            self.wrath_weaver_count -= 1
            if self.wrath_weaver_count == 0:
                self.wrath_weaver = False

        if removed_minion.name == "Rabid Saurolisk":
            self.rabid_saurolisk_count -= 1
            if self.rabid_saurolisk_count == 0:
                self.rabid_saurolisk = False

        if removed_minion.name == "Majordomo Executus":
            self.majodomo_count -= 1
            if self.majodomo_count == 0:
                self.majodomo = False
                self.majordomo_elemental_counter = 0

        if removed_minion.name == "Sellemental":
            #When you sell a sellemental, get a water_droplet in your hand, gold gives you two
            if len(self.hand) < Player.MAX_HAND:
                gold_token = False
                if removed_minion.gold:
                    gold_token = True
                    if len(self.hand) < Player.MAX_HAND - 1:
                        extra_water_droplet = self.pool.summonToken("Water Droplet", gold=gold_token)
                        self.hand.append(extra_water_droplet)
                water_droplet = self.pool.summonToken("Water Droplet", gold=gold_token)
                self.hand.append(water_droplet)
        '''
        if removed_minion.name == "Stasis Elemental":
            self.stasis_elemental_count -= 1
            if self.stasis_elemental_count == 0:
                self.stasis_elemental = False
        '''
        if removed_minion.name == "Lieutenant Garr":
            self.lieutenant_garr_count -= 1
            if self.lieutenant_garr_count == 0:
                self.lieutenant_garr = False

        if removed_minion.name == "Party Elemental":
            self.party_elemental_count -= 1
            if self.party_elemental_count == 0:
                self.party_elemental = False

        if removed_minion.name == "Lil' Rag":
            if removed_minion.gold:
                self.lil_rag_gold_count -= 1
            else:
                self.lil_rag_count -= 1

        if removed_minion.name == "Steward of Time":
            self.stewardOfTimeEffect(self.tavern.roll, removed_minion)

        if removed_minion.name == "Freedealing Gambler":
            if removed_minion.gold:
                self.addGold(3)
            self.addGold(2)#because we already add 1 in the begining 

        if removed_minion.name == "Cap'n Hoggarr":
            self.capn_hoggarr_count -= 1
            if self.capn_hoggarr_count == 0:
                self.capn_hoggarr = False
                        
        if removed_minion.name == "Murloc Tidecaller":
            self.murloc_tidecaller_count -= 1
            if self.murloc_tidecaller_count == 0:
                self.murloc_tidecaller = False

        if removed_minion.name == "Molten Rock":
            self.molten_rock_count -= 1
            if self.molten_rock_count == 0:
                self.molten_rock = False

        if removed_minion.name == "Mama Bear":
            if removed_minion.gold:
                self.mama_bear_gold_count -= 1
                if self.mama_bear_gold_count == 0:
                    self.mama_bear_gold = False
            else:
                self.mama_bear_count -= 1
                if self.mama_bear_count == 0:
                    self.mama_bear = False
        
        if removed_minion.name == "Lil' Rag":
            self.lil_rag_count -= 1
