clc
clear all
n = -10:20
u = [zeros(1,10) 1 zeros(1,20)]
plot(n,u)
figure(2);
stem(n,u)
xlabel('N')
ylabel('Amp')
title('Unit Sample Sequence')


clc
clear all
n = -10:20;
u = [zeros(1,10) ones(1,21)];
plot(n,u);
figure();
stem(n,u);
xlabel('N');
ylabel('Amp');
title('Unit Step Sequence');

clc
clear all
n = 0:35;
a1=1.2;
a2=0.9;
K=0.2;
x1 = K*a1.^n;
x2 = K*a2.^n;
stem(n,x1);
figure(2)
stem(n,x2);

clc
clear all
c = -(1/12) + (pi/6)*i;
K = 2;
n = 0:40;
x = K*exp(c*n);
subplot(2,1,1)
stem(n,real(x));
xlabel('Time index n');
ylabel('Amplitude');
title('Real Part');
subplot(2,1,2);
stem(n,imag(x));
xlabel('Time index n');
ylabel('Amplitude');
title('Imaginary Part');

clc
clear all
n = 0:40;
f = 0.1;
phase = 0;
A = 1.5;
arg = 2*pi*f*n - phase;
x = A*sin(arg);
clf;
stem(n,x);
axis([0 40 -2 2]);


clc
clear all
n = 0:40;
f = 0.1;
f2 = 0.16;
phase = 0;
A = 1.5;
arg = 2*pi*f*n - phase;
arg2 = 2*pi*f2*n - phase;
x = A*sin(arg) + A*sin(arg2); %+ A*cos(arg);
clf;
plot(n,x);
axis([0 40 -2 2]);
