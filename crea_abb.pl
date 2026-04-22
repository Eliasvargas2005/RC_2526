/*
crea_abb(+ListaEtiquetas,-ArbolBB)
es cierto cuando ArbolBinario unifica con
un arbol binario que contiene solo las 
etiquetas de ListaEtiquetas.
*/

crea_abb([],nil).
crea_abb(Lista, a(Cab,ArbI,ArbD)) :- length(Lista,L), 
							Lis is L // 2,
							length(Mi, Lis),
							append(Mi,[Cab|Resto],Lista),
							crea_abb(Mi,ArbI),
							crea_abb(Resto,ArbD).