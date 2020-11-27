function [g ,  h] = constraint(x,A,B,c1,r1,c2,r2,c3,r3,c4,r4)

x1 = [x(1,1),x(2,1)];
x2 = [x(1,2),x(2,2)];
x3 = [x(1,3),x(2,3)];
x4 = [x(1,4),x(2,4)];
x5 = [x(1,5),x(2,5)];
x6 = [x(1,6),x(2,6)];
x7 = [x(1,7),x(2,7)];

%%

g(1) = r1 - norm(c1 - x1);
g(2) = r1 - norm(c1 - x2);
g(3) = r1 - norm(c1 - x3);
g(4) = r1 - norm(c1 - x4);
g(5) = r1 - norm(c1 - x5);
g(6) = r1 - norm(c1 - x6);
g(7) = r1 - norm(c1 - x7);

g(8) = r2 - norm(c2 - x1);
g(9) = r2 - norm(c2 - x2);
g(10) = r2 - norm(c2 - x3);
g(11) = r2 - norm(c2 - x4);
g(12) = r2 - norm(c2 - x5);
g(13) = r2 - norm(c2 - x6);
g(14) = r2 - norm(c2 - x7);

g(15) = r3 - norm(c3 - x1);
g(16) = r3 - norm(c3 - x2);
g(17) = r3 - norm(c3 - x3);
g(18) = r3 - norm(c3 - x4);
g(19) = r3 - norm(c3 - x5);
g(20) = r3 - norm(c3 - x6);
g(21) = r3 - norm(c3 - x7);

g(22) = r4 - norm(c4 - x1);
g(23) = r4 - norm(c4 - x2);
g(24) = r4 - norm(c4 - x3);
g(25) = r4 - norm(c4 - x4);
g(26) = r4 - norm(c4 - x5);
g(27) = r4 - norm(c4 - x6);
g(28) = r4 - norm(c4 - x7);

%%

d1 = distance(A,x1,c1);
d2 = distance(x1,x2,c1);
d3 = distance(x2,x3,c1);
d4 = distance(x3,x4,c1);
d5 = distance(x4,x5,c1);
d6 = distance(x5,x6,c1);
d7 = distance(x6,x7,c1);
d8 = distance(x7,B,c1);

d9 = distance(A,x1,c2);
d10 = distance(x1,x2,c2);
d11 = distance(x2,x3,c2);
d12 = distance(x3,x4,c2);
d13 = distance(x4,x5,c2);
d14 = distance(x5,x6,c2);
d15 = distance(x6,x7,c2);
d16 = distance(x7,B,c2);

d17 = distance(A,x1,c3);
d18 = distance(x1,x2,c3);
d19 = distance(x2,x3,c3);
d20 = distance(x3,x4,c3);
d21 = distance(x4,x5,c3);
d22 = distance(x5,x6,c3);
d23 = distance(x6,x7,c3);
d24 = distance(x7,B,c3);

d25 = distance(A,x1,c4);
d26 = distance(x1,x2,c4);
d27 = distance(x2,x3,c4);
d28 = distance(x3,x4,c4);
d29 = distance(x4,x5,c4);
d30 = distance(x5,x6,c4);
d31 = distance(x6,x7,c4);
d32 = distance(x7,B,c4);
%%

g(29) = r1 - d1 + 0.1;
g(30) = r1 - d2 + 0.1;
g(31) = r1 - d3 + 0.1;
g(32) = r1 - d4 + 0.1;
g(33) = r1 - d5 + 0.1;
g(34) = r1 - d6 + 0.1;
g(35) = r1 - d7 + 0.1;
g(36) = r1 - d8 + 0.1;

g(37) = r2 - d8 + 0.1;
g(38) = r2 - d9 + 0.1;
g(39) = r2 - d10 + 0.1;
g(40) = r2 - d11 + 0.1;
g(41) = r2 - d13 + 0.1;
g(42) = r2 - d14 + 0.1;
g(43) = r2 - d15 + 0.1;
g(44) = r2 - d16 + 0.1;

g(45) = r3 - d17 + 0.1;
g(46) = r3 - d18 + 0.1;
g(47) = r3 - d19 + 0.1;
g(48) = r3 - d20 + 0.1;
g(49) = r3 - d21 + 0.1;
g(50) = r3 - d22 + 0.1;
g(51) = r3 - d23 + 0.1;
g(52) = r3 - d24 + 0.1;

g(53) = r4 - d25 + 0.1;
g(54) = r4 - d26 + 0.1;
g(55) = r4 - d27 + 0.1;
g(56) = r4 - d28 + 0.1;
g(57) = r4 - d29 + 0.1;
g(58) = r4 - d30 + 0.1;
g(59) = r4 - d31 + 0.1;
g(60) = r4 - d32 + 0.1;

%%

g(61) = 1 - norm(A - x1);
g(62) = 1 - norm(x1 - x2);
g(63) = 1 - norm(x2 - x3);
g(64) = 1 - norm(x3 - x4);
g(65) = 1 - norm(x4 - x5);
g(66) = 1 - norm(x5 - x6);
g(67) = 1 - norm(x6 - x7);
g(68) = 1 - norm(x7 - B);

%%
%{
g(69) = (x1(1)<4) && (x1(1)>6) && (x1(2)>4) && (x1(2)<6);
g(70) = (x2(1)<4) && (x2(1)>6) && (x2(2)>4) && (x2(2)<6); 
g(71) = (x3(1)<4) && (x3(1)>6) && (x3(2)>4) && (x3(2)<6);
g(72) = (x4(1)<4) && (x4(1)>6) && (x4(2)>4) && (x4(2)<6);
g(73) = (x5(1)<4) && (x5(1)>6) && (x5(2)>4) && (x5(2)<6);
g(74) = (x6(1)<4) && (x6(1)>6) && (x6(2)>4) && (x6(2)<6);
g(75) = (x7(1)<4) && (x7(1)>6) && (x7(2)>4) && (x7(2)<6);
}%

%%
h = [];
end

