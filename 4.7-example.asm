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

; ************************************************************************************
; code section
section	.text
global _start
_start:
	; performs a series of basic addition operations
	
	; byte example
	; bResult = bVar1 + bVar2
	mov	al, byte [bVar1]
	add	al, byte [bVar2]
	mov 	byte [bResult], al

	; word example
	; wResult = wVar1 + wVar2
	mov	ax, word [wVar1]
	add	ax, word [wVar2]
	mov	word [wResult], ax

	; double-word example
	; dResult = dVar1 + dVar2
	mov 	eax, dword [dVar1]
	add	eax, dword [dVar2]
	mov	dword [dResult], eax

	; quad-word example
	; qResult = qVar1 + qVar2
	mov	rax, qword [qVar1]
	add	rax, qword [qVar2]
	mov	qword [qResult], rax
	
; ************************************************************************************
; done, terminate program
last:
	mov	rax, SYS_exit		; call code for exit
	mov 	rdi, EXIT_SUCCESS	; exit program with success
	syscall

