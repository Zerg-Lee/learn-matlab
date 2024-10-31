function r=romberg(f,a,b,n)
r=zeros(n);
h=b-a;
r(1,1) = (f(a)+f(b))*h/2;
for i=1:1:(n-1)
    r(i+1,1)=r(i,1)/2;
    h=h/2;
    for j=1:1:2^(i-1)
        r(i+1,1)=r(i+1,1)+h*f(a+(2*j-1)*h);
    end
end
for k = 2:1:n
    for i = k:1:n
        r(i,k)=r(i,k-1)+1/4^(i-1)*(r(i,k-1)-r(i-1,k-1));
    end
end
end
