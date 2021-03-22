%% Transfer Function to State System
% num = [1 0];
% den = [1 14 56 160];
% [A,B,C,D] = tf2ss(num,den)

%% Exercise 1

m1 = 36;
m2 = 240;

k1 = 160000;
k2 = 16000;

b = 980;

syms s

numEx1 = k1*(b*s+k2);
num = sym2poly(expand(numEx1));
denEx1 = m1*m2*s^4 + (m1+m2)*b*s^3 + (k1*m2+(m1+m2)*k2)*s^2 + k1*b*s + k1*k2;
den = sym2poly(expand(denEx1));

g = tf(num,den);

gPoles = pole(g);

[A,B,C,D] = tf2ss(num,den);

eigenvalue = eig(A);

%% Exercise 2

L = 8;
C = 3;
R = 4;

A1 = [0 1; -1/(L*C) -R/L];
B1 = [0; 1/(L*C)];
C1 = [1 0];
D1 = [0];

[num2,den2] = ss2tf(A1,B1,C1,D1)
poles2 = roots(den2)
eigenValue2 = eig(A1)

