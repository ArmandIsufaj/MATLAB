% boundary conditions

clear
close all
clc
%% initilisation
u = 1;
D = 0.01;
nx = 99;
L = 2;
c0 = 1;
%% second initilisation
dx = L/nx;
%% Matrix A
ap = 2*D/(dx^2);
aw = -D/dx^2 -u/2*dx;
ae = u/2*dx -D/dx^2;

A = diag(ap*ones(nx-1,1))+diag([aw*ones(nx-3,1);aw+ae],-1)+diag(ae*ones(nx-2,1),1);

%% Vector b

% Initialises the value for sum to be equal to 0
sum = 0;

% Creates a for loop between 1 and the nU
b(1) = 0;
for i = 2:nx+1
    
    % The elements of matrix 'b' are given values so that the element of
    % 'b' corresponds to the distance from the origin
    b(i) = sum + dx;
    
    % update the value of 'sum' after each iteration
    sum = b(i);

end




%% Solver