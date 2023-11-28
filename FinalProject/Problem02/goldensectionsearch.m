clear all;
format long;
f = @(x) abs(x.^2-2)+ abs(2*x+3);
xL = -4;
xR = 0;
r = 0.382;

T = 10^(-7);

for n = 1:200
    xM1 = xL + (xR-xL)*r;
    xM2 = xL + (xR-xL)*(1-r);

    if f(xM1)< f(xM2)
        xR = xM2;
    else
        xL = xM1;
    end

    if(xR-xL) <T
        break;
    end
end

n

disp((xR+xL)/2);

disp(-1.414);

