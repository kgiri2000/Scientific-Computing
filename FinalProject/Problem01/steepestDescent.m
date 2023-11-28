% Define the matrix A and the right-hand side b
A = [5 7 6 5; 7 10 8 7; 6 8 10 9; 5 7 9 10];
b = [-10; -14; -11; -8];

% A = [1 1 ; 2 1];
% b = [1;2];
% Define the initial guess
x0 = [0; 0; 0; 0];


% Define the maximum number of iterations and the tolerance
max_iterations = 100000;
tolerance = 1e-7;

%Implementating the Algorithm
r0 = b-A*x0;
fprintf('  k\t\tx\t\ty\t\tz\t\tw\t\tNorm\n');   
for k = 1: max_iterations
    zk = A*r0;
    sk= (r0'*r0)/(r0'*zk);
    xk = x0 + sk*r0;
    rk = r0 - sk*zk;
    if norm(rk) < tolerance
        break;
    end
    if(k<=10)
        fprintf(' %d\t %0.11f\t %0.11f\t %0.11f\t %0.11f\t %0.11f \n',k, xk(1),xk(2),xk(3),xk(4), norm(rk));

    end
    r0 = rk;
    x0 = xk;

end

disp('Final Approximation:');
fprintf('%d\t %0.11f\t %0.11f\t %0.11f\t %0.11f\t %0.11f \n',k, xk(1),xk(2),xk(3),xk(4), norm(rk));

disp('Actual:');
xk = [1, -2, -1 ,1];
fprintf(' \t%0.11f\t %0.11f\t %0.11f\t %0.11f\t %0.11f \n', xk(1),xk(2),xk(3),xk(4), norm(rk));

