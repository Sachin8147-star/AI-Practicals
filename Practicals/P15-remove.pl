go :-
    write('Enter position: '), read(N),
    write('Enter list: '), read(L),
    delete(N,L,R),
    write('Result = '), write(R).

delete(1,[_|T],T).
delete(N,[H|T],[H|R]) :-
    N>1,
    N1 is N-1,
    delete(N1,T,R).