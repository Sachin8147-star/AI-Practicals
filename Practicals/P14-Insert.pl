go :-
    write('Enter item: '), read(I),
    write('Enter position: '), read(N),
    write('Enter list: '), read(L),
    insert(I,N,L,R),
    write('Result = '), write(R).

insert(I,1,L,[I|L]).
insert(I,N,[H|T],[H|R]) :-
    N>1,
    N1 is N-1,
    insert(I,N1,T,R).