clear
close all
clc
%%
h=@(t)(12*t^3-24*t+5);
xl=-1;
xr=1;
iter=0;
err=1;
tol=1e-6;
%%
while err>tol
 xm=xr-h(xr)*((xr-xl)/(h(xr)-h(xl)));
 if h(xl)*h(xm)<-1
    err=abs(xr-xm);
    xr=xm;
 else
    err=abs(xl-xm);
    xl=xm;
 end
 iter=iter+1;
end 