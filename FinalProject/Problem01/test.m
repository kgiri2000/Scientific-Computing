% Define the differential equation
f = @(u, t) 2 + sqrt(u) - 2*t + 3;

% Define the exact solution
u_exact = @(t) 1 + 4*t + t^2/4;

% Set the initial condition and time step
u0 = 1;
dt = 0.05;

% Set the time range
t_range = 0:dt:2;

% Initialize the solution array
u = zeros(size(t_range));
u(1) = u0;

% Iterate the implicit backward Euler method
for i = 1:length(t_range)-1
    tn = t_range(i);
    un = u(i);
    tn1 = t_range(i+1);
    % Define the nonlinear equation for un1
    g = @(un1) un1 - un - dt*f(un1, tn1);
    % Solve the nonlinear equation for un1 using the Newton-Raphson method
    eps = 1e-8; % Tolerance for convergence
    max_iter = 100; % Maximum number of iterations
    un1 = un;
    for j = 1:max_iter
        f_val = g(un1);
        f_prime = (g(un1+eps) - g(un1-eps)) / (2*eps);
        un1 = un1 - f_val / f_prime;
        if abs(f_val) < eps
            break;
        end
    end
    % Update the solution array
    u(i+1) = un1;
end

% Plot the numerical and exact solutions
plot(t_range, u, 'o-', 'DisplayName', 'Numerical solution')
hold on
fplot(u_exact, [0, 2], 'DisplayName', 'Exact solution')
xlabel('t')
ylabel('u(t)')
legend('Location', 'northwest')
hold off
