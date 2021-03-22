clear
close all
clc
%%
h=@(x)(x-2+log(x));
xl=0.2;
xr=2;
Iter=0;
err=1;
tol=1e-6;
%%
while err>tol
 xm=(xl+xr)/2;
 if h(xl)*h(xm)<0
    xr=xm;
 else
    xl=xm;
 end
 Iter=Iter+1;
 err=abs(xl-xr);
end
display(err)