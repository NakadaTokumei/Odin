    .syntax unified
    .cpu cortex-m3
    .thumb

    .section .text.ResetHandler
    .type ResetHandler, %function
ResetHandler:
    bl main
    bx lr