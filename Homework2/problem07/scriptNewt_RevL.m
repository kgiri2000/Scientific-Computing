%Kamal Giri
%COSC 3340
%Problem07
%Last Modified 02/13/2023

clear all;
format long;
f = @(x) x.^3 + 3.*x +1;
fd = @(x) 3*x.^2 +3;

[xRoot, fValue, numIters] = newt_RevL(f, fd, -2, 100, 10^(-6))
