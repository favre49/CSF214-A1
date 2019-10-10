weight(p,q,20).
weight(q,r,20).
weight(q,t,10).
weight(t,p,10).
weight(t,r,20).

path(A,B,[A,B],X):-
    weight(A,B,X).

path(A,B,Path,Length):-
    weight(A,C,X),
    \+member(Path,C),
    path(C,B,NextPath,NextLength),
    Path=[A|NextPath],
    Length is X + NextLength.