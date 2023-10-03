clear
close all
clc

%initialisation 
Q = 200;
k = 0.015;
x = 0:100;
t = 0.5:0.5:120;
T=zeros(length(x),(length(t)));

for  i = 1:length(x);
    for j = 1:length(t) ;
        T(i,j)=(Q/k)*x(i)*exp(-x(i)/(4*t(j)));
        
    end
end    

disp(T)