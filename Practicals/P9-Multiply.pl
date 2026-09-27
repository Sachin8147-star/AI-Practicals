go :-
    write('Enter N1: '), read(N1),
    write('Enter N2: '), read(N2),
    multi(N1,N2,R),
    write('Result = '), write(R).

multi(N1,N2,R) :- R is N1*N2.