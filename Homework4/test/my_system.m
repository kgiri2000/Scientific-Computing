function [F, J] = my_system(x)
% Defines the non-linear system F(x) = 0 and its Jacobian J(x).

F = [x(1)^2 + x(2)^2 - 1;     x(1)^2 - x(2)^2 + x(3)^2 - 2;     exp(x(1)) + x(2) - x(3)^3];

J = [2*x(1), 2*x(2), 0;     2*x(1), -2*x(2), 2*x(3);     exp(x(1)), 1, -3*x(3)^2];

end
