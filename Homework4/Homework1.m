[F, J] = my_system;

%initial guess

x0 = [0;0;0];

tol = 1e-7;

%Solve th system
[x, num_iter] = newton(F, J, x0, 100, tol);