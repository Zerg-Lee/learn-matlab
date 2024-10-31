function r=bisection(f,a,b,tol,nmax)
% function r=bisection(f,a,b,tol,nmax)
% inputs: f: function handle or string
% a,b: the interval where there is a root
% tol: error tolerance
% nmax: max number of iterations
% output: r: a root
looptime = 0;
areatop = a;
areabot = b;
c=(areatop+areabot)/2;
midpoint=f(c);
if(f(a)*f(b)>0)
    fprintf("the error message")
else
    while(abs(midpoint)>tol && looptime<nmax)
        if(f(areatop)*f(c)<0)
            areabot=c;
        end
        if(f(areabot)*f(c)<0)
            areatop=c;
        end
        if(abs(f(c))<tol)
            break;
        end
        c=(areatop+areabot)/2;
        looptime=looptime+1;
        midpoint=f(c);
    end
    r = c;
end
end
