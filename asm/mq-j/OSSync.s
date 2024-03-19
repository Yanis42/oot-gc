# OSSync.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A028C - 0x800A0310
.sym __OSSystemCallVectorStart, global

SystemCallVector:
/* 09D28C 800A028C 7D30FAA6 */  mfspr     r9, HID0
/* 09D290 800A0290 612A0008 */  ori       r10, r9, 0x8
/* 09D294 800A0294 7D50FBA6 */  mtspr     HID0, r10
/* 09D298 800A0298 4C00012C */  isync
/* 09D29C 800A029C 7C0004AC */  sync
/* 09D2A0 800A02A0 7D30FBA6 */  mtspr     HID0, r9
/* 09D2A4 800A02A4 4C000064 */  rfi
.sym __OSSystemCallVectorEnd, global
/* 09D2A8 800A02A8 60000000 */  nop

glabel __OSInitSystemCall
/* 09D2AC 800A02AC 7C0802A6 */  mflr      r0
/* 09D2B0 800A02B0 90010004 */  stw       r0, 0x4(r1)
/* 09D2B4 800A02B4 9421FFF0 */  stwu      r1, -0x10(r1)
/* 09D2B8 800A02B8 93E1000C */  stw       r31, 0xc(r1)
/* 09D2BC 800A02BC 3CA08000 */  lis       r5, 0x8000
/* 09D2C0 800A02C0 3C80800A */  lis       r4, __OSSystemCallVectorStart@ha
/* 09D2C4 800A02C4 3C60800A */  lis       r3, __OSSystemCallVectorEnd@ha
/* 09D2C8 800A02C8 3BE50C00 */  addi      r31, r5, 0xc00
/* 09D2CC 800A02CC 380302A8 */  addi      r0, r3, __OSSystemCallVectorEnd@l
/* 09D2D0 800A02D0 3884028C */  addi      r4, r4, __OSSystemCallVectorStart@l
/* 09D2D4 800A02D4 7FE3FB78 */  mr        r3, r31
/* 09D2D8 800A02D8 7CA40050 */  subf      r5, r4, r0
/* 09D2DC 800A02DC 4BF65139 */  bl        memcpy
/* 09D2E0 800A02E0 7FE3FB78 */  mr        r3, r31
/* 09D2E4 800A02E4 38800100 */  li        r4, 0x100
/* 09D2E8 800A02E8 4BFFCA3D */  bl        DCFlushRangeNoSync
/* 09D2EC 800A02EC 7C0004AC */  sync
/* 09D2F0 800A02F0 7FE3FB78 */  mr        r3, r31
/* 09D2F4 800A02F4 38800100 */  li        r4, 0x100
/* 09D2F8 800A02F8 4BFFCA85 */  bl        ICInvalidateRange
/* 09D2FC 800A02FC 80010014 */  lwz       r0, 0x14(r1)
/* 09D300 800A0300 83E1000C */  lwz       r31, 0xc(r1)
/* 09D304 800A0304 38210010 */  addi      r1, r1, 0x10
/* 09D308 800A0308 7C0803A6 */  mtlr      r0
/* 09D30C 800A030C 4E800020 */  blr
