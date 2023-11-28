clear all;
format long;
fx = @(x,y,z) 0.7*(x^2+y^2+z^2);

M = 10^6;
tot =0;
for j = 1:10
    tot = tot + MonteCarlo3D(M,fx);
end

Out = tot/10
