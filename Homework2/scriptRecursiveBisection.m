clear all;
format long;

f = @(x) x^2-4;

[root, fAtRoot] = recursiveBisection(f,1,3);

root
fAtRoot