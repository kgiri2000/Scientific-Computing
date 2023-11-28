clear all;
format long;

A = [5 1 1 1 ;1 -7 2 2; 2 1 6 1; 1 -1 1 5];
b = [7;-4;1;9];
x0 = [0;0;0;0];
maxIter = 100;
n = 4;

[finalSolution] = gaussMethod(A,b, x0, maxIter,n);

finalSolution
