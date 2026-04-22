arbolg1(a(a, [a(b, [a(e, [])]), a(c, []), a(d,[])])).

/*
altura_ag(+ArbolGenerico,-Altura)
	es cierto si Altura unifica con la altura del ArbolGenerico.
*/

altura_ag(a(_,ListaArboles), R2) :- altura_ag_lista_arboles(ListaArboles,R), R2 is R+1.

altura_ag_lista_arboles([],0).
altura_ag_lista_arboles([Cab|Resto], Altura) :-
	altura_ag_lista_arboles(Resto,R),
	altura_ag(Cab,R1),
	Altura is max(R1,R).