clear all

format long

fplot = linspace(1,3,100);

f=@(x) cos(x)-sin(x);

xL=1;

xR=3;

r=0.382;

T= 10^-7;

I=0;

for n=1:1000

    xM1=xL+(xR-xL)*r;

    xM2=xL+(xR-xL)*(1-r);

    I=I+1;

    if f(xM1)<f(xM2);

        xR=xM2;

    else

        xL=xM1;

    end

    if(xR-xL)<T

        break

    end

end

disp((xR+xL)/2)

I

plot(fplot, f(fplot), '-');

xlabel('x-values');

ylabel('y-values');

legend('cos(x)- sin(x)');