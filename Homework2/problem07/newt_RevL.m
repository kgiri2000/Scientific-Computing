%Kamal Giri
%COSC 3340
%Problem07
%Last Modified 02/13/2023


function [xRoot, fRoot, nIters] = newt_RevL(f, fd, xI, numIter, alpha)
x(1) = xI;

for i = 1: numIter
    x(i+1) = x(i) - f(x(i))/ fd(x(i));
    fval =  f(x(i+1));
    xval = x(i+1);
    if abs(fval)< alpha
        break
    end
end
xRoot = xval;
fRoot = fval;
nIters = i;