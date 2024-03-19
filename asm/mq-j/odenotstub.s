# odenotstub.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800D1B5C - 0x800D1B64

glabel Hu_IsStub
/* 0CEB5C 800D1B5C 38600000 */  li        r3, 0x0
/* 0CEB60 800D1B60 4E800020 */  blr
