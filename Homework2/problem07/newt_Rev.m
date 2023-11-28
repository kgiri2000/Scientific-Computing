function [xStar , xL] = newt_Rev(f, fp, xN, xList)

if ~exist('xList', 'var')
    xList = [xN];
end

if(abs(feval(f, xN))< 10^(-6))
    xStar = xN;
    xL = xList;
    return;
else
    xNp1 = xN- feval(f, xN)/feval(fp, xN);
    xList = [xList xNp1];
    xL = xList;
    [xStar,xL]= newt_Rev(f, fp,xNp1, xList);
end
end