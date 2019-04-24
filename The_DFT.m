clc;
clear all;
close all;

x=[1 2 3 4 5 6 7 8];
n=length(x);
X=fft(x,n);
plot(X);