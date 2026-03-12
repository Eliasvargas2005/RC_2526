%------------------------------------------------------
% ordena_burbuja (+Lista, -ListaR).
%	es cierto cuando ListaR unifica con una lista que
%	contiene los elementos que Lista ordenados
%	de menor a mayor.
%------------------------------------------------------

/*

ordenada(+Lista)
	es cierto si Lista está ordenada de menor a mayor.
	
append(_,[Elem1,Elem2|_], [1,2,3,4,5,6,7,8]).
Con esto consigues sacar los numeros de la lista de dos en dos
	
*/

ordenada([]).
ordenada([_]).
ordenada([Cab,Cab1|Resto]) :- Cab =< Cab1, ordenada([Cab1|Resto]).

ordena_burbuja(Lista,Lista) :- ordenada(Lista).
ordena_burbuja(Lista, R) :- \+ ordenada(Lista), append(L1,[Elem1,Elem2|L2],Lista), Elem1 > Elem2, append(L1,[Elem2,Elem1|L2],ListaN),ordena_burbuja(ListaN,R).
ordena_burbuja(Lista, R) :- \+ ordenada(Lista), append(_,[Elem1,Elem2|_],Lista), Elem1 =< Elem2, ordena_burbuja(Lista,R).


