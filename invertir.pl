/*

invertir (+Lista, -ListaR)
	es cierto cuando ListaR
	unifica con una lista que contiene los mismos
	elementos que lista en orden inverso.

El método:
0. Intentar con el principio de inducción
	1. P(n0)
	2. Para todo n>n0, P(n-1) -> P(n)
	
1. Empezar por lo más fácil (Dar la solución para lista vacía)

*/

invertir([],[]).
invertir([Cabeza|Resto], R2) :- invertir(Resto, R), append(R,[Cabeza], R2).