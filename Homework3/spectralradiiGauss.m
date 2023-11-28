clear all;
A = [5 1 1 1 ;1 -7 2 2; 2 1 6 1; 1 -1 1 5];

spectralRadii = max(abs(eig(tril(A)\ (-triu(A,1)))))
