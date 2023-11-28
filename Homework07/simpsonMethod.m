%Author: Kamal Giri
%Scientific Computing
%18 April 2023
%Fall2023
%Homework07
%Problem04


function[gx] = simpsonMethod(xi,n)
a = xi^2-1;
b = 1-xi^2;
h  = (b-a)/n;
xvalues = a:h:b;
x = xi;
f = @(y) x*x - 2*x*y + y*y;

s1 = f(a)+f(b);
s2 =0;
s4= 0;

for  j = 2:2:length(xvalues)-1
    s4 = s4+ f(xvalues(j));
end
for j = 3:2:length(xvalues)-2
    s2 =  s2+ f(xvalues(j));
end

gx = h/3*(s1+ 4*s4+ 2*s2);