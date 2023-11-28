%Newton Method Function implmentation

function [x, iter] = newton_Method(F, J, x0, tol, max_iter)
disp("    no of Iterations         ||f(x^k)||      " + ...
    "         x                  y                 z   ");

x = x0;
iter = 0;


while iter < max_iter
    f = F(x);
    j = J(x);
    delta = -j \ f;
    x = x + delta;
    iter = iter + 1;
    if(iter<6)
        print = [iter,norm(f) x'];
        disp(print);
    end
    
    % Check for convergence.
    if norm(f) < tol
   
        break;
    end
end

end
