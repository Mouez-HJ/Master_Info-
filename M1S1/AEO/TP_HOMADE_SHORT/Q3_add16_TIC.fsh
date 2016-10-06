slave 
start
master 
: read8bit
	$ ff
	waitbtn
	switch
	tic
	pop1
;
: main
begin
	ticraz
$ 1
for
	read8bit

	$ 8
	lshift

	read8bit
	add
next
	add
	tic
	swap
	7seg
	$ ff
	waitbtn
	7seg

again
;
start 
main

endprogram
