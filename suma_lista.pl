/*

Suma de los elementos de una lista

suma_lista (+Lista, -Resultado)
	es cierto si Resultado unifica con 
	la suma de todos los elementos de Lista.

Lista en Prolog

[1,2,3]
n0= []
[cabeza | Resto ] = [1,2,3]
cabeza = 1
Resto = [2,3]

Principio de Inducción

1) suma_lista([], 0).
2) suma_lista([cabeza|Resto], R2 ):- suma_lista(Resto, R)
	R2 is R + Cabeza.
*/

suma_lista([], 0).
suma_lista([cabeza|Resto], R2 ):- suma_lista(Resto, R), R2 is R + Cabeza.

/*
	Dos terminos se unifican si son identicos
	Dos cosas son identicas si son iguales pero con excepciones como parentesis

*/