function [g ,  h] = constraint(x,A,B,c,r)

x1 = [x(1,1),x(2,1)];
x2 = [x(1,2),x(2,2)];

%%

g(1) = r - norm(c - x1);
g(2) = r - norm(c - x2);

%%

d1 = distance(A,x1,c);
d2 = distance(x1,x2,c);
d3 = distance(x2,B,c);

%%

g(3) = r - d1 + 0.2;
g(4) = r - d2 + 0.2;
g(5) = r - d3 + 0.2;

%%

g(6) = 2 - norm(A - x1);
g(7) = 2 - norm(x1 - x2);
g(8) = 2 - norm(x2 - B);

%%
h = [];
end

