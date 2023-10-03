% Math Computing Week 8 & 9

% 1-1


% syms x y z p
% eqn1 = 5*x - y + 2*z + p == 12;
% eqn2 = 3*x + 8*y - 2*z - p == -25;
% eqn3 = x + y + 5*z - 3*p == -6;
% eqn4 = -x + y - 2*z -6*p == -5;
% 
% [A,b] = equationsToMatrix([eqn1, eqn2, eqn3 , eqn4], [x, y, z, p])
% 
% v = linsolve(A,b)

%% 1-2
% format short
% 
% syms m n q
% 
% x = [3.5 1 5];
% f = [-0.56 1.18 -6.37];
% eqn= @(x) (m*log(x)) + (4*n*sin(x)) - ((q*x^2)/5);
% B = arrayfun(eqn,x);
% a = cell(1,3);
% 
% 
% 
% for i=1:3
%     estring="equation";
%     istring=int2str(i);
%     a{i}=strcat(estring,istring)
%     s.(a{i}) = (B(i)==f(i));
%     
%     
%     
% end
% 
% equation1 = s.equation1;
% equation2 = s.equation2;
% equation3 = s.equation3;
% 
% [A,b] = equationsToMatrix([equation1, equation2, equation3], [m, n, q]);
% 
% v = linsolve(A,b);
% val = double(v)






%% 1-2
format short

syms m n q

x = [3.5 1 5];
f = [-0.56 1.18 -6.37];
eqn= @(x) (m*log(x)) + (4*n*sin(x)) - ((q*x^2)/5);

a=cell(1,3);
for i=1:3
    a{i} = eqn(x(i)) ==f(i);
    
    
    
end


equation1 = a{1};
equation2 = a{2};
equation3 = a{3};

[A,b] = equationsToMatrix([equation1, equation2, equation3], [m, n, q]);

v = linsolve(A,b);
val = double(v);


m = sprintf('%0.4f',val(1))
n = sprintf('%0.4f',val(2))
q = sprintf('%0.4f',val(3))






%% 1-3















































