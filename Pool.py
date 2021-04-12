import Minion

class Pool:
    tier1 = []
    tier2 = []
    tier3 = []
    tier4 = []
    tier5 = []
    tier6 = []
    ROLL_SIZE = {1:3, 2:3, 3:3, 4:4, 5:4, 6:5}

    def __init__(self):
        Pool.tier1.append(Minion.Minion("Alleycat", 1, 1, "Beast", 1)) # *17
        #for each minion in tier 1
            #append minion 17 times
        return 

    #for testing
    def dummyRoll(self, tier):
        dummy = []
        for i in range(Pool.ROLL_SIZE[tier]):
            dummy.append(Minion.Minion("Alleycat", 1, 1, "Beast", 1))
        return dummy