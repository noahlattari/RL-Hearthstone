import Minion
import random

class Pool:

    ROLL_SIZE = {1: 3, 2: 3, 3: 3, 4: 4, 5: 4, 6: 5}
    TIER_COUNT = {1: 16, 2: 15, 3: 13, 4: 11, 5: 9, 6: 7}

    def __init__(self):
        self.tier1 = {}
        self.tier2 = {}
        self.tier3 = {}
        self.tier4 = {}
        self.tier5 = {}
        self.tier6 = {}
        self.tokens = {}
        self.all_minions = []
        self.murloc = {1: {}, 2: {}, 3: {}, 4: {}, 5: {}, 6: {}}

        ### Beast ###
        self.tokens["Rat"] = self.addM(0, 1, 1, "Beast", 1, token=True)
        self.tokens["Tabbycat"] = self.addM(0, 1, 1, "Beast", 1, token=True)
        self.tokens["Hyena"] = self.addM(0, 2, 2, "Beast", 1, token=True)
        self.tokens["Spider"] = self.addM(0, 1, 1, "Beast", 1, token=True)

        self.tokens["Big Bad Wolf"] = self.addM(0, 3, 2, "Beast", 1, token=True)

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
        self.tier4["Menagerie Jug"] = self.addM(Pool.TIER_COUNT[4], 3, 3, "Neutral", 4)
        self.tier4["Majordomo Executus"] = self.addM(Pool.TIER_COUNT[4], 6, 3, "Neutral", 4)
        self.tier4["Qiraji Harbinger"] = self.addM(Pool.TIER_COUNT[4], 5, 5, "Neutral", 4)
        self.tier4["Bolvar, Fireblood"] = self.addM(Pool.TIER_COUNT[4], 1, 7, "Neutral", 4, divine_shield=True)
        self.tier4["Defender of Argus"] = self.addM(Pool.TIER_COUNT[4], 2, 3, "Neutral", 4)

        self.tier5["Lightfang Enforcer"] = self.addM(Pool.TIER_COUNT[5], 2, 2, "Neutral", 5)

        ### Mech ###
        self.tokens["Guard Bot"] = self.addM(0, 2, 3, "Mech", 1, taunt=True)
        self.tokens["Robosaur"] = self.addM(0, 8, 8, "Mech", 1)
        self.tokens["Microbot"] = self.addM(0, 1, 1, "Mech", 1)
        self.tokens["Damaged Golem"] = self.addM(0, 2, 1, "Mech", 1)

        self.tier1["Micro Mummy"] = self.addM(Pool.TIER_COUNT[1], 1, 2, "Mech", 1, reborn=True)

        self.tier2["Kaboom Bot"] = self.addM(Pool.TIER_COUNT[2], 2, 2, "Mech", 2, death_rattle=True)
        self.tier2["Metaltooth Leaper"] = self.addM(Pool.TIER_COUNT[2], 3, 3, "Mech", 2)
        self.tier2["Harvest Golem"] = self.addM(Pool.TIER_COUNT[2], 2, 3, "Mech", 2, death_rattle=True)

        self.tier3["Replicating Menace"] = self.addM(Pool.TIER_COUNT[3], 3, 1, "Mech", 3, magnetic=True, microbots=True, death_rattle=True)
        self.tier3["Iron Sensei"] = self.addM(Pool.TIER_COUNT[3], 2, 2, "Mech", 3)
        self.tier3["Piloted Shredder"] = self.addM(Pool.TIER_COUNT[3], 4, 3, "Mech", 3, death_rattle=True)
        self.tier3["Screwjank Clunker"] = self.addM(Pool.TIER_COUNT[3], 2, 5, "Mech", 3)
        self.tier3["Deflect-o-Bot"] = self.addM(Pool.TIER_COUNT[3], 3, 2, "Mech", 3, divine_shield=True)

        self.tier4["Annoy-o-Module"] = self.addM(Pool.TIER_COUNT[4], 2, 4, "Mech", 4, taunt=True, divine_shield=True, magnetic=True)
        self.tier4["Security Rover"] = self.addM(Pool.TIER_COUNT[4], 2, 6, "Mech", 4)
        self.tier4["Mechano-Egg"] = self.addM(Pool.TIER_COUNT[4], 0, 5, "Mech", 4, death_rattle=True)

        ### Elemental ###
        self.tokens["Water Droplet"] = self.addM(0, 2, 2, "Elemental", 1, token=True)


        self.tier1["Sellemental"] = self.addM(Pool.TIER_COUNT[1], 2, 2, "Elemental", 1)
        self.tier1["Refreshing Anomaly"] = self.addM(Pool.TIER_COUNT[1], 1, 3, "Elemental", 1)
        self.tier2["Party Elemental"] = self.addM(Pool.TIER_COUNT[2], 3, 2, "Elemental", 2)
        self.tier2["Molten Rock"] = self.addM(Pool.TIER_COUNT[2], 2, 4, "Elemental", 2, taunt=True)
        self.tier3["Stasis Elemental"] = self.addM(Pool.TIER_COUNT[3], 4, 4, "Elemental", 3)
        self.tier3["Arcane Assistant"] = self.addM(Pool.TIER_COUNT[3], 3, 3, "Elemental", 3)
        self.tier3["Crackling Cyclone"] = self.addM(Pool.TIER_COUNT[3], 4, 1, "Elemental", 3, divine_shield=True, windfury=True)

        ### Demon ###
        self.tier1["Fiendish Servant"] = self.addM(Pool.TIER_COUNT[1], 2, 1, "Demon", 1, death_rattle=True)
        self.tier1["Vulgar Homunculus"] = self.addM(Pool.TIER_COUNT[1], 2, 4, "Demon", 1, taunt=True)
        self.tier2["Nathrezim Overseer"] = self.addM(Pool.TIER_COUNT[2], 2, 3, "Demon", 2)
        self.tier2["Imprisoner"] = self.addM(Pool.TIER_COUNT[2], 3, 3, "Demon", 2, taunt=True, death_rattle=True)
        self.tier3["Imp Gang Boss"] = self.addM(Pool.TIER_COUNT[1], 1, 1, "Demon", 1)
        self.tier3["Soul Devourer"] = self.addM(Pool.TIER_COUNT[3], 3, 3, "Demon", 3)
        self.tier4["Ring Matron"] = self.addM(Pool.TIER_COUNT[4], 6, 4, "Demon", 4, taunt=True, death_rattle=True)
        self.tier4["Siegebreaker"] = self.addM(Pool.TIER_COUNT[4], 5, 8, "Demon", 4, taunt=True)

        ### Pirate ###
        self.tier1["Scallywag"] = self.addM(Pool.TIER_COUNT[1], 2, 1, "Pirate", 1, death_rattle=True)
        self.tier1["Deck Swabbie"] = self.addM(Pool.TIER_COUNT[1], 2, 2, "Pirate", 1)
        self.tier2["Freedealing Gambler"] = self.addM(Pool.TIER_COUNT[2], 3, 3, "Pirate", 2)
        self.tier2["Yo-Ho-Ogre"] = self.addM(Pool.TIER_COUNT[2], 3, 6, "Pirate", 2, taunt=True)
        self.tier2["Southsea Captain"] = self.addM(Pool.TIER_COUNT[2], 3, 3, "Pirate", 2)
        self.tier3["Bloodsail Cannoneer"] = self.addM(Pool.TIER_COUNT[3], 4, 3, "Dragon", 3)
        self.tier3["Southsea Strongarm"] = self.addM(Pool.TIER_COUNT[3], 4, 3, "Dragon", 3)
        self.tier3["Salty Looter"] = self.addM(Pool.TIER_COUNT[3], 4, 4, "Dragon", 3)
        self.tier4["Ripsnarl Captain"] = self.addM(Pool.TIER_COUNT[4], 4, 5, "Pirate", 4)

        ### Dragon ###
        self.tier1["Dragonspawn Lieutenant"] = self.addM(Pool.TIER_COUNT[1], 2, 3, "Dragon", 1, taunt=True)

        self.tier2["Glyph Guardian"] = self.addM(Pool.TIER_COUNT[2], 2, 4, "Dragon", 2)
        self.tier2["Steward of Time"] = self.addM(Pool.TIER_COUNT[2], 3, 4, "Dragon", 2)

        self.tier3["Twilight Emissary"] = self.addM(Pool.TIER_COUNT[3], 4, 4, "Dragon", 3, taunt=True)
        self.tier3["Bronze Warden"] = self.addM(Pool.TIER_COUNT[3], 2, 1, "Dragon", 3, divine_shield=True, reborn=True)

        self.tier4["Cobalt Scalebane"] = self.addM(Pool.TIER_COUNT[4], 5, 5, "Dragon", 4)
        self.tier4["Drakonid Enforcer"] = self.addM(Pool.TIER_COUNT[4], 3, 6, "Dragon", 4)
        self.tier4["Herald of Flame"] = self.addM(Pool.TIER_COUNT[4], 6, 6, "Dragon", 4)

        ### Murloc ###
        self.tokens["Murloc Scout"] = self.addM(0, 1, 1, "Murloc", 1)

        self.tier1["Rockpool Hunter"] = self.addM(Pool.TIER_COUNT[1], 2, 3, "Murloc", 1)
        self.tier1["Murloc Tidecaller"] = self.addM(Pool.TIER_COUNT[1], 1, 2, "Murloc", 1)

        self.murloc[1]["Rockpool Hunter"] = self.addM(0, 2, 3, "Murloc", 1)
        self.murloc[1]["Murloc Tidecaller"] = self.addM(0, 1, 2, "Murloc", 1)

        self.tier2["Murloc Warleader"] = self.addM(Pool.TIER_COUNT[2], 3, 3, "Murloc", 2)
        self.tier2["Old Murk-Eye"] = self.addM(Pool.TIER_COUNT[2], 2, 4, "Murloc", 2)
        self.tier2["Murloc Tidehunter"] = self.addM(Pool.TIER_COUNT[1], 2, 1, "Murloc", 1)

        self.murloc[2]["Murloc Warleader"] = self.addM(0, 3, 3, "Murloc", 2)
        self.murloc[2]["Old Murk-Eye"] = self.addM(0, 2, 4, "Murloc", 2)
        self.murloc[2]["Murloc Tidehunter"] = self.addM(0, 2, 1, "Murloc", 1)

        self.tier3["Coldlight Seer"] = self.addM(Pool.TIER_COUNT[3], 2, 3, "Murloc", 3)
        self.tier3["Felfin Navigator"] = self.addM(Pool.TIER_COUNT[3], 4, 4, "Murloc", 3)

        self.murloc[3]["Coldlight Seer"] = self.addM(0, 2, 3, "Murloc", 3)
        self.murloc[3]["Felfin Navigator"] = self.addM(0, 4, 4, "Murloc", 3)

        self.tier4["Toxfin"] = self.addM(Pool.TIER_COUNT[4], 1, 2, "Murloc", 4)
        self.tier4["Primalfin Lookout"] = self.addM(Pool.TIER_COUNT[4], 3, 2, "Murloc", 4)

        self.murloc[4]["Toxfin"] = self.addM(0, 1, 2, "Murloc", 4)
        self.murloc[4]["Primalfin Lookout"] = self.addM(0, 1, 2, "Murloc", 4)

    #for testing
    def dummyRoll(self, tier):
        dummy = []
        for i in range(Pool.ROLL_SIZE[tier]):
            dummy.append(Minion.Minion("Alleycat", 1, 1, "Beast", 1))
        return dummy

    def getRoll(self, tier):
        all_minions = []
        for i in range(1, tier + 1):
            currTier = None
            if i == 1:
                currTier = self.tier1
            if i == 2:
                currTier = self.tier2
            if i == 3:
                currTier = self.tier3
            if i == 4:
                currTier = self.tier4
            if i == 5:
                currTier = self.tier5
            if i == 6:
                currTier = self.tier6

            for m in currTier: #current minion
                count = currTier[m]["count"]
                for c in range(count):
                    minion_index_pair = (i, m) #(tier, minion_name)
                    all_minions.append(minion_index_pair)

        rolls = []
        for i in range(Pool.ROLL_SIZE[tier]):
            rolls.append(random.randint(0,len(all_minions)))

        result = []
        for i in rolls:
            currTier = None
            if all_minions[i][0] == 1:
                currTier = self.tier1
            if all_minions[i][0] == 2:
                currTier = self.tier2
            if all_minions[i][0] == 3:
                currTier = self.tier3
            if all_minions[i][0] == 4:
                currTier = self.tier4
            if all_minions[i][0] == 5:
                currTier = self.tier5
            if all_minions[i][0] == 6:
                currTier = self.tier6

            curr_minion_name = all_minions[i][1]
            curr_minion = self.initMinion(curr_minion_name, currTier)
            result.append(curr_minion)

        return result

    #helper function for adding minions
    def addM(self, count, attack, health, minion_type, minion_tier, taunt=False, divine_shield=False, poisonous=False, windfury=False, magnetic=False, microbots=False, golden_microbots=False, reborn=False, death_rattle=False, token=False):
        minion_dict = {"count": count, "attack": attack, "health": health, "type": minion_type, "tier": minion_tier}
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
        if(token):
            minion_dict["token"] = True
        if(microbots):
            minion_dict["microbots"] = True
        if(golden_microbots):
            minion_dict["golden_microbots"] = True
        if(reborn):
            minion_dict["reborn"] = True

        return minion_dict

    #TODO: create a helper function to initialize and return Minion objects (for when we pass them to the tavern)
    #also create one for tokens

    def summonToken(self, token_name, gold=False):
        token_stats = self.tokens[token_name]
        attack = token_stats["attack"]
        health = token_stats["health"]
        token_type = token_stats["type"]
        tier = token_stats["tier"]

        #can add more cases for other attributes as necessary
        is_taunt = token_stats.get("taunt")
        if is_taunt is None:
            is_taunt = False

        token_is_gold = False
        if gold:
            if token_name != "Water Droplet":
                attack *= 2
                health *= 2
            token_is_gold = True

        return Minion.Minion(token_name, attack, health, token_type, tier, taunt=is_taunt, token=True, gold=token_is_gold)

    #initialize minion object and return it
    def initMinion(self, minion_name, tier, is_gold=False):
        minion_stats = tier[minion_name]
        attack = minion_stats["attack"]
        health = minion_stats["health"]
        minion_type = minion_stats["type"]
        minion_tier = minion_stats["tier"]

        if is_gold:
            attack *= 2
            health *= 2

        t = minion_stats.get("Taunt")
        if t is None:
            t = False

        ds = minion_stats.get("divine_shield")
        if ds is None:
            ds = False

        p = minion_stats.get("poisionous")
        if p is None:
            p = False

        wf = minion_stats.get("wind_fury")
        if wf is None:
            wf = False

        mag = minion_stats.get("magnetic")
        if mag is None:
            mag = False

        mic = minion_stats.get("microbots")
        if mic is None:
            mic = False

        rb = minion_stats.get("reborn")
        if rb is None:
            rb = False

        dr = minion_stats.get("death_rattle")
        if dr is None:
            dr = False

        return Minion.Minion(minion_name, attack, health, minion_type, minion_tier, taunt=t, divine_shield=ds, poisonous=p, windfury=wf, magnetic=mag, microbots=mic, reborn=rb, death_rattle=dr, gold=is_gold)

    #get a random minion from a tier above
    def discovery(self, tier):
        all_minions_in_tier = []
        currTier = None
        if tier == 1:
            currTier = self.tier2
        if tier == 2:
            currTier = self.tier3
        if tier == 3:
            currTier = self.tier4
        if tier == 4:
            currTier = self.tier5
        if tier >= 5:
            currTier = self.tier6

        for m in currTier: #current minion
            count = currTier[m]["count"]
            for c in range(count):
                all_minions_in_tier.append(m)

        roll = random.randint(0, len(all_minions_in_tier))

        discovered_minion = all_minions_in_tier[roll]

        minion = self.initMinion(discovered_minion, currTier)

        self.removeFromPool(minion.name, minion.tier)

        return minion

    #get a random murloc from a tie above
    def murloc_discovery(self, tier):
        all_murlocs_in_tier = []

        currTier = None

        for i in range(1, tier):
            for m in self.murloc[i]:
                if i == 1:
                    currTier = self.tier2
                if i == 2:
                    currTier = self.tier3
                if i == 3:
                    currTier = self.tier4
                if i == 4:
                    currTier = self.tier5
                if i >= 5:
                    currTier = self.tier6

                count = currTier[m]["count"]

                for c in range(count):
                    all_murlocs_in_tier.append(m)

        roll = random.randint(0, len(all_murlocs_in_tier))
        discovered_minion = all_murlocs_in_tier[roll]

        murloc = self.initMinion(discovered_minion, currTier)

        self.removeFromPool(murloc.name, murloc.tier)

        return murloc


    #dec/inc from minion's count in it's tier dictionary
    def removeFromPool(self, minion_name, tier):
        currTier = None
        if tier == 1:
            currTier = self.tier1
        if tier == 2:
            currTier = self.tier2
        if tier == 3:
            currTier = self.tier3
        if tier == 4:
            currTier = self.tier4
        if tier == 5:
            currTier = self.tier5
        if tier == 6:
            currTier = self.tier6
        
        minion_stats = currTier[minion_name]
        minion_stats["count"] -= 1
        currTier[minion_name] = minion_stats

    def returnToPool(self, minion_name, tier):
        currTier = None
        if tier == 1:
            currTier = self.tier1
        if tier == 2:
            currTier = self.tier2
        if tier == 3:
            currTier = self.tier3
        if tier == 4:
            currTier = self.tier4
        if tier == 5:
            currTier = self.tier5
        if tier == 6:
            currTier = self.tier6
        
        minion_stats = currTier[minion_name]

        minion_stats["count"] += 1

        currTier[minion_name] = minion_stats

    #combine 3 gold minions into a gold minion
    def combine_minions(self, triple):
        minion_name = triple[0].name
        minion_tier = triple[0].tier
        
        currTier = None
        if minion_tier == 1:
            currTier = self.tier1
        if minion_tier == 2:
            currTier = self.tier2
        if minion_tier == 3:
            currTier = self.tier3
        if minion_tier == 4:
            currTier = self.tier4
        if minion_tier == 5:
            currTier = self.tier5
        if minion_tier == 6:
            currTier = self.tier6

        minion_stats = currTier[minion_name]
        base_attack = minion_stats["attack"]
        base_health = minion_stats["health"]

        gold = self.initMinion(minion_name, currTier, is_gold=True)
        
        # Add the buffs from all three to the gold minion
        for i in triple:
            attack_buff = i.attack - base_attack
            health_buff = i.health - base_health

            gold.buff(attack_buff, health_buff)

            # Will need to make sure we are not stacking these improperly
            if i.magnetic:
                gold.giveMagnetic()
            if i.taunt:
                gold.giveTaunt()
            if i.divine_shield:
                gold.giveDivineShield()
            if i.poisonous:
                gold.givePoisonous()
            if i.windfury:
                gold.giveWindfury()
            if i.microbots:
                gold.microbots = False
                gold.golden_microbots = True

        return gold
