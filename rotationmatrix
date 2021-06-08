import numpy as np
from numpy import pi
from numpy import cos
from numpy import arccos as arcc
from numpy import sqrt
from numpy import sin

a=pi/4
b=arcc(1/sqrt(3))
g=0

R = np.array([[cos(g)*cos(b)*cos(a)-sin(g)*sin(a), cos(g)*cos(b)*sin(a)+sin(g)*cos(a), -cos(g)*sin(b)],
                 [-sin(g)*cos(b)*cos(a)-cos(g)*sin(a), -sin(g)*cos(b)*sin(a)+cos(g)*cos(a), sin(g)*sin(b)],
                 [sin(b)*cos(a), sin(b)*sin(a), cos(b)]
                 ])

RT=R.T

print(" R is:")
print(R)
print("\n The transpose of R is:")
print(RT)

S001=np.array([[1, 0, 0], [0, 1, 0], [0, 0, -1]])
print("\n S001 is:")
print(S001)

print("\n The Product RT*S001*R=S111 is:")
S111=RT @ S001 @ R
print(RT @ S001 @ R)

h1=np.array([[1],
            [1],
            [1]])

print("\n S111*h1 is:")

print(S111 @ h1)


h2=np.array([[1],
            [0],
            [0]])

print("\n S111*h2 is:")

print(S111 @ h2)
