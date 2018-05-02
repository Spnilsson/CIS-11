ExitProcess proto
Crlf proto
ReadString proto
Str_compare proto
WriteString proto
WriteHex64 proto

.data
menu0 BYTE "Choose an option:",0
menu1 BYTE "1. x AND y",0
menu2 BYTE "2. x OR y",0
menu3 BYTE "3. NOT x",0
menu4 BYTE "4. x XOR y",0
menu5 BYTE "5. Exit",0
entry QWORD "0"
answer1 QWORD "1"
answer2 QWORD "2"
answer3 QWORD "3"
answer4 QWORD "4"

twohexmenu BYTE "Please enter two hexadecimal integers:",0
onehexmenu BYTE "Please enter a hexadecimal integer:",0

hexentry1 QWORD "0"
hexentry2 QWORD "0"


.code
main proc
	
	mov rdx,OFFSET menu0		;outputs the menu options
	call WriteString
	call Crlf

	mov rdx,OFFSET menu1
	call WriteString
	call Crlf
	
	mov rdx,OFFSET menu2
	call WriteString
	call Crlf
	
	mov rdx,OFFSET menu3
	call WriteString
	call Crlf
	
	mov rdx,OFFSET menu4
	call WriteString
	call Crlf
	
	mov rdx,OFFSET menu5
	call WriteString
	call Crlf
		
	mov rcx,2				
	mov rdx,OFFSET entry
	call ReadString
	
	mov rsi,[entry]			;checks to see is the entry = 1 and if so jumps to it
	mov rdi,[answer1]
	call Str_compare
	jz c1
	
	mov rsi,[entry]			;checks to see is the entry = 2 and if so jumps to it
	mov rdi,[answer2]
	call Str_compare
	jz c2
	
	mov rsi,[entry]			;checks to see is the entry = 3 and if so jumps to it
	mov rdi,[answer3]
	call Str_compare
	jz c3
	
	mov rsi,[entry]			;checks to see is the entry = 4 and if so jumps to it
	mov rdi,[answer4]
	call Str_compare
	jz c4

	call ExitProcess

	c1:
	call op1
		
	loop c1

	c2:
	call op2
	
	loop c2

	c3:
	call op3
	
	loop c3

	c4:
	call op4

	loop c4
	

main endp

op1 proc
	mov rdx,OFFSET twohexmenu
	call WriteString
	call Crlf

	mov rcx,3				
	mov rdx,OFFSET hexentry1
	call ReadString

	mov rcx,3
	mov rdx,OFFSET hexentry2
	call ReadString

	mov rax,[hexentry1]

	AND rax,hexentry2
	call WriteHex64

	jmp main
op1 endp

op2 proc
	mov rdx,OFFSET twohexmenu
	call WriteString
	call Crlf

	mov rcx,3				
	mov rdx,OFFSET hexentry1
	call ReadString

	mov rcx,3
	mov rdx,OFFSET hexentry2
	call ReadString

	mov rax,[hexentry1]

	OR rax,hexentry2
	call WriteHex64

	jmp main
op2 endp

op3 proc
	mov rdx,OFFSET onehexmenu
	call WriteString
	call Crlf

	mov rcx,3				
	mov rdx,OFFSET hexentry1
	call ReadString

	MOV rax,[hexentry1]

	NOT rax
	call WriteHex64

	jmp main
op3 endp

op4 proc
	mov rdx,OFFSET twohexmenu
	call WriteString
	call Crlf

	mov rcx,3				
	mov rdx,OFFSET hexentry1
	call ReadString

	mov rcx,3
	mov rdx,OFFSET hexentry2
	call ReadString

	mov rax,[hexentry1]

	XOR rax,hexentry2
	call WriteHex64


	jmp main
op4 endp


end