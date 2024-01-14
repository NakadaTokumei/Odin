    .syntax unified
    .cpu cortex-m3
    .thumb

    .global _LDREXB
    .global _LDREXH
    .global _LDREX

    .section .text._LDREXB
    .type _LDREXB, %function
_LDREXB:
    ldrexb r0, [r0]
    bx lr
    .size _LDREXB, . - _LDREXB

    .section .text._LDREXH
    .type _LDREXH, %function
_LDREXH:
    ldrexh r0, [r0]
    bx lr
    .size _LDREXH, . - _LDREXH

    .section .text._LDREX
    .type _LDREX, %function
_LDREX:
    ldrex r0, [r0]
    bx lr
    .size _LDREX, . - _LDREX

    .section .text._STREXB
    .type _STREXB, %function
_STREXB:
    mov r0, r2
    strexb r0, r1, [r2]
    bx lr
    .size _STREXB, . - _STREXB

    .section .text._STREXH
    .type _STREXH, %function
_STREXH:
    mov r0, r2
    strexh r0, r1, [r2]
    bx lr
    .size _STREXH, . - _STREXH

    .section .text._STREX
    .type _STREX, %function
_STREX:
    mov r0, r2
    strex r0, r1, [r2]
    bx lr
    .size _STREX, . - _STREX


    .section .text._CLREX
    .type _CLREX, %function
_CLREX:
    clrex
    bx lr
    .size _CLREX, . - _CLREX