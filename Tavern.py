import Pool
import random

class Tavern:

    def __init__(self):
        self.pool = Pool.Pool()
        self.tier = 1
        self.roll = []

    def tierUp(self):
        self.tier += 1
        #call pool to init next tier's minions
    
    def getRoll(self):
        self.roll = self.pool.dummyRoll(self.tier)
        #roll = list of minions from the pool, tier determines what's in the roll
    
    def buy(self, minion):
        #check if minion (by index) is in roll
        if 0 <= minion < len(self.roll):
            return self.roll.pop(minion)

    