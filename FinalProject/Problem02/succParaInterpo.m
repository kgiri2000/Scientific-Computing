clear all;
format long;
%f = @(x) abs(x.^2-2)+ abs(2*x+3);
f = @(x) (x+1)^2+2;

xL = -4;
xR = 0;

T = 10^(-7);
M = (xL + xR)/2;

for n = 1:200
    xm = M+.5*((f(xL)-f(M))*((xR-M)^2)-(f(xR)-f(M))*((M-xL)^2)/((f(xL)-f(M))* ...
        ((xR-M))+(f(xR)-f(M))*((M-xL))));

    if f(xm) < f(M)
        xR = M;
        M = xm;
    else
        xL = xm;
    end
    if (xR-xL) < T
        break;
    end
end

xm
n