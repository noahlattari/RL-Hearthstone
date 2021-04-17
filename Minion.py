
class Minion:

    def __init__(self, name, attack, health, minion_type, tier, taunt=False, divine_shield=False, poisonous=False, windfury=False, magnetic=False, microbots=False, golden_microbots=False, reborn=False, death_rattle=False, gold=False, token=False):
        self.name = name
        self.attack = attack
        self.health = health
        self.minion_type = minion_type
        self.tier = tier
        self.token = token
        self.taunt = taunt
        self.divine_shield = divine_shield
        self.poisonous = poisonous
        self.windfury = windfury
        self.magnetic = magnetic
        self.microbots = microbots
        self.golden_microbots = golden_microbots
        self.reborn = reborn
        self.death_rattle = death_rattle
        self.gold = gold
        self.token = token
        

    def __repr__(self):
        if self.magnetic:
            out = f"{self.attack}/{self.health} <{self.name}>"
        else:
            out = f"{self.attack}/{self.health} {self.name}"
        if self.taunt:
            out += ", taunt"
        if self.divine_shield:
            out += ", divine shield"
        if self.poisonous:
            out += ", poisonous"
        if self.windfury:
            out += ", windfury"
        if self.microbots:
            out += ", microbots"
        if self.golden_microbots:
            out += ", golden microbots"
        if self.reborn:
            out += ", reborn"
        return out

    def __str__(self):
        if self.magnetic:
            out = f"{self.attack}/{self.health} <{self.name}>"
        else:
            out = f"{self.attack}/{self.health} {self.name}"
        if self.taunt:
            out += ", taunt"
        if self.divine_shield:
            out += ", divine shield"
        if self.poisonous:
            out += ", poisonous"
        if self.windfury:
            out += ", windfury"
        if self.microbots:
            out += ", microbots"
        if self.golden_microbots:
            out += ", golden microbots"
        return out
    
    def giveMagnetic(self):
        self.magnetic = True
    def giveTaunt(self):
        self.taunt = True
    def giveDivineShield(self):
        self.divine_shield = True
    def givePoisonous(self):
        self.poisonous = True
    def giveWindfury(self):
        self.windfury = True
        
    def buff(self, attack, health):
        self.attack += attack
        self.health += health
    
    #WIP :(
    def becomeGold(self):
        self.gold = True
        if self.microbots:
            self.microbots = False
            self.golden_microbots = True
