; .data section, where all data is defined before compilation
section .data
	; db stands for define bytes, meaning define raw bytes of data to insert
	; "Hello World" is the bytes of data we are defining.
	; Each character in the string of text is a single byte.
	; The "10" is a newline character, "\n"
	; The "text" is a name assigned to the address in memory that this data is located in.
	; The compiler will replace all future instances of "text" with that memory address.
	text db "Hello World!",10

; .text section, where the actual code goes
section .text
	; a "label"
	; The compiler will calculate the location in which the label will sit in memory.
	; Any time the label is used afterwards, the compiler replaces it by the location in memory.
	; The "global" keyword is used when you want the linker to know the address of some label.
	; The .o (object) file generated will contain a link to every label declared "global".
	; In this case, we have to declare "_start" as global since it is required for the code to be properly linked.
	global _start
; The "_start" label is essential for all programs.
; The program is executed at the location of "_start".
; If the linker cannot find "_start", it will throw an error.
_start:
	; sys_write(1, text, 14)
	; move the value 1 into the rax register
	mov rax, 1
	; move the filedescriptor into the rdi register, "1" means stdout
	mov rdi, 1
	; move the memory address of the string into the rsi register
	mov rsi, text
	; move the count into rdx, 13 is the length of "Hello World\n"
	mov rdx, 13
	syscall
	
	; sys_exit(0)
	; sys_exit has an id of 60, move 60 into the rax register
	mov rax, 60
	; move 0, the errorcode, into rdi, indicating there was no error
	mov rdi, 0
	syscall

