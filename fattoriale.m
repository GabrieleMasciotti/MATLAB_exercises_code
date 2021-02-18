function f = fattoriale(n)
%calcola il fattoriale di un numero naturale n 
%non è una buona idea calcolarlo in modo ricorsivo perchè matlab interpreta
%e non compila (gestisce male le pile della ricorsione)

f = 1;
for i=1:n    %i scorre il vettore degli interi da 1 a n (di passo 1)
    f=f*i;
end
%f vale n fattoriale 
end
