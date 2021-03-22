%% Control Lab 3 - Discrete time digital controller 

%% Example 1.1

m = 1;
b = 10;
k = 20;
num = [1];
den = [m b k];
sys_1 = tf(num,den);
Ts = 1/100;
sys_d = c2d(sys_1,Ts,'zoh') % zero order hold

% alternate way for TF
%s = tf('s');
%sys = 1/(m*s^2+b*s+k);

% zero order hold means the continuous signal is held constant between each sample over the intervals

%% Example 1.2

m = 1;
b = 10;
k = 20;
A = [0 1;-k/m -b/m];
B = [ 0;1/m];
C = [1 0];
D = [0];
Ts = 1/100;
sys = ss(A,B,C,D);
sys_d = c2d(sys,Ts,'zoh')

%% Lab 3 Exercise 1
clear
figure(1)
numD = [1 -0.3];
denD = [1 -1.6 0.7];
Ts = 0.1;
sys_d = tf(numD,denD,Ts);
rlocus(sys_d)

%% Lab 3 Exercise 2
clear
figure(2)
numD = [1];
denD = [1 -0.3 0.5];
Ts=0.1;
sys_d = tf(numD,denD,Ts);
step(sys_d,5.5)

