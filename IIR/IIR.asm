
;Coeficientes del filtro
ALPHA	equ	0.487781767 
BETA 	equ	0.495366858 
GAMMA 	equ	0.955760208 
MU	equ	-2.000000000 
SIGMA	equ	1.000000000 

;---------------------------------------------------------------------------

N_SAMPLES equ 10
NCOEFFS equ 5
IIR_ORDER equ 2
;--------------------------------------
			org	Y:$0
Y_TAPS DS IIR_ORDER	;TAps de lA sAlidA
X_TAPS DS IIR_ORDER	;TAps de lA entrAdA

			org	Y:$1000
RESULT ds 	N_SAMPLES							;SAlidA del IIR

;--------------------------------------
			org 	X:$0
COEFFS equ *
	dc ALPHA*MU	
	dc ALPHA*SIGMA		
	dc GAMMA
	dc -BETA
	dc ALPHA
			org X:$1000
X_TEST equ *								;Defino lA señAl de entrAdA Al IIR
	dc 0.5
	dc 0
	dc 0
	dc 0
	dc 0
	dc 0
	dc 0
	dc 0
	dc 0
	dc 0
	
;--------------------------------------

			org P:$E000
main		move	#COEFFS-1,m0			;Defino modulo de los buffers circulAres
			move	#IIR_ORDER-1,m4		;Defino modulo de los buffers circulAres
			move	#IIR_ORDER-1,m5 		;Defino modulo de los buffers circulAres

			move	#COEFFS,R0				;CArgo direccion de los buffers	
			move	#X_TAPS,R4				
			move	#Y_TAPS,R5				
    
			move	#X_TEST,r1
			move	#RESULT,r2
	
			do		#N_SAMPLES,END1
						move x:(r0),x0	
						move x:(r1)+,y1							;CArgo lA muestrA y el primer coeficiente
						
						mpy	X0,y1,A		X:(R0)+,X0	Y:(R4)+,y0 
						mAc	X0,y0,A		X:(R0)+,X0	Y:(R4),y0 
						mAc	X0,y0,A		X:(R0)+,X0	Y:(R5)+,y0
						mAc	X0,y0,A		X:(R0)+,X0	Y:(R5),y0
						mAc	X0,y0,A		X:(R0)+,X0	Y1,Y:(R4)
						move A,X1 			A,Y:(R5)
						
						move	X1,y:(r2)+												;GuArdo el resultAdo del filtro
BREAKYY			nop
END1
			end main
	
