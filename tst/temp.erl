-module(temp).

-export([f2c/1,c2f/1]).

f2c(A) ->
	( 5 / 9 ) * ( A - 32 ).

c2f(A) ->
	( ( 9 * A ) / 5 ) + 32.
