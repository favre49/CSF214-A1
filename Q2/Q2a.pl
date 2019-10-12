sublist([],_).
sublist([X|T1],[X|T2]):-sublist(T1,T2).
sublist([X|T1],[_|T2]):-sublist([X|T1],T2).
