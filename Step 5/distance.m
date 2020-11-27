function D = distance(A,B,c)
t = 0:1;
% AB = 	line (A,B);

AB = -20:2:20;
%AM = t*AB;

n =20;i=0;
 for t =0:(1/n):1
    i = i+1;
    M = A + t*(B - A);
    d(i) = norm(c - M);
end
    D = min (d);
end

