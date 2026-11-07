%Task delete
deleteElement(_,[],[]).

deleteElement(X, [H|Tail], [H|Y]):-
    X\= H,
    deleteElement(X, Tail, Y).

deleteElement(X, [X|Tail] , Y):-
    deleteElement(X, Tail , Y).

