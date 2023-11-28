clear all;
format long;

x = 0:4;
y = [0.685, -1.375, -1.255, 0.781, 4.76];
xfit = 0:0.1:4;

%plot(x,y,'*');

x2 = x.*x;
x3 = x2.*x;
x4 = x2.*x2;
n = length(x);
xy = x.*y;
x2y= x2.*y;

%Defining matrix and vector

M  = [sum(x4) sum(x3) sum(x2); ...
      sum(x3) sum(x2)  sum(x);...
      sum(x2) sum(x)  n];

V = [sum(x2y);sum(xy); sum(y)];

coeff = M\V;

%Getting A, B and C

A = coeff(1)
B = coeff(2)
C = coeff(3)

yfit = A * xfit.^2 + B * xfit + C;


plot(x, y, '*', xfit, yfit);

title("Quadratic Fit ");
xlabel("Values of X");
ylabel("Values of F(x)");

legend("Actual data point ");

