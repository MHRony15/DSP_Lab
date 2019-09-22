x=input('x(n) : ');
zx=input('Zero position of x(n) : ');
h=input('h(n) : ');
zh=input('Zero position of h(n) : ');
k1=-length(h)+1;
k2=length(h)+length(x)-1;
kstart=1;
kend=k2-k1+1;
xk=zeros(1,kend);
hk=zeros(1,kend);
for i=1:length(x)
  xk(-k1+i-zx+1)=x(i);
end
h=flip(h);
for i=1:length(h)
  hk(i+zh-1)=h(i);
end

  
shift=0
for j=1:k2-zh+1+1
  X(shift+1) = 0;
  for i=1:length(h)+zh-1
    X(shift+1) = X(shift+1) + hk(i)*xk(i+shift);
  endfor
  shift = shift+1;
endfor
disp(X);

