%%  Gauss Seidel Method


A = [2 0 1;
     -1 -2 1;
     0 1 3];
b = [4 ;
     3;
     5];
tollerance = 1*10^-6;

n = 3;
x0 = zeros(n,1);
x1 = zeros(n,1);

error = inf*ones(n,1);

solutions = {};
iter = 0;

 while error > tollerance
     for i = 1:n
        sum0 = 0;
        sum1 = 0;
        for j = i:n
            sum0 = sum0 + (A(i,j)*x0(j));
            
        end
        for j = 1:i-1
            sum1 = sum1 + (A(i,j)*x1(j));
        end

        
        correction = (b(i)- (sum1 + sum0))/A(i,i);
        x1(i)= correction + x0(i);

        error(i) = abs((correction)/x1(i));
        x0(i) = x1(i);
        

     end
     
     iter = iter +1;
     solutions{iter}=x0;
 end

solutions{:}
iter;






