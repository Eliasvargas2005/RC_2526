/*
divide(+Elem, +Lista, -Menores, -Mayores)
	es cierto cuando Menores unifica con una lista que
	contiene los elementos de Lista que son menores
	o iguales que Elem y Mayores unifica con una Lista 
	que contiene los elementos de Lista que son mayores que Elem.
*/

divide(_,[],[],[]).
divide(Elem,[Cab|Resto],[Cab|Listam],ListaM) :- Cab =< Elem, divide(Elem,Resto,Listam,ListaM).
divide(Elem,[Cab|Resto],Listam,[Cab|ListaM]) :- Cab > Elem, divide(Elem,Resto,Listam,ListaM).

/*
quicksort(+Lista, -ListaR).
es cierto cuando ListaR unifica con una Lista que 
contiene los mismos elementos que Lista ordenados 
de menor a mayor.
*/

quicksort([],[]).
quicksort([Cab|R1],ListaF) :- divide(Cab,R1,Listam,ListaM), quicksort(Listam,Me), quicksort(ListaM,Mo), append(Me,[Cab|Mo],ListaF).