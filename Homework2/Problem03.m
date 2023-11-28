%Kamal Giri
%COSC 3340
%Spring 2023
%Homework2 
%Problem3
%Last Modified: 02/13/2023


bool = @(m,n, v) (m < sum(v)) && (sum(v) < n);

v = 1:10;

%This will return 1 or True as sum(v) < 1000 and sum(v) < 1000
disp('When m = 1000 and n = 100: ')
bool(1000,100,v)

%This will return 1 or True as sum(v) > 10 and sum(v) < 1000
disp('When m = 10 and n = 1000: ')
bool(10, 1000, v)


