% Define the non-linear system and its Jacobian.
F = @(x) [x(1) + x(2)^2 + x(3) - 4; x(1)^2 + x(2) + x(3) - 6; x(1) + x(2) + x(3)^2 - 4];
J = @(x) [1, 2*x(2), 1; 2*x(1), 1, 1; 1, 1, 2*x(3)];
x0 = [0; 0; 0];
tol = 1e-6;
max_iter = 100;

% Solve the system using Newton's method.
[x, iter] = newton_system(F, J, x0, tol, max_iter);

x
iter