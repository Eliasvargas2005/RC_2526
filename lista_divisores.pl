/*
lista_divisores(+X, +Y, -ListaR).
es cierto cuando ListaR unifica con una lista 
que contiene a los numeros cuyo resto de la division
entera de X entre Z es igual a 0 para valores de Z entre 1 e Y.
*/

lista_divisores(_,1,[1]).
lista_divisores(X,Y,[Y|Resto]) :- Y > 1, 0 is X mod Y, Y2 is Y-1, lista_divisores(X,Y2, Resto).
lista_divisores(X, Y, ListaR) :- \+ 0 is X mod Y, Y2 is Y-1, lista_divisores(X,Y2,ListaR).

/*
primo(+X)
es cierto si X unifica con un numero primo
*/

primo(X) :- lista_divisores( X , X ,[X,1]).

/*
primosEntrexy(+X,+Y,-ListaR).
es cierto cuando ListaR unifica con una lista
que contiene a los primos que van desde X hasta
Y ambos incluidos en orden ascendente
*/

primosEntrexy(X,X,[X]) :- primo(X).
primosEntrexy(X,X,[]) :- \+ primo(X).

primosEntrexy(X,Y, R2 ) :- X < Y, X2 is X+1, primo(X), primosEntrexy(X2,Y,R), append([X], R, R2).

primosEntrexy(X, Y, R) :- X < Y, X2 is X + 1, \+ primo(X), primosEntrexy(X2, Y, R). 