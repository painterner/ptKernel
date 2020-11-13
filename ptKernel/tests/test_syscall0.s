	.file	"test_syscall0.c"
	.text
	.globl	setsid
	.type	setsid, @function
setsid:
.LFB0:
	.cfi_startproc
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	$66, %edx
	movl	%edx, %eax
#APP
# 18 "tests/test_syscall0.c" 1
	int $0x80
# 0 "" 2
#NO_APP
	movl	%eax, %edx
	testl	%eax, %eax
	js	.L3
.L1:
	rep ret
.L3:
	negl	%edx
	movl	errno@GOT(%ecx), %eax
	movl	%edx, (%eax)
	movl	$-1, %eax
	jmp	.L1
	.cfi_endproc
.LFE0:
	.size	setsid, .-setsid
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	call	setsid
	rep ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.comm	errno,4,4
	.section	.text.__x86.get_pc_thunk.cx,"axG",@progbits,__x86.get_pc_thunk.cx,comdat
	.globl	__x86.get_pc_thunk.cx
	.hidden	__x86.get_pc_thunk.cx
	.type	__x86.get_pc_thunk.cx, @function
__x86.get_pc_thunk.cx:
.LFB2:
	.cfi_startproc
	movl	(%esp), %ecx
	ret
	.cfi_endproc
.LFE2:
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
