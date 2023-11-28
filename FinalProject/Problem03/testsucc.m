clear all
format long

xplot = linspace(-2,-1,100);


f = @(x) abs(x.^2-2)+ abs(2*x+3);
xL=-4;
xR=0;

m = (xL + xR)/2;

T= 10^-7;
r = 0.382;
%counting the iteration
i =0;
for n=1:100
    
    nume = (f(xL) - f(m))*(xR-m)^2 - (f(xR)-f(m))*(m-xL)^2;
    demue = (f(xL)- f(m))*(xR-m) + (f(xR)- f(m))*(m-xL);
    xm = m + nume/(2*demue);
    
    if(f(xm)<f(m))
        
        if(xm<m)
          
            xR = m;
            m = xm;
        else
            
            xL =m;
            m = xm;
        end
        i = i+1;
        if abs(xL- xR) <T
        fprintf("Minimum of the function at x = %0.10f is %0.10f with %d iterations\n", xm, f(xm),i);
            break;
        end
        
    else
        %Using golden Search method
       
        xm1 = xL + (xR-xL)*r;
        xm2 = xL + (xR-xL)*(1-r);
        if f(xm1)< f(xm2)
            xR =  xm2;
        else
            xL = xm1;
        
        end
        m = (xL+xR)/2;
        i = i+1;
        if abs(xL- xR) <T
        fprintf("Minimum of the function at x = %0.10f is %0.10f with %d iterations\n", m, f(m),i);
            break;
        end
    
    end

end

%Verifying the result with plot

plot(xplot, f(xplot), '-');



