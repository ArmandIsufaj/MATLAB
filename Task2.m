% Lab sheet 2

% Task 2

r = 3;
x = 1.5;
sigma = 0.01*10^-6 ;
e0 = 8.854*10^-12;
Ex =@(r) ((sigma*x)/(2*e0))*r./((x^2+r.^2).^(3/2))
Ex_int= integral(Ex,0,r)