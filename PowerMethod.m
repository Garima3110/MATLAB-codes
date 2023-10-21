%power method
clc 
clear all
A=[2,0,0;0,-5,0;0,0,4];
x0=[1;1;1];
N=100;
tol=10^-4
;
for i=1:N
    y=A*x0;
    k=max(abs(y));
    x1=y/k;
    if(abs(x0-x1)<tol)
        break
    end
    x0=x1;
end
fprintf("Eigen value:%f\nEigen vector:",k);
disp(y)