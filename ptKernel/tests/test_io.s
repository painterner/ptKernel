	.file	"test_io.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	movl	$100, %eax
	movl	$200, %edx
#APP
# 24 "tests/test_io.c" 1
	outb %al,%dx
	jmp 1f
1:	jmp 1f
1:
# 0 "" 2
#NO_APP
	movl	%eax, %edx
#APP
# 25 "tests/test_io.c" 1
	inb %dx,%al
	jmp 1f
1:	jmp 1f
1:
# 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
