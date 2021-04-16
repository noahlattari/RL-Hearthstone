import random

class Tavern:

    def __init__(self, pool):
        self.pool = pool
        self.tier = 1
        self.roll = []

    def tierUp(self):
        self.tier += 1
        #call pool to init next tier's minions
    
    def getRoll(self, stasis_elemental=False):
        self.returnRoll()

        if stasis_elemental:
            print("hi")
        
        #get the roll and take these minions out of the pool
        self.roll = self.pool.getRoll(self.tier)
        for m in self.roll:
            self.pool.removeFromPool(m.name, m.tier) #go and decrement the minion's counter in it's tier dictionary

    def returnRoll(self):
        for m in self.roll:
            self.pool.returnToPool(m.name, m.tier) #go and increment the minion's counter in it's tier dictionary
    
    def buy(self, minion_index):
        #check if minion (by index) is in roll
        if 0 <= minion_index < len(self.roll):
            return self.roll.pop(minion_index)
