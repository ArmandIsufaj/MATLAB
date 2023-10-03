clear
% course work hints
% using the mid point method
% Define the limits of the integral
% 
a = 0;
b = 3;

% Define the number of rectangles in the integral
N = 100;
deltaX = (b-a)/N;

% Numerical Integration
intApprox = 0;
for j=1:N % Loop over the rectangles
    x = a+((j-1)*deltaX);
    heightRectangle = 1+(x^2);
    areaRectangle = deltaX * heightRectangle;
    intApprox = intApprox + areaRectangle;
end
disp(intApprox)