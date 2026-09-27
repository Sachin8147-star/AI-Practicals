go :-
    write('Enter list: '), read(L),
    maxlist(L,M),
    write('Maximum = '), write(M).

maxlist([X],X).
maxlist([H|T],M) :-
    maxlist(T,M1),
    M is max(H,M1).