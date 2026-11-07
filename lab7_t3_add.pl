% Base case: appending X to an empty list
add_at_the_end(X, [], [X]).

% Recursive case
add_at_the_end(X, [Head|Tail], [Head|ResultTail]) :-
    add_at_the_end(X, Tail, ResultTail).
