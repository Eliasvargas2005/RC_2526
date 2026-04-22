descomp('G','C').
desomp('C','G').
descomp('T','A').
descomp('A','U').

complementar([],[]).
complementar([Cab1|R1],[Cab2|R2]) :- descomp(Cab1,Cab2), complementar(R1,R2).


rna_transcription(Dna,Rna) :-
    string_chars(Dna,ListaD),
    complementar(ListaD,ListaR),
    string_chars(Rna,ListaR).