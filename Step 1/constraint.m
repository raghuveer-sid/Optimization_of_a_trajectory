function [g ,  h] = constraint(x, A ,B, c, r) 
g(1) = r-norm(c-x);
g(2)= r-distance(A,x,c);  
g(3)= r-distance(x,B,c);
%g(4) = norm(A - x) - 4;
h = [];
end

