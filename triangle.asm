	global	start

section	.data
	text	db	"*"
	newline	db	0x0a

section	.text
start:
	mov	r8,	0
line:
	mov	r9,	0
column:
	mov	rax,	0x02000004
	mov	rdi,	1
	mov	rsi,	text
	mov	rdx,	1
	syscall

        inc	r9
        cmp	r9,	r8
	jle	column

	mov	rax,	0x02000004
	mov	rdi,	1
	mov	rsi,	newline
	mov	rdx,	1
	syscall

	inc	r8
	cmp	r8,	10
	jl	line

	mov	rax,	0x02000001
	xor	rdi,	rdi
	syscall
		
