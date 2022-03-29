# prog.s

.global _start

.section .text
_start:
    addi a7, zero, 64   /* write */
    addi a0, zero, 1    /* stdout */
    la a1, message
    addi a2, zero, 14   /* length */
    ecall               /* syscall */
    
    addi a7, zero, 93   /* exit process */
    addi a0, zero, 0    /* exit code */
    ecall               /* syscall */

.section .data
message:
    .ascii "Bigsby, here!\n"

