; cells program(graphics program) in x86_assembly 16 bit mode. 
; Using qemu-system-i386 and NASM  
; Made by Z0ro70 :)


BITS 16 

org 0x7c00 

start:

		cli 
		mov ah, 0x00 
		mov al, 0x13 
		int 0x10
		jmp l1	


l1:

		mov ah, 0x0c
		add al, 0x30
		mov bh, 0x00
		add cx, 10
		add dx, 10
		dec dx
		int 0x10
		jmp l2

l2:

		mov ah, 0x0c
		add al, 0x30
		mov bh, 0x00
		add cx, 10
		add dx, 10
		inc cx
		int 0x10
		jmp l1

times 510 -($-$$) db 0
dw 0xAA55
