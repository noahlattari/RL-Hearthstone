import Pool
import random

class Tavern:

    def __init__(self):
        self.pool = Pool()
        self.round = 1
        self.tier = 1

    def tier_up(self):
        tier += 1