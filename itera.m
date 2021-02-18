function [xk, k]=itera(x0,tol)
g=@(x)1/2*(1/x+x^2)
%provare ad aggiungere la parte grafica per vedere le scale delle
%iterazioni
nmax=100;
err=inf;
k=0;
while err>tol & k<100
    x=g(x0);
    err=abs(x-x0);
    k=k+1;
    x0=x;
end
xk=x;
end
