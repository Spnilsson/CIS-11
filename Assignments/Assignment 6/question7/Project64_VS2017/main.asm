ExitProcess proto
Crlf proto
WriteInt64 proto
Random64 proto

.data
.code
main proc
	mov rcx,100
L1:
	call Random64
	call WriteInt64
	call Crlf
	loop L1
   call ExitProcess

main endp
end