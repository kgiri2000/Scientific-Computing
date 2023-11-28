% Define the non-linear system and its Jacobian.
F = @(x) [x(1)^2 + x(2)^2 - 1; x(1)^2 - x(2)^2 + x(3)^2 - 2; exp(x(1)) + x(2) - x(3)^3];
J = @(x) [2*x(1), 2*x(2), 0; 2*x(1), -2*x(2), 2*x(3); exp(x(1)), 1, -3*x(3)^2];
x0 = [1; 1; 1];
tol = 1e-6;
max_iter = 100;

% Solve the system using Newton's method.
[x, iter] = newton_system(F, J, x0, tol, max_iter);

x
iter