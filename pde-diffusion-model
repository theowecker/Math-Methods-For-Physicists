### ftcs method ###

import numpy as np
import matplotlib.pyplot as plt
from matplotlib import cm
from mpl_toolkits.mplot3d import Axes3D


#time step
tau = 0.00001
#number of grid points
N = 100
L = 1.
h = L/(N-1)
#diffusion coefficient
kappa = 2
coeff = kappa*tau/h**2

#using my testing/research if t_sigma is less than tau, it is unstable

if coeff < 0.5:
    print('Solution will probably be stable')

else:
    print('Solution probably won\'t be stable')

#ivp and bvp
tt = np.zeros(N) #zero temperature
tt[int(N/2)] = 1./h #delta function at center

xplot = np.arange(N)*h - L/2
iplot = 0
nstep = 300
nplots = 50
plot_step = nstep/nplots

ttplot = np.empty((N,nplots))
tplot = np.empty(nplots)
for istep in range(nstep):

    tt[1:(N-1)] = (tt[1:(N-1)] + coeff*(tt[2:N] + tt[0:(N-2)] - 2*tt[1:(N-1)]))

    if (istep+1) % plot_step < 1:
        ttplot[:,iplot] = np.copy(tt)
        tplot[iplot] = (istep+1)*tau
        iplot += 1

fig = plt.figure()
ax = fig.gca(projection = '3d')
Tp, Xp = np.meshgrid(tplot, xplot)
ax.plot_surface(Tp,Xp,ttplot, rstride=2, cstride=2, cmap=cm.coolwarm)
ax.set_xlabel('Time')
ax.set_ylabel('x')
ax.set_zlabel('T(x,t)')
#ax.set_title('Diffusion')
plt.show()

levels = np.linspace(0., 10., num=21)
ct = plt.contour(tplot, xplot, ttplot, levels)
plt.xlabel('Time')
plt.ylabel('x')
#plt.title('Temperature contour')
plt.show()






