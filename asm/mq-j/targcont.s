# targcont.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CC33C - 0x800CC370

glabel fn_800CC33C
/* 0C933C 800CC33C 7C0802A6 */  mflr      r0
/* 0C9340 800CC340 38600000 */  li        r3, 0x0
/* 0C9344 800CC344 90010004 */  stw       r0, 0x4(r1)
/* 0C9348 800CC348 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C934C 800CC34C 4BFFF38D */  bl        fn_800CB6D8
/* 0C9350 800CC350 4BFFFF99 */  bl        UnreserveEXI2Port
/* 0C9354 800CC354 4BFFED81 */  bl        fn_800CB0D4
/* 0C9358 800CC358 4BFFFF61 */  bl        ReserveEXI2Port
/* 0C935C 800CC35C 38600000 */  li        r3, 0x0
/* 0C9360 800CC360 38210008 */  addi      r1, r1, 0x8
/* 0C9364 800CC364 80010004 */  lwz       r0, 0x4(r1)
/* 0C9368 800CC368 7C0803A6 */  mtlr      r0
/* 0C936C 800CC36C 4E800020 */  blr
