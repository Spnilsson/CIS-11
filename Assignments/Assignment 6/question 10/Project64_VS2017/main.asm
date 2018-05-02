

ExitProcess proto
WriteInt64 proto
Crlf proto

.data


.code
main proc
	mov rcx,47
	mov rax,0
	mov rbx,1
	mov r8,0
	mov r9,0
	
L1:
	mov r8,r9
	add r8,rbx
	mov rax,r8

	call WriteInt64
	call Crlf

	mov r9,rbx
	mov rbx,r8


	loop L1
   call ExitProcess

main endp
end