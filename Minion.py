
class Minion:

    def __init__(self, name, attack, health, type, tier):
        self.name = name
        self.attack = attack
        self.health = health
        self.type = type
        self.tier = tier

    def __repr__(self):
        return f"{self.attack}/{self.health} {self.name}"

    def __str__(self):
        return f"{self.attack}/{self.health} {self.name}"