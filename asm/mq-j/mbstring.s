# mbstring.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CD4AC - 0x800CD4E8

glabel wcstombs
/* 0CA4AC 800CD4AC 28050000 */  cmplwi    r5, 0x0
/* 0CA4B0 800CD4B0 7CA903A6 */  mtctr     r5
/* 0CA4B4 800CD4B4 38C00000 */  li        r6, 0x0
/* 0CA4B8 800CD4B8 40810028 */  ble       lbl_800CD4E0
lbl_800CD4BC:
/* 0CA4BC 800CD4BC A0040000 */  lhz       r0, 0x0(r4)
/* 0CA4C0 800CD4C0 38840002 */  addi      r4, r4, 0x2
/* 0CA4C4 800CD4C4 7C050774 */  extsb     r5, r0
/* 0CA4C8 800CD4C8 7CA00775 */  extsb.    r0, r5
/* 0CA4CC 800CD4CC 98A30000 */  stb       r5, 0x0(r3)
/* 0CA4D0 800CD4D0 38630001 */  addi      r3, r3, 0x1
/* 0CA4D4 800CD4D4 4182000C */  beq       lbl_800CD4E0
/* 0CA4D8 800CD4D8 38C60001 */  addi      r6, r6, 0x1
/* 0CA4DC 800CD4DC 4200FFE0 */  bdnz      lbl_800CD4BC
lbl_800CD4E0:
/* 0CA4E0 800CD4E0 7CC33378 */  mr        r3, r6
/* 0CA4E4 800CD4E4 4E800020 */  blr
