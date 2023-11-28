clear all;
format long;
M = 10^6;
IntregalV= 0;

for i = 1: 10
    IntregalV = IntregalV + MC2D(M);
end

IntregalV = IntregalV/10