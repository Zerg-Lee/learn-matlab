n=10; % the size of the system
A=rand(n); % a random nxn matrix, with entries in (0,1), which is a full matrix
L=tril(A)+eye(n); % take the lower triangular part of A and put in L,
%and to make sure that the diagonal elements are bigger than 1.
b=sum(L,2); % we then have b=Lx where x=[1;1; ... 1]
xe=ones(n,1); % the exact solution
x=MyLTsolver(L,b)
errorX=max(abs(x-xe)) % check the error in the computation of x
errorR=max(abs(b-L*x)) % check the residual error