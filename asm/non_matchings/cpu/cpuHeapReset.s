glabel cpuHeapReset
/* 02ECE8 80034288 2C040000 */  cmpwi   r4, 0
/* 02ECEC 8003428C 38C00000 */  li      r6, 0
/* 02ECF0 80034290 4081007C */  ble     lbl_8003430C
/* 02ECF4 80034294 2C040008 */  cmpwi   r4, 8
/* 02ECF8 80034298 38A4FFF8 */  addi    r5, r4, -8
/* 02ECFC 8003429C 40810078 */  ble     lbl_80034314
/* 02ED00 800342A0 38050007 */  addi    r0, r5, 7
/* 02ED04 800342A4 5400E8FE */  srwi    r0, r0, 3
/* 02ED08 800342A8 2C050000 */  cmpwi   r5, 0
/* 02ED0C 800342AC 7C0903A6 */  mtctr   r0
/* 02ED10 800342B0 38A30000 */  addi    r5, r3, 0
/* 02ED14 800342B4 38000000 */  li      r0, 0
/* 02ED18 800342B8 4081005C */  ble     lbl_80034314
lbl_800342BC:
/* 02ED1C 800342BC 90050000 */  stw     r0, 0(r5)
/* 02ED20 800342C0 38C60008 */  addi    r6, r6, 8
/* 02ED24 800342C4 90050004 */  stw     r0, 4(r5)
/* 02ED28 800342C8 90050008 */  stw     r0, 8(r5)
/* 02ED2C 800342CC 9005000C */  stw     r0, 0xc(r5)
/* 02ED30 800342D0 90050010 */  stw     r0, 0x10(r5)
/* 02ED34 800342D4 90050014 */  stw     r0, 0x14(r5)
/* 02ED38 800342D8 90050018 */  stw     r0, 0x18(r5)
/* 02ED3C 800342DC 9005001C */  stw     r0, 0x1c(r5)
/* 02ED40 800342E0 38A50020 */  addi    r5, r5, 0x20
/* 02ED44 800342E4 4200FFD8 */  bdnz    lbl_800342BC
/* 02ED48 800342E8 4800002C */  b       lbl_80034314
lbl_800342EC:
/* 02ED4C 800342EC 7C062050 */  subf    r0, r6, r4
/* 02ED50 800342F0 7C062000 */  cmpw    r6, r4
/* 02ED54 800342F4 7C0903A6 */  mtctr   r0
/* 02ED58 800342F8 38000000 */  li      r0, 0
/* 02ED5C 800342FC 40800010 */  bge     lbl_8003430C
lbl_80034300:
/* 02ED60 80034300 90030000 */  stw     r0, 0(r3)
/* 02ED64 80034304 38630004 */  addi    r3, r3, 4
/* 02ED68 80034308 4200FFF8 */  bdnz    lbl_80034300
lbl_8003430C:
/* 02ED6C 8003430C 38600001 */  li      r3, 1
/* 02ED70 80034310 4E800020 */  blr     
lbl_80034314:
/* 02ED74 80034314 54C0103A */  slwi    r0, r6, 2
/* 02ED78 80034318 7C630214 */  add     r3, r3, r0
/* 02ED7C 8003431C 4BFFFFD0 */  b       lbl_800342EC
/* 02ED80 80034320 4E800020 */  blr     