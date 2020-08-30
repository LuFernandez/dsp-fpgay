N_SAMPLES equ 3
NCOEFFS equ 3
;--------------------------------------
			org	Y:$0
FIRCOEF equ *							;Defino el FIR a implementar
	dc 0.25
	dc 0.5
	dc 0.125

			org Y:$1000
ANS DS N_SAMPLES	;Defino el buffer de salida del FIR
;--------------------------------------
			org X:$0
X_TAPS DS NCOEFFS
			org X:$1000
X_TEST equ *								;Defino la señal de entrada al FIR
	dc 1
	dc 0
	dc 0
;--------------------------------------
			org P:$E000
main	move	#X_TAPS,r0
			move	#FIRCOEF,r4
			move	#NCOEFFS-1,m0
			move	#NCOEFFS-1,m4

			move	#X_TEST,r1
			move	#ANS,r2
		
			DO		#N_SAMPLES,END1

			move	x:(r1)+,x0

			clr a x0,x:(stepr0)+ y:(r4)+,y0
			rep	#NCOEFFS-1
			mac x0,y0,a x:(r0)+,x0 y:(r4)+,y0
			mac x0,y0,a (r0)-

			move a0,y:(r2)+
END1
			end main