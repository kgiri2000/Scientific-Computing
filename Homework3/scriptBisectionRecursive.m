clear all;
format long;

f = @(x) x^2-7;

[root, fAtRoot, noOfIter0] = recursiveBisection(f,1,3,1);

root
fAtRoot
noOfIter0
