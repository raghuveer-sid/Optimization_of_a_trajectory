function [f] = objective(x,A,B)

x1 = [x(1,1),x(2,1)];
x2 = [x(1,2),x(2,2)];
x3 = [x(1,3),x(2,3)];
x4 = [x(1,4),x(2,4)];
x5 = [x(1,5),x(2,5)];
x6 = [x(1,6),x(2,6)];
x7 = [x(1,7),x(2,7)];

f = norm (A - x1) +  norm(x1 - x2) + norm(x2 - x3) + norm(x3 - x4) + norm(x4 - x5) + norm(x5 - x6) + norm(x6 - x7) + norm(x7 - B);

end

