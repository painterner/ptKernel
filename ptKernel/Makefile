AS86	=as -0 -a
CC86	=cc -0
LD86	=ld -0

AS	=as
ASFLAGS =--32
# AS = gas
LD	=gld
LDFLAGS	=-s -x -M
CC	=gcc
# CFLAGS	=-Wall -O -fstrength-reduce -fomit-frame-pointer -fcombine-regs -D32_BIT
#pterror gcc: error: unrecognized command line option ‘-fcombine-regs’; did you mean ‘-Wcompare-reals’?
#pterror <command-line>:0:1: error: macro names must be identifiers (-D32_BIT)
CFLAGS	=-Wall -O -fstrength-reduce -fomit-frame-pointer -Wcompare-reals -m32
CPP	=gcc -E -nostdinc -Iinclude

ARCHIVES=kernel/kernel.o mm/mm.o fs/fs.o
LIBS	=lib/lib.a

.c.s:
	$(CC) $(CFLAGS) \
	-nostdinc -Iinclude -S -o $*.s $<

all: tests/test_io.s tests/test_syscall0.s

tests/test_io.s: tests/test_io.c

tests/test_syscall0.s: tests/test_syscall0.c