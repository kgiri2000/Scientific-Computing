function [r] = MonteCarlo3D(M,fx)


a= -1;
b =1;
c= -1;
d =1;
e=-1;
f =1;

x = a + (b-a)*rand(1,M);
y = c + (d-c)*rand(1,M);
z = e + (f-e)*rand(1,M);

sum = 0;

for i = 1:M
    sum = sum + fExtMC(x(i),y(i),z(i), fx);
end

fbar = sum/M;

r = (4/3)*pi*fbar;

