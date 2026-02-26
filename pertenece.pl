/*

pertenece (?Elem, ?Lista)
	es cierto si Elem pertenece a Lista
	
Inducción
1. P(n0)
2. Para todo n>n0, P(n-1) -> P(n)


*/

pertenece(Elem,[Elem|_]).
pertenece(Elem, [_|Resto]) :- pertenece(Elem,Resto).
