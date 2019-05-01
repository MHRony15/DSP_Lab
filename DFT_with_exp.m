clc;
clear all;
close all;
fs=8000;
ts=1/fs;
N=8;
n=0:N-1;
x=sin(2*pi*1000*n*ts)+0.5*sin(2*pi*2000*n*ts+3*pi/4);
subplot(2,2,1);
stem(x)
grid on;
title('Discreate Signal')
X = zeros(N,1)
for m = 1:N-1
    for n = 0:N-1
        X(m) = X(m) + x(n+1)*exp(-j*pi*2*n*m/N);
    end
end

t = 0:N-1;
subplot(2,2,2);
stem(t,real(X))
subplot(2,2,3);
X(m<1e-6) = 0;
stem(t,abs(X))
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response')

subplot(2,2,4);

stem(unwrap(angle(X)))
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - Phase response')
