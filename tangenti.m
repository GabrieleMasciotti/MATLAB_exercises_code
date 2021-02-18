function [x, k]=tangenti(x0, tol)
g=@(x)(4*log(1/x))+(1/x)-(2*x);
g1=@(x)(-4/x)-(1/x^2)-2;
k=0;
err=inf;
while(err>tol)
    x=x0-(g(x0)/g1(x0));
    err=abs(x-x0);
    k=k+1;
    x0=x;
end
end
