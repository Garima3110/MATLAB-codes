clc
clear all
a=1
b=2
N=3
h=(b-a)/N;
sum=0;
f=@(x)1/x;
for i=1:N-1
    x=a+h*i
    sum=sum+2*f(x)
end
sum=sum+f(a)+f(b)
ans=sum*h/2
f=@(x)x
integral(f,1,1.5)
