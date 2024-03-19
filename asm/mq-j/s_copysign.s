# s_copysign.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800D0688 - 0x800D06B4

glabel copysign
/* 0CD688 800D0688 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0CD68C 800D068C D8210008 */  stfd      f1, 0x8(r1)
/* 0CD690 800D0690 D8410010 */  stfd      f2, 0x10(r1)
/* 0CD694 800D0694 80610008 */  lwz       r3, 0x8(r1)
/* 0CD698 800D0698 80010010 */  lwz       r0, 0x10(r1)
/* 0CD69C 800D069C 54000000 */  clrrwi    r0, r0, 31
/* 0CD6A0 800D06A0 5060007E */  rlwimi    r0, r3, 0, 1, 31
/* 0CD6A4 800D06A4 90010008 */  stw       r0, 0x8(r1)
/* 0CD6A8 800D06A8 C8210008 */  lfd       f1, 0x8(r1)
/* 0CD6AC 800D06AC 38210018 */  addi      r1, r1, 0x18
/* 0CD6B0 800D06B0 4E800020 */  blr
