clear
close all
clc

% variables
x_lower = 0.2;
x_upper = 2;
x_mid = (x_lower + x_upper)/2; 
tol = 1e-6;
error = 1;

% Anonymous function
myfunction =@ (x) (x-2+log(x));


% While loop
while error >= tol ;
    if myfunction(x_mid) * myfunction(x_upper) < 0
        x_lower = x_mid;
    else
        x_upper = x_mid;
    end
    x_mid = (x_lower + x_upper)/2;
    
    error = abs(x_upper - x_lower);
    
end   
root = x_mid;
display(root)