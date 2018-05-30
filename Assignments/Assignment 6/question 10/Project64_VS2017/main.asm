

ExitProcess proto
WriteInt64 proto
Crlf proto

.data
fibonacci QWORD 47 DUP(?)


.code
main proc
	mov rsi, OFFSET fibonacci
	mov rcx,47
	mov rax,0
	call WriteInt64
	call Crlf

	mov [rsi],rax
	add rsi, TYPE fibonacci

	mov rax,1
	call WriteInt64
	call Crlf
	
	mov [rsi],rax
	add rsi, TYPE fibonacci

L1:
	mov rdx, [rsi-16]
	mov rbx, [rsi-8]

	mov rax, rdx
	add rax, rbx
	mov [rsi],rax
	add rsi, TYPE fibonacci
	call WriteInt64
	call Crlf
	
	loop L1
	call ExitProcess

main endp
end