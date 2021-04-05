
class Minion:

    def __init__(self, name, tier, attack, health, type):
        self.name = name
        self.tier = tier
        self.attack = attack
        self.health = health
        self.type = type

    def __repr__(self):
        return f"{attack}/{health} {name}"

    def __str__(self):
        return f"{attack}/{health} {name}"