import Minion

class Pool:

    ROLL_SIZE = {1:3, 2:3, 3:3, 4:4, 5:4, 6:5}
    TIER_COUNT = {1:16, 2:15, 3:13, 4:11, 5:9, 6:7}

    def __init__(self):
        tier1 = {}
        tier2 = {}
        tier3 = {}
        tier4 = {}
        tier5 = {}
        tier6 = {}

        ### Beast ###
        self.tier1["Alleycat"] = addM(Pool.TIER_COUNT[1], 1, 1, "Beast", 1)


        ### Neutral ###
        self.tier1["Wrath Weaver"] = addM(Pool.TIER_COUNT[1], 1, 3, "Neutral", 1)
        self.tier1["Acolyte of C'Thun"] = addM(Pool.TIER_COUNT[1], 2, 2, "Neutral", 1, taunt=True)
        
        self.tier2["Spawn of N'Zoth"] = addM(Pool.TIER_COUNT[2], 2, 2, "Neutral", 2)
        self.tier2["Pack Leader"] = addM(Pool.TIER_COUNT[2], 3, 3, "Neutral", 2)
        self.tier2["Selfless Hero"] = addM(Pool.TIER_COUNT[1], 2, 1, "Neutral", 2)
        self.tier2["Waxrider Togwaggle"] = addM(Pool.TIER_COUNT[2], 1, 5, "Neutral", 2)
        self.tier2["Tormented Ritualist"] = addM(Pool.TIER_COUNT[2], 2, 3, "Neutral", 2, taunt=True)
        self.tier2["Unstable Ghoul"] = addM(Pool.TIER_COUNT[2], 1, 3, "Neutral", 2, taunt=True)
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
    def addM(self, count, attack, health, type, minion_tier, taunt=False, divine_shield=False, poisonous=False, windfury=False, magnetic=False):
        minion_dict = {"count": count, "attack": attack, "type": minion_type}
        if(taunt):
            minion_dict["taunt": True]
        if(divine_shield):
            minion_dict["divine_shield": True]
        if(poisonous):
            minion_dict["poisionous": True]
        if(windfury):
            minion_dict["windfury": True]
        if(magnetic):
            minion_dict["magnetic": True]
        return minion_dict
        