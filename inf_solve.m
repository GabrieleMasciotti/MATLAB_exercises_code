function x=inf_solve(A, b)
%risolve un sistema lineare triangolare inferiore
%assumiamo che A sia non singolare
n=length(b);   %lunghezza di b
%n=size(A, 1);  %numero di righe di A
%n=size(A, 2);   %numero di colonne di A
%[n, m]=size(A);   %dimensione della matrice
%dim=size(A); n=dim(1);
%tutte le precedenti sono equivalenti

% x(i)=b(i)-somma_{j=1}^{i-1} a_(i,j)*x(j)/a(i,i)
%questo sopra è quello che devo fare. Mi restituisce un vettore riga.
%per ottenere un vettore colonna metto:
x=zeros(n, 1);    %inizializzo il vettore con n righe di 0 e una colonna
for i=1:n   %ricordare che matlab è un linguaggio 1-based (#1 el. array è di indice 1)
    somma=0;
    for j=1:i-1
        somma=somma+A(i,j)*x(j);
    end
    x(i)= (b(i)-somma)/A(i,i);
end
end
