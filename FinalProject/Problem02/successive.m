clear all
format long

fplot = linspace(-4, 0,100 );

f =@(x) abs(x^2-2)+ abs(2*x+3);

xL = -4;
xR = 0;

m = -2;
T = 10^-7;

i = 0;

for n = 1:200
    nume = (f(xL) - f(m))*(xR-m)^2 - (f(xR)-f(m))*(m-xL)^2;
    demue = (f(xL)- f(m))*(xR-m) + (f(xR)- f(m))*(m-xL);
    xm = m + nume/(2*demue);

    if
        
    if f(xm) < f(m)
        xR= m;
    else
        xL= m;
    end
    m = xm;
    if abs((xR)- (xL))<T
        break;
    end
end

disp((xR+xL)/2)