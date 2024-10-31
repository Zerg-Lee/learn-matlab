function [r1, r2] = quadroot(a,b,c)
% input: a, b, c: coefficients for the polynomial ax^2+bx+c=0.
% output: r1, r2: The two roots for the polynomial.
r1 = (-b+sqrt(b^2-4*a*c))/(2*a);
r2 = (-b-sqrt(b^2-4*a*c))/(2*a);
end
[r1, r2] = quadroot(2,6,-3)
[r1, r2] = quadroot(1,-14,49)
[r1, r2] = quadroot(3,-123454321,2)
