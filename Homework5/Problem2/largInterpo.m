function [yPlot] = largInterpo(xData,yData, xPlot)

N = length(xData);
yP = 0;
for i = 1: N
    Li =1 ;
    for j = 1 : N
        if i ~=j 
            Li = (Li).*((xPlot- xData(j))/(xData(i)- xData(j)));
        end
    end
    yP = yP+((Li)*yData(i));
end
yPlot = yP;
end
