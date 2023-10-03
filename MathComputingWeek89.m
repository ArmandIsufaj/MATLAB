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






% %% 1-2
% format short
% 
% syms m n q
% 
% x = [3.5 1 5];
% f = [-0.56 1.18 -6.37];
% eqn= @(x) (m*log(x)) + (4*n*sin(x)) - ((q*x^2)/5);
% 
% a=cell(1,3);
% for i=1:3
%     a{i} = eqn(x(i)) ==f(i);
%     
%     
%     
% end
% 
% 
% equation1 = a{1};
% equation2 = a{2};
% equation3 = a{3};
% 
% [A,b] = equationsToMatrix([equation1, equation2, equation3], [m, n, q]);
% 
% v = linsolve(A,b);
% val = double(v);
% 
% 
% m = sprintf('%0.4f',val(1))
% n = sprintf('%0.4f',val(2))
% q = sprintf('%0.4f',val(3))
% 





%% 1-3



% syms a b c
% 
% y = [1,-3,1];
% h = [-17,0,0];
% 
% 
% eqn =@(y) a*y^3 - b*(y+2)^2 - c*y ;
% dEqn =@(y) 3*a*y^2 - 2*b*(y+2) - c ;
% 
% equationCell=cell(1,3);
% 
% for i=1:3
%     if i==1
%         equationCell{i}= eqn(y(i))== h(i);
%     
%     else
%         equationCell{i}= dEqn(y(i))== h(i);
%         
%     end
% end
% 
% equation1 = equationCell{1};
% equation2 = equationCell{2};
% equation3 = equationCell{3};
% 
% [A,B] = equationsToMatrix([equation1, equation2, equation3]);
% 
% v = linsolve(A,B);
% val = double(v);
% 
% 
% a = sprintf('%0.4f',val(1))
% b = sprintf('%0.4f',val(2))
% c = sprintf('%0.4f',val(3))


%% Task 1-4

% syms a b c





%% Task 2
% format short
% pin = 100;
% pmax = 150*10^3;
% pn = 100;
% 
% vin = 900;
% vmax = 1200*10^3;
% vn = 250;
% 
% tin = 500;
% tmax = 1000;
% tn = 150;
% 
% 
% pressure = pin+(pmax-pin).*rand(1,pn);
% 
% velocity = vin+(vmax-vin).*rand(1,vn);
% 
% 
% temperature = tin+(tmax-tin).*rand(1,tn);
% 
% for j = 1:pn-1
%     for i = 1:pn-1
%     if pressure(i)>pressure(i+1)
%         temp = pressure(i);
%         pressure(i)= pressure(i+1);
%         pressure(i+1) = temp;
%     end
%     end
% 
% end
% 
% for j = 1:vn-1
%     for i = 1:vn-1
%     if velocity(i)>velocity(i+1)
%         temp = velocity(i);
%         velocity(i)= velocity(i+1);
%         velocity(i+1) = temp;
%     end
%     end
% 
% end
% 
% for j = 1:tn-1
%     for i = 1:tn-1
%     if temperature(i)>temperature(i+1)
%         temp = temperature(i);
%         temperature(i)= temperature(i+1);
%         temperature(i+1) = temp;
%     end
%     end
% 
% end
% 
% medianP = pressure(pn/2) 
% medianV = velocity(vn/2) 
% medianT = temperature(tn/2) 


%% General Function
% x=[]
% n = length(x);
% for j = 1:n-1
%     for i = 1:n-1
%     if x(i)>x(i+1)
%         temp = x(i);
%         x(i)= x(i+1);
%         x(i+1) = temp;
%     end
%     end
% 
% end




















