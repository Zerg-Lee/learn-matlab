function shooting_method10_1
solver();



end


function f = solver()
[t,u]=ode45(@equation,[0 pi/2],[-0.3 0 -0.3 1]);
ydb=u(length(t),1);
yfb=u(length(t),3);
lamda=(-0.1-yfb)/(ydb-yfb);
plot(t,lamda*u(:,1)+(1-lamda)*u(:,3),t,-(sin(t)+3*cos(t))/10)
end


function dy=equation(t,y)
dy=zeros(4,1);
dy(1)=y(2);
dy(2)=cos(t)+2*y(1)+y(2);
dy(3)=y(4);
dy(4)=cos(t)+2*y(3)+y(4);
end