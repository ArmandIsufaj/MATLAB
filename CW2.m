clear all
close all
clc
tic
%% 1ST INITILISATION

% Thermal diffusivity constants
alpha=0.1;
beta=alpha;

% Grid spacing
dx=2*pi/100;
dy=dx;

% Time step 
dt=0.01;

% Width
x =4*pi;
% Height 
y = x/2;

% Number of points in the Y-Axis
n = round(x/dx +1);
% Number of points in the X-Axis
m = round(y/dy +1);

% Initial time temperature distribution
T=@(x,y) 20*cos(x)*sin(y);

% Ax=b Matrix set up
b=zeros(n*m,1);
A=zeros(n*m);

% End time (seconds)
t=5;
% Number of time points
nt=(t/dt)+1;

% Convective velocity distribution equation 
v_form=@(x,t) 5*(1-((x-2*pi)^2)/(4*pi^2))*cos(pi*t)*sin(x);
vel= zeros(n,1);

% Pointer index initialisation 
Pointer=0;

% Graph domain and range
domainX = 0:dx:x;
rangeY = 0:dy:y;

%% Initial value, t=0

% K is the index for the point in time, K=1 means t=0
k=1;

% For every index of y from 1 to m
for j =1:m
    % For every index of x from 1 to n
    for i=1:n
        % Pointer 
        P=(j-1)*n+i;
        % Temperature value 
        b(P,k)=T((i-1)*dx,(j-1)*dy);
    end
end


% Makes the vector 'b' into a matrix by rows of length n
matTemp=vec2mat(b,n);

% Creates a 2x3 subplot and assigns this graph to the 1st position
subplot(2,3,1)

% Plots the contour of the Temperature in the domain and range
plot=contourf(domainX,rangeY,flipud(matTemp));
% Sets the title of the sub plot
title('Temperature distribution at t=0')
% Sets the X-Axis label of the subplot
xlabel('Width (m)')
% Sets the Y-Axis label of the subplot
ylabel('Height (m)')
% Enables the colour bar for the temperature
c = colorbar;
% Sets the label of the colour bar
c.Label.String = 'Temperature (°C)';

%% velocity vector for just dt and Matrix A
for k=1:nt
for i = 1:n
    an(i,k)=-beta*dt/dy^2+v_form((i-1)*dx,(k-1)*dt)*dt/(2*dy);
    as(i,k)=-beta*dt/dy^2-v_form((i-1)*dx,(k-1)*dt)*dt/(2*dy);
end
end

ae=-alpha*dt/dx^2;
ap=-2*ae+2*beta*dt/dy^2+1;
aw=ae;
for k=2:nt
%T6
i=1; j=1;
A(i,i)=ap;
A(i,i+1)=ae+aw;
A(i,i+n)=an(i,k);
A(i,(m-2)*n+i)=as(i,k);



%T7
i=n;j=1;
Pointer=(j-1)*n+i;
A(Pointer,Pointer)=ap;
A(Pointer,Pointer-1)=ae+aw;
A(Pointer,Pointer+n)=an(i,k);
A(Pointer,(m-2)*n+n)=as(i,k);

%T8
i=1;j=m;
Pointer=(m-1)*n+i;
A(Pointer,Pointer)=ap;
A(Pointer,Pointer+1)=ae+aw;
A(Pointer,Pointer-n)=as(i,k);
A(Pointer,n+i)=an(i,k);

%T9
i=n ;j=m;
Pointer=(j-1)*n+i;
A(Pointer,Pointer)=ap;
A(Pointer,Pointer-1)=ae+aw;
A(Pointer,Pointer-n)=as(i,k);
A(Pointer,n+i)=an(i,k);

%T1
for j =2:m-1
    for i=2:n-1
        Pointer=(j-1)*n+i;
        A(Pointer,Pointer-1)=aw;
        A(Pointer,Pointer)=ap;
        A(Pointer,Pointer+1)=ae;
        A(Pointer,Pointer+n)=an(i,k);
        A(Pointer,Pointer-n)=as(i,k);
    end
end

%T4
j=1;
for i =2:n
    Pointer=(j-1)*n+i;
    A(Pointer,Pointer-1)=aw;
    A(Pointer,Pointer)=ap;
    A(Pointer,Pointer+1)=ae;
    A(Pointer,Pointer+n)=an(i,k);
    A(Pointer,(m-2)*n+i)=as(i,k);
end

%T5
j=m;
for i=2:n-1
    Pointer=(m-1)*n+i;
    A(Pointer,Pointer-1)=aw;
    A(Pointer,Pointer)=ap;
    A(Pointer,Pointer+1)=ae;
    A(Pointer,n+i)=an(i,k);
    A(Pointer,Pointer-n)=as(i,k);
end

%T2
i=1;
for j=2:m-1
    Pointer=(j-1)*n+i;
    A(Pointer,Pointer)=ap;
    A(Pointer,Pointer+1)=ae+aw;
    A(Pointer,Pointer+n)=an(i,k);
    A(Pointer,Pointer-n)=as(i,k);
end

%T3
i=n;
for j=2:m-1
    Pointer=(j-1)*n+i;
    A(Pointer,Pointer)=ap;
    A(Pointer,Pointer-1)=ae+aw;
    A(Pointer,Pointer+n)=an(i,k);
    A(Pointer,Pointer-n)=as(i,k);
end
A = sparse(A);

Temp=A\b;
b=Temp;

if k==11
    matTemp=vec2mat(Temp,n);
    subplot(2,3,2);
    plot=contourf(domainX,rangeY,flipud(matTemp));
    title('Temperature distribution at t=0.1s')
    xlabel('Width (m)');
    ylabel('Height (m)');
    c = colorbar;
    c.Label.String = 'Temperature (°C)';
end
if k==51
    matTemp=vec2mat(Temp,n);
    subplot(2,3,3);
    plot=contourf(domainX,rangeY,flipud(matTemp));
    title('Temperature distribution at t=0.5s');
    xlabel('Width (m)');
    ylabel('Height (m)');
    c = colorbar;
    c.Label.String = 'Temperature (°C)';
end
if k==101
    matTemp=vec2mat(Temp,n);
    subplot(2,3,4);
    plot=contourf(domainX,rangeY,flipud(matTemp));
    title('Temperature distribution at t=1.0s');
    xlabel('Width (m)');
    ylabel('Height (m)');
    c = colorbar;
    c.Label.String = 'Temperature (°C)';
end
if k==201
    matTemp=vec2mat(Temp,n);
    subplot(2,3,5)
    plot=contourf(domainX,rangeY,flipud(matTemp));
    title('Temperature distribution at t=2.0s');
    xlabel('Width (m)');
    ylabel('Height (m)');
    c = colorbar;
    c.Label.String = 'Temperature (°C)';
end

end

matTemp=vec2mat(Temp,n);
subplot(2,3,6)
plot=contourf(domainX,rangeY,flipud(matTemp));
title('Temperature distribution at t=5.0s');
xlabel('Width (m)');
ylabel('Height (m)');
c = colorbar;
c.Label.String = 'Temperature (°C)';
sgtitle('Temperature Distribution of a Plate')
toc

