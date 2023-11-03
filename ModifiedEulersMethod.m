%Modified Euler's Method
clc 
clear all
f=@(t,y)(-y+2*cos(t));
t0=0;
y0=1;
h=0.2;
a=0;
b=1;
n=(b-a)/h;
for i=1:n
    k1=h*f(t0,y0);
    k2=h*f(t0+h,y0+k1);
    y1=y0+(k1+k2)/2;
    y0=y1;
    t0=t0+h;
end
disp(y0);