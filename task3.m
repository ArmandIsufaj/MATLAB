% Lab sheet 2

% Task 3

k = 8.988*10^9
q = [-1*10^-6 1*10^-6] ;
d = 2;
x = [-d/2 d/2];
y = [0 0];

dx = 0.2;
dy = dx;
X = (-d:dx:d);
Y = (-d:dy:d);
[X,Y] = meshgrid(X,Y);

E=zeros(size(X));

for i=1:numel(q)
    r = sqrt((X-x(i)).^2+(Y-y(i)).^2);
    E=E+(k*q(i))./(r.^2);

end
E
% where E(i) is infinite replace with NaN (not a number)
E(isinf(E))=NaN

[Dx, Dy] = gradient(E,0.2 ,0.2);



figure(1)
grid on
contour( -X, -Y, E)
hold on
quiver(-X,-Y,Dx,Dy)






