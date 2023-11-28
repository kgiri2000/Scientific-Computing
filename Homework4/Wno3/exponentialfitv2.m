%Data Set
clear all;
format long;

x  = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5];
y = [1.364, 1.637, 1.911, 2.633, 3.221, 3.977]; 
xfit = 0:0.01:0.5;

%Trying the exponential fit as given in the text book which leads to
%modified system of equations

x2 = x.*x;
x2y = x2.*y;
xy = x.*y;
ylog = log(y);
xylogy = xy.*log(y);
ylogy = y.*log(y);

%Matrix of the above system

M = [sum(x2y) sum(xy); sum(xy) sum(y)];

%vector
V = [sum(xylogy); sum(ylogy)];

%Finding the coeff

coeff = M\V;

A = coeff(1)
B =  coeff(2)
C = exp(B)

yfit =  C * exp(A * xfit);

%Actually plotting the graph
plot(x, y, '*', xfit, yfit);
title("Exponential Fit Improved ");
xlabel("Values of X");
ylabel("Values of f(x)");

legend("Actual data point ");

