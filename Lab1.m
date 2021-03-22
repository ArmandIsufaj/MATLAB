clear
clc

%% Exercise 1

G = tf([1 0],[1 14 56 160]);
figure(1)
rlocus(G) % Obtain the root-locus diagram of the system
grid on   % Draw the ζ lines and wn circles on the root-locus diagram. 

figure(2)
rlocus(G)
sgrid([0.5, 0.707], [0.5, 1, 2]) 

%% 
% If only particular constant ζ lines and particular constant wn circles
% are desired, try using the following command:
% sgrid([   0.5 , 0.707 ] , [    0.5     ,    1      ,     2     ])
%       [ζ line1,ζ line2] , [ wn circle1 , wn circle2, wn circle3]

G2num = [0 0 0 1]; 
G2den = [1 4 5 0];
k = 0 : 0.1 : 1000;
G2 = tf(G2num,G2den);
figure(3), rlocus(G2,k)
w =[-3 1 -3 3];
axis(w)
sgrid([0.5, 0.707], [0.5, 1, 2]) 

%%
syms s
a = s*(s+4)*(s+6)*(s^2+1.4*s+1);
b = expand(a);
c = sym2poly(b);
G3num = [1 2 4];
G3den = c;
G3 = tf(G3num,G3den);
figure(4), rlocus(G3),grid on 
axis([-7 3 -5 5])

