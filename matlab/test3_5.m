x = zeros(11);
y = zeros(11);
t = 0:10;
for i=0:10
    x(i+1)=(i/2+1)*cos(i);
    y(i+1)=(i/2+1)*sin(i);
end
cspline_eval(t,y,cspline(t,y),x);
plot(x,cspline_eval(t,y,cspline(t,y),x),x,y)