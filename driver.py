import Pool
import Player

import Minion

beast = Minion.Minion("Test Beast", 1, 1, "Beast", 1)
buffed_beast = Minion.Minion("Test Beast", 2, 2, "Beast", 1)

beast.buff(1,1)
print(beast)
print(buffed_beast)

first = [beast]
second = [buffed_beast]
print(str(first))
print(str(second))

if str(first) == str(second):
    print("yes")
else:
    print("no")