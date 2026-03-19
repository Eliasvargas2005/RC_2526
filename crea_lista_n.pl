/*
crea_lista_n(+N,-ListaR)
	es cierto si ListaR unifica con una Lista de tamaño N
	que contiene valores aleatorios entre 1 y N
*/

crea_lista_n(0,_,[]).
crea_lista_n(Tam,N,[Cab|R]) :- Tam > 0, Tam2 is Tam - 1, crea_lista_n(Tam2,N,R),random(0,N,Cab).