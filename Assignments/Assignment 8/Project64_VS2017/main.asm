ExitProcess proto
WriteInt64 proto
Crlf proto

.data
decCon1 DWORD  11111111111111111111111111111110b
decCon2 SDWORD 11111111111111111111111111111110b
decCon3 DWORD  00000000000000000000000011111110b
decCon4 SDWORD 00000000000000000000000011111110b

.code
main proc
	mov rcx,32
	CONVER1:
		
	loop CONVER1

	call WriteInt64		;prints the converted number, used after each loop
	call Crlf
	
	mov rax,0	;reset rax
	mov rcx,32
	CONVER2:
		
	loop CONVER2

	call WriteInt64		;prints the converted number, used after each loop
	call Crlf

	mov rax,0
	mov rcx,32
	CONVER3:
		
	loop CONVER3

	call WriteInt64		;prints the converted number, used after each loop
	call Crlf

	mov rax,0
	mov rcx,32
	CONVER4:
		
	loop COnVER4

	call WriteInt64		;prints the converted number, used after each loop
	call Crlf

	call ExitProcess
main endp
end