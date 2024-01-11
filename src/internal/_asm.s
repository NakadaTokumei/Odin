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