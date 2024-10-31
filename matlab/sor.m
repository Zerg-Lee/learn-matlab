function [x,nit]=sor(A,b,x0,w,d,tol,nmax)
% SOR : solve linear system with SOR iteration
% Usage: [x,nit]=sor(A,b,x0,omega,d,tol,nmax)
% Inputs:
% A : an n x n-matrix,
% b : the rhs vector, with length n
% x0 : the start vector for the iteration
% tol: error tolerance
% w: relaxation parameter, (1 < w < 2),
% d : band width of A.
% Outputs::
% x : the solution vector
% nit: number of iterations
xk=x0;
xk1=xk;
count=0;
x=x0;
while (any(xk)>tol)&&(count<nmax)
    for i=1:d
        sum=0;
        for j=1:d
            if(j<=i-1)
                sum=sum+A(i,j)*xk1(j);
            end
            if(j>=i+1)
                sum=sum+A(i,j)*xk(j);
            end
        end
        xk1(i)=(1-w)*xk(i)+w*(b(i)-sum);
    end
    xk=xk1;
    count=count+1;
end
x=xk;
nit=count;
end