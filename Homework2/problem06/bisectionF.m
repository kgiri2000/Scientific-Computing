%Kamal Giri
%Homework2
%Last Modified: 02/13/2023


function[xRoot, fAtRoot, noOfIter] =  bisectionF(xLin, xRin, alpha, maxIter, f)

xL(1)= xLin;
xR(1)= xRin;


for n = 1:maxIter
    xM = (xL(n)+xR(n))/2;
    fM= f(xM);
    if abs(fM)<alpha
        break
    end

    if f(xL(n))*fM <0
        xL(n+1)= xL(n);
        xR(n+1)= xM;
    else
        xR(n+1) = xR(n);
        xL(n+1) = xM;
    end
end
xRoot = xM;
fAtRoot = fM;
noOfIter = n;
end