( test toto)
:IP toto
	IP
	IPcode
		8810 
	endIP
;
slave 
start
master 
: main
$ 1
begin 
	leddup
	$ fffff 
	delay
	2*
	dup $ 100  =
	if 
		drop $ 1 
	endif
again
;
start 
main

endprogram
