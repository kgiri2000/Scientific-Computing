function[xRoot, xFRoot, noOfIter0] = recursiveBisection(f, xL,xR, noOfIterI)

xM = (xL +xR)/2;
fxM = feval(f, xM);

if abs(fxM) < 10^(-6)
    xRoot = xM;
    xFRoot = fxM;
    noOfIter0 = noOfIterI;
    return;
else
    fxL = feval(f, xL);
    if (fxL * fxM) < 0
        xR = xM;
    else
        xL = xM;
    end
    noOfIterI = noOfIterI + 1;
    [xRoot, xFRoot, noOfIter0] = recursiveBisection(f, xL,xR, noOfIterI);
   
end
