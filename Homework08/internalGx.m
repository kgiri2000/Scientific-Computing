function [gx] = internalGx(curr, xi, wi, N, f)
a = -sqrt(1-curr^2);
b = sqrt(1-curr^2);
sum = 0;
for k = 1:N
    x = 0.5*(b-a)*xi(k) + 0.5*(b+a);
    sum = sum + wi(k) * f(x, curr);
end

%I was getting wrong value because I was mutliplying 0.5*(b-a) inside the
%loop
gx = 0.5*(b-a) * sum;
end
