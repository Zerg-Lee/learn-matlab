function v=trapezoid(funItg,a,b,n)
%funItg is function
%a, b is the max and min
%n is the point of the trapezoid choose
h = (b-a)/n;
x=a:h:b;
t=(funItg(a)+funItg(b))/2;
for i = 2:1:n
    t = t + funItg(x(i));
end
v=h*t;

end