function[finalSolution] = gaussMethod(A,b ,x0, maxIter, n)
x1 =x0;


disp('       Iteration               x                  y                     z                   w' )

for k = 1: maxIter
    x1_prev = x1;
    for i = 1:n
        x1(i) = (b(i)- A(i, 1:i-1)*x1(1:i-1)-A(i,i+1:n)*x1_prev(i+1:n))/A(i,i);
    end

    res =  x1- x1_prev;
    if norm(res) < 10^(-6)
        break;
    end
    if(k<=5)
        x = [k, x1'];
        disp(x);
    end

    yaxis(k) = norm(res);
    xaxis(k) = k;

    
end


figure
plot(xaxis, log(yaxis), '-o');

title("Norm of the residual versus iteration number");
xlabel("Number of iteration");
ylabel('Norm of the residual');
legend('residual vs iter line');

 finalSolution = x1';






