import numpy as np
import matplotlib.pyplot as plt

#original data
#first row should be skipped
og = np.loadtxt("Kumpula_daily_temperature.dat", skiprows=1)

#weekly average
weeklyavg = np.loadtxt("weeklyavg.txt", unpack=True)

#first plot
plt.figure()
plt.plot(og)
plt.xlabel("Day NO")
plt.ylabel("Temperature")
plt.title("Daily Mean Temperature")
plt.savefig('1.png')
plt.show()

#2nd plot
plt.figure()
plt.plot(weeklyavg)
plt.xlabel("Week NO")
plt.ylabel("Average Temperature")
plt.title("Weekly Average Temperature")
plt.savefig('2.png')
plt.show()