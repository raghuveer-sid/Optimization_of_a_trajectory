function [g ,  h] = constraint(x,A,B,c1,r1,c2,r2)

x1 = [x(1,1),x(2,1)];
x2 = [x(1,2),x(2,2)];
x3 = [x(1,3),x(2,3)];
x4 = [x(1,4),x(2,4)];
x5 = [x(1,5),x(2,5)];

%%

g(1) = r1 - norm(c1 - x1);
g(2) = r1 - norm(c1 - x2);
g(3) = r1 - norm(c1 - x3);
g(4) = r1 - norm(c1 - x4);
g(5) = r1 - norm(c1 - x5);

g(6) = r2 - norm(c2 - x1);
g(7) = r2 - norm(c2 - x2);
g(8) = r2 - norm(c2 - x3);
g(9) = r2 - norm(c2 - x4);
g(10) = r2 - norm(c2 - x5);

%%

d1 = distance(A,x1,c1);
d2 = distance(x1,x2,c1);
d3 = distance(x2,x3,c1);
d4 = distance(x3,x4,c1);
d5 = distance(x4,x5,c1);
d6 = distance(x5,B,c1);

d7 = distance(A,x1,c2);
d8 = distance(x1,x2,c2);
d9 = distance(x2,x3,c2);
d10 = distance(x3,x4,c2);
d11 = distance(x4,x5,c2);
d12 = distance(x5,B,c2);

%%

g(11) = r1 - d1 + 0.1;
g(12) = r1 - d2 + 0.1;
g(13) = r1 - d3 + 0.1;
g(14) = r1 - d4 + 0.1;
g(15) = r1 - d5 + 0.1;
g(16) = r1 - d6 + 0.1;

g(17) = r2 - d7 + 0.1;
g(18) = r2 - d8 + 0.1;
g(19) = r2 - d9 + 0.1;
g(20) = r2 - d10 + 0.1;
g(21) = r2 - d11 + 0.1;
g(22) = r2 - d12 + 0.1;

%%

g(22) = 1 - norm(A - x1);
g(23) = 1 - norm(x1 - x2);
g(24) = 1 - norm(x2 - x3);
g(55) = 1 - norm(x3 - x4);
g(26) = 1 - norm(x4 - x5);
g(27) = 1 - norm(x5 - B);

%%
h = [];
end

