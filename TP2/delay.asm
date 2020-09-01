DELAY equ 2
N_SAMPLES equ 7
;-----------------------------------------------------------
			org X:$0000
SAMPLES ds DELAY+1
			org X:$1000
X_TEST equ *								
	dc 0.125
	dc 0.25
	dc 0.5
	dc 0.75
	dc 0
	dc 0
	dc 0
			org Y:$0000
RESULT ds N_SAMPLES
;--------------------------------------
			org P:$E000
main		move	#DELAY,m1
			move	#SAMPLES,r1
			move	#DELAY,n1
			move	#X_TEST,r2
			move	#RESULT,r3
			
			.LOOP		#N_SAMPLES
				move	x:(r2)+,x0		;Guarda la muestra nueva en x0
				move	x0,x:(r1+n1)		;La guardo al final del buffer
				move	x:(r1)+,x0
				move	x0,y:(r3)+	;Busco la muestra con delay
			.ENDL
			end main