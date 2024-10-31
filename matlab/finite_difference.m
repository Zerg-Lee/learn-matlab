function finite_difference(a,bn,n)
h=(bn-a)/n;
x=zeros(n-1,1);
A=zeros(n-1,n-1);
b=zeros(n-1,1);
num1=zeros(n-1,1);
for i=1:n-1
    num1(i)=i;
    x(i)=i*h;
    A(i,i)=-2*h^2-2;
    b(i)=cos(x(i))*h^2;
end
for i=1:n-2
    A(i,i+1)=1-h/2;
end
for i=2:n-1
    A(i,i-1)=1+h/2;
end
b(1)=b(1)-a;
b(n-1)=b(n-1)-bn;
y=solveGauss(A,b);
plot(x,y,x,-(sin(x)+3*cos(x))/10);

end