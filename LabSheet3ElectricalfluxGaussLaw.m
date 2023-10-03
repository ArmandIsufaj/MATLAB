% Lab Sheet 3: Electrical flux , Gauss’s Law



%% Task 1 : Part A

clear
clc

L = 0.1;
E = 2*10^3;
A = L^2;

theta = [ pi 0 pi/2 pi/2 pi/2 pi/2];
phi_total = 0;



for i=1:6
    Phi = E*A*cos(theta(i));
    phi_total = phi_total + round(Phi,2);
    
end


%% part B
clear
clc

L = 0.1;
E = 2*10^3;
A = L^2;

alpha = deg2rad(30);

theta = [ (pi-alpha) (0-alpha) (pi/2-alpha) (pi/2+alpha) (pi/2) (pi/2)];
phi_total = 0;



for i=1:6
    
    Phi = E*A*cos(theta(i));        
    phi_total = phi_total + round(Phi,2)
    
end

%% Task 2


clear
clc


k   = 8.988*10^9;
R   = 0.16;  
ro = 7.2*10^-9;
q   = 3.4*10^-6;
V   = 4/3 * pi * R^3;
Q   = ro*V;

W=@(r) k*q*Q./r.^2 ;

W_in = integral(W, R, Inf);

W_in


%% Task 3


clear
clc


k = 9*10^9 ;
q = 3*10^-6 ;
r = 0.2 ;
alpha = 0 ;
dA = 4*pi*r^2 ;
E = k* q/r^2 ;
phe = E*dA*cos(alpha);

X1 = 0 ; Y1 = 0 ; Z1 = 0 ;
hold on
scatter3(X1,Y1,Z1,140,'filled') 

n = 30 ;
theta = pi*(-n:2:n)/n;
phi = (pi/2)*(-n:2:n)'/n;
X = r*cos(phi)*cos(theta);
Y = r*cos(phi)*sin(theta);
Z = r*sin(phi)*ones(size(theta));

plot3(X,Y,Z,'b')

[U,V,W]=surfnorm(X,Y,Z)

quiver3(X,Y,Z,U*r,V*r,W*r)



















