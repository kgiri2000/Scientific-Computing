function[integralMC3D] = MC3DC(M)

fx = @(x,y,z)( 0.7 * (x.^2 + y.^2 + z.^2));
sum = 0;
x = -1+ 2*rand(M,1);
y = -1+ 2*rand(M,1);
z = -1+ 2*rand(M,1);

for i = 1:M
    sum = sum + fExt3D(x(i), y(i),z(i), fx);
end

fbar = sum/M;

integralMC3D = (4*pi*fbar)/3;

function [val] = fExt3D(x,y, z,fx)
    val = 0;
    if (x^2 + y^2 + z^2) <=1
        val= fx(x, y,z);
    end
end

clear all;
format long;
M = 10^6;
IntregalV= 0;

for i = 1: 10
    IntregalV = IntregalV + MC3DC(M)
end

IntregalV = IntregalV/10
