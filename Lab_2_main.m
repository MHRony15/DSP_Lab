x=[3 2 1 2];
h=[1 2 1 2];
lenX=length(x);
lenH=length(h);
subplot(3,1,1);
stem(x);
title('x(n)');
subplot(3,1,2);
stem(x);
title('h(n)');

k= -lenH+1:lenH+lenX-1;

arr=zeros(length(k));


