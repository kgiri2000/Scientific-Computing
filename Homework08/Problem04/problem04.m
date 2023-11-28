clear all

format long

xplot = linspace(-4,0,100);

%f=@(x) cos(x) - sin(x);
% f = @(x) (x+1.09)^2+3;

f = @(x) abs(x.^2-2)+ abs(2*x+3);
xL=-4;

xR=0;

m = (xL + xR)/2;

T= 10^-7;

i= 0;
for n=1:10
nume = (f(xL) - f(m))*(xR-m)^2 - (f(xR)-f(m))*(m-xL)^2
demue = (f(xL)- f(m))*(xR-m) + (f(xR)- f(m))*(m-xL)
xm = m + nume/(2*demue)

if(xm > xL && xm<xR)

    if(xm<m)
        xR = m;
        m = xm;
       
    else
        xL =  xm;
        m = xm;
    end
    i = i+1;
    
else
    %%Using Golden Search Method:
    r = 0.382;
    xm1 = xL + (xR-xL)*r;
    xm2 = xL + (xR - xL)*(1-r);
    if f(xm1)< f(xm2)
        xR = xm2;
    else
        xL = xm1;
    end 
    m = (xL+xR)/2
    i = i+1;
end
if abs((xR-xL))<T
    break;
end
end
xm
i
%plot(xplot,f(xplot), '-');
  
