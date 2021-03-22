%% Mechatronics lab report
clear 
close all
clc 
echo on
% Name: Ahmed Wafic
% Course: Electrical and Electronics Engineering stage 2
% EMail address: ahmed.wafic@city.ac.uk
% H-value with four digits: 5475
echo off

%% tf 
k = 1;
num = [.67 3.00];
den = [1 4.5 30];
h = tf(k*num, den);
g2 = tf(100, [1 18 72]);
s = tf('s');
g3 = 1/(s+1);

%% poles and zeros 1.1
pg2 = pole(g2);
zg2 = zero(g2);

%% plot 1.2
figure(1)
pzmap(g2);

%% OLTF 1.3
g12 = series(h,g2);
gopen = series(g12,g3);

%% poles and zeros 1.4
pgopen = pole(gopen);
zgopen = zero(gopen);

%% plot 1.5
figure(2)
pzmap(gopen);

%% step response for 20 sec 1.6
figure(3)
step(gopen, 20);

%% nyquist diagram 2.1
figure(4);
nyquist(gopen), grid on

%% bode diagram 2.2
figure(5)
bode(gopen), grid on, hold on, margin(gopen);

%% GM PM 2.3
[gm, pm] = margin(gopen);

%% 2.4
figure(6)
k = 29.17427014;%gm;
h = tf(k*num, den);
g12 = series(h,g2);
gopen = series(g12,g3);
nyquist(gopen), grid on

%% root locus 3.1
k = 1;
h = tf(k*num, den);
g12 = series(h,g2);
gopen = series(g12,g3);
figure, rlocus(gopen)
subplot(1,2,1)
rlocus(gopen), grid on;
subplot(1,2,2)
rlocus(gopen), grid on;

%% closed loop 4.1
gclose = feedback(g12,g3);

%% zeros and poles 4.2
pgclose = pole(gclose);
zgclose = zero(gclose);

%% plot 4.3
figure(8)
pzmap(gclose)

%% step response for 20 sec 4.4
figure(9)
step(gclose, 20);

%%  K* poles and zeros 5.1
k = gm;
h = tf(k*num, den);
g12 = series(h,g2);
gclose = feedback(g12,g3);
pgclose = pole(gclose);
zgclose = zero(gclose);

%%  plot 5.2
figure(10)
pzmap(gclose)

%% step response for 20 sec 5.3
figure(11)
step(gclose, 20);

%% 0.5K* poles and zeros 5.4
k = gm;
h = tf(k*num, den);
g12 = series(h,g2);
gclose = feedback(g12,g3);
pgclose = pole(gclose);
zgclose = zero(gclose);

%%  plot 5.5
figure(12)
pzmap(gclose)

%% step response for 20 sec 5.6
figure(13)
step(gclose, 20);

%% SSE 0.5K* 6.1
SSE = (1-dcgain(gclose));

%% 8.1
k = 1;
h = tf(k*num, den);
g12 = series(h,g2);
gopen = series(g12,g3);

k = gm;
h = tf(k*num, den);
g12 = series(h,g2);
gkopen = series(g12,g3);

ltiview({'nyquist'},gopen,'m-',gkopen,'k-')

%% 8.2
k = 1;
h = tf(k*num, den);
g12 = series(h,g2);
gclose = feedback(g12,g3);
gopen = series(g12,g3);

k = gm;
h = tf(k*num, den);
g12 = series(h,g2);
gkclose = feedback(g12,g3);

k = 0.5*gm;
h = tf(k*num, den);
g12 = series(h,g2);
gkhalfclose = feedback(g12,g3);

ltiview({'step'},gopen,'r-',gclose,'m-',gkclose,'k-',gkhalfclose,'b-',20)





