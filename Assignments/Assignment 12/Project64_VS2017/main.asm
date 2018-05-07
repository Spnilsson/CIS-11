ExitProcess proto

.data
myArray	   QWORD 10,20,30,40
finalArray QWORD 4 DUP(0)
.code
main proc
	
	MOV rcx,4
	MOV rsi,0
	mov r15,8		;mul index


	LOOOP:
	;moves the first second and third items in the array
	MOV rax,rsi
	MUL r15
	MOV rdx, myArray[rax]
	
	;checks if the index is at the point where it would access the final array element
	;and if so moves to a special case for it
	cmp rsi,3
	je HandleLast
	
	MOV finalArray[rax + 8],rdx
	jmp EndLoop	;move to the end of the loop

	HandleLast:
	mov finalArray[0],rdx

	EndLoop:
	inc rsi

	loop LOOOP
	
	call ExitProcess

main endp
end