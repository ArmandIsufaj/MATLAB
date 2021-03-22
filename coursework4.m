%% Coursework CW1: 1D Electrostatic Potential
% ------- Armand Isufaj ---------- Student ID:170013584


%%

% Length of the Plate
L = 1.5*10^-2;

% Charge Density
r = 0.3;

% Permitivity
e = 3;

% Number of which the length of the plate will be divided into
nx = 150;

% number of unknown values
nU = 148;

% The length of each division of the plate
dx = L/(nx-1);

% The co-efficient of the value of V(i-1)
aw = e/(r*(dx^2));

% The co-efficient of the value of V(i)
ap = -2*aw;

% The co-efficient of the value of V(i+1)
ae = aw;

% The value for V at x = 1
V1 = 0;

% The value for V at x = nx
Vnx = 0;

%%

% Create a nU by nU matrix, nU is the number of unknown values we need to
% find
A = zeros(nU,nU);

% Creates a collumn vector with 'nU' number of elements
b = zeros(nU,1);

%%

% for loop from the second unknown to the second last unknown

% this is because the code error where the element is 0 or out of the range
% i-1 would not work if you start at i=1  (First Element)
% i+1 would not work if you end at nU     (Last Element)

for i = 2:nU-1;
    % Assigns the elements into the co-efficient matrix
    A(i,i-1) = aw; % All values of the diagonal 1 below the main = aw
    A(i,i) = ap;   % All values in the main diagonal = ap
    A(i,i+1) = ae; % All values of the diagonal 1 above the main = ae
    
end

% place the remaining co-efficients into 'A' that were not in the for loop
% above

% First element for the main diagonal
A(1,1) = ap;

% First element for the diagonal 1 above the main diagonal
A(1,2) = ae;

% last element for the main diagonal
A(nU,nU) = ap;

% last element for the diagonal 1 above the main diagonal
A(nU,nU-1) = ae;

% the diagonal 1 below the main diagonal is accounted for in the foor loop

%%


% Initialises the value for sum to be equal to 0
sum = 0;

% Creates a for loop between 1 and the nU

for i = 1:nU
    
    % The elements of matrix 'b' are given values so that the element of
    % 'b' corresponds to the distance from the origin
    b(i) = sum + dx;
    
    % update the value of 'sum' after each iteration
    sum = b(i)

end


%%

% Creates a column vector
V = [V1;       % First element from the boundary conditions
     A\b;       % Elements inbetween which were calculated 
     Vnx]      % Last element from the boundary conditions


% sets the x axis of the graph: linspace(start,step,end)
x = linspace(0,L,nx);


% Plot the graph: plot(x,y)
plot(x,V)

% Enables the grid
grid on

% Names the title of the plot
title("Electrostatic Potential Along a Plate")

% Names the x-axis of the plot
xlabel("Distance Along the Plate (m)")

% Names the y-axis of the plot
ylabel("Electric Potential (V)")




%%