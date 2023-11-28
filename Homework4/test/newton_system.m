function [x, iter] = newton_system(F, J, x0, tol, max_iter)

x = x0;
iter = 0;


while iter < max_iter
    f = F(x);
    j = J(x);
    delta_x = -j \ f;
    x = x + delta_x;
    x
    iter = iter + 1;
    
    % Check for convergence.
    if norm(delta_x) < tol
   
        break;
    end
end

end
