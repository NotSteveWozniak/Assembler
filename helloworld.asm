global _main
extern _printf

section .data
msg db "Hello World!!", 0Dh, 0Ah, 0
section .bss
section .txt
_main:
	push ebp
	mov ebp, esp
	
	push msg
	call _printf
	add esp, 4
	
	
	mov esp, ebp
	pop ebp
ret