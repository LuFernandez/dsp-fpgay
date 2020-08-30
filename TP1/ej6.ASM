X0_INIT equ $600000
X1_INIT equ $0c0000

			org P:$E000
main	move	#X0_INIT,x0
		move	#X1_INIT,x1
		add		x1,a
		rep		#$a
		norm	r0,a
		add 	x0,a
			end main