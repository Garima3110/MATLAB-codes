clc
clear All
f=@(x)x.^3-5*x+1;
a=0;
b=1;
tol=10^-3;
if(f(a)*f(b)>0)
    fprintf("Wrong initial guess choice");
    i=0;
    c=0;
else
    while(abs(a-b)>tol)
        c=(a+b)*0.5;
        if(f(a)*f(b)<0)
            b=c;
        else
            a=c;
        end
        i=i+1;
    end
end
i
c



