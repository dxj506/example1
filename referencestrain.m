clc; clear
syms phi alpha s r theta rot_n
pi = sym(pi);
assume([phi alpha s r, theta],'real')
assume([phi alpha s r, theta],'positive')
p_star = [ r*cos(-phi); r*sin(-phi); s*sin(-alpha); ]
p_star = subs(p_star, phi, s*cos(alpha)/r)
%p_star is the reference postion vector
p_star_prime = diff(p_star, s)
R_star =  Rz(pi - phi)*Rx(-pi/2 - alpha)
