-module(procesos).

-export([start/1,sendmsg/1,recvmsg/0]).


sendmsg(0) ->
	recvmsg ! finished,
	io:format("sender dies~n",[]);

sendmsg(N) ->
	recvmsg ! {sendmsg, self()},
	receive 
		recvmsg ->
			io:format("Sender received from Recv~n",[])
	end,
	sendmsg(N-1).

recvmsg() ->
	receive
		finished ->
			io:format("Receive dies~n",[]);
		{sendmsg, Sendmsg_PID} ->
			io:format("Receive*2 from sender~n",[]),
			Sendmsg_PID ! recvmsg,
			recvmsg()
	end.


start(N) ->
	register(recvmsg, spawn(procesos, recvmsg, [])),
	spawn(procesos, sendmsg,[N]).	

