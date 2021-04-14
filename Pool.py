import Minion

class Pool:

    ROLL_SIZE = {1:3, 2:3, 3:3, 4:4, 5:4, 6:5}
    TIER_COUNT = {1:16, 2:15, 3:13, 4:11, 5:9, 6:7}

    def __init__(self):
        self.tier1 = {}
        self.tier2 = {}
        self.tier3 = {}
        self.tier4 = {}
        self.tier5 = {}
        self.tier6 = {}
        self.tokens = {}

        ### Beast ###
        self.tokens["Rat"] = self.addM(0, 1, 1, "Beast", 1, token=True)
        self.tokens["Tabbycat"] = self.addM(0, 1, 1, "Beast", 1, token=True)
        self.tokens["Hyena"] = self.addM(0, 2, 2, "Beast", 1, token=True)
        self.tokens["Spider"] = self.addM(0, 1, 1, "Beast", 1, token=True)
        self.tokens["Big Bad Wolf"] = self.addM(0, 3, 2, 1, token=True)

        self.tier1["Alleycat"] = self.addM(Pool.TIER_COUNT[1], 1, 1, "Beast", 1)
        self.tier1["Scavenging Hyena"] = self.addM(Pool.TIER_COUNT[1], 2, 2, "Beast", 1)

        self.tier2["Kindly Grandmother"] = self.addM(Pool.TIER_COUNT[2], 1, 1, "Beast", 2, death_rattle=True)
        self.tier2["Rabid Saurolisk"] = self.addM(Pool.TIER_COUNT[2], 3, 2, "Beast", 2)

        self.tier3["Houndmaster"] = self.addM(Pool.TIER_COUNT[3], 4, 3, "Beast", 3)
        self.tier3["Monstrous Macaw"] = self.addM(Pool.TIER_COUNT[3], 5, 3, "Beast", 3)
        self.tier3["Infested Wolf"] = self.addM(Pool.TIER_COUNT[3], 3, 3, "Beast", 3, death_rattle=True)
        self.tier3["Rat Pack"] = self.addM(Pool.TIER_COUNT[3], 2, 2, "Beast", 3, death_rattle=True)

        self.tier4["Cave Hydra"] = self.addM(Pool.TIER_COUNT[4], 2, 4, "Beast", 1)
        self.tier4["Savannah Highmane"] = self.addM(Pool.TIER_COUNT[4], 6, 5, "Beast", 1, death_rattle=True)

        ### Neutral ###
        self.tier1["Wrath Weaver"] = self.addM(Pool.TIER_COUNT[1], 1, 3, "Neutral", 1)
        self.tier1["Acolyte of C'Thun"] = self.addM(Pool.TIER_COUNT[1], 2, 2, "Neutral", 1, taunt=True)
        
        self.tier2["Spawn of N'Zoth"] = self.addM(Pool.TIER_COUNT[2], 2, 2, "Neutral", 2, death_rattle=True)
        self.tier2["Pack Leader"] = self.addM(Pool.TIER_COUNT[2], 3, 3, "Neutral", 2)
        self.tier2["Selfless Hero"] = self.addM(Pool.TIER_COUNT[1], 2, 1, "Neutral", 2, death_rattle=True)
        self.tier2["Waxrider Togwaggle"] = self.addM(Pool.TIER_COUNT[2], 1, 5, "Neutral", 2)
        self.tier2["Tormented Ritualist"] = self.addM(Pool.TIER_COUNT[2], 2, 3, "Neutral", 2, taunt=True)
        self.tier2["Unstable Ghoul"] = self.addM(Pool.TIER_COUNT[2], 1, 3, "Neutral", 2, taunt=True, death_rattle=True)
        self.tier2["Menagerie Mug"] = self.addM(Pool.TIER_COUNT[2], 2, 2, "Neutral", 2)
        
        self.tier3["Crystalweaver"] = self.addM(Pool.TIER_COUNT[3], 5, 4, "Neutral", 3)
        self.tier3["Soul Juggler"] = self.addM(Pool.TIER_COUNT[3], 3, 3, "Neutral", 3)
        self.tier3["Khadgar"] = self.addM(Pool.TIER_COUNT[3], 2, 2, "Neutral", 3)

        self.tier4["Virmen Sensei"] = self.addM(Pool.TIER_COUNT[4], 4, 5, "Neutral", 4)
        self.tier4["Menagerie Jug"] = self.addM(Pool.TIER_COUNT[4], 3, 3, "Neutral", 3)
        self.tier4["Majordomo Executus"] = self.addM(Pool.TIER_COUNT[4], 6, 3, "Neutral", 4)
        self.tier4["Menagerie Jug"] = self.addM(Pool.TIER_COUNT[4], 3, 3, "Neutral", 3)
        self.tier4["Qiraji Harbinger"] = self.addM(Pool.TIER_COUNT[4], 5, 5, "Neutral", 4)
        self.tier4["Bolvar, Fireblood"] = self.addM(Pool.TIER_COUNT[4], 1, 7, "Neutral", 4, divine_shield=True)
        self.tier4["Defender of Argus"] = self.addM(Pool.TIER_COUNT[4], 2, 3, "Neutral", 4)

        ### Mech ###

        ### Elemental ###
        self.tier1["Sellemental"] = self.addM(Pool.TIER_COUNT[1], 2, 2, "Elemental", 1)
        self.tier1["Water Drople"] = self.addM(Pool.TIER_COUNT[1], 2, 2, "Elemental", 1)
        self.tier1["Refreshing Anomaly"] = self.addM(Pool.TIER_COUNT[1], 1, 3, "Elemental", 1)
        self.tier2["Party Elemental"] = self.addM(Pool.TIER_COUNT[2], 3, 2, "Elemental", 2)
        self.tier2["Molten Rock"] = self.addM(Pool.TIER_COUNT[2], 2, 4, "Elemental", 2, taunt=True)
        self.tier3["Stasis Elemental"] = self.addM(Pool.TIER_COUNT[3], 4, 4, "Elemental", 3)
        self.tier3["Arcane Assistant"] = self.addM(Pool.TIER_COUNT[3], 3, 3, "Elemental", 3)
        self.tier3["Crackling Cyclone"] = self.addM(Pool.TIER_COUNT[3], 4, 1, "Elemental", 3, divine_shield=True, windfury=True)
        
        ### Demon ###
        self.tier1["Imp"] = self.addM(Pool.TIER_COUNT[1], 1, 1, "Demon", 1)
        self.tier1["Fiendish Servant"] = self.addM(Pool.TIER_COUNT[1], 2, 1, "Demon", 1, death_rattle=True)
        self.tier1["Vulgar Homunculus"] = self.addM(Pool.TIER_COUNT[2], 2, 4, "Demon", 1, taunt=True)
        self.tier2["Nathrezim Overseer"] = self.addM(Pool.TIER_COUNT[2], 2, 3, "Demon", 2)
        self.tier2["Imprisoner"] = self.addM(Pool.TIER_COUNT[2], 3, 3, "Demon", 2, taunt=True, death_rattle=True)
        self.tier3["Imp Gang Boss"] = self.addM(Pool.TIER_COUNT[1], 1, 1, "Demon", 1)
        self.tier3["Soul Devourer"] = self.addM(Pool.TIER_COUNT[3], 3, 3, "Demon", 3)
        self.tier4["Ring Matron"] = self.addM(Pool.TIER_COUNT[4], 6, 4, "Demon", 4, taunt=True, death_rattle=True)
        self.tier4["Siegebreaker"] = self.addM(Pool.TIER_COUNT[4], 5, 8, "Demon", 4, taunt=True)
        ### Pirate ###

        ### Dragon ###

        ### Murloc ###

    #for testing
    def dummyRoll(self, tier):
        dummy = []
        for i in range(Pool.ROLL_SIZE[tier]):
            dummy.append(Minion.Minion("Alleycat", 1, 1, "Beast", 1))
        return dummy

    #helper function for adding minions
    def addM(self, count, attack, health, minion_type, minion_tier, taunt=False, divine_shield=False, poisonous=False, windfury=False, magnetic=False, death_rattle=False):
        minion_dict = {"count": count, "attack": attack, "type": minion_type}
        if(taunt):
            minion_dict["taunt"] = True
        if(divine_shield):
            minion_dict["divine_shield"] = True
        if(poisonous):
            minion_dict["poisionous"] = True
        if(windfury):
            minion_dict["windfury"] = True
        if(magnetic):
            minion_dict["magnetic"] = True
        if(death_rattle):
            minion_dict["death_rattle"] = True
        return minion_dict

    #TODO: create a helper function to initialize and return Minion objects (for when we pass them to the tavern)
    #also create one for tokens

    def summonToken(self, minion_name):
        minion_stats = self.tokens[minion_name]
        #return a minion using the minion_stats
    
            