# OSMutex.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009EFB0 - 0x8009F020

glabel __OSUnlockAllMutex
/* 09BFB0 8009EFB0 7C0802A6 */  mflr      r0
/* 09BFB4 8009EFB4 90010004 */  stw       r0, 0x4(r1)
/* 09BFB8 8009EFB8 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09BFBC 8009EFBC 93E10014 */  stw       r31, 0x14(r1)
/* 09BFC0 8009EFC0 3BE00000 */  li        r31, 0x0
/* 09BFC4 8009EFC4 93C10010 */  stw       r30, 0x10(r1)
/* 09BFC8 8009EFC8 3BC30000 */  addi      r30, r3, 0x0
/* 09BFCC 8009EFCC 48000030 */  b         lbl_8009EFFC
lbl_8009EFD0:
/* 09BFD0 8009EFD0 80A40010 */  lwz       r5, 0x10(r4)
/* 09BFD4 8009EFD4 38640000 */  addi      r3, r4, 0x0
/* 09BFD8 8009EFD8 28050000 */  cmplwi    r5, 0x0
/* 09BFDC 8009EFDC 4082000C */  bne       lbl_8009EFE8
/* 09BFE0 8009EFE0 93FE02F8 */  stw       r31, 0x2f8(r30)
/* 09BFE4 8009EFE4 48000008 */  b         lbl_8009EFEC
lbl_8009EFE8:
/* 09BFE8 8009EFE8 93E50014 */  stw       r31, 0x14(r5)
lbl_8009EFEC:
/* 09BFEC 8009EFEC 90BE02F4 */  stw       r5, 0x2f4(r30)
/* 09BFF0 8009EFF0 93E4000C */  stw       r31, 0xc(r4)
/* 09BFF4 8009EFF4 93E40008 */  stw       r31, 0x8(r4)
/* 09BFF8 8009EFF8 48002339 */  bl        OSWakeupThread
lbl_8009EFFC:
/* 09BFFC 8009EFFC 809E02F4 */  lwz       r4, 0x2f4(r30)
/* 09C000 8009F000 28040000 */  cmplwi    r4, 0x0
/* 09C004 8009F004 4082FFCC */  bne       lbl_8009EFD0
/* 09C008 8009F008 8001001C */  lwz       r0, 0x1c(r1)
/* 09C00C 8009F00C 83E10014 */  lwz       r31, 0x14(r1)
/* 09C010 8009F010 83C10010 */  lwz       r30, 0x10(r1)
/* 09C014 8009F014 38210018 */  addi      r1, r1, 0x18
/* 09C018 8009F018 7C0803A6 */  mtlr      r0
/* 09C01C 8009F01C 4E800020 */  blr
