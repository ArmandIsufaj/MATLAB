syms z

num = [1]

a = ((z-1)^2*(z)^2);
den = sym2poly(expand(a))
c = tf(num,den)
