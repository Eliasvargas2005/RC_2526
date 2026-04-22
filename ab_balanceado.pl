arbol2(a(1, a(2,a(4,a(6,nil,nil),nil),a(3,nil,(a(5,nil,a(7,nil,nil))))))).
arbol3(a(1,a(2,nil,nil),a(3,nil,nil))).

/*
balanceado(+ArbolBinario)
	es cierto si ArbolBinario unifica con un arbol
	binario que PARA TODO NODO la diferencia entre
	la altura del arbol izquierdo y derecho es como
	maximo 1.
*/

balanceado(nil).
balanceado(a(_,Ri,Rd)) :- profundidad_ab(Ri,Pi), profundidad_ab(Rd,Pd),
						Dif is Pi - Pd,
						Abs is abs(Dif), Abs =< 1,
						balanceado(Ri), balanceado(Rd).

/*
profundidad_ab(+ArbolBinario,-profundidad).
	es cierto si Profundidad unifica con la profundidad
	del arbol binario ArbolBinario.
*/

profundidad_ab(nil,0).
profundidad_ab(a(_,Hi,Hd), Prof) :- profundidad_ab(Hi,Pi),
							profundidad_ab(Hd,Pd),
							Prof is max(Pi,Pd) +1.