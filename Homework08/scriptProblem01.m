clear all;
f  = @(x,y) 0.5*(exp(-x.^2) + exp(-y.^2));

prompt = "Choose the value of N for Gauss Quadrature:";

N = input(prompt);

if(N==3)
    xi= [0.77459667, 0, -0.77459667]; 
    wi= [0.55555556,0.88888889,0.55555556];
end
if(N==4)
    xi =[0.33998104,0.86113631,-0.33998104,-0.86113631];
    wi = [0.65214515,0.34785485,0.65214515,0.3478548];
end
if(N==5)
    xi = [0.90617985, 0.53846931, 0.00000000,-0.53846931, -0.90617985];
    wi = [0.23692689, 0.47862867, 0.56888889, 0.47862867, 0.23692689];
end
Approx = 0;
for j = 1:N
    Approx = Approx + wi(j)*internalGx(xi(j), xi, wi, N, f);
end

Approx
