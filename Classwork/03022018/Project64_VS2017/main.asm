

ExitProcess proto

.data
source BYTE "This is a string",0
target BYTE SIZEOF source DUP('#')

.code
main proc

	;initialize rcx SIZEOF source
	mov rcx, SIZEOF source
	;initialize pointer to last character of source
	mov rax, (SIZEOF source - 1)
	;initialize pointer to first character in target
	mov rbx, 0
	;start loop
	MYLOOP:

	;grab current character in source
	mov dl, [source + rax]
	
	;mov that character to current character in target
	mov [target + rbx], dl
	
	;increment target pointer
	inc rbx
	
	;decrement source pointer
	dec rax

	;end loop
	LOOP MYLOOP
	
   call ExitProcess

main endp
end