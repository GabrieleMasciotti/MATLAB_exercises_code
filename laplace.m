function A=laplace(n)
%costruisce la matrice triangolare con 2 sulla diagola principale e -1
%sulle diagonali secondarie
A=2*eye(n)-diag(ones(n-1, 1), -1)-diag(ones(n-1, 1), 1);
end
