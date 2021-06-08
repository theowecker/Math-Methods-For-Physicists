import sys
import numpy as np
from scipy.integrate import odeint
import matplotlib.pyplot as plt
from matplotlib.patches import Circle

L1 = 1
L2 = 1
m1 = 1
m2 = 1
g = 9.8

def derivatives(y, t, L1, L2, m1, m2):
   y = theta1, z1, theta2, z2

    cos = np.cos(theta1-theta2)
    sin = np.sin(theta1-theta2)

    theta1dot = z1
    z1dot = (m2*g*np.sin(theta2)*cos - m2*sin*(L1*z1**2*cos + L2*z2**2) -
             (m1+m2)*g*np.sin(theta1)) / L1 / (m1 + m2*sin**2)
    theta2dot = z2
    z2dot = ((m1+m2)*(L1*z1**2*sin - g*np.sin(theta2) + g*np.sin(theta1)*cos) +
             m2*L2*z2**2*sin*cos) / L2 / (m1 + m2*sin**2)
    return theta1dot, z1dot, theta2dot, z2dot

tmax = 30
dt = 0.01
t = np.arange(0, tmax+dt, dt)

y0 = np.array([3*np.pi/7, 5, 3*np.pi/4, 0])
y = odeint(derivatives, y0, t, args=(L1, L2, m1, m2))
theta1, theta2 = y[:,0], y[:,2]