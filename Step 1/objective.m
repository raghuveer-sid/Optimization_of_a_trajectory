function [f] = objective(x, A, B)

f = norm (A - x) +  norm (x - B);

end

