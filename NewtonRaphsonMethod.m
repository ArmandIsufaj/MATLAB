clear
clc

q = 200;
k = 0.015;
T = 30;
t = 360;

h   =@(x) (q/k)* x * exp(-x/4*t) - T ;
h_d =@(x) (q/k)* exp(-x/480) -(((q/k)*x*exp(-x/4*t)/4*t));

x = 0;
xx(1) = x;
N = 100;
tol = 1e-6; 

for i = 2:N;
    x = x - h(x)/h_d(x);
    xx(i) = x; 
    Err = abs(xx(i) - xx(i-1)); 
    if Err < tol, 
        break; 
    end
end
disp(['The root is : ' num2str(x)])