function x=GaussianX(n,d,a,b)
% function x=GaussianX(n,d,a,b)
% input: n=system size, must be an odd number, (d,a,b): vectors of length n
% output: x=solution
MT=zeros([n,n]);
for i= 1:n
    MT((n+1-i),i)=a(i);
    MT(i,(n+1-i))=d(i);
end
x = MT\b';
end