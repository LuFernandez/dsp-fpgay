VEC_SIZE equ 3

;---------------------------------------------------------------------
			org X:$0
VEC_A equ *					;Defino el vector A
	dc 0.125
	dc 0.25
	dc -0.5
			org	Y:$0
VEC_B equ *					;Defino el vector B
	dc 0.25
	dc 0.125
	dc 0.25
			
;--------------------------------------------------------------------------------
			org P:$E100

vect_max		move	x:(r0)+,a			;Tomo el primer elemento del vector A
			move	y:(r4),b			;Tomo el primer elemento del vector B
			.LOOP n0
				cmpm	b,a		;Comparo los modulos de los elementos
				tge	a,b 					
				move	b,y:(r4)+				;Guardo el de mayor modulo en B
				move	x:(r0)+,a y:(r4),b
			.ENDL
			rts

			org P:$E000
main			move	#VEC_A,r0
			move	#VEC_B,r4
			move	#VEC_SIZE,n0
			jmp	vect_max
			end	main



