function x=inf_bisolve_ass_senzamatrice(alfa, beta, b)
n=length(b);
x=zeros(n,1);
x(1)=b(1)/alfa;
for i=2:n
    x(i)=(b(i)-(beta*x(i-1)))/alfa;
end
end