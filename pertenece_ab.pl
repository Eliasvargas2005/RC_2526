
arbol1( a(1, a(2,nil,nil), a(3,nil,a(4,nil,nil))) ).

/*
pertenece_ab(+Elem,+ArbolBinario)
	es cierto si la etiqueta Elem pertenece
	a ArbolBinario.
*/

pertenece_ab(Elem,a(Elem,_,_)).

pertenece_ab(Elem,a(_,Ri,_)) :- pertenece_ab(Elem,Ri).

pertenece_ab(Elem,a(_,_,Rd)) :-  pertenece_ab(Elem,Rd).