clear
close all
clc
%%
Q=200;
k=0.015;
T=30;
t=120;
h=@(x)(Q/k*x*exp(-x/(4*t))-T);
tol=1e-6;
err=1;
iter=0;
xl=-0.001;
xr=0.001;
%%
while err>tol
 xm=xr-(h(xr)*(xr-xl))/(h(xr)-h(xl));
 err=abs(xm-xr);
 xl=xr;
 xr=xm;
 iter=iter+1;
end