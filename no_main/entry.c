#include <unistd.h>

#define EXIT(code) \
    __asm__( \
        "mov $60, %rax\n"           /* exit syscall */ \
        "mov $" #code ", %rdi\n"    /* set exit code */ \
        "syscall");

int entry(void)
{
    write(1, "In entry!\n", 10);
    EXIT(0)
}
