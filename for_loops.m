% for loops
clear

%   counter = range, by x:z where 'x:z' means all from x to z
% i = 1 2 3 4 5
% when i = 1 2 3 4 5 , the numbers are seperate elements
% it's an array
% for i = 1:5 will run the for loop for each element in the array
% runs for loop for i=1 , i=2 , i=3 , i=4 , i=5
% keep the step increment  of the counter equal to 1
for i = 1:5
    disp(i)
end

clear

tic
% Pre-allocate the array, speeds up the programe
v = zeros(1,5);
for i = 1:5
    v(i)= i^2
   
end

toc

clear
v=0; % Initialize
for i=1:5
    a=i^2;
    v=v+a;
end
disp(v)



clear

% the same as the above code
v=1:5;
sv=sum(v.^2)

% sequence is a list of numbers
% series is the sum of all the elements in the sequence

clear
sv = 0;
for i=1:100 % sum to infinity by seeing where it converges
    numerator = 1;
    denominator = 2^i;
    term = numerator/denominator
    sv = sv + term
end