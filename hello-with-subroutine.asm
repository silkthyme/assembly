; In this modification of the "Hello, World!" code, the part of the code that prints
; "Hello, World!" was moved into its own section, and that section was called.
section .data
	text db "Hello, world!",10

section .text
	global _start

_start:
	call _printHello
	
	mov rax, 60
	mov rdi, 0
	syscall

; subroutine
_printHello:
	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, 1
	syscall
	; returns to the original position (call _printHello)
	; essentially the same as jump except it returns to where the call was made
	ret
