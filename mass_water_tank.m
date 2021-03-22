% Created By Armand Isufaj
%---Variables---
h=input('Height of the tank in meters(m):');% Height of the tank in m
r=input('Radius of the tank in meters(m):');% Radius of the tank in m
rho=input('Density of the fluid in the tank:');% Density in kg/m^3
%---Calculation---
area=pi*r^2;    % Area of the cross section in m^2
volume=area*h;  % Volume of the tank in m^3
mass=rho*volume; % Mass of the tank in kg
disp('The mass of the tank is:')
disp(mass)
disp('in kg')
