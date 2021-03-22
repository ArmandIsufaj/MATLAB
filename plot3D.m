clear
xrange3D = -5:0.25:5; % range of x axis
yrange3D = xrange3D;  % range of y axis
[x,y]=meshgrid(xrange3D,yrange3D);% creates the 3D graph 
z=(x.^2)+ (y.^2);
surf(x,y,z)% plots the 3D graph in 3D
contour(x,y,z)% plots the curves in 2D
colorbar