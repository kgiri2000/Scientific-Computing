function[x, num_iter] = newton(F,J,x0, max_iter, tol)
x  = x0;
for num_iter = 1: max_iter
    %Evaluate F(x) and J(x)
    f = F(x);
    j = J(x);

    delta = -j\f;

    %Update x
    x = x + delta;

    %Checking for convergence
    if(norm(delta)< tol)
        break;
    end
end
end
