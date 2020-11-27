function [f] = objective(x,A,B)

x1 = [x(1,1),x(2,1)];
x2 = [x(1,2),x(2,2)];

f = norm (A - x1) +  norm(x1 - x2) + norm(x2 - B);

end

