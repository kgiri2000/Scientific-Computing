clear all;
format long;
f = @(x) x.^3 + 3.*x +1;
fp = @(x) 3*x.^2 +3;

[root, xList] =  newt_Rev(f, fp,-2)