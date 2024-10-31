function ls=lspline(t,y,x)
% lspline computes the linear spline
% Inputs:
% t: vector, contains the knots
% y: vector, contains the interpolating values at knots
% x: vector, contains points where the lspline function
% should be evaluated and plotted
% Output:
% ls: vector, contains the values of lspline at points x
len_t=length(t);
len_x=length(x);
ls = zeros(len_x);
for i = 1:len_t-1
    for j = 1 : len_x-1
        if t(i)<=x(j) && x(j)<=t(i+1)
            ls(j)=y(i)+(y(i+1)-y(i))/(t(i+1)-t(i))*(x(j)-t(i));
        end
    end
end
plot(x,ls,t,y)
end