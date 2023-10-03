% lab sheet 2


% task 1
% variables
q1 = 2*10^-6 ;
q2 = 2*10^-6 ;
q3 = 4*10^-6 ;
r1 = 0.3;
r2 = 0.3;
r3 = 0.4;
k = 8.988*10^9;

% computing
r12 = r1+r2;
r13 = sqrt(r1^2 + r3^2);
r23 = sqrt(r2^2 + r3^2);




F13 = k * (abs(q1*q3))/(r13^2)
F23 = k * (abs(q2*q3))/(r23^2)

theta = atan(r1/r3)

F13x = F13 * cos(theta);
F13y = F13 * sin(theta);

F23x = F23 * cos(theta);
F23y = F23 * sin(theta);

Fx =  F13x + F23x 
Fy =  F23y + F23y 

% F = sqrt(Fx^2 + Fy^2)
% variables
x1 = 0;
y1 = 0.3;
x2 = 0;
y2 = -0.3;
x3 = 0.4;
y3 = 0;

% arrays with x and y values
xv = [x1 x2 x3];
yv = [y1 y2 y3];

figure(1)
% subplot split in 2 plot in 1 fiugre 1
subplot(2,1,1)

% plot the points on the graph
scatter(xv,yv,50,'filled')
grid on
hold on 
% plot the lines between the points
plot([0 0.4 0 0], [0.3 0 -0.3 0.3],'--')
title('Placement of charges')

% quiver(x,y,u,v)
% starts at co-ordinates (x,y) and has vector (u,v)

quiver(x3,y3,F13x,y3, 'r--')
quiver(x3,y3,y3  ,F13y, 'r--')
quiver(x3,y3,F13x,F13y, 'b')




subplot(2,1,2)
hold on
scatter(xv ,yv , 50, 'filled')
grid on
plot([0 0.4 0 0], [0.3 0 -0.3 0.3],'--')
title( 'Final Force')
quiver(x3,y3,Fx,Fy, 'b')
hold off
