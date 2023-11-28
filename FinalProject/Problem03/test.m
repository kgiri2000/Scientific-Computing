%Backward Euler's Method

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

% Apply the backward Euler's method with the Newton-Raphson method
for n = 1:N-1
    tn = t(n);
    un = u(n);
    tn1 = t(n+1);
    
    % Define the nonlinear equation to solve using Newton-Raphson method
    nf = @(un1) un1 - un - dt*f(un1,tn1);
    dF = @(un1) 1 - dt/(2*sqrt(un1-2*tn1+3));
    
    % Use the Newton-Raphson method to solve the nonlinear equation
    un1 = un;
    tol = 1e-6;
    maxit = 100;
    for i = 1:maxit
        un1_new = un1 - nf(un1)/dF(un1);
        if abs(nf(un1_new)) < tol
            break;
        end
        un1 = un1_new;
    end
    
    % Store the solution at the next time step
    u(n+1) = un1;
end

% Plot the numerical solution and the exact solution
exact_sol = 1 + 4*t + t.^2/4;
plot(t, u, '-o', t, exact_sol, '*');
legend('Numerical Approximation', 'Exact solution');
xlabel('t')
ylabel('u(t)')
