# PPCArch.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009B284 - 0x8009B368

glabel PPCMfmsr
/* 098284 8009B284 7C6000A6 */  mfmsr     r3
/* 098288 8009B288 4E800020 */  blr

glabel PPCMtmsr
/* 09828C 8009B28C 7C600124 */  mtmsr     r3
/* 098290 8009B290 4E800020 */  blr

glabel PPCMfhid0
/* 098294 8009B294 7C70FAA6 */  mfspr     r3, HID0
/* 098298 8009B298 4E800020 */  blr

glabel fn_8009B29C
/* 09829C 8009B29C 7C70FBA6 */  mtspr     HID0, r3
/* 0982A0 8009B2A0 4E800020 */  blr

glabel PPCMfl2cr
/* 0982A4 8009B2A4 7C79FAA6 */  mfspr     r3, L2CR
/* 0982A8 8009B2A8 4E800020 */  blr

glabel PPCMtl2cr
/* 0982AC 8009B2AC 7C79FBA6 */  mtspr     L2CR, r3
/* 0982B0 8009B2B0 4E800020 */  blr

glabel PPCMtdec
/* 0982B4 8009B2B4 7C7603A6 */  mtdec     r3
/* 0982B8 8009B2B8 4E800020 */  blr

glabel fn_8009B2BC
/* 0982BC 8009B2BC 44000002 */  sc
/* 0982C0 8009B2C0 4E800020 */  blr

glabel PPCHalt
/* 0982C4 8009B2C4 7C0004AC */  sync
lbl_8009B2C8:
/* 0982C8 8009B2C8 60000000 */  nop
/* 0982CC 8009B2CC 38600000 */  li        r3, 0x0
/* 0982D0 8009B2D0 60000000 */  nop
/* 0982D4 8009B2D4 4BFFFFF4 */  b         lbl_8009B2C8

glabel PPCMffpscr
/* 0982D8 8009B2D8 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0982DC 8009B2DC DBE10010 */  stfd      f31, 0x10(r1)
/* 0982E0 8009B2E0 FFE0048E */  mffs      f31
/* 0982E4 8009B2E4 DBE10008 */  stfd      f31, 0x8(r1)
/* 0982E8 8009B2E8 8061000C */  lwz       r3, 0xc(r1)
/* 0982EC 8009B2EC CBE10010 */  lfd       f31, 0x10(r1)
/* 0982F0 8009B2F0 38210018 */  addi      r1, r1, 0x18
/* 0982F4 8009B2F4 4E800020 */  blr

glabel PPCMtfpscr
/* 0982F8 8009B2F8 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0982FC 8009B2FC DBE10018 */  stfd      f31, 0x18(r1)
/* 098300 8009B300 38800000 */  li        r4, 0x0
/* 098304 8009B304 90810010 */  stw       r4, 0x10(r1)
/* 098308 8009B308 90610014 */  stw       r3, 0x14(r1)
/* 09830C 8009B30C CBE10010 */  lfd       f31, 0x10(r1)
/* 098310 8009B310 FDFEFD8E */  mtfsf     255, f31
/* 098314 8009B314 CBE10018 */  lfd       f31, 0x18(r1)
/* 098318 8009B318 38210020 */  addi      r1, r1, 0x20
/* 09831C 8009B31C 4E800020 */  blr

glabel PPCMfhid2
/* 098320 8009B320 7C78E2A6 */  mfspr     r3, HID2
/* 098324 8009B324 4E800020 */  blr

glabel PPCMthid2
/* 098328 8009B328 7C78E3A6 */  mtspr     HID2, r3
/* 09832C 8009B32C 4E800020 */  blr

glabel PPCMtwpar
/* 098330 8009B330 7C79E3A6 */  mtspr     WPAR, r3
/* 098334 8009B334 4E800020 */  blr

glabel PPCDisableSpeculation
/* 098338 8009B338 7C0802A6 */  mflr      r0
/* 09833C 8009B33C 90010004 */  stw       r0, 0x4(r1)
/* 098340 8009B340 9421FFF8 */  stwu      r1, -0x8(r1)
/* 098344 8009B344 4BFFFF51 */  bl        PPCMfhid0
/* 098348 8009B348 60630200 */  ori       r3, r3, 0x200
/* 09834C 8009B34C 4BFFFF51 */  bl        fn_8009B29C
/* 098350 8009B350 8001000C */  lwz       r0, 0xc(r1)
/* 098354 8009B354 38210008 */  addi      r1, r1, 0x8
/* 098358 8009B358 7C0803A6 */  mtlr      r0
/* 09835C 8009B35C 4E800020 */  blr

glabel PPCSetFpNonIEEEMode
/* 098360 8009B360 FFA0004C */  mtfsb1    cr7gt
/* 098364 8009B364 4E800020 */  blr
