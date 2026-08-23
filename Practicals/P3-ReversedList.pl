reverse([], []).

reverse([H|T], R) :-
    reverse(T, X),
    append(X, [H], R).