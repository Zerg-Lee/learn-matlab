function x=secant(f,x0,x1,tol,nmax)
x=x0;
y=x1;
n=0;
while (f(x)>tol) || (n<nmax)
    n=n+1;
    transp = y-(y-x)/(f(y)-f(x))*(f(y));
    if(transp == y)
        break;
    end
    x=y;
    y=transp
end
x=y;
end