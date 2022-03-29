# prog.s 

.global _start

.section .text
_start:
    mov $1, %rax 
    mov $1, %rdi 
    mov $message, %rsi 
    mov $14, %rdx
    syscall 

    mov $60, %rax
    xor %rdi, %rdi
    syscall 

.section .data
message:
    .ascii "Bigsby, here!\n"

