-module(test).

-export([min/2]).


min(Num, L) ->
	[Head|Tail] = L,
        if L == [] -> Num
        ; true -> min(Head,Tail)
        end.

