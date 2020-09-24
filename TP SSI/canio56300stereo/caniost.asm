;***************************************************************************

      nolist
      include 'ioequ.asm'
      include 'intequ.asm'
      include 'ada_equ.asm'
      include 'vectors.asm'  
	list
  
;******************************************************************************

       org    x:$0

channel_sync	ds	1
Left_ch			equ	0

; Control word for CS4218
CTRL_WD_12      equ     MIN_LEFT_ATTN+MIN_RIGHT_ATTN+LIN2+RIN2
CTRL_WD_34      equ     MIN_LEFT_GAIN+MIN_RIGHT_GAIN




        org     p:$100
START
main
        movep   #$040006,x:M_PCTL  ; PLL 7 X 12.288 = 86.016MHz
        ori     #3,mr              ; mask interrupts
        movec   #0,sp              ; clear hardware stack pointer
        move    #0,omr             ; operating mode 0

;==================

	move    #0,X0
	move    X0,x:channel_sync
	
;========================================
 
        jsr     ada_init           ; initialize codec
  
pipe_loop

	jmp     pipe_loop


right_channel_sr	nop
					rts
					
 
left_channel_sr 	nop
					rts

		include 'ada_init.asm'	; used to include codec initialization routines
		
		include 'interrupts.asm'	; ISRs

        end

