%Kamal Giri
%Homework2
%Last Modified: 02/13/2023
format long;
%Actual code
f =@(x) (x.^3 + 3.*x+1)*(x>=0) + (1+sin(x))* (x>0);
xLin = -2.0;
xRin = 0.1;
alpha = 10^(-7);
nIter = 100;

[xRoot, fRoot, nIters] = bisectionF(xLin, xRin, alpha, nIter, f)
