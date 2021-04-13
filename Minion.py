
class Minion:

    def __init__(self, name, attack, health, type, tier, token=False):
        self.name = name
        self.attack = attack
        self.health = health
        self.type = type
        self.tier = tier
        self.token = token

    def __repr__(self):
        return f"{self.attack}/{self.health} {self.name}"

    def __str__(self):
        return f"{self.attack}/{self.health} {self.name}"