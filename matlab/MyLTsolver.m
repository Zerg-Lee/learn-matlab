function s=MyLTsolver(L,b)
% s=function MyLTsolver(L,b)
% inputs: L -- a lower triangular matrix
% b -- the load vector
% output: s -- solution for Ls=b
n = length(b);
x = zeros(n,1);
for i=2:n
    dtem = L(i,i)-L(i,i-1)/L(i-1,i-1)*L(i-1,i);
    L(i,i) = dtem;
    btem = b(i)-L(i,i-1)/L(i-1,i-1)*b(i-1);
    b(i)=btem;
end
for j =1:n
    x(j)=b(j)/L(j,j);
end

for k = n-1:1
    xtem = (b(k)-L(k,k+1)*x(k+1));
    x(k)=xtem;
end

s=x;
end
