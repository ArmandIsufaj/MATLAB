% %% Sheet 6 ----- Task-1
% 
% q = 6.21e-9; % this is a variable for the charge
% a = 0.7;     % This is a variable for the radius
% % arcLength = a*dTheta; % This is a variable for the the length of the arc
% % dQ = (arcLength/(0.5*pi*a))*q; % This is a variable for the 
% % dQ = ((2*q)/pi)*dTheta;
% k = 8.99e9; % Coulomb's constant 
% funX=@(theta) k*2*q/(pi*a^2).*cos(theta); % function for x component of E
% funY=@(theta) k*2*q/(pi*a*a).*sin(theta); % function for Y component of E
% eX = integral(funX,0,(pi/2)) % integral of x component of E
% eY = integral(funY,0,(pi/2)) % integral of y component of E
% 
% 
% %% Task 2
% clear
% clc
% 
% syms r    % define r as a symbol
% 
% % variables
% 
% q = 1.23e-11; % Charge 
% E = 238;      % Electric field
% k = 8.99e9;   % Coulomb's constant 
% 
% eqn= (E== k*q/abs(r^2)) ; % Equation assinged to variable eqn
% 
% 
% s = vpasolve(eqn,r) % solve eqn for r
% s = double(s)       % show the answer 4sf

%% Task 3

% variables
clear
clc

r = 2.1;
X1 = 0; Y1 = 0; Z1 = 0;
n = 10 ;
hold on
theta = pi*(-n:2:n)/n;
phi = (pi/2)*(-n:2:n)'/n;

X = cos(phi)* cos(theta);
Y = cos(phi)* sin(theta);
Z = sin(phi)* ones(size(theta));

plot3(X*r,Y*r,Z*r,'b')
plot3(X*2*r,Y*2*r,Z*2*r,'g')

[U,V,W]=surfnorm(X,Y,Z);
quiver3(X*0,Y*0,Z*0,U,V,W,4*r)
scatter3(X1,Y1,Z1,170,'filled','r')
grid on
hold off







