function s=heunfunc(x)
k1=(-0.2)*0.2*x^2;
k2=(-0.2)*(0.2*k1^2-0.2);
s=x+0.5*(k1+k2);
end