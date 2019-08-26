clc
clear all
x=[1,2,3,4];
h=[3,2,1];
h = flip(h)
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
Y
stem(Y)

a = conv(x,h)
b = xcorr(x,x)
r = corrcoef(X,H) 


%Part 2
%Comment any of the part and then Run

clc
clear all
syms z n a;
eq = 2^n;
num = [2 5 9 5 3]%input('Enter Numerator Coeficients:'); %[2 5 9 5 3]
den = [5 45 2 1 1]%input('Enter Denominator Coeficients:'); %[5 45 2 1 1]
ztrans_out=ztrans(eq)
inv_ztransform=iztrans(ztrans_out)
N = max(length(num),length(den))
[g t] = impz(num,den,N+1);
plot(g);
figure, freqz(num,den,'whole')

subplot(2,2,1);zplane(num,den);
title('zplane')
num_a=roots(num);
den_a=roots(den);
subplot(2,2,2);
zplane(num_a,den_a);
title('zplane')

[z,p,k] = tf2zp(num,den);
subplot(2,2,3);
zplane(z,p);
title('zplane');
disp('The Poles are:');disp(p);
disp('The Zeros are:');disp(z);

count = 0;
for i=1:length(p)
    if(abs(p(i))>1)
        count=count+1;
    end
end
if(count>0)
    disp('Unstable');
else
    disp('Stable');
end
