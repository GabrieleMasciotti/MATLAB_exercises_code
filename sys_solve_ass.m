function x=sys_solve_ass(b)
n=length(b);
x=zeros(n,1);
somma=0;
for i=n:-1:1
    x(i)=b(i)+somma;
    somma=somma+x(i);
end
end
