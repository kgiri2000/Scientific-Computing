x = linspace(0,4, 60);
y = 3*exp(0.35*x);
noise = 0.5*exp(0.37*x) .* ( 2 * rand(1,length(x) ) - 1 );
ydata = y + noise;
plot( x, y, x, ydata, '*')
x2 = x .* x;
M = [ sum(x2) sum(x) ; ...
sum(x) length(x)] % the matrix
% the new logarithmic data
ylog = log(ydata);
xy = x .* ylog;
rhs = [sum(xy) ; sum(ylog)];
coeff = M \ rhs; % solve the system
A = coeff(1) % sample output: 0.34578
B = coeff(2);
C = exp(B) % sample output: 2.9953
yfit = C * exp(A * x)
plot(x, ydata, '*' , x, yfit)
