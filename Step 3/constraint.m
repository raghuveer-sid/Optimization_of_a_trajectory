function [g ,  h] = constraint(x,A,B,c,r)

x1 = [x(1,1),x(2,1)];
x2 = [x(1,2),x(2,2)];
x3 = [x(1,3),x(2,3)];
x4 = [x(1,4),x(2,4)];
x5 = [x(1,5),x(2,5)];

%%

g(1) = r - norm(c - x1);
g(2) = r - norm(c - x2);
g(3) = r - norm(c - x3);
g(4) = r - norm(c - x4);
g(5) = r - norm(c - x5);

%%

d1 = distance(A,x1,c);
d2 = distance(x1,x2,c);
d3 = distance(x2,x3,c);
d4 = distance(x3,x4,c);
d5 = distance(x4,x5,c);
d6 = distance(x5,B,c);

%%

g(6) = r - d1 + 0;
g(7) = r - d2 + 0;
g(8) = r - d3 + 0;
g(9) = r - d4 + 0;
g(10) = r - d5 + 0;
g(11) = r - d6 + 0;

%%

g(12) = 2 - norm(A - x1);
g(13) = 2 - norm(x1 - x2);
g(14) = 2 - norm(x2 - x3);
g(15) = 2 - norm(x3 - x4);
g(16) = 2 - norm(x4 - x5);
g(17) = 2 - norm(x5 - B);

%%
h = [];
end

