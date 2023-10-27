clc
clear all
X=[-1 0 1 2]
n=4
A=zeros(n)
F=[3;-4;5;-6]
A(:,1)=F
for j=2:n
    for i=j:n
        A(i,j)=(A(i,j-1)-A(i-1,j-1))/X(i)-X(i-(j-1))
    end
end
disp(A)
d=diag(A)
q=1.5
P=ones([1 4])
for i=1:n
    P(i)=1;
    for j=1:i-1
        P(i)=(q-X(j))*P(i)
    end
end
ans=P*d