function []=potentialE(Q,xC,yC)
% Potential and Electric Field. Ploting for different conductors.
%%% Sited from http://www.physics.usyd.edu.au/teach_res/mp/doc/cemVEA.pdf
%%% Electrical Field and Electrical Potential. Physics using MATLAB.

%Radius of circular charged conductor (Change
% to see the difgference a=0.2, a=0.5 ...)
a = 0.5; 
k=9e+9;


dx=[-2 2]
dy=[-2 2]
nu=50;

min_v=1e-6;
V = zeros(nu,nu); Ex = zeros(nu,nu); Ey = zeros(nu,nu); 
x = linspace(dx(1),dx(2),nu);
y = linspace(dy(1), dy(2),nu); 
[xG, yG] = meshgrid(x,y);


for n = 1 : 3
    Rx = xG - xC(n); 
    Ry = yG - yC(n); 
    index = find(abs(Rx)+ abs(Ry) == 0); 
    Rx(index) = min_v; 
    Ry(index) = min_v; 
    R = sqrt(Rx.^2 + Ry.^2); 
    R(R==0) = min_v; 
    V = V + k .* Q(n) ./ (R); 
    R3 = R.^3; 
    Ex = Ex + k .* Q(n) .* Rx ./ R3; 
    Ey = Ey + k .* Q(n) .* Ry ./ R3; 
end


E = sqrt(Ex.^2 + Ey.^2);

figure (1)
% subplot(2,1,1)
surf(xG,yG,V./1e6)
title('Potential')
figure (11)
% subplot(2,1,2)
contourf(V./1e6)
title('Potential contour')

figure (2)
% subplot(2,1,1)
surf(xG,yG,E./1e6)
title('Electrical field')
figure (12)
% subplot(2,1,2)
contourf(E./1e6)
title('Electrical field contour')

uG = Ex./abs(E); 
vG = Ey./abs(E); 

figure (3)
hold on

i=numel(nonzeros(Q))
scatter(xC(1:i),yC(1:i), 'filled')
quiver(xG,yG,uG,vG)
title('Electric field lines')
hold off
