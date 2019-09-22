%Given SIgnal
%x(t)=5*sin(2*pi*1000*t+(pi/2))

%(1)Find x1(n). Where Fs=2000Hz,n=0,1,....,7
fs=2000;
ts=1/fs;
n=0:7;
x1n=5*sin(2*pi*1000*n*ts+(pi/2));
subplot(3,2,1)
stem(x1n);
title('x1(n)')

%(2)Find x2(n). Where Fs=750Hz,n=0,1,....,7
fs=750;
ts=1/fs;
n=0:7;
x2n=5*sin(2*pi*1000*n*ts+(pi/2));
subplot(3,2,2)
stem(x2n);
title('x2(n)')

%(3)Find x1(m). Where N=8,Show spectrum
N=8;
X1=zeros(N,1);
for m=1:N
  for n=0:N-1
    X1(m)=X1(m)+x1n(n+1)*exp(-j*2*pi*n*m/N);
  end
end

subplot(3,2,3)
stem(abs(X1))
title('x1(m)')

%(4)Find x2(m). Where N=8,Show spectrum

N=8;
X2=zeros(N,1);
for m=1:N
  for n=0:N-1
    X2(m)=X2(m)+x2n(n+1)*exp(-j*2*pi*n*m/N);
  end
end

subplot(3,2,4)
stem(abs(X2))
title('x2(m)')

%(5)Reconstrac x1(n) from x1(m)
N=8;
for n=0:N-1
  for m=1:N
    x(n+1)=x(n+1)+(1/N)*X1(m)*exp(j*2*pi*n*m/N);
  end
end

subplot(3,2,5)
stem(x)
title('x1(n)')


%(6)constrac x1(t) from x1(n)



    
    
