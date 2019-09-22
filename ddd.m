t = 1:0.01:8;
xin = sin(2*pi*1000*t)+0.5*sin(2*pi*2000*t+(3*pi/4));
subplot(2,2,1);
plot(t,xin);
grid on;
title('Continious Signal');

fs=8000;
ts=1/fs;
N=8;
n=0:N-1;
x=sin(2*pi*1000*n*ts)+0.5*sin(2*pi*2000*n*ts+3*pi/4);
subplot(2,2,2);
stem(x)
grid on;
title('Discreate Signal')

y = fft(x);                               % Compute DFT of x
m = abs(y);
y(m<1e-6) = 0;
subplot(2,2,3);
stem(m);                               % Magnitude
y

p = unwrap(angle(y))*180/pi
subplot(2,2,4);
stem(p);   