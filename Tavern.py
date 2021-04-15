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
        self.roll = self.pool.dummyRoll(self.tier)
        if stasis_elemental:
            print("hi")
            #one of the cards must be elemental
            #check if our current roll has an elemental if not then just reroll until we get one
        #roll = list of minions from the pool, tier determines what's in the roll
        #TODO: interaction between tavern and pool: +/- the minion stock. Also instantiating the minion in the roll 

        #call get roll
        #call pool.removeFromPool
    def returnRoll(self):
        #for each minion remaining in roll: call pool.returnToPool
        return
    
    def buy(self, minion_index):
        #check if minion (by index) is in roll
        if 0 <= minion_index < len(self.roll):
            return self.roll.pop(minion_index)

    