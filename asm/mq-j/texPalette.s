# texPalette.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800C7B34 - 0x800C7C18

glabel TEXGet
/* 0C4B34 800C7B34 80630008 */  lwz       r3, 0x8(r3)
/* 0C4B38 800C7B38 54801838 */  slwi      r0, r4, 3
/* 0C4B3C 800C7B3C 7C630214 */  add       r3, r3, r0
/* 0C4B40 800C7B40 4E800020 */  blr

glabel TEXGetGXTexObjFromPalette
/* 0C4B44 800C7B44 7C0802A6 */  mflr      r0
/* 0C4B48 800C7B48 90010004 */  stw       r0, 0x4(r1)
/* 0C4B4C 800C7B4C 54A01838 */  slwi      r0, r5, 3
/* 0C4B50 800C7B50 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0C4B54 800C7B54 93E1002C */  stw       r31, 0x2c(r1)
/* 0C4B58 800C7B58 93C10028 */  stw       r30, 0x28(r1)
/* 0C4B5C 800C7B5C 3BC40000 */  addi      r30, r4, 0x0
/* 0C4B60 800C7B60 80630008 */  lwz       r3, 0x8(r3)
/* 0C4B64 800C7B64 7FE30214 */  add       r31, r3, r0
/* 0C4B68 800C7B68 809F0000 */  lwz       r4, 0x0(r31)
/* 0C4B6C 800C7B6C 88640021 */  lbz       r3, 0x21(r4)
/* 0C4B70 800C7B70 88040022 */  lbz       r0, 0x22(r4)
/* 0C4B74 800C7B74 7C030040 */  cmplw     r3, r0
/* 0C4B78 800C7B78 4082000C */  bne       lbl_800C7B84
/* 0C4B7C 800C7B7C 39400000 */  li        r10, 0x0
/* 0C4B80 800C7B80 48000008 */  b         lbl_800C7B88
lbl_800C7B84:
/* 0C4B84 800C7B84 39400001 */  li        r10, 0x1
lbl_800C7B88:
/* 0C4B88 800C7B88 813F0000 */  lwz       r9, 0x0(r31)
/* 0C4B8C 800C7B8C 7FC3F378 */  mr        r3, r30
/* 0C4B90 800C7B90 80890008 */  lwz       r4, 0x8(r9)
/* 0C4B94 800C7B94 A0A90002 */  lhz       r5, 0x2(r9)
/* 0C4B98 800C7B98 A0C90000 */  lhz       r6, 0x0(r9)
/* 0C4B9C 800C7B9C 80E90004 */  lwz       r7, 0x4(r9)
/* 0C4BA0 800C7BA0 8109000C */  lwz       r8, 0xc(r9)
/* 0C4BA4 800C7BA4 81290010 */  lwz       r9, 0x10(r9)
/* 0C4BA8 800C7BA8 4BFE37B1 */  bl        GXInitTexObj
/* 0C4BAC 800C7BAC 813F0000 */  lwz       r9, 0x0(r31)
/* 0C4BB0 800C7BB0 3CE04330 */  lis       r7, 0x4330
/* 0C4BB4 800C7BB4 C8428528 */  lfd       f2, D_8018C468@sda21(r0)
/* 0C4BB8 800C7BB8 7FC3F378 */  mr        r3, r30
/* 0C4BBC 800C7BBC 88890021 */  lbz       r4, 0x21(r9)
/* 0C4BC0 800C7BC0 88090022 */  lbz       r0, 0x22(r9)
/* 0C4BC4 800C7BC4 38C00000 */  li        r6, 0x0
/* 0C4BC8 800C7BC8 90810024 */  stw       r4, 0x24(r1)
/* 0C4BCC 800C7BCC 39000000 */  li        r8, 0x0
/* 0C4BD0 800C7BD0 80890014 */  lwz       r4, 0x14(r9)
/* 0C4BD4 800C7BD4 9001001C */  stw       r0, 0x1c(r1)
/* 0C4BD8 800C7BD8 80A90018 */  lwz       r5, 0x18(r9)
/* 0C4BDC 800C7BDC 90E10020 */  stw       r7, 0x20(r1)
/* 0C4BE0 800C7BE0 C069001C */  lfs       f3, 0x1c(r9)
/* 0C4BE4 800C7BE4 90E10018 */  stw       r7, 0x18(r1)
/* 0C4BE8 800C7BE8 C8210020 */  lfd       f1, 0x20(r1)
/* 0C4BEC 800C7BEC C8010018 */  lfd       f0, 0x18(r1)
/* 0C4BF0 800C7BF0 EC211028 */  fsubs     f1, f1, f2
/* 0C4BF4 800C7BF4 88E90020 */  lbz       r7, 0x20(r9)
/* 0C4BF8 800C7BF8 EC401028 */  fsubs     f2, f0, f2
/* 0C4BFC 800C7BFC 4BFE3A19 */  bl        fn_800AB614
/* 0C4C00 800C7C00 80010034 */  lwz       r0, 0x34(r1)
/* 0C4C04 800C7C04 83E1002C */  lwz       r31, 0x2c(r1)
/* 0C4C08 800C7C08 83C10028 */  lwz       r30, 0x28(r1)
/* 0C4C0C 800C7C0C 38210030 */  addi      r1, r1, 0x30
/* 0C4C10 800C7C10 7C0803A6 */  mtlr      r0
/* 0C4C14 800C7C14 4E800020 */  blr

# 0x8018C468 - 0x8018C470
.section .sdata2, "a"

glabel D_8018C468
	.double 4503599627370496
