clear all
close all

x0 = [4 5];
Lb = [0 0];
Ub = [10 10];
A=[1 9];
B=[9 1];
c=[5 5];
r=2;
% r = circle(c(1),c(2),k);
d = distance(A,B,c);


options = optimset('Display','iter',...
                   'TolX',1.e-8,...
                   'Tolfun',1.e-8,...
                   'MaxIter',50,...
                   'MaxfunEvals',200);

x=fmincon(@(x)objective(x, A, B),x0,[],[],[],[],Lb,Ub,@(x)constraint(x, A ,B, c, r),options);
hold on
axis equal
viscircles(c,r)

xlim([0 10])
ylim([0 10])
plot(A(1),A(2),'b.')
plot(B(1),B(2),'r.')
plot(x(1),x(2),'bo')

plot([A(1),x0(1)],[A(2),x0(2)],'g--')
plot([x0(1),B(1)],[x0(2),B(2)],'g--')

plot([A(1),x(1)],[A(2),x(2)],'r-')
plot([x(1),B(1)],[x(2),B(2)],'r-')


