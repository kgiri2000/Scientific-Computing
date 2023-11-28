%Scipt for Newton Method

%Creating the functions and Jacobian Matrix of Partial Derivatives
F = @(x) [x(1) + x(2)^2 + x(3) - 4; x(1)^2 + x(2) + x(3) - 6; x(1) + x(2) + x(3)^2 - 4];
J = @(x) [1, 2*x(2), 1; 2*x(1), 1, 1; 1, 1, 2*x(3)];
%initial guess
x0 = [0; 0; 0];
%tolerance
tol = 1e-7;
%maximum iteration
max_iter = 100;

% Solve the system using Newton's method.
[x, iter] = newton_Method(F, J, x0, tol, max_iter);

    