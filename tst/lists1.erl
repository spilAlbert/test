-module(lists1).

-export([minlist/1,minlist/2,maxlist/1,maxlist/2,minmaxlist/1]).

minlist(L) ->
	[Head|Tail] = L,
	minlist(Head,Tail).

minlist(Num,[]) -> Num;
minlist(Num, L) ->
	[Head|Tail] = L,
	if Num > Head -> minlist(Head,Tail)
	; true -> minlist(Num,Tail)
	end.

maxlist(L) ->
        [Head|Tail] = L,
        maxlist(Head,Tail).

maxlist(Num,[]) -> Num;
maxlist(Num,L) ->
        [Head|Tail] = L,
        if Num < Head -> maxlist(Head,Tail)
        ; true -> maxlist(Num,Tail)
        end.

minmaxlist(L) ->
	{minlist(L),maxlist(L)}.

