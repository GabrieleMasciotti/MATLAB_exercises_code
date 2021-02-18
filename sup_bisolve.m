function x=sup_bisolve(A, b)
n=length(b);
x=zeros(n,1);
x(n)=b(n)/A(n,n);
for i=n-1:-1:1
    x(i)=(b(i)-(A(i,i+1)*x(i+1)))/A(i,i);
end
end