has_Triplicate(A):-accHas_Triplicate(A,X,0).
accHas_Triplicate(_,X,3):-write(X).
accHas_Triplicate([Y|T],Y,Count):-NextCount is Count+1,accHas_Triplicate(T,Y,NextCount).
accHas_Triplicate([Z|T],Y,Count):-accHas_Triplicate(T,Y,Count),Z\==Y.
