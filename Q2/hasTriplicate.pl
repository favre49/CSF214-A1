% has_triplicate/1
% Checks if the given list has triplicates and prints the elements.
has_triplicate(A):-
    accHas_Triplicate(A,X,0).

% Base case for recursion. Writes the output onto the terminal if a triplicate
% has been found.
accHas_Triplicate(_,X,3):-
    write(X).

% Increments the count for every equivalent element found by iterating over the
% list.
accHas_Triplicate([Y|T],Y,Count):-
    NextCount is Count+1,
    accHas_Triplicate(T,Y,NextCount).

% Continues the iteration in case the head is not an equivalent element.
accHas_Triplicate([Z|T],Y,Count):-
    Count=\=3, % If the count is 3, we need not do this.
    Z\==Y,
    accHas_Triplicate(T,Y,Count).
