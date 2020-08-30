	ORG	P:$E000

main	move 	#$000123,a1
		move 	#$800000,a0
		move 	#$FFFFFF,b0
		move 	#$FF,b2
		move 	#$400000,x0
		move 	#$400000,x1
		macr	x0,x1,a
		rnd 	b
		mpyr	x0,x1,b
 
	end	 main