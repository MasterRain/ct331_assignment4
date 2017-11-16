%Definitions for isElementInList(El, List)

isElementInList(El, [El|_]).

isElementInList(El, [_|T]) :-
    isElementInList(El, T).

%Definitions for mergeLists(List1, List2, Merged)

mergeLists([],Tail,Tail).

mergeLists([H|Tail1], Tail2 , Out1) :-
    mergeLists(Tail1, Tail2, Out2),
    Out1 = [H | Out2].
    
%Definitions for reverseList(List, ReversedList)

reverseList([], []).

reverseList([H|T], Output1):-
    reverseList(T, Output2),
    mergeLists(Output2,[H], Output1).
    
%insertElementIntoListEnd(El, List, NewList)

insertElementIntoListEnd(El, [], [El]). 

insertElementIntoListEnd(El, [H|T], NewList1) :-
    insertElementIntoListEnd(El, T, NewList2),
    NewList1 = [H|NewList2].