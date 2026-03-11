%------------------------------------------------------
% Concatena (?List1, ?List2, ?ListR).
%	es cierto cuando ListaR unifica con una lista
%	que contiene los elementos de la lista List1
%	en el mismo orden y seguidos de los elementos
%	de la lista List2 en el mismo orden
%------------------------------------------------------

concatena([], List2, List2).
concatena([Cab|Resto], List2, [Cab|R]) :- concatena(Resto, List2, R).