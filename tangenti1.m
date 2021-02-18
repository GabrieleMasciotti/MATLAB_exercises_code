function [x, k]=tangenti1(x0, tol)
g=@(x)((log(x))^2)-x-1;
g1=@(x)((2/x)*log(x))-1;
k=0;
err=inf;
while(err>tol)
    x=x0-(g(x0)/g1(x0));
    err=abs(x-x0);
    k=k+1;
    x0=x;
end
end
