% remove_nth/3
% Is true if Z is the rsult from removing the Nth element of X.
remove_nth(N,X,Z):-
    length(X,Len),
    Len>=N, % Return false if N is invalid.
    accremove_nth(N,X,Z,1).

% Base case for recursion.
accremove_nth(N,[],[],Count).

% Iterates over the lists and ensures the elements in the two arrays are equal,
% besides the Nth element.
accremove_nth(N,[H|L],[H|Y],Count):- 
    Count =\= N,
    NewCount is Count + 1,
    accremove_nth(N,L,Y,NewCount).

% If we are at the Nth element, we ignore it and continue
accremove_nth(N,[_|L],Y,N):-
    NewCount is N + 1,
    accremove_nth(N,L,Y,NewCount).
