; Generated by holtek-gcc v3.19, Thu Jun 13 13:58:09 2024
; 
; Configuration:
;       without long instruction
;       Single ROM, Multi-RAM
;       bits_per_rom_unit:16
;       with mp1
;       with tbhp, address(0x9)
;          Use tabrd-const
;       
;       
;       
; use 'tabrdc' instead of 'tabrd'
;       

#pragma translator "holtek-gcc 4.6.4" "3.19" "build 20130711"
; Rebuild 718

ir equ [2]
mp equ [3]
sbp equ [1]
acc equ [5]
bp equ [4]
tblp equ [7]
tbhp equ [9]
status equ [10]
c equ [10].0
ac equ [10].1
z equ [10].2
ov equ [10].3
intc equ [11]

extern ra:byte
extern rb:byte
extern rc:byte
extern rd:byte
extern re:byte
extern rf:byte
extern rg:byte
extern rh:byte
extern _Crom2Prom:near
extern _Crom2PromNext:near

RAMBANK 0 @HCCINIT, @HCCINIT0

RAMBANK 0 @BITDATASEC, @BITDATASEC1
@HCCINIT	.section 'data'
@HCCINIT0	.section 'data'
@BITDATASEC	 .section 'data'
@BITDATASEC1	 .section 'data'

#pragma debug scope 1 1
	extern __DELAY3:near
	extern __DELAYX3:near
	extern __DELAYX6:near
	extern __DELAYY5:near
	extern __DELAYY3:near
	extern _builtin_holtek_delay_2:byte
___pc equ [64]
public _UART_SoftWareSendByte
#pragma debug scope 2 1
#line 39 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c"
_UART_SoftWareSendByte .section 'code'
_UART_SoftWareSendByte proc
    local _UART_SoftWareSendByte_2 db 1 dup(?)	; 0,1
	mov _UART_SoftWareSendByte_2[0],a
#pragma debug variable 8 2 _UART_SoftWareSendByte_2+0 "TxData"
#line 41 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c"
	clr [64].0
#line 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c"
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193>263690
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	ERRMESSAGE 'the value 193of the argument exceeds the maxinum 263690'
	ENDIF
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193<0
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	ERRMESSAGE 'the value 193 of the argument exceeds the mininum 0'
	ENDIF
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193==0
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	JMP $
	ENDIF
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193==1
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
	ENDIF
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193==2
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
	ENDIF
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193==3
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
	ENDIF
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193<8) AND (193>3)
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAY3 + 7 -193
	ENDIF
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193< 0404h) AND (193>7)
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,193/4-1
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAYX3 + 3 -(193 MOD 4)
	ENDIF
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193< 0x40B) AND (193> 0403h)
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,0 
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAYX6 + 0x40a -193
	ENDIF
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193 >= 0x40b) AND ((((193-9)%0402h)/4+1)>256)
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,(193-9)/0402h
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV _builtin_holtek_delay_2,A
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,0
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAYY5 +5- (((193-9)%0402h)%6)
	ENDIF
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193 >= 0x40b) AND ((((193-9)%0402h)/4+1)<=256)
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,(193-9)/0402h
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV _builtin_holtek_delay_2,A
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,((193-9)%0402h)/4+1
;# 42 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAYY3 +3-(((193-9)%0402h)%4)
	ENDIF
	mov a,8
	mov ra,a
_L5:
#line 47 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c"
	snz _UART_SoftWareSendByte_2[0].0
	jmp _L2
#line 49 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c"
	set [64].0
	jmp _L3
_L2:
#line 53 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c"
	clr [64].0
_L3:
#line 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c"
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193>263690
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	ERRMESSAGE 'the value 193of the argument exceeds the maxinum 263690'
	ENDIF
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193<0
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	ERRMESSAGE 'the value 193 of the argument exceeds the mininum 0'
	ENDIF
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193==0
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	JMP $
	ENDIF
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193==1
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
	ENDIF
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193==2
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
	ENDIF
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193==3
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
	ENDIF
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193<8) AND (193>3)
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAY3 + 7 -193
	ENDIF
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193< 0404h) AND (193>7)
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,193/4-1
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAYX3 + 3 -(193 MOD 4)
	ENDIF
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193< 0x40B) AND (193> 0403h)
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,0 
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAYX6 + 0x40a -193
	ENDIF
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193 >= 0x40b) AND ((((193-9)%0402h)/4+1)>256)
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,(193-9)/0402h
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV _builtin_holtek_delay_2,A
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,0
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAYY5 +5- (((193-9)%0402h)%6)
	ENDIF
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193 >= 0x40b) AND ((((193-9)%0402h)/4+1)<=256)
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,(193-9)/0402h
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV _builtin_holtek_delay_2,A
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,((193-9)%0402h)/4+1
;# 55 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAYY3 +3-(((193-9)%0402h)%4)
	ENDIF
#line 56 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c"
	clr c
	rrc _UART_SoftWareSendByte_2[0]
	sdz ra
	jmp _L5
#line 58 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c"
	set [64].0
#line 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c"
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193>263690
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	ERRMESSAGE 'the value 193of the argument exceeds the maxinum 263690'
	ENDIF
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193<0
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	ERRMESSAGE 'the value 193 of the argument exceeds the mininum 0'
	ENDIF
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193==0
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	JMP $
	ENDIF
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193==1
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
	ENDIF
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193==2
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
	ENDIF
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF 193==3
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	NOP
	ENDIF
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193<8) AND (193>3)
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAY3 + 7 -193
	ENDIF
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193< 0404h) AND (193>7)
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,193/4-1
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAYX3 + 3 -(193 MOD 4)
	ENDIF
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193< 0x40B) AND (193> 0403h)
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,0 
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAYX6 + 0x40a -193
	ENDIF
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193 >= 0x40b) AND ((((193-9)%0402h)/4+1)>256)
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,(193-9)/0402h
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV _builtin_holtek_delay_2,A
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,0
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAYY5 +5- (((193-9)%0402h)%6)
	ENDIF
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	IF (193 >= 0x40b) AND ((((193-9)%0402h)/4+1)<=256)
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,(193-9)/0402h
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV _builtin_holtek_delay_2,A
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	MOV A,((193-9)%0402h)/4+1
;# 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c" 1
	CALL __DELAYY3 +3-(((193-9)%0402h)%4)
	ENDIF
	ret
_UART_SoftWareSendByte endp
#line 59 "C:\Users\EDY\Desktop\工作文档\HT66F018\software_library_ADC_interrupt_example_V11\src\HT8_Simulation_UART.c"
#pragma debug scope 1 1
#pragma debug struct_begin 42 "__pc_bits"
#pragma debug field 21 8 0 1 "__pc0" ;0,1
#pragma debug field 21 8 0 1 "__pc1" ;1,1
#pragma debug field 21 8 0 1 "__pc2" ;2,1
#pragma debug field 21 8 0 5 ;3,5
#pragma debug struct_end
#pragma debug union_begin 43 ""
#pragma debug field 2 42 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 43 1 ___pc "__pc" 1

; 
; Generated by holtek-gcc v3.19, Thu Jun 13 13:58:10 2024
; Rebuild 718
; end of file
