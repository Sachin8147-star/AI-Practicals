conc([],L,L).
conc([H|T],L,[H|R]) :-
 conc(T,L,R).