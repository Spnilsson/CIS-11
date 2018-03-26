; AddTwoSum_64.asm - Chapter 3 example.

ExitProcess proto

.data


.code
main proc
	mov	  eax,5
	mov   ebx,6
	mov   ecx,4
	mov   edx,5
	
	add eax,ebx
	
	add ecx,edx
	sub eax,ecx

	call  ExitProcess
main endp
end
