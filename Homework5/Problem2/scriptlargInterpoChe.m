clear all;
%xData = linspace(-1,1,10)
n =9;
k = 0:n;
xData = -cos(pi*k./n);
yData = 1./(1+14*xData.^2);
xPlot = linspace(-1,1,100);
yPlot = largInterpo(xData, yData, xPlot);
%plot(xPlot, yPlot, 'm', xData, yData, "*"  );
plot( xData, yData, "*" ,xPlot, yPlot, 'm');
grid on