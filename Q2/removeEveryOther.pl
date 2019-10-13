% remove_every_other/2
% Is true if Z is the result from removing every even element from an array.
remove_every_other(X,Z):-
    accremove_every_other(X,Z,1).

% Base case for recursion.
accremove_every_other([],[],_).

% Ensures every odd element exists in both arrays.
accremove_every_other([H|L],[H|Y],Count):-
    1 is mod(Count,2) , % Checks if the current element is an odd one.
    NewCount is Count + 1, 
    accremove_every_other(L,Y,NewCount).

% Ensures every even element does not exist in the second array.
accremove_every_other([_|L],Y,Count):-
    0 is mod(Count,2), % Checks if the current element is an even one.
    NewCount is Count + 1,
    accremove_every_other(L,Y,NewCount).
