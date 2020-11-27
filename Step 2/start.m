clear all
close all

x0 = [3 5;3 2];

x01 = [x0(1,1),x0(2,1)];
x02 = [x0(1,2),x0(2,2)];

Lb = [0 0;0 0];
Ub = [10 10 ;10 10];
A = [1 9];
B = [9 1];
c = [4 3];
r = 2;

options = optimset('Display','iter',...
                   'TolX',1.e-8,...
                   'Tolfun',1.e-8,...
                   'MaxIter',50,...
                   'MaxfunEvals',200);
      
x = fmincon(@(x)objective(x,A,B),x0,[],[],[],[],Lb,Ub,@(x)constraint(x,A,B,c,r),options);

x1 = [x(1,1),x(2,1)];
x2 = [x(1,2),x(2,2)];

hold on
axis equal
viscircles(c,r)
xlim([0 10])
ylim([0 10])
plot(A(1),A(2),'r.')
plot(B(1),B(2),'r.')

plot(x(1,1),x(2,1),'bo')
plot(x(1,2),x(2,2),'bo')

plot([A(1),x01(1)],[A(2),x01(2)],'g--')
plot([x01(1),x02(1)],[x01(2),x02(2)],'g--')
plot([x02(1),B(1)],[x02(2),B(2)],'g--')

plot([A(1),x(1,1)],[A(2),x(2,1)],'r-')
plot([x(1,1),x(1,2)],[x(2,1),x(2,2)],'r-')
plot([x(1,2),B(1)],[x(2,2),B(2)],'r-')

