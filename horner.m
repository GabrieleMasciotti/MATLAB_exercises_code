function px=horner(p,x)
%calcola p(x)
px=p(1);
for k=2:length(p)
    px=px*x+p(k);
end
end
