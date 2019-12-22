global	start
section	.data
	msg:	db	"Assalamu Alaikum!", 10, 0
    	.len:	equ	$ - msg
section	.text
start:
	mov	rax,	0x02000004
	mov	rdi,	1
	mov	rsi,	msg
	mov	rdx,	msg.len
	syscall

	mov	rax,	0x02000001
	mov	rdi,	0
	syscall
