
			
--------------------------------------------------------------------------------
			org P:$E000
main			jmp	vect_max
			end	main


vect_max
			.LOOP n0
				cmpm	x0,y0	x:(r0)+,x0 y:(r4)+,y0
				tge	x0,y:(r4-1) 
			.ENDL



