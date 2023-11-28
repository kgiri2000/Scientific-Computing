%Author: Kamal Giri
%Scientific Computing
%18 April 2023
%Fall2023
%Homework07
%Problem04


function[Approx] = gaussMethod(N,K)
Approx = 0;

if(N==1)

    Approx = 2*simpsonMethod(0,K);
end

if(N==2)
    xi= [0.57735027,-0.57735027];
    wi=[1.0,1.0];
    for j = 1:N
        Approx = Approx + wi(j)*simpsonMethod(xi(j), K);
    end
end
    
if(N==3)
    xi= [0.77459667, 0, -0.77459667]; 
    wi= [0.55555556,0.88888889,0.55555556];
    for j = 1:N
        Approx = Approx + wi(j)*simpsonMethod(xi(j), K);
    end
end
    
if(N==4)
    xi =[0.33998104,0.86113631,-0.33998104,-0.86113631];
    wi = [0.65214515,0.34785485,0.65214515,0.3478548];
    for j = 1:N
        Approx = Approx + wi(j)*simpsonMethod(xi(j), K);
    end
end


end