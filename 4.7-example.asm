; Simple example from 4.7 (Pg. 51) of x86-64 Assembly Language Programming with Ubuntu
; ************************************************************************************
; data declarations
section	.data
; define constants
EXIT_SUCCESS	equ	0	; successful operation
SYS_exit	equ	60	; call code for terminate

; byte (8-bit) variable declarations
bVar1	db	17
bVar2	db	9
bResult db	0

; word (16-bit) variable declarations
wVar1	dw	17000
wVar2	dw	9000
wResult	dw	0

; double-word (32-bit) variable declarations
dVar1	dd	17000000
dVar2	dd	9000000
dResult	dd	0

; quad-word (64-bit) variable declarations
qVar1	dq	170000000
qVar2	dq	90000000
qResult	dq	0

;
