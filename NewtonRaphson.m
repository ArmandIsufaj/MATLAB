clear
close all
clc
%%
Q=200;
k=0.015;
T=30;
t=120;
h=@(x)(Q/k*x*exp(-x/(4*t))-T);
dh=@(x)(Q/k*exp(-x/(4*t))*(1-x/(4*t)));
xo=0.001;
iter=0;
err=1;
tol=1e-6;
%%
while err>tol
 xn=xo-h(xo)/dh(xo);
 err=abs(xn-xo);
 iter=iter+1;
 xo=xn;
end
disp(err)