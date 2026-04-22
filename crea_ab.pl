/*
crea_ab(+ListaEtiquetas, -ArbolBinario).
es cierto cuando ArbolBinario unifica con
un arbol binario que contiene solo las 
etiquetas de ListaEtiquetas.
*/

crea_ab([],nil).
crea_ab([Cab|Resto], a(Cab,ArbI,ArbD)) :- length(Resto,X), 
							Lar is X // 2,
							length(Mi, Lar),
							append(Mi,Md,Resto),
							crea_ab(Mi,ArbI),
							crea_ab(Md,ArbD).
							


