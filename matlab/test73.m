A=[-2.011,1,0,0,0,0,0,0,0;
    1,-2.012,1,0,0,0,0,0,0;
    0,1,-2.013,1,0,0,0,0,0;
    0,0,1,-2.014,1,0,0,0,0;
    0,0,0,1,-2.015,1,0,0,0;
    0,0,0,0,1,-2.016,1,0,0;
    0,0,0,0,0,1,-2.017,1,0;
    0,0,0,0,0,0,1,-2.018,1;
    0,0,0,0,0,0,0,1,-2.019;];
b=[-0.994974;
    1.57407*(10^-3);
    -8.96677*(10^-3);
    -2.71137*(10^-3);
    -4.07407*(10^-3);
    -5.11719*(10^-3);
    -5.92917*(10^-3);
    -6.57065*(10^-3);
    -0.507084;];
x0=[0.95;
    0.9;
    0.85;
    0.8;
    0.75;
    0.7;
    0.65;
    0.6;
    0.55;];
et=10^-4;
ir=zeros(9,1);
w=[1,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9];
for i=1:10
    [~,ir(i)] = sor(A,b,x0,w(i),9,et,1000);
end
plot(w,ir)