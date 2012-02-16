-module(demo).

-export([add/2, double/1]).

add(A,B) ->
	A + B.

double(A) ->
	A * A.
