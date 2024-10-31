function shooting_method10_2
solver();



end


function f = solver()
[t,u]=ode45(@equation,[0 1],[0 0 0 1]);
ydb=u(length(t),1);
dydb=u(length(t),2);
yfb=u(length(t),3);
dyfb=u(length(t),4);
lamda=(2-(dydb+dyfb)/2-yfb)/(ydb-yfb);
plot(t,lamda*u(:,1)+(1-lamda)*u(:,3),t,t.^3-t)
end


function dy=equation(t,y)
dy=zeros(4,1);
dy(1)=y(2);
dy(2)=6*t^3+6*y(1);
dy(3)=y(4);
dy(4)=6*t^3+6*y(3);
end