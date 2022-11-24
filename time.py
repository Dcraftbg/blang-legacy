import os
import time
import sys
path = sys.argv[1]
st = time.time()
os.system(path)
et = time.time()
print("\n-----")
print(et-st)
print("-------")