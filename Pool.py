import Minion

class Pool:
    all_minions = []
    ROLL_SIZE = {1:3, 2:3, 3:3, 4:4, 5:4, 6:5}

    def __init__(self):
        Pool.all_minions.append(Minion.Minion("Alleycat", 1, 1, "Beast", 1))
        return

    #for testing
    def dummyRoll(self, tier):
        dummy = []
        for i in range(Pool.ROLL_SIZE[tier]):
            dummy.append(Minion.Minion("Alleycat", 1, 1, "Beast", 1))
        return dummy