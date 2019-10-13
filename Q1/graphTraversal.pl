% edge/3
% Is true if there is connectivity between two nodes A and B with weight W.
edge(A,B,W):-
    weight(A,B,W);
    weight(B,A,W).

% Base case for graph traversal.
traverse([B|Route],B,[B|Route],Len,Len).

% Recursive case for graph traversal. Gives the path in reverse order.
traverse([A|Route],B,Path,CurrLen,Len):-
    edge(A,C,X),
    \+member(C,[A|Route]), % Checks if we have entered a cycle.
    NewLength is CurrLen + X,
    traverse([C,A|Route],B,Path,NewLength,Len).

% findPath/4
% Finds the paths from A to B as well as it's length.
findPath(A,B,Path,Len):-
    traverse([A],B,RevPath,0,Len),
    reverse(Path,RevPath).
