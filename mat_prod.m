function y=mat_prod(c,b)
n=length(b);
y=zeros(n,1);
somma=0;
for i=1:n-1
    y(i)=b(i)-b(i+1)/2;
    somma=somma+b(i);
end
y(n)=c*somma+b(n);
end
