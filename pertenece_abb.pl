pertenece_abb(Elem,a(Elem,_,_)).
pertenece_abb(Elem,a(Cab,Hi,_)) :- Elem < Cab, pertenece_abb(Elem,Hi).
pertenece_abb(Elem,a(Cab,_,Hd)) :- Elem > Cab, pertenece_abb(Elem,Hd).
