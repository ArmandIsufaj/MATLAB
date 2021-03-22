% Created by Armand 
% Exercise 5
clear
% solve the system of equations

a = [0 -2 1;0 2 1; 2.5 0 1];
b = [0;3;5];
v = inv(a)*b % solution of the system
% or v = a\b 
% define the plane
% define X and Y range of the grid
rangeX = 0:0.1:10;
rangeY = rangeX;
[X,Y] = meshgrid(rangeX,rangeY);
% Define the planes 
Z1 = 2.*Y;
% Element level multiplication '2.'
surf(X,Y,Z1)
hold on

Z2 = -2.*Y+3; % Plane 2
surf(X,Y,Z2)
hold on

Z3 = 5 - 2.5.*X;
surf(X,Y,Z3)
hold on

% plot the intersection point
% draws a circle around the point of intersection
scatter3(v(1),v(2),v(3),'ro','filled')
hold off

xlabel('X')
ylabel('Y')
zlabel('Z')