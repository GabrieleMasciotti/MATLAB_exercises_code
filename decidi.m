function idx=decidi(x)
%restituisce 1 se x è un'approssimazione di -1
%            2 se x è un'approssimazione di 1/2+sqrt(3)/2i
%            3 se x è un'approssimazione di 1/2-sqrt(3)/2i

xx=[-1, 1/2+(sqrt(3)/2)*1i, 1/2-(sqrt(3)/2)*1i];
r=abs(xx-x); %sottrae x da ogni elemento di xx
[~, idx]=min(r);
