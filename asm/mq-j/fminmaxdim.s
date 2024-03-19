# fminmaxdim.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800D04A0 - 0x800D0520

# __fpclassifyd(double)
glabel __fpclassifyd__Fd
/* 0CD4A0 800D04A0 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0CD4A4 800D04A4 3C007FF0 */  lis       r0, 0x7ff0
/* 0CD4A8 800D04A8 D8210008 */  stfd      f1, 0x8(r1)
/* 0CD4AC 800D04AC 80810008 */  lwz       r4, 0x8(r1)
/* 0CD4B0 800D04B0 54830056 */  rlwinm    r3, r4, 0, 1, 11
/* 0CD4B4 800D04B4 7C030000 */  cmpw      r3, r0
/* 0CD4B8 800D04B8 41820014 */  beq       lbl_800D04CC
/* 0CD4BC 800D04BC 40800058 */  bge       lbl_800D0514
/* 0CD4C0 800D04C0 2C030000 */  cmpwi     r3, 0x0
/* 0CD4C4 800D04C4 4182002C */  beq       lbl_800D04F0
/* 0CD4C8 800D04C8 4800004C */  b         lbl_800D0514
lbl_800D04CC:
/* 0CD4CC 800D04CC 5480033F */  clrlwi.   r0, r4, 12
/* 0CD4D0 800D04D0 40820010 */  bne       lbl_800D04E0
/* 0CD4D4 800D04D4 8001000C */  lwz       r0, 0xc(r1)
/* 0CD4D8 800D04D8 2C000000 */  cmpwi     r0, 0x0
/* 0CD4DC 800D04DC 4182000C */  beq       lbl_800D04E8
lbl_800D04E0:
/* 0CD4E0 800D04E0 38600001 */  li        r3, 0x1
/* 0CD4E4 800D04E4 48000034 */  b         lbl_800D0518
lbl_800D04E8:
/* 0CD4E8 800D04E8 38600002 */  li        r3, 0x2
/* 0CD4EC 800D04EC 4800002C */  b         lbl_800D0518
lbl_800D04F0:
/* 0CD4F0 800D04F0 5480033F */  clrlwi.   r0, r4, 12
/* 0CD4F4 800D04F4 40820010 */  bne       lbl_800D0504
/* 0CD4F8 800D04F8 8001000C */  lwz       r0, 0xc(r1)
/* 0CD4FC 800D04FC 2C000000 */  cmpwi     r0, 0x0
/* 0CD500 800D0500 4182000C */  beq       lbl_800D050C
lbl_800D0504:
/* 0CD504 800D0504 38600005 */  li        r3, 0x5
/* 0CD508 800D0508 48000010 */  b         lbl_800D0518
lbl_800D050C:
/* 0CD50C 800D050C 38600003 */  li        r3, 0x3
/* 0CD510 800D0510 48000008 */  b         lbl_800D0518
lbl_800D0514:
/* 0CD514 800D0514 38600004 */  li        r3, 0x4
lbl_800D0518:
/* 0CD518 800D0518 38210010 */  addi      r1, r1, 0x10
/* 0CD51C 800D051C 4E800020 */  blr
