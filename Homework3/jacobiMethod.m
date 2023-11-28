function[result] =  jacobiMethod(A, b, x0, maxIter, n)
   
x1 = x0;
   
disp('       Iteration               x                  y                     z                   w' )


for k= 1:maxIter
    for i = 1:n 
        s = 0;
        for j = 1 : (i-1)
            s =  s + A(i,j)* x0(j);
        end
        for j = (i+1):n
            s = s + A(i*j) * x0(j);
        end
        x1(i) = (b(i)-s)/A(i,i);
        
    end
    
    res = A * x1 - b;
    
    if norm(res)< 10^(-6)
        break;
    end
 
    
    x0 = x1;
    if(k<=5)
         print = [k,  x1'];

         disp(print)
    end
    %to graph
    yaxis(k) = norm(res);
    xaxis(k) = k;
end
figure
plot(xaxis, log(yaxis), '-o');

title("Norm of the residual versus iteration number");
xlabel("Number of iteration");
ylabel('Norm of the residual');
%legend('residual vs iter line');

result = x1';
