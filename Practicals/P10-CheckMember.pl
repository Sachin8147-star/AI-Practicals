go :-
    write('Enter list: '), read(L),
    write('Enter element: '), read(X),
    memb(X,L),
    write('Member').

memb(X,[X|_]).
memb(X,[_|T]) :- memb(X,T).