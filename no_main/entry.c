#include <unistd.h>

#define EXIT(code) \
    __asm__( \
        "mov $60, %rax\n" \
        "mov $" #code ", %rdi\n" \
        "syscall");

int entry(void)
{
    write(1, "In entry!\n", 10);
    EXIT(0)
}
