import numpy as np
import matplotlib.pyplot as plt

#original data
#first row should be skipped
og = np.loadtxt("Kumpula_daily_temperature.dat", skiprows=1)

#weekly average
weeks, weekly = np.loadtxt("weeklyavg.txt", unpack=True)

#first plot
plt.figure()
plt.plot(og)
plt.xlabel("Day NO")
plt.ylabel("Temperature")
plt.title("Daily Mean Temperature")
plt.savefig('1.png')

#2nd plot
plt.figure()
plt.plot(weeks, weekly)
plt.xlabel('Week')
plt.ylabel('Temperature (°C)')
plt.title('Weekly average temperature in Kumpula')
plt.savefig('weekly.png')

plt.show()