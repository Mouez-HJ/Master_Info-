slave 
start
master 
: read8bit
	$ 1f
	waitbtn
	switch
	
	
;
: main
begin
$ 1
for	
	read8bit	
	$ 8	
	lshift

	read8bit
	add
	
	
	7segdup	
	
	
next
	add
	
	
	$ ff
	waitbtn
	7segdup

again
;
start 
main

endprogram




