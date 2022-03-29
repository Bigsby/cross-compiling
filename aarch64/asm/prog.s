# prog.s 

.global _start

.section .text
_start:
    mov x8, #0x40        /* write */
    mov x0, #1           /* stdout */ 
    ldr x1, =message 
    mov x2, #14          /* length */
    svc 0                /* syscall */

    mov x8, #0x5d        /* exit process */
    mov x0, #0           /* exit code */
    svc 0                /* syscall */

.section .data
message:
    .ascii "Bigsby, here!\n"

