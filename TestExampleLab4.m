
%%%%%% Template. Two exercises are given. Present your results in a form of a code below. 
%%%%%% You might find it useful to follow the tips and instructions
%%%%%% mentioned as comments (green text)

%%%%%% Part one is about inegration. Part two is to do simple plotting.
% If you forgot how to use a buit-in function, you can use "help" followed
% by the name of the function in the Command window for moe details 

% Good luck!



%====================== Task 1
% Find the charge of the electron within a sphere of a radius r=5e-12
% *** Note that in order to calculate the integral the algebraic operations
% next to the function variable should be defined as a dot product (./),
% (.*), (.^) etc.
% *** The charge is found as an integral of multiplicity of desity (ro) and
% volume (V) - where BOTH equations depend on the radius


% 1) Define all the given parameters
% 2) Combine two equations into one
% 3) Define the function of a variable @(r)
% 4) Find the total charge as an integral of the function




% Write your code ----->
%%% Task 1

clear


Q = -1.6*10^-19 ;
a = 5.29*10^-12;
r = 5*10^-12;

ro= @(r) 4*Q*pi/3*pi*a^3*exp(-2.*r./a).*r.^3;


Qe = integral(ro,0,r)







%====================== Task 2
% Create a plot of two cylindrical objects. One will represent the thin
% wire of the radius r0 and the other one will correspond to the Gaussian
% surface with radius r.
% * Coordinates of the cylinder are going to be defined in XYZ plane. Where
% Y-axis corresponds to the length of the cylinders, while X and Y will be
% the circles of it and ONLY X and Z points will change in two cylindrical
% objects proportional to the radius (r0 for the thin wire and r - to the
% Gaussian surface)

% 1) Define all the parameters given
% 2) * The length of infinitely part will define the y-axis of the plot.
% 3) Define y- vector by creating 10 points using the ":" comand, for example from 0 to 10 
% 4) Identify the number of points for the graph as "n" (I used n=40)
% 5) Define a new parameter of the angle (call it as theta) that is equal to 2*pi and differs
% from 0 to n divided by n (! See m.file of Lab 3 for more details; as example: theta = pi*(-n:2:n)/n)
% 6) Use "meshgrid" function of y and theta to replicate the grid vectors
% for coordinates of the grid that will be used for ploting
% 7) Calculate now points for x-axis and z-axis, where x is equal to cosine
% of the angle (theta) and z is equal to sine of the angle (theta)
% 8) Use "surfnorm" function to specify the normalized vectors to the Gaussian
% surface (! See m.file of Lab 3, where sphere was ploted)
% 9) Create now plots of two cylinders (try to use function "surf" instead
% of plot3) at the same figure (* Use "hold on" function to keep plots at
% the same window). 
% * Note that two plots of the cylinder only differ in X and Z points,
% scaled by the corresponding radius
% 10) Add velocity vectors to the Gaussian surface as normalised lines using "quiver3" function
% (don't forget about the scaling by the radius)- chech Lab 3 m.file for
% the "quiver3" function
% 11) If you reached this point, well done! Enjoy the ploting!!!!




% Write your code ----->



r0 = 5*10^-4;
r = 1.5;
l = 10;

n = 40;
y = 0:10;
theta = pi*(-n:n)/n;

[y,theta]=meshgrid(y,theta);

x=cos(theta);
z=sin(theta);
[u,v,w]=surfnorm(x,y,z)

hold on
grid on
surf(r*x,y,r*z)
surf(r0*x,y,r0*z)

quiver3(r*x,y,r*z,u,v,w)




