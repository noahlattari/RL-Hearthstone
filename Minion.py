
class Minion:

    def __init__(self, name, attack, health, minion_type, tier, taunt=False, divine_shield=False, poisonous=False, windfury=False, magnetic=False, gold=False, token=False):
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
        self.gold = gold
        self.token = token
        

    def __repr__(self):
        return f"{self.attack}/{self.health} {self.name}"

    def __str__(self):
        return f"{self.attack}/{self.health} {self.name}"
    
    def giveTaunt(self):
        self.taunt = True
    
    def buff(self, attack, health):
        self.attack += attack
        self.health += health
    
    #WIP
    def becomeGold(self):
        self.gold = True
