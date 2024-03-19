# w_pow.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800D0A34 - 0x800D0A54

glabel pow
/* 0CDA34 800D0A34 7C0802A6 */  mflr      r0
/* 0CDA38 800D0A38 90010004 */  stw       r0, 0x4(r1)
/* 0CDA3C 800D0A3C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0CDA40 800D0A40 4BFFF229 */  bl        __ieee754_pow
/* 0CDA44 800D0A44 8001000C */  lwz       r0, 0xc(r1)
/* 0CDA48 800D0A48 38210008 */  addi      r1, r1, 0x8
/* 0CDA4C 800D0A4C 7C0803A6 */  mtlr      r0
/* 0CDA50 800D0A50 4E800020 */  blr
