%Kamal Giri
%COSC 3340
%Spring 2023
%Homework2 
%Problem5
%Last Modified: 02/13/2023

%Creating the function
pieceWise = @(x) (x+1).*(x<=0) + (sin(x)).*(x>0);
v = -20:20;

%Plotting the input values in the function.
plot(v, pieceWise(v), "Marker","+");
