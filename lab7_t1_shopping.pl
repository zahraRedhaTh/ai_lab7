% Initial shopping basket
initial_basket([coffe, milk, apples, chocolate, jucie]).

% Main program
start :-
    initial_basket(Basket),
    menu(Basket).

% Display the menu
menu(Basket) :-
    nl,
    write('* * SHOPPING LIST * *'), nl,
    write('d. display all items'), nl,
    write('a. add an item to the list'), nl,
    write('e. exit'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    process(Choice, Basket).

% Process the user's choice
process(d, Basket) :-
    nl,
    write('Shopping Basket:'), nl,
    display_items(Basket),
    menu(Basket).

process(a, Basket) :-
    write('Enter the item to add: '),
    read(Item),
    append(Basket, [Item], NewBasket),
    write('Item added successfully!'), nl,
    menu(NewBasket).

process(e, _) :-
    write('Goodbye!'), nl.

% Handle invalid choices
process(_, Basket) :-
    write('Invalid choice. Please try again.'), nl,
    menu(Basket).

% Recursive predicate to display the list
display_items([]).

display_items([Head|Tail]) :-
    write('- '),
    write(Head), nl,
    display_items(Tail).
