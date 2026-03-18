/*
inserta_en_list_ord(+Elem,+Lista,-ListaR).
es cierto cuando ListaR unifica con una lista 
que contiene los elementos de la lista ordenada
Lista, con el elemento Elem insertado de forma ordenada.
*/

inserta_en_list_ord(Elem,[],[Elem]).
inserta_en_list_ord(Elem,[Cab|Resto],[Elem,Cab|Resto]) :- Elem =< Cab.
inserta_en_list_ord(Elem,[Cab|Resto],[Cab|Resto2]):- Elem > Cab, inserta_en_list_ord(Elem, Resto, Resto2).


/*
ordena_insercion(+Lista, -ListaR).
es cierto cuando ListaR unifica con una lista que 
contiene los mismos elementos que Lista ordenados de menor a mayor
*/

ordena_insercion([],[]).
ordena_insercion([Cab|Resto],R) :- ordena_insercion(Resto, R2), inserta_en_list_ord(Cab, R2, R).

