import numpy as np
import matplotlib.pyplot as plt
import random
import pandas as pd

x=np.arange(1,11,1)
y=np.arange(10,110,10)
random.shuffle(y)
colors=[70,20,10,50,100]
sizes=[100,50,300,250,150]
print(x,y)
plt.scatter(x,y,color="red",marker="s",s=200,linewidths=1,alpha=0.5)

plt.colorbar()

plt.show()