%Unit sample;
 
  n=-10:10;
  x=[n==0];
  subplot(2 ,3 ,1);
  stem(x);
  title('Unit sample Sequence');
  
%Unit step signal
  n=-10:10;
  x=[n>=0];
  subplot(2, 3 ,2);
  stem(x);
  title('Unit Step Sequence');
  
%Shifting

bits=[2 -3 4 7 -2 1 9];
bitLen=length(bits);
m=1:bitLen;
subplot(2, 3 ,3);
stem(m,bits);
title('Original X(n) Sequence');

%Right Shifting
m2=m+2;
subplot(2, 3 ,4);
stem(m2,bits);
title(' X(n-2) Sequence');

%Left Shifting
m3=m-2;
subplot(2, 3 ,5);
stem(m3,bits);
title(' X(n+2) Sequence');

%Folding 
m4=-m;
subplot(2, 3 ,6);
stem(m4,bits);
title(' X(-n) Sequence');
