function x=inf_bisolve_ass(alfa, beta, b)
n=length(b);
x=zeros(n,1);
a=zeros(n,1)+alfa;
c=zeros(n-1,1)+beta;
A=diag(a,0)+diag(c,-1);
x(1)=b(1)/A(1,1);
for i=2:n
    x(i)=(b(i)-(A(i,i-1)*x(i-1)))/A(i,i);
end
end
