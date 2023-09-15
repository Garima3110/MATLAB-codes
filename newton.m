clc 
clear All
f=@(x)2^x-5*x+2;
d=@(x)(2^x)*log(2)-5;
x0=0;
n=10;
e=10^-4;
if(d(x0)~=0)
    for i=1:n
        x1=x0-(f(x0)/d(x0));
        if(abs(x1-x0)<e)
            fprintf("Root found %f\n",x1);
            break;
        end
        x0=x1;
    end
else
    disp("Newton method fails");
end