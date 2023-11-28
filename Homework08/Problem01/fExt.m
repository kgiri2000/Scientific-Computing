function [val] = fExt(x,y, f)
    val = 0;
    if x^2 + y^2 <=1
        val= f(x, y);
    end
end