# plotting p6 output
import numpy as np
import matplotlib.pyplot as plt

# the plot will be t over f(t) in [-3,3]
t, f = np.loadtxt('p6.txt', unpack=True)
plt.plot(t, f)
plt.xlabel('t')
plt.ylabel('f(t)')
plt.title('f(t) values in t=[-3, 3]')
plt.grid(True)
plt.savefig('p6.png')
plt.show()