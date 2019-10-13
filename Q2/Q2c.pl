remove_nth(N,X,Z):-
    accremove_nth(N,X,Z,1).

accremove_nth(N,[],[],Count):-
    Count>=N.

accremove_nth(N,[H|L],[H|Y],Count):- 
    Count =\= N, NewCount is Count + 1, accremove_nth(N,L,Y,NewCount).

accremove_nth(N,[_|L],Y,N):-
    NewCount is N + 1,accremove_nth(N,L,Y,NewCount).
