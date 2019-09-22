%Given SIgnal
%x(t)=5*sin(2*pi*1000*t)
t=0:0.1:10;
xt=5*sin(2*pi*10000*t);
subplot(3,4,1)
plot(t,xt)
title('x(n)')


N=10;
fs=20000;
ts=1/fs;
n=0:N-1;
xn=5*sin(2*pi*1000*n*ts);
subplot(3,4,2)
stem(xn);
title('x(n)')

%Ractangular window
N=10;
w1=ones(1,N);
subplot(3,4,3);
plot(w1)
title('Time domain Of  Rectangular Window')
X1=zeros(1,N);
for m=1:N
  for n=0:N-1
    X1(m)=X1(m)+w1(n+1)*xn(n+1)*exp(-j*2*pi*n*m/N);
  end
end
subplot(3,4,4)
stem(abs(X1));
title('DFT with Ractangular window ')

%Triangular Window
N=9;
wt=zeros(1,N);
for n=0:N
  if n<=(N/2)
    wt(n+1)=(2*n)/N;
  else
    wt(n+1)=2-(2*n)/N;
  end
end
subplot(3,4,5)
plot(wt);
title('Time domain Of  Triangular Window')

X2=zeros(1,N);
for m=1:N
  for n=0:N-1
    X2(m)=X2(m)+wt(n+1)*xn(n+1)*exp(-j*2*pi*n*m/N);
  end
end
subplot(3,4,6)
stem(abs(X2));
title('DFT with Triangular window ')

%Hanning Window
N=10;
whn=zeros(1,N);
for n=0:N
  whn(n+1)=0.5-0.5*cos((2*pi*n)/N);
end
subplot(3,4,7)

plot(whn)
title('Time domain Of  Hanning Window')
X3=zeros(1,N);
for m=1:N
  for n=0:N-1
    X3(m)=X3(m)+whn(n+1)*xn(n+1)*exp(-j*2*pi*n*m/N);
  end
end
subplot(3,4,8)
stem(abs(X3));
title('DFT with Hanning window ')

%Hamming Window
N=10;
whm=zeros(1,N);
for n=0:N
  whm(n+1)=0.54-0.46*cos((2*pi*n)/N);
end
subplot(3,4,9)

plot(whm)
title('Time domain Of  Hanning Window')
X4=zeros(1,N);
for m=1:N
  for n=0:N-1
    X4(m)=X4(m)+whm(n+1)*xn(n+1)*exp(-j*2*pi*n*m/N);
  end
end
subplot(3,4,10)
stem(abs(X4));
title('DFT with Hamming window ')