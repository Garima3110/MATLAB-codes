clc 
clear All
f=@(x)x^2-29;
a=5;
b=6;
e=10^-4;
n=20;
for i=1:n
    c=b-((b-a)*f(b))/(f(b)-f(a));
    if(abs(c-b)<e)
        fprintf("Root %f at %d",c,i);
        break;
    else
        a=b;
        b=c;
    end
end
