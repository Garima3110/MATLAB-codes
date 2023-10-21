clc 
clear all
x=[-1 0 1 2];
f=[3 -4 5 -6];
n=length(x)
p=1.5;
for i=1:n
    l(i)=1;
    for j=1:n
        if (j~=i)
            l(i)=((p-x(j))/(x(i)-x(j))*l(i));
        end
    end
end
%    sum=sum+l(k)*f(k);
%end
%disp(sum)
l*f'
