weight(p,q,20).
weight(q,r,20).
weight(q,t,20).
weight(p,t,20).
weight(t,r,20).

edge(A,B,W):-
    weight(A,B,W);
    weight(B,A,W).

traverse([B|Route],B,[B|Route],Len,Len).

traverse([A|Route],B,Path,CurrLen,Len):-
    edge(A,C,X),
    \+member(C,[A|Route]),
    NewLength is CurrLen + X,
    traverse([C,A|Route],B,Path,NewLength,Len).

findPath(A,B,Path,Len):-
    traverse([A],B,RevPath,0,Len),
    reverse(Path,RevPath).
