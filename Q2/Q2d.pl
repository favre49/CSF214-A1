remove_every_other(X,Z):-
    accremove_every_other(X,Z,0).

accremove_every_other([],[],_).

accremove_every_other([H|L],[H|Y],Count):-
    0 is mod(Count,2) ,
    NewCount is Count + 1,
    accremove_every_other(L,Y,NewCount).

accremove_every_other([_|L],Y,Count):-
    1 is mod(Count,2),
    NewCount is Count + 1,
    accremove_every_other(L,Y,NewCount).
