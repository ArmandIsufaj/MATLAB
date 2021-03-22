clear
A=[2 4;1 5];
B=[3 5;2 8];
v=[4;A*v6];
s=2;
% A+s element addition by 's'
% A-s element subtraction by 's'
% A+B element addition of the 2 matrices
% Same for subtraction
% A*s multiply elements of 'A' by 's'
% A/s multiply elements of 'A' by '1/s' or divide by 's'
% s*inv(A) multiplies the inverse matrix A by 's'
% A.*B multiply the elements of 'A' and 'B'
r=[3.0 3.4 5.0 5.4 6.0];
h=[2.2 2.4 2.6 2.7 3.1];
rho=1000;
area=pi*(r.^2)
vol=area.*h;
wight=vol*rho*9.81

maxRadius=max(r)% finds the maximum value, can return more that 1 value
[maxRadius,positionMax]=max(r);
[minRadius,positionMin]=min(r);
totalVol=sum(vol)
meanVol=mean(vol)
sum(vol)/length(vol) % length(x) is the number of elements in the row
           % size(x) gives the number of elements in the rows and columns
           
% std(x) gives the standard deviation of x

% plot(x,y,colourKey) 
% x,y - co-ordinates
% colourKey - 'x' x markers instead of lines
% r-x = red, solid line, x markers
