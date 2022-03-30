#include <stdio.h>

#define EXIT(code) \
    __asm__( \
        "mov $60, %rax\n" \
        "mov $" #code ", %rdi\n" \
        "syscall");

int entry(void)
{
    printf("In entry!\n");
    EXIT(0)
}
