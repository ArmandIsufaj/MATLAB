clear
x = -10:2:10;
y = x;
%---Lecture 4---
%[X,Y] = meshgrid(x,y);

%Z = X.^2 + Y.^2;
%surf(X,Y,Z)
%mesh(X,Y,Z)


%---Lecture 7--- 
%---Nested Loops---
for i = 1:length(x)
    for j = 1:length(y)
        %disp([i,j])
        %disp([x(i),y(j)])
        z = x(i)^2 + y(j)^2;
        if x(i) <= 0
            scatter3(x(i),y(j),z,'rO')
            hold on
        else
            scatter3(x(i),y(j),z,'kx')
            hold on
        end
    end
end
hold off