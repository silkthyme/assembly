section .data
	; db stands for define bytes, meaning define raw bytes of data to insert
	; "Hello World" is the bytes of data we are defining.
	; Each character in the string of text is a single byte.
	; The "10" is a newline character, "\n"
	; The "text" is a name assigned to the address in memory that this data is located in.
	; The compiler will replace all future instances of "text" with that memory address.
	text db "Hello World!",10

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, 14
	syscall

	mov rax, 60
	mov rdi, 0
	syscall

