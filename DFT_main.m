clc;
clear all;
close all;

xn= [1 2 3 4 5 6 7 8]; %input('Enter The Sequence : ');
N=input('Enter N');
Xk=dft_fun(xn,N);
k=0:N-1;
subplot(2,1,1);
stem(k,abs(Xk));
subplot(2,1,2);
stem(k,angle(Xk));


