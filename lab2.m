%Convolution

clc
clear all
x=input('Enter x: ')
h=input('Enter h: ')
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i=1:n+m-1
  Y(i)=0;
  for j=1:m
    if(i-j+1>0)
      Y(i)=Y(i)+X(j)*H(i-j+1);
    end
  end
end
stem(Y);
ylabel('Y[n]');
xlabel('n');
title('Convolution of Two Signals without conv function');


%Circular Convolution
clc
close all
x=input('Enter x(n):\n');
h=input('Enter h(n):\n');
m=length(x);%length of sequence x(n)
n=length(h);%length of sequence h(n)
N=max(m,n);%length of output sequence y(n)
%For equating both sequence length
x=[x,zeros(1,N-m)];
h=[h,zeros(1,N-n)];
for n=1:N
    Y(n)=0;
    for i=1:N
        j=n-i+1;
        if(j<=0)
            j=N+j;
        end
        Y(n)=[Y(n)+x(i)*h(j)];
    end
end
n=0:N-1;%Range of all Sequences
subplot(311)
disp('First Sequence x(n) is:')
disp(x)
stem(n,x)
xlabel('n')
ylabel('x(n)')
title('First Sequence')
grid on;
subplot(312)
disp('Second Sequence h(n) is:')
disp(h)
stem(n,h)
xlabel('n')
ylabel('h(n)')
title('Second Sequence')
grid on;
subplot(313)
disp('Convoluted Sequence Y(n) is:')
disp(Y)
stem(n,Y)
xlabel('n')
ylabel('Y(n)')
title('Circular Convoluted Sequence')
grid on;
