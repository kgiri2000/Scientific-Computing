clear all;


A = [5 1 1 1 ;1 -7 2 2; 2 1 6 1; 1 -1 1 5];

Da = diag(diag(A));
La = tril(A) - Da;
Ua = triu(A) - Da;
GJ = -inv(Da) * (Ua +La);

%spectral radii
rhoGJ = max(abs(eig(GJ)));
spectralRadii = rhoGJ