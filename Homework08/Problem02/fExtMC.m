function[val] = fExtMC(x,y,z,fx)
val =0;
if(x^2+y^2+z^2) <=1
    val = feval(fx,x,y,z);
end
