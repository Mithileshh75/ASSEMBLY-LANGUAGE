section .data
	msg1 db 'Enter your name : ' , 10
	len1 equ $-msg1
	
	msg2 db 'Enter your roll : ' , 10 
	len2 equ $-msg2

	msg3 db 'Entered Name & Roll no is : ' , 10
	len3 equ $-msg3

		
	section .bss 	
	name1 resb 10
	rollno resb 10

	
	section .text
	global _start 
	_start : 


	%macro rw 4
	mov eax , %1
	mov ebx , %2
	mov ecx , %3
	mov edx , %4
	int 80h
	%endmacro

	rw 4 , 1 , msg1 , len1 
	rw 3 , 0 , name1 , 10

	rw 4 , 1 , msg2 , len2 
	rw 3 , 0 , rollno , 10

	rw 4 , 1 , msg3 , len3
	rw 4 , 1 , name1 , 10
	rw 4 , 1 , rollno , 10

	mov eax , 1 
	mov ebx , 0 
	int 80h