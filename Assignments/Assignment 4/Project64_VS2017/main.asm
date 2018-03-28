

ExitProcess proto

.data
val1 BYTE 10h
val2 WORD 8000h
val3 DWORD 0FFFFh
val4 WORD 7FFFh


.code
main proc
	add val2,1
	add val4,1

	mov ax,7FF0h
	add al,10h ; a. CF = SF = ZF = OF =
	add ah,1 ; b. CF = SF = ZF = OF =
	add ax,2 ; c. CF = SF = ZF = OF =

   call ExitProcess

main endp
end