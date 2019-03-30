# assembly
* Registers
	* part of the processor that temporarily holds memory
	* in the x86_64 architecture, registers hold 64 bits.
* Each register can hold the values:
	* unsigned: 0 - 18,446,744,073,709,551,616
	* signed: -9,223,372,036,854,775,808 - 9,223,372,036,854,775,807
	* registers hold integer values, whole numbers
* System Call
	* syscall = when a program requests a service from the kernel
	* differ by operating system, diff OS's use diff kernels
	* all syscalls have an ID associated with them
	* syscalls also take arguments
* sys_write
	* File Descriptor: 0 = Standard Input, 1 = Standard Output, 2 = Standard Error
	* Buffer: Location of string to write
	* Count: Length of string
* Flags
	* like registers, hold data
	* only hold 1 bit each (0 or 1)
	* individual flags are part of a larger register
	* CF = Carry, PF = Parity, ZF = zero, SF = sign, OF = overflow, AF = adjust, IF = interrupt enabled
* Pointers
	* like registers, hold data
	* hold data's memory address
	* rip (eip, ip) = index pointer, points to next address to be executed in the control flow
	* rsp (esp, sp) = stack pointer, points to the top address of the stack
	* rbp (ebp, bp) = stack base pointer, points to the bottom of the stack
* Control Flow
	* The rip register holds the address of the next instruction to be executed.
	* After each instruction, it is incremented by 1, making the control flow naturally flow from top to bottom. 
* Jumps
	* jump to different parts of code based on labels
	* divert program flow
	* format: jmp label (loads the value "label" into the rip register)
	* ex. _start: jmp _start (infinite loop)
* Comparisons
	* allow programs to take different paths based on certain conditions
	* comparisons are done on registers
	* format: cmp register, register/value
	* ex. cmp rax, 23
	* ex2. cmp rax, rbx
* Conditional Jumps
	* signed comparisons by default
	* je = jump if first is equal to second
	* jne = jump if first is not equal to second
	* jg = jump if first is greater than second
	* jge = jump if first is greater than or equal to second
	* jl = jump if first is less than second
	* jle = jump if first is less than or equal to second
	* jz = jump if first is equal to zero
	* jnz = jump if first is not equal to zero
	* jo = jump if overflow occured
	* jno = jump if overflow did not occur
	* js = jump if signed
	* jns = jump if not signed
* 64-bit
	* rax
	* rbx
	* rcx
	* rdx
	* rsi
	* rdi
	* rbp
	* rsp
	* r8
	* r9
	* r10
	* r11
	* r12
	* r13
	* r14
	* r15
* 32-bit
	* eax
	* ebx
	* ecx
	* edx
	* esi
	* edi
	* ebp
	* esp
	* r8d
	* r9d
	* r10d
	* r11d
	* r12d
	* r13d
	* r14d
	* r15d
* 16-bit
	* ax
	* bx
	* cx
	* dx
	* si
	* di
	* bp
	* sp
	* r8w
	* r9w
	* r10w
	* r11w
	* r12w
	* r13w
	* r14w
	* r15w
* 8-bit
	* al
	* bl
	* cl
	* dl
	* sil
	* dil
	* bpl
	* spl
	* r8b
	* r9b
	* r10b
	* r11b
	* r12b
	* r13b
	* r14b
	* r15b
# How to compile and run
* nasm -f elf64 -o hello.o hello.asm
	* this generates the object file
* ld hello.o -o hello
	* link the object file using a linker to make it an executable file
	* GNU linker = ld

