clear
close all
clc
%% Coursework S2 code by Viviene Dela Cruz
%% Using central differencing scheme to find the concentration pollution
%% Setting parameters
nx=99;              %number of indeces for the volume
L=2;                %length of the control volume
u=1;                %advective air velocity, in m/s
D=0.01;             %diffusivity coefficient
deltax=L/(nx-1);    %equal spacing of 99 indeces in L
x = linspace(0,2, nx);%length along which the study is being conducted

%% Initialising values for Ac=b
A = zeros(nx,nx);   %initialising Matrix A
c = zeros(nx,1);    %initialising vector c    
b = zeros(nx,1);    %initialising vector b

%% Discretising general equation
aw = ((-u/(2*deltax))-(D/(deltax^2)));  %for ci-1
ap = ((2*D)/(deltax^2));                %for ci
ae = ((u/(2*deltax))-(D/(deltax^2)));   %for ci+1

%% Using boundary conditions
A(1,1)=1;           %c(0)=1
A(nx,nx)=ap;
A(nx,nx-1)=aw+ae;   %c'(L)=0

%% Replacing values for Matrix A
for i=2:nx-1
    A(i,i)=ap;      %for the ci term
    A(i,i+1)=ae;    %for the ci-1 term
    A(i,i-1)=aw;    %for the ci+1 term
end

%% Replacing necessary value/s for vector b
b(1,1)=1;           %c(0)=1 therefore 1*c1=1 in Ac=b form

c = A\b

fig = figure()
set(fig, 'color', 'white')
plot(x,c,'LineWidth', 2)
xlabel('length')
ylabel('pollutant concentration')
