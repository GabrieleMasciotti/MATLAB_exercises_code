function x=inf_bisolve(A, b)
n=length(b);
x=zeros(n,1);
x(1)=b(1)/A(1,1);
for i=2:n
    x(i)=(b(i)-(A(i,i-1)*x(i-1)))/A(i,i);
end
end
