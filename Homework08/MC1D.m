clear all;

f = @(x) x.*cos(x);
a= 0;
b = pi/2;
N =10;
x = a+ (b-a)*rand(1,N);

fbar = sum(f(x)/N);
integralMC = (b-a)*fbar



