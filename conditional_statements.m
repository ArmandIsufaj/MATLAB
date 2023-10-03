clear
% not equal ---->  '~='

% And ----- A && B = if both are true, the result is true

% Or  ----- A | B = if A or B is true, the result is true

while a~=b
    
    a = rand();
    b = rand();
    if a>b
        disp('A is bigger than B')
    elseif a<b
        disp('B is bigger than A')
    else a==b
        disp('A is equal to B')
end