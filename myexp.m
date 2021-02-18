function s = myexp(x,n)
%implementazione della funzione esponenziale usando un polinomio di Taylor
%arrestato al termine n-esimo

s=1;
for k=1:n
    s=s+pow(x,k)/fattoriale(k);
end
end

