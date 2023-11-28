%Forward Euler Method
clear all;
format long;
% Define the differential equation and initial condition
f = @(u,t) 2 + sqrt(u) - 2*t + 3;
u0 = 1;

% Define the time step size and time interval
dt = 0.05;
N = length(0:dt:2);
t = linspace(0,2,N);
u = zeros(size(t));
u(1) = u0;

% Using fordward Euler's Method
for n = 1:N-1
    tn = t(n);
    un = u(n);
    
    un1 = un+ dt*f(un, tn);
    u(n+1) = un1;

end

% Plot the numerical solution and the exact solution
exact_sol = 1 + 4*t + t.^2/4;
plot(t, u, '-o', t, exact_sol, '*');
legend('Numerical Approximation', 'Exact solution');
xlabel('t')
ylabel('u(t)')