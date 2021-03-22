%% Example 1
clear; clc;
num1 = [1 1];
den1 = [1, 0.3, 0.02, 0];
[r, p, k] = residue(num1, den1)

%% Exercise 1

syms z
num2 = [1];
a = ((z-1)^2*(z)^2);
aExp = expand(a);
den2 = sym2poly(aExp)
[r, p, k] = residue(num2, den2)


