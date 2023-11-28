%Data Set
clear all;
format long;

x  = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5];
y = [1.364, 1.637, 1.911, 2.633, 3.221, 3.977]; 
xnew = 0:0.01:0.5;


%plot(x, y, '*');

x2 = x.*x;

%Matrix 
M = [sum(x2) sum(x) ; sum(x) length(x)];

ylog = log(y);
xy = x .* ylog;

V = [sum(xy); sum(ylog)];

coeff = M\V;
A = coeff(1)
B = coeff(2)

C = exp(B)
yfit = C * exp(A *xnew);

%Actually plotting the graph
plot(x, y, '*', xnew, yfit);
title("Exponential fit ");
xlabel("Values of X");
ylabel("Values of f(x)");

legend("Actual data point ");


