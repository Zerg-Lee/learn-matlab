function dydt = odefcn(x,y,z)
  dydt = 10*(y-x);
  dydt(1) = 28*x-y-x*z;
  dydt(2) = x*y-8/3*z;
end