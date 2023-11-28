fx = @(x)0.5*x.^3 -2*x.^2+3*x+ 1;
p2x = @(x) -17+12.5.*(x+2)-3.5.*(x+2).*(x+1);
p3x = @(x) -17+12.5.*(x+2)-3.5.*(x+2).*(x+1) + 0.5.*(x+2).*(x+1).*(x);
p4x = @(x) -17+12.5.*(x+2)-3.5.*(x+2).*(x+1) + 0.5.*(x+2).*(x+1).*(x);

xData = [-2,-1, 0,1,2];

xPlot = linspace(-2,2,100);


plot(xData, fx(xData),'*', xPlot, p2x(xPlot), 'b', xPlot, p3x(xPlot), 'r', xPlot, p4x(xPlot), 'g',xPlot,fx(xPlot), 'm');
xlabel("   Data set");
ylabel(" Function Value");
legend('Actual data point', 'p2x', 'p3x', 'p4x', 'fx');