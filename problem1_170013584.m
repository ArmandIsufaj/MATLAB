% Created by Armand Isufaj

clear % clears matlab memory

% --- Section 1 --- Calculate the Maclaurin infinite series ---

% variables
series = 0; % assign the value 0 to variable 'series'

% calculations

for n=0:12 % set up a for loop to run from n=0 to n=12
    numerator = (-1)^n; % The numerator of the formula
    denominator = factorial(2*n)*(4*n+1); % the denominator of the formula
    term = numerator/denominator; % the full formula
    series = series + term; % add the term to the series
    

end % ends the for loop


% display the value of the Maclaurin infinite series
disp("the series summation is: "); disp(series)


% --- Section 2 --- Create a plot of cos(x^2) ---

% range of the abscissa (x-axis) from -10 to 10 with 0.01 intervals
x = -10:0.01:10;

% cosine function defined at the element level
y = cos(x.^2);



% plot a continuous black line
plot(x,y,'k-')


% --- Section 3 --- Obtains the Numerical Integral of cos(?2)---

% integral limits
a = 0;
b = 1;

% number of divisions of the integral
N = 30;

% width of each rectangle
wRect = (b-a)/N;

% variable that will hold the value for numerical integration
intApprox = 0;

% for loop from i=1 to 1=N 
for i =1:N
    
    % the x-axis value of the center of rectangle i
    x = (a + (i-1) * wRect) + 0.5 * wRect;
    
    % the y-axis value of the rectangle i
    hRect = cos(x^2);
    
    % the area of rectangle i
    aRect = wRect * hRect;
    
    % variable storing the summation of the areas after each itteration
    intApprox = intApprox + aRect;
end

% displays a message the value of approximate integration
disp(" is"); disp(intApprox)

% --- Section 4 --- obtains the error (in %)---

% error calculation method
error = ((intApprox-series)/series)*100;

% display a message and the error percentage
disp("the error in percentage is:"); disp(error)


