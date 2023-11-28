function[integralMC2D] = MC2D(M)
f  = @(x,y) 0.5*(exp(-x.^2) + exp(-y.^2));
a = -1;
b = 1;
c= -1;
d = 1;
sum = 0;


%Randomizing
x = a+ (b-a)*rand(1,M);
y = c+ (d-a)*rand(1,M);

for i = 1:M
    sum = sum + fExt(x(i), y(i), f);
end

fbar = sum/M;
integralMC2D = pi *fbar;



end








