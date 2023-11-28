function[integralMC3D] = MC3D(M)
fx = @(x,y,z) 0.7 * (x.^2 + y.^2 + z.^2);

sum = 0;
x = -1+ 2*rand(1,M);
y = -1+ 2*rand(1,M);
z = -1+ 2*rand(1,M);

for i = 1:M
    sum = sum + (fExt3D(x(i), y(i),z(i), fx));
end

fbar = sum/M;
Volume = (4*pi)/3;

integralMC3D = Volume*(fbar);