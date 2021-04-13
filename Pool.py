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
        self.tokens["Rat"] = addM(0, 1, 1, "Beast", 1, token=True)
        self.tokens["Tabbycat"] = addM(0, 1, 1, "Beast", 1, token=True)
        self.tokens["Hyena"] = addM(0, 2, 2, "Beast", 1, token=True)
        self.tokens["Spider"] = addM(0, 1, 1, "Beast", 1, token=True)
        self.tokens["Big Bad Wolf"] = addM(0, 3, 2, 1, token=True)

        self.tier1["Alleycat"] = addM(Pool.TIER_COUNT[1], 1, 1, "Beast", 1)
        self.tier1["Scavenging Hyena"] = addM(Pool.TIER_COUNT[1], 2, 2, "Beast", 1)

        self.tier2["Kindly Grandmother"] = addM(Pool.TIER_COUNT[2], 1, 1, "Beast", 2, death_rattle=True)
        self.tier2["Rabid Saurolisk"] = addM(Pool.TIER_COUNT[2], 3, 2, "Beast", 2)

        self.tier3["Houndmaster"] = addM(Pool.TIER_COUNT[3], 4, 3, "Beast", 3)
        self.tier3["Monstrous Macaw"] = addM(Pool.TIER_COUNT[3], 5, 3, "Beast", 3)
        self.tier3["Infested Wolf"] = addM(Pool.TIER_COUNT[3], 3, 3, "Beast", 3, death_rattle=True)
        self.tier3["Rat Pack"] = addM(Pool.TIER_COUNT[3], 2, 2, "Beast", 3, death_rattle=True)

        self.tier4["Cave Hydra"] = addM(Pool.TIER_COUNT[4], 2, 4, "Beast", 1)
        self.tier4["Savannah Highmane"] = addM(Pool.TIER_COUNT[4], 6, 5, "Beast", 1, death_rattle=True)

        ### Neutral ###
        self.tier1["Wrath Weaver"] = addM(Pool.TIER_COUNT[1], 1, 3, "Neutral", 1)
        self.tier1["Acolyte of C'Thun"] = addM(Pool.TIER_COUNT[1], 2, 2, "Neutral", 1, taunt=True)
        
        self.tier2["Spawn of N'Zoth"] = addM(Pool.TIER_COUNT[2], 2, 2, "Neutral", 2, death_rattle=True)
        self.tier2["Pack Leader"] = addM(Pool.TIER_COUNT[2], 3, 3, "Neutral", 2)
        self.tier2["Selfless Hero"] = addM(Pool.TIER_COUNT[1], 2, 1, "Neutral", 2, death_rattle=True)
        self.tier2["Waxrider Togwaggle"] = addM(Pool.TIER_COUNT[2], 1, 5, "Neutral", 2)
        self.tier2["Tormented Ritualist"] = addM(Pool.TIER_COUNT[2], 2, 3, "Neutral", 2, taunt=True)
        self.tier2["Unstable Ghoul"] = addM(Pool.TIER_COUNT[2], 1, 3, "Neutral", 2, taunt=True, death_rattle=True)
        self.tier2["Menagerie Mug"] = addM(Pool.TIER_COUNT[2], 2, 2, "Neutral", 2)
        
        self.tier3["Crystalweaver"] = addM(Pool.TIER_COUNT[3], 5, 4, "Neutral", 3)
        self.tier3["Soul Juggler"] = addM(Pool.TIER_COUNT[3], 3, 3, "Neutral", 3)
        self.tier3["Khadgar"] = addM(Pool.TIER_COUNT[3], 2, 2, "Neutral", 3)

        self.tier4["Virmen Sensei"] = addM(Pool.TIER_COUNT[4], 4, 5, "Neutral", 4)
        self.tier4["Menagerie Jug"] = addM(Pool.TIER_COUNT[4], 3, 3, "Neutral", 3)
        self.tier4["Majordomo Executus"] = addM(Pool.TIER_COUNT[4], 6, 3, "Neutral", 4)
        self.tier4["Menagerie Jug"] = addM(Pool.TIER_COUNT[4], 3, 3, "Neutral", 3)
        self.tier4["Qiraji Harbinger"] = addM(Pool.TIER_COUNT[4], 5, 5, "Neutral", 4)
        self.tier4["Bolvar, Fireblood"] = addM(Pool.TIER_COUNT[4], 1, 7, "Neutral", 4, divine_shield=True)
        self.tier4["Defender of Argus"] = addM(Pool.TIER_COUNT[4], 2, 3, "Neutral", 4)

        ### Mech ###

        ### Elemental ###

        ### Demon ###

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
    
            