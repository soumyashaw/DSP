clc
clear all
% x = [1 2 3 4]%input('Enter Sequence: ');
% Y = fft(x)
% 
% ix = ifft(Y) 

% clc
% clear all
% x = [1 2 3 4]
% N = length(x);
% n = [0:N-1];
% k = n;
% WN = exp(-i*2*pi/N);
% nk = n'*k;
% WNnk = WN.^nk;
% Xk = x*WNnk;
% Xk

fs = 256;
t = 0:1/fs:1;
N = length(t);
signal = 2*sin(2*pi*100*t) + 4*sin(2*pi*50*t)
fft_sig = fft(signal);
y2 = abs(fft_sig)
X1=fftshift(y2);
F=[-N/2:N/2-1]/N;
plot(X1)
axis([0 120 0 500])
xlabel('Frequency')
ylabel('Amplitude')
grid on
