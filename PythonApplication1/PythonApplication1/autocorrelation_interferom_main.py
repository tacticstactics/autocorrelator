
#autocorrelation_interferom_main.py

import numpy as np

import autocorrelation_interferom_func

print('Start Main')


m = 128
tcol = np.zeros((m,1))   # time
dcol = np.zeros((m,1)) # difference
imcol = np.zeros((m,1)) #% 
Etcol = np.zeros((m,1)); # Electric field


freq = 10
omega = 2*np.pi*freq
 
print('omega=')
print(omega)



for item1 in range(m):
  for item2 in range(m):

    d = item1 * 0.025

     #print(item1)
     
    time1 = item2 * 0.025
    tcol[(item2)] = time1

    Et = exp(1.j * omega * time1) * exp(-(time1)^2/1) + aaa * exp(1.j * omega * t) * exp(-(t-3)^2/1)
    Etcol[(item2)] = Et

     td = d
     Etd = 1



     




print(tcol)

#      print("list1=", item1, ", list2=", item2)
    



