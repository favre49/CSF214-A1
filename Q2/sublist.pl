% Base case for recursion, an empty list is always a sublist.
sublist([],_).

% Checks for elements of a sublist existing in the superlist.
sublist([X|T1],[X|T2]):-
    sublist(T1,T2).

% Continues the recursion to check for a sublist.
sublist([X|T1],[_|T2]):-
    sublist([X|T1],T2).
