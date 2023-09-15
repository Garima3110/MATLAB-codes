clc
clear All
f=@(x)cos(x)-3*x+1;
g=@(x)(cos(x)+1)/3;
x0=0;
e=10^-4;
n=20;
h=@(x)diff(g(x));
if(h(x0)>1)
    fprintf("Wrong choice");
else
    for i=1:n
        x1=g(x0);
        if(abs(x1-x0)<e)
            fprintf("root %f at %d",x1,i);
            break;
        else
            x0=x1;
        end
    end
end