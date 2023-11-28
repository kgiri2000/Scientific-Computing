clear all;
format long;
f = @(x) cos(x) - sin(x);
xplot = linspace(1,3,100);
a =  1;
b = 3;
m = (a + b)/2;

for i= 1: 25 
    f11= (f(a)- f(m))*(b-m)^2;
    f12 = (f(b)- f(m))*(m-a)^2;
    f21 = (f(a)- f(m))*(b-m);
    f22= (f(b)- f(m))*(m-a);
    xm = m + (f11- f12)/(2*(f21-f22));

    if(abs(xm-m)<10^(-7))
        break
    end
    if( f(xm) < f(m))
        b = m;  
        m= xm;
        
    else
        a= xm;
    end
   
    
end
plot(xplot, f(xplot), '-')
xlabel('Values of x');
ylabel('Values of y');
legend('cos(x)-sin(x)');
xm
i
        


