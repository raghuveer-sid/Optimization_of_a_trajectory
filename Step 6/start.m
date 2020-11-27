clear all
close all

x0 = [1 3 2 6 8 8 9;8 6 3 1 7 4 3];

x01 = [x0(1,1),x0(2,1)];
x02 = [x0(1,2),x0(2,2)];
x03 = [x0(1,3),x0(2,3)];
x04 = [x0(1,4),x0(2,4)];
x05 = [x0(1,5),x0(2,5)];
x06 = [x0(1,6),x0(2,6)];
x07 = [x0(1,7),x0(2,7)];

Lb = [0 0 0 0 0 0 0;0 0 0 0 0 0 0];
Ub = [10 10 10 10 10 10 10;10 10 10 10 10 10 10];
A = [1 9];
B = [9 1];
c1 = [2 7];
r1 = 1;
c2 = [2 3];
r2 = 1.2;
c3 = [8 3];
r3 = 1;
c4 = [7 5];
r4 = 1;

options = optimset('Display','iter',...
                   'TolX',1.e-8,...
                   'Tolfun',1.e-8,...
                   'MaxIter',50,...
                   'MaxfunEvals',200);
      
x = fmincon(@(x)objective(x,A,B),x0,[],[],[],[],Lb,Ub,@(x)constraint(x,A,B,c1,r1,c2,r2,c3,r3,c4,r4),options);

x1 = [x(1,1),x(2,1)];
x2 = [x(1,2),x(2,2)];
x3 = [x(1,3),x(2,3)];
x4 = [x(1,4),x(2,4)];
x5 = [x(1,5),x(2,5)];
x6 = [x(1,6),x(2,6)];
x7 = [x(1,7),x(2,7)];

hold on
axis equal
viscircles(c1,r1)
viscircles(c2,r2)
viscircles(c3,r3)
viscircles(c4,r4)
xlim([0 10])
ylim([0 10])
plot(A(1),A(2),'r.')
plot(B(1),B(2),'r.')

rectangle('Position',[4 0 2 4],'FaceColor','c')
rectangle('Position',[4 6 2 4],'FaceColor','c')
rectangle('Position',[0 0 10 10])

%plot([4 4],[0 4],'k')
%plot([4 6],[4 4],'k')
%plot([6 6],[4 0],'k')

plot(x(1,1),x(2,1),'bo')
plot(x(1,2),x(2,2),'bo')
plot(x(1,3),x(2,3),'bo')
plot(x(1,4),x(2,4),'bo')
plot(x(1,5),x(2,5),'bo')
plot(x(1,6),x(2,6),'bo')
plot(x(1,7),x(2,7),'bo')

plot([A(1),x01(1)],[A(2),x01(2)],'g--')
plot([x01(1),x02(1)],[x01(2),x02(2)],'g--')
plot([x02(1),x03(1)],[x02(2),x03(2)],'g--')
plot([x03(1),x04(1)],[x03(2),x04(2)],'g--')
plot([x04(1),x05(1)],[x04(2),x05(2)],'g--')
plot([x05(1),x06(1)],[x05(2),x06(2)],'g--')
plot([x06(1),x07(1)],[x06(2),x07(2)],'g--')
plot([x07(1),B(1)],[x07(2),B(2)],'g--')

plot([A(1),x(1,1)],[A(2),x(2,1)],'r-')
plot([x(1,1),x(1,2)],[x(2,1),x(2,2)],'r-')
plot([x(1,2),x(1,3)],[x(2,2),x(2,3)],'r-')
plot([x(1,3),x(1,4)],[x(2,3),x(2,4)],'r-')
plot([x(1,4),x(1,5)],[x(2,4),x(2,5)],'r-')
plot([x(1,5),x(1,6)],[x(2,5),x(2,6)],'r-')
plot([x(1,6),x(1,7)],[x(2,6),x(2,7)],'r-')
plot([x(1,7),B(1)],[x(2,7),B(2)],'r-')

