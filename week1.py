import numpy as np
import matplotlib.pyplot as plt
d=np.loadtxt('out.dat', skiprows=1)
plt.plot(d[:,0],d[:,1])
plt.savefig('plot.png')
plt.show()

# in the terminal run: cp ~/Figure_1.png /mnt/c/Users/Kaisa/Documents/FYS2085/