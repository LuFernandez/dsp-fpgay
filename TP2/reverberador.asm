DELAY equ 1
N_SAMPLES equ 7
E1	equ	0.5
E2	equ	-0.25

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
	
RESULT ds N_SAMPLES
	
E2_POS equ *
	dc	E2
	
			org Y:$0000
E1_POS equ *
	dc	E1

	
;--------------------------------------
			org P:$E000
main		move	#DELAY,m1
			move	#SAMPLES,r1
			move	#DELAY,n1
			move	#X_TEST,r2
			move	#RESULT,r3
			move	#E1_POS,r4				;Cargo la constante E1
			move	#E2_POS,r5				;Cargo la constante E2
			.LOOP		#N_SAMPLES

				clr		a				x:(r1),x0	y:(r4),y0		
				mpy		y0,x0,a		x:(r2),x0						;Multiplico por E1
				add		x0,a			
				move 	a,x:(r3)+
			
				move	a,y0			x:(r5),x0						;Busco E2 
				mpy		x0,y0,a		x:(r2)+,x0						;Muevo la entrada a x0
				add		x0,a	
				move	a,x:(r1+n1)					;La guardo al final del buffer
				move	x:(r1)+,a
			.ENDL
			end main