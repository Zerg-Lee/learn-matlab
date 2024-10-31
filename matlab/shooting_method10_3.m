function shooting_method10_3
solver();



end


function f = solver()
[t,u]=ode45(@equation,[1 2],[0 0 0 1]);
ydb=u(length(t),1);
yfb=u(length(t),3);
lamda=(log(2)-yfb)/(ydb-yfb);
plot(t,lamda*u(:,1)+(1-lamda)*u(:,3),t,log(t))
end


function dy=equation(t,y)
dy=zeros(4,1);
dy(1)=y(2);
dy(2)=log(t)-y(1)-y(2).^2;
dy(3)=y(4);
dy(4)=log(t)-y(3)-y(4).^2;
end