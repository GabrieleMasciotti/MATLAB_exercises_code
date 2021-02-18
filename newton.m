function x=newton(p,x0)
dp=derivata(p);
px=horner(p,x0);
x=x0;
while abs(px)>1e-12 %10^-12
    dx=horner(dp,x);
    x=x-px/dx; %x_{k+1}=x_k-p{x_k}/p'{x_k}
    px=horner(p,x);
end
end