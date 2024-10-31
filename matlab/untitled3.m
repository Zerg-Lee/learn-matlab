x=0;
y=1;
z=0;
tspan = [0 80];
b0 = [0 0.01];
[a,b] = ode45(@(a,b) odefcn(x,y,z), tspan, b0);
plot(a,b(:,1),'-o',a,b(:,2),'-.')