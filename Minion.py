
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
        self.poisionous = poisonous
        self.windfury = windfury
        self.magnetic = magnetic
        self.microbots = microbots
        self.golden_microbots = golden_microbots
        self.reborn = reborn
        self.death_rattle = death_rattle
        self.gold = gold
        self.token = token
        

    def __repr__(self):
        return f"{self.attack}/{self.health} {self.name}"

    def __str__(self):
        return f"{self.attack}/{self.health} {self.name}"
    
    def giveTaunt(self):
        self.taunt = True

    #TODO: write a giveX function for each property
    
    def buff(self, attack, health):
        self.attack += attack
        self.health += health
    
    #WIP :(
    def becomeGold(self):
        self.gold = True
        # Note: if microbots, change to golden microbots
