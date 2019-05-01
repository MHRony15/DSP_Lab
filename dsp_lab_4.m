clc;
clear all;
close all;
fs=8000;
ts=1/fs;
N=8;
n=1:N;
t = 0:0.01:5;
xin = sin(2*pi*1000*t)+0.5*sin(2*pi*2000*t+3*pi/4);
subplot(3,1,1);
plot(t,xin);
grid on;
title('Continious Signal');


x=sin(2*pi*1000*n*ts)+0.5*sin(2*pi*2000*n*ts+3*pi/4);
subplot(3,1,2);
stem(x)
grid on;
title('Discreate Signal')


for m=1:N
  real=0.00;
  for n=1:N
    real=real+(x(n)*cos(2*pi*m*n/N));
    %img=img+(x(n)*i*sin(2*pi*m*n/N));
  end
  real
end

   


