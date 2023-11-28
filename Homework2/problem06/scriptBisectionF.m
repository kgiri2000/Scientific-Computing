

clear all;
format long;
%Actual code
f1 =@(x) x*3 +3 *x+1;
f2 = @(x) 1 +sin(x);

xLin = -2;
xRin = 0.1;
alpha = 10^(-7);
nIter = 10;
