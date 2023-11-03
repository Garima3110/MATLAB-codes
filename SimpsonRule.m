clc
clear all
f=@(x)(cos(x)).^2;
a=1;
b=4;
N=3;
h=(b-a)/N;
sum=0;
for i=1:N-1
    x=a+h*i
    if rem(i,2)==0
        sum=sum+2*f(x);
    else
        sum=sum+4*f(x);
    end
end
sum=f(a)+f(b)
sum=sum*(h/3)
integral(f,a,b)
disp(sum)