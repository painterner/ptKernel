#define outb(value,port) \
__asm__ ("outb %%al,%%dx"::"a" (value),"d" (port))

#define outb_p(value,port) \
__asm__ ("outb %%al,%%dx\n" \
		"\tjmp 1f\n" \
		"1:\tjmp 1f\n" \
		"1:"::"a" (value),"d" (port))

#define inb_p(port) ({ \
unsigned char _v; \
__asm__ volatile ("inb %%dx,%%al\n" \
	"\tjmp 1f\n" \
	"1:\tjmp 1f\n" \
	"1:":"=a" (_v):"d" (port)); \
_v; \
})

// assumpation:
// a 代表了 eax(qax), d 代表edx(qdx)
// 第一个"1:"代表这个标记(1f?), 第二个"1:"::... 代表输入约束。 两者没有任何关系?

void main() {
    outb_p(100, 200);
    inb_p(100);
}