%% Task 3: Initialization

%% 3-1

A = [1.2528 -1.4031 -2.45;
     0 3.3659 -0.2;
     1.6094 -3.8357 -5];
b = [-0.56 ;
     1.18;
     -6.37];
% A = [2 0 1;
%      -1 -2 1;
%      0 1 3];
% b = [4 ;
%      3;
%      5];
tollerance = 1*10^-6;

n = 3;
x0 = zeros(n,1);
x1 = zeros(n,1);

error = inf*ones(n,1);

solutions = {};
iter = 0;

 while error > tollerance
     for i = 1:n
        sum = 0;
        for j = 1:n
            sum = sum + (A(i,j)*x0(j));
        end
        
        

        
        correction = (b(i)- sum)/A(i,i);
        x1(i)= correction + x0(i);
        

        
        
        x0(i) = x1(i);
        error(i) = abs((correction)/x1(i));

     end
     
     iter = iter +1;
     solutions{iter}=x0;
 end

solutions{:}
iter
%% 3-2

%% 3-3


%% Task 4: Iterative solvers


%% 4-1

%% 4-2

%% 4-3