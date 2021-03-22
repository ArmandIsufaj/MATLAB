%% LAB 5

% Task 1

%% Variables

v = 1.41*10^6 ;
m = 3.109*10^-31 ;
q = 1.602*10^-19 ;
r = 5*10^-2 ;



%% Formulas
a = v^2 / r ;
F = m*a ;
B = F/(q*v) ;

d = pi*r ;

t = d/v 

syms B
B=vpasolve(q*B*v==m*v^2/r,B)

%% Task 2
clear
clc

% 0 to 10 with step of 0.05
x = 0:0.05:10 ;
% gives a y value for each value of z
y = sin(4*x) ;
% gives a x value for each value of z
z = cos(4*x) ;

x1 = zeros(size(x));
y1 = -0.2*y;
z1 = -0.2*z;
% creates a animated line and assigs to variable curve
spiral = animatedline('LineWidth',2);
% sets the axis(gca) 
% xlim has an array of values, from -1.5 to 1.5
% set limits for all axis
% set(gca, 'XLim',[-1.5 1.5],'YLim',[-1.5 1.5],'ZLim',[0 10]);
axis([0,10,-1.5,1.5,-1.5,1.5])
grid on
hold on
quiver3(0,0,0,10,0,0,'Linewidth',2)
% sets the view of the plot
% view(azimuth,elevation)
% Azimuth is a polar angle in the x-y plane
% Elevation is the angle above or below the x-y plane.
view(43,24);


for i=1:length(z)
    addpoints(spiral,x(i),y(i),z(i))
    quiver3(x(i),y(i),z(i),x1(i),y1(i),z1(i),'b')
    charge = scatter3(x(i),y(i),z(i),100,'filled','r');
    drawnow
    pause(0.000000001)
    delete(charge)
end
scatter3(x(length(x)),y(length(y)),z(length(z)),100,'filled','r');


