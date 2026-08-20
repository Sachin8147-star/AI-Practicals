parent(john, alice).
parent(john, bob).
parent(mary, alice).
parent(mary, bob).

parent(bob, charlie).
parent(susan, charlie).

parent(bob, david).
parent(susan, david). 

% Father
father(X, Y) :-
    parent(X, Y),
    male(X).

% Mother
mother(X, Y) :-
    parent(X, Y),
    female(X).

male(john).
male(bob).
male(charlie).
male(david).

female(mary).
female(susan).
female(alice).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Grandparent
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Grandfather
grandfather(X, Y) :-
    grandparent(X, Y),
    male(X).

% Grandmother
grandmother(X, Y) :-
    grandparent(X, Y),
    female(X).

% Uncle
uncle(X, Y) :-
    male(X),
    sibling(X, P),
    parent(P, Y).

% Aunt
aunt(X, Y) :-
    female(X),
    sibling(X, P),
    parent(P, Y).