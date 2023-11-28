f = @(x) abs(x.^2-2)+ abs(2*x+3);

x = linspace(-4,4,100);

plot(x, f(x), '-');