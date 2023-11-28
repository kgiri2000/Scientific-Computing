%Author: Kamal Giri
%Scientific Computing
%18 April 2023
%Fall2023
%Homework07
%Problem04

clear all;
format long;


prompt = "Choose the value of N for Gauss Quadrature:";

N = input(prompt);

prompt = "Choose the even number of patches for Simpson's rule(K):";
K = input(prompt);

fprintf('The approximation using N = %d and K = %d:  ', N,K);
Integral = gaussMethod(N,K) ;
display(Integral);



