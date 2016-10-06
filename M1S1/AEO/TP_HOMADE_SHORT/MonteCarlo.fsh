slave 
start
master 
: main
begin
    $ 10000
    for 
	rdm
	dup
	$ fff
	and
	swap
	$fff000
	and
	$ c
	rshift
	dup
	mul16
	swap
	dup
	mul16
	add
	$ FFE001
	<=
    next 
	$ ff
	waitbtn
again
;
start 
main

endprogram
