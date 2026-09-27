go:-
write('Enter the List: '), read(L),nl,evenlength(L).
evenlength([]):- write('Even Length').
evenlength([_]):- write('Odd Length').
evenlength([_|T]):- oddlength(T).
oddlength([_|T]):- evenlength(T).