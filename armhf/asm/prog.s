# prog.s 

.global _start

.section .text
_start:
    mov r7, #0x4        /* write */
    mov r0, #1          /* stdout */
    ldr r1, =message
    mov r2, #14         /* length */
    swi 0               /* syscall */

    mov r7, #0x1        /* exit process */
    mov r0, #0          /* exit code */
    swi 0               /* syscall */

.section .data
message:
    .ascii "Bigsby, here!\n"
