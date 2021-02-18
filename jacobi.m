function [res, xk, k]=jacobi(alfa, b)
n=length(b);
x0=zeros(n,1);
xk=zeros(n,1);
k=0;
while k<100
    xk(1)=(-alfa*x0(n))+b(1);
    for i=2:n
        xk(i)=(-alfa*x0(i-1))+b(i);
    end
    k=k+1;
    res=norm((xk-x0),inf);
    x0=xk;
    if res <= 10^-12
        return;
    end
end
end
