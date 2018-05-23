ExitProcess proto
WriteInt64 proto
Crlf proto

.data
myArray QWORD 1,2,3,4,5,6,7,8

.code
main proc

	;print array
	mov rcx, LENGTHOF myArray
	mov rsi, 0
	PRINTLOOP:
		mov rax, myArray[rsi * 8]		
		call WriteInt64
		inc rsi
	LOOP PRINTLOOP
	call Crlf

	mov rcx, LENGTHOF myArray / 2
	mov rsi,0
	mov rdi,1
	SWAPPER:
		mov r9,myArray[rsi * 8]
		mov r10,myArray[rdi * 8]
		mov myArray[rsi * 8],r10
		mov myArray[rdi * 8],r9

		add rsi,2
		add rdi,2
	LOOP SWAPPER

	;print array
	mov rcx, LENGTHOF myArray
	mov rsi, 0
	PRINTLOOP2:
		mov rax, myArray[rsi * 8]		
		call WriteInt64
		inc rsi
	LOOP PRINTLOOP2
	call Crlf



	call ExitProcess

main endp
end