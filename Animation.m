clear

frames = 144;
xmax = 4*pi;
x = 0:xmax/100:xmax;
phi = 0;
dphi = (2*pi)/frames;
for i =1:frames
    y=cos(x+phi);
    plot(x,y,'b-')
    phi = phi+dphi; % phase
    f = getframe(gcf)
    
end