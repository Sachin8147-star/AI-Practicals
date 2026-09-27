go :-
    write('Enter list: '), read(L),
    sumlist(L,S),
    write('Sum = '), write(S).

sumlist([],0).
sumlist([H|T],S) :- sumlist(T,S1), S is H+S1.