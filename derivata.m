function dp=derivata(p)
%dato un vettore che rappresenta un polinomio, calcolo il vettore che
%rappresenta la sua derivata

n=length(p)-1; %lunghezza di dp, ovvero grado di p
%dp=[p(1)*n, p(2)*(n-1), p(n)*1]
dp=(n:-1:1).*p(1:n);
