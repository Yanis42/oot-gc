# OSInterrupt.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009E248 - 0x8009EAB4

glabel OSDisableInterrupts
/* 09B248 8009E248 7C6000A6 */  mfmsr     r3
/* 09B24C 8009E24C 5464045E */  rlwinm    r4, r3, 0, 17, 15
/* 09B250 8009E250 7C800124 */  mtmsr     r4
/* 09B254 8009E254 54638FFE */  extrwi    r3, r3, 1, 16
/* 09B258 8009E258 4E800020 */  blr

glabel OSEnableInterrupts
/* 09B25C 8009E25C 7C6000A6 */  mfmsr     r3
/* 09B260 8009E260 60648000 */  ori       r4, r3, 0x8000
/* 09B264 8009E264 7C800124 */  mtmsr     r4
/* 09B268 8009E268 54638FFE */  extrwi    r3, r3, 1, 16
/* 09B26C 8009E26C 4E800020 */  blr

glabel OSRestoreInterrupts
/* 09B270 8009E270 2C030000 */  cmpwi     r3, 0x0
/* 09B274 8009E274 7C8000A6 */  mfmsr     r4
/* 09B278 8009E278 4182000C */  beq       lbl_8009E284
/* 09B27C 8009E27C 60858000 */  ori       r5, r4, 0x8000
/* 09B280 8009E280 48000008 */  b         lbl_8009E288
lbl_8009E284:
/* 09B284 8009E284 5485045E */  rlwinm    r5, r4, 0, 17, 15
lbl_8009E288:
/* 09B288 8009E288 7CA00124 */  mtmsr     r5
/* 09B28C 8009E28C 54838FFE */  extrwi    r3, r4, 1, 16
/* 09B290 8009E290 4E800020 */  blr

glabel __OSSetInterruptHandler
/* 09B294 8009E294 7C600734 */  extsh     r0, r3
/* 09B298 8009E298 806D8B10 */  lwz       r3, InterruptHandlerTable@sda21(r0)
/* 09B29C 8009E29C 5400103A */  slwi      r0, r0, 2
/* 09B2A0 8009E2A0 7CA30214 */  add       r5, r3, r0
/* 09B2A4 8009E2A4 80650000 */  lwz       r3, 0x0(r5)
/* 09B2A8 8009E2A8 90850000 */  stw       r4, 0x0(r5)
/* 09B2AC 8009E2AC 4E800020 */  blr

glabel __OSGetInterruptHandler
/* 09B2B0 8009E2B0 7C600734 */  extsh     r0, r3
/* 09B2B4 8009E2B4 806D8B10 */  lwz       r3, InterruptHandlerTable@sda21(r0)
/* 09B2B8 8009E2B8 5400103A */  slwi      r0, r0, 2
/* 09B2BC 8009E2BC 7C63002E */  lwzx      r3, r3, r0
/* 09B2C0 8009E2C0 4E800020 */  blr

glabel __OSInterruptInit
/* 09B2C4 8009E2C4 7C0802A6 */  mflr      r0
/* 09B2C8 8009E2C8 90010004 */  stw       r0, 0x4(r1)
/* 09B2CC 8009E2CC 9421FFF0 */  stwu      r1, -0x10(r1)
/* 09B2D0 8009E2D0 93E1000C */  stw       r31, 0xc(r1)
/* 09B2D4 8009E2D4 3FE08000 */  lis       r31, 0x8000
/* 09B2D8 8009E2D8 381F3040 */  addi      r0, r31, 0x3040
/* 09B2DC 8009E2DC 900D8B10 */  stw       r0, InterruptHandlerTable@sda21(r0)
/* 09B2E0 8009E2E0 38800000 */  li        r4, 0x0
/* 09B2E4 8009E2E4 38A00080 */  li        r5, 0x80
/* 09B2E8 8009E2E8 806D8B10 */  lwz       r3, InterruptHandlerTable@sda21(r0)
/* 09B2EC 8009E2EC 4BF67035 */  bl        memset
/* 09B2F0 8009E2F0 38000000 */  li        r0, 0x0
/* 09B2F4 8009E2F4 901F00C4 */  stw       r0, 0xc4(r31)
/* 09B2F8 8009E2F8 3C60CC00 */  lis       r3, 0xcc00
/* 09B2FC 8009E2FC 38833000 */  addi      r4, r3, 0x3000
/* 09B300 8009E300 901F00C8 */  stw       r0, 0xc8(r31)
/* 09B304 8009E304 380000F0 */  li        r0, 0xf0
/* 09B308 8009E308 3860FFE0 */  li        r3, -0x20
/* 09B30C 8009E30C 90040004 */  stw       r0, 0x4(r4)
/* 09B310 8009E310 48000301 */  bl        __OSMaskInterrupts
/* 09B314 8009E314 3C60800A */  lis       r3, ExternalInterruptHandler@ha
/* 09B318 8009E318 3883EA64 */  addi      r4, r3, ExternalInterruptHandler@l
/* 09B31C 8009E31C 38600004 */  li        r3, 0x4
/* 09B320 8009E320 4BFFD7F5 */  bl        __OSSetExceptionHandler
/* 09B324 8009E324 80010014 */  lwz       r0, 0x14(r1)
/* 09B328 8009E328 83E1000C */  lwz       r31, 0xc(r1)
/* 09B32C 8009E32C 38210010 */  addi      r1, r1, 0x10
/* 09B330 8009E330 7C0803A6 */  mtlr      r0
/* 09B334 8009E334 4E800020 */  blr

glabel SetInterruptMask
/* 09B338 8009E338 7C600034 */  cntlzw    r0, r3
/* 09B33C 8009E33C 2C00000C */  cmpwi     r0, 0xc
/* 09B340 8009E340 40800024 */  bge       lbl_8009E364
/* 09B344 8009E344 2C000008 */  cmpwi     r0, 0x8
/* 09B348 8009E348 418200FC */  beq       lbl_8009E444
/* 09B34C 8009E34C 40800128 */  bge       lbl_8009E474
/* 09B350 8009E350 2C000005 */  cmpwi     r0, 0x5
/* 09B354 8009E354 4080009C */  bge       lbl_8009E3F0
/* 09B358 8009E358 2C000000 */  cmpwi     r0, 0x0
/* 09B35C 8009E35C 40800028 */  bge       lbl_8009E384
/* 09B360 8009E360 480002AC */  b         lbl_8009E60C
lbl_8009E364:
/* 09B364 8009E364 2C000011 */  cmpwi     r0, 0x11
/* 09B368 8009E368 40800010 */  bge       lbl_8009E378
/* 09B36C 8009E36C 2C00000F */  cmpwi     r0, 0xf
/* 09B370 8009E370 408001A8 */  bge       lbl_8009E518
/* 09B374 8009E374 48000150 */  b         lbl_8009E4C4
lbl_8009E378:
/* 09B378 8009E378 2C00001B */  cmpwi     r0, 0x1b
/* 09B37C 8009E37C 40800290 */  bge       lbl_8009E60C
/* 09B380 8009E380 480001D8 */  b         lbl_8009E558
lbl_8009E384:
/* 09B384 8009E384 54800000 */  clrrwi    r0, r4, 31
/* 09B388 8009E388 28000000 */  cmplwi    r0, 0x0
/* 09B38C 8009E38C 38A00000 */  li        r5, 0x0
/* 09B390 8009E390 40820008 */  bne       lbl_8009E398
/* 09B394 8009E394 60A50001 */  ori       r5, r5, 0x1
lbl_8009E398:
/* 09B398 8009E398 54800042 */  rlwinm    r0, r4, 0, 1, 1
/* 09B39C 8009E39C 28000000 */  cmplwi    r0, 0x0
/* 09B3A0 8009E3A0 40820008 */  bne       lbl_8009E3A8
/* 09B3A4 8009E3A4 60A50002 */  ori       r5, r5, 0x2
lbl_8009E3A8:
/* 09B3A8 8009E3A8 54800084 */  rlwinm    r0, r4, 0, 2, 2
/* 09B3AC 8009E3AC 28000000 */  cmplwi    r0, 0x0
/* 09B3B0 8009E3B0 40820008 */  bne       lbl_8009E3B8
/* 09B3B4 8009E3B4 60A50004 */  ori       r5, r5, 0x4
lbl_8009E3B8:
/* 09B3B8 8009E3B8 548000C6 */  rlwinm    r0, r4, 0, 3, 3
/* 09B3BC 8009E3BC 28000000 */  cmplwi    r0, 0x0
/* 09B3C0 8009E3C0 40820008 */  bne       lbl_8009E3C8
/* 09B3C4 8009E3C4 60A50008 */  ori       r5, r5, 0x8
lbl_8009E3C8:
/* 09B3C8 8009E3C8 54800108 */  rlwinm    r0, r4, 0, 4, 4
/* 09B3CC 8009E3CC 28000000 */  cmplwi    r0, 0x0
/* 09B3D0 8009E3D0 40820008 */  bne       lbl_8009E3D8
/* 09B3D4 8009E3D4 60A50010 */  ori       r5, r5, 0x10
lbl_8009E3D8:
/* 09B3D8 8009E3D8 3C80CC00 */  lis       r4, 0xcc00
/* 09B3DC 8009E3DC 54A0043E */  clrlwi    r0, r5, 16
/* 09B3E0 8009E3E0 38844000 */  addi      r4, r4, 0x4000
/* 09B3E4 8009E3E4 B004001C */  sth       r0, 0x1c(r4)
/* 09B3E8 8009E3E8 5463017E */  clrlwi    r3, r3, 5
/* 09B3EC 8009E3EC 48000220 */  b         lbl_8009E60C
lbl_8009E3F0:
/* 09B3F0 8009E3F0 3CA0CC00 */  lis       r5, 0xcc00
/* 09B3F4 8009E3F4 38A55000 */  addi      r5, r5, 0x5000
/* 09B3F8 8009E3F8 38A5000A */  addi      r5, r5, 0xa
/* 09B3FC 8009E3FC 5480014A */  rlwinm    r0, r4, 0, 5, 5
/* 09B400 8009E400 A0C50000 */  lhz       r6, 0x0(r5)
/* 09B404 8009E404 28000000 */  cmplwi    r0, 0x0
/* 09B408 8009E408 54C6076C */  rlwinm    r6, r6, 0, 29, 22
/* 09B40C 8009E40C 40820008 */  bne       lbl_8009E414
/* 09B410 8009E410 60C60010 */  ori       r6, r6, 0x10
lbl_8009E414:
/* 09B414 8009E414 5480018C */  rlwinm    r0, r4, 0, 6, 6
/* 09B418 8009E418 28000000 */  cmplwi    r0, 0x0
/* 09B41C 8009E41C 40820008 */  bne       lbl_8009E424
/* 09B420 8009E420 60C60040 */  ori       r6, r6, 0x40
lbl_8009E424:
/* 09B424 8009E424 548001CE */  rlwinm    r0, r4, 0, 7, 7
/* 09B428 8009E428 28000000 */  cmplwi    r0, 0x0
/* 09B42C 8009E42C 40820008 */  bne       lbl_8009E434
/* 09B430 8009E430 60C60100 */  ori       r6, r6, 0x100
lbl_8009E434:
/* 09B434 8009E434 54C0043E */  clrlwi    r0, r6, 16
/* 09B438 8009E438 B0050000 */  sth       r0, 0x0(r5)
/* 09B43C 8009E43C 54630208 */  rlwinm    r3, r3, 0, 8, 4
/* 09B440 8009E440 480001CC */  b         lbl_8009E60C
lbl_8009E444:
/* 09B444 8009E444 54800210 */  rlwinm    r0, r4, 0, 8, 8
/* 09B448 8009E448 3C80CC00 */  lis       r4, 0xcc00
/* 09B44C 8009E44C 28000000 */  cmplwi    r0, 0x0
/* 09B450 8009E450 80A46C00 */  lwz       r5, 0x6c00(r4)
/* 09B454 8009E454 3800FFD3 */  li        r0, -0x2d
/* 09B458 8009E458 7CA50038 */  and       r5, r5, r0
/* 09B45C 8009E45C 40820008 */  bne       lbl_8009E464
/* 09B460 8009E460 60A50004 */  ori       r5, r5, 0x4
lbl_8009E464:
/* 09B464 8009E464 3C80CC00 */  lis       r4, 0xcc00
/* 09B468 8009E468 90A46C00 */  stw       r5, 0x6c00(r4)
/* 09B46C 8009E46C 5463024E */  rlwinm    r3, r3, 0, 9, 7
/* 09B470 8009E470 4800019C */  b         lbl_8009E60C
lbl_8009E474:
/* 09B474 8009E474 54800252 */  rlwinm    r0, r4, 0, 9, 9
/* 09B478 8009E478 3CA0CC00 */  lis       r5, 0xcc00
/* 09B47C 8009E47C 28000000 */  cmplwi    r0, 0x0
/* 09B480 8009E480 80A56800 */  lwz       r5, 0x6800(r5)
/* 09B484 8009E484 3800D3F0 */  li        r0, -0x2c10
/* 09B488 8009E488 7CA50038 */  and       r5, r5, r0
/* 09B48C 8009E48C 40820008 */  bne       lbl_8009E494
/* 09B490 8009E490 60A50001 */  ori       r5, r5, 0x1
lbl_8009E494:
/* 09B494 8009E494 54800294 */  rlwinm    r0, r4, 0, 10, 10
/* 09B498 8009E498 28000000 */  cmplwi    r0, 0x0
/* 09B49C 8009E49C 40820008 */  bne       lbl_8009E4A4
/* 09B4A0 8009E4A0 60A50004 */  ori       r5, r5, 0x4
lbl_8009E4A4:
/* 09B4A4 8009E4A4 548002D6 */  rlwinm    r0, r4, 0, 11, 11
/* 09B4A8 8009E4A8 28000000 */  cmplwi    r0, 0x0
/* 09B4AC 8009E4AC 40820008 */  bne       lbl_8009E4B4
/* 09B4B0 8009E4B0 60A50400 */  ori       r5, r5, 0x400
lbl_8009E4B4:
/* 09B4B4 8009E4B4 3C80CC00 */  lis       r4, 0xcc00
/* 09B4B8 8009E4B8 90A46800 */  stw       r5, 0x6800(r4)
/* 09B4BC 8009E4BC 54630310 */  rlwinm    r3, r3, 0, 12, 8
/* 09B4C0 8009E4C0 4800014C */  b         lbl_8009E60C
lbl_8009E4C4:
/* 09B4C4 8009E4C4 3CA0CC00 */  lis       r5, 0xcc00
/* 09B4C8 8009E4C8 38C56800 */  addi      r6, r5, 0x6800
/* 09B4CC 8009E4CC 38C60014 */  addi      r6, r6, 0x14
/* 09B4D0 8009E4D0 54800318 */  rlwinm    r0, r4, 0, 12, 12
/* 09B4D4 8009E4D4 80E60000 */  lwz       r7, 0x0(r6)
/* 09B4D8 8009E4D8 38A0F3F0 */  li        r5, -0xc10
/* 09B4DC 8009E4DC 28000000 */  cmplwi    r0, 0x0
/* 09B4E0 8009E4E0 7CE72838 */  and       r7, r7, r5
/* 09B4E4 8009E4E4 40820008 */  bne       lbl_8009E4EC
/* 09B4E8 8009E4E8 60E70001 */  ori       r7, r7, 0x1
lbl_8009E4EC:
/* 09B4EC 8009E4EC 5480035A */  rlwinm    r0, r4, 0, 13, 13
/* 09B4F0 8009E4F0 28000000 */  cmplwi    r0, 0x0
/* 09B4F4 8009E4F4 40820008 */  bne       lbl_8009E4FC
/* 09B4F8 8009E4F8 60E70004 */  ori       r7, r7, 0x4
lbl_8009E4FC:
/* 09B4FC 8009E4FC 5480039C */  rlwinm    r0, r4, 0, 14, 14
/* 09B500 8009E500 28000000 */  cmplwi    r0, 0x0
/* 09B504 8009E504 40820008 */  bne       lbl_8009E50C
/* 09B508 8009E508 60E70400 */  ori       r7, r7, 0x400
lbl_8009E50C:
/* 09B50C 8009E50C 90E60000 */  stw       r7, 0x0(r6)
/* 09B510 8009E510 546303D6 */  rlwinm    r3, r3, 0, 15, 11
/* 09B514 8009E514 480000F8 */  b         lbl_8009E60C
lbl_8009E518:
/* 09B518 8009E518 3CA0CC00 */  lis       r5, 0xcc00
/* 09B51C 8009E51C 38A56800 */  addi      r5, r5, 0x6800
/* 09B520 8009E520 38A50028 */  addi      r5, r5, 0x28
/* 09B524 8009E524 548003DE */  rlwinm    r0, r4, 0, 15, 15
/* 09B528 8009E528 80C50000 */  lwz       r6, 0x0(r5)
/* 09B52C 8009E52C 28000000 */  cmplwi    r0, 0x0
/* 09B530 8009E530 54C60036 */  clrrwi    r6, r6, 4
/* 09B534 8009E534 40820008 */  bne       lbl_8009E53C
/* 09B538 8009E538 60C60001 */  ori       r6, r6, 0x1
lbl_8009E53C:
/* 09B53C 8009E53C 54800420 */  rlwinm    r0, r4, 0, 16, 16
/* 09B540 8009E540 28000000 */  cmplwi    r0, 0x0
/* 09B544 8009E544 40820008 */  bne       lbl_8009E54C
/* 09B548 8009E548 60C60004 */  ori       r6, r6, 0x4
lbl_8009E54C:
/* 09B54C 8009E54C 90C50000 */  stw       r6, 0x0(r5)
/* 09B550 8009E550 5463045C */  rlwinm    r3, r3, 0, 17, 14
/* 09B554 8009E554 480000B8 */  b         lbl_8009E60C
lbl_8009E558:
/* 09B558 8009E558 54800462 */  rlwinm    r0, r4, 0, 17, 17
/* 09B55C 8009E55C 28000000 */  cmplwi    r0, 0x0
/* 09B560 8009E560 38A000F0 */  li        r5, 0xf0
/* 09B564 8009E564 40820008 */  bne       lbl_8009E56C
/* 09B568 8009E568 60A50800 */  ori       r5, r5, 0x800
lbl_8009E56C:
/* 09B56C 8009E56C 54800528 */  rlwinm    r0, r4, 0, 20, 20
/* 09B570 8009E570 28000000 */  cmplwi    r0, 0x0
/* 09B574 8009E574 40820008 */  bne       lbl_8009E57C
/* 09B578 8009E578 60A50008 */  ori       r5, r5, 0x8
lbl_8009E57C:
/* 09B57C 8009E57C 5480056A */  rlwinm    r0, r4, 0, 21, 21
/* 09B580 8009E580 28000000 */  cmplwi    r0, 0x0
/* 09B584 8009E584 40820008 */  bne       lbl_8009E58C
/* 09B588 8009E588 60A50004 */  ori       r5, r5, 0x4
lbl_8009E58C:
/* 09B58C 8009E58C 548005AC */  rlwinm    r0, r4, 0, 22, 22
/* 09B590 8009E590 28000000 */  cmplwi    r0, 0x0
/* 09B594 8009E594 40820008 */  bne       lbl_8009E59C
/* 09B598 8009E598 60A50002 */  ori       r5, r5, 0x2
lbl_8009E59C:
/* 09B59C 8009E59C 548005EE */  rlwinm    r0, r4, 0, 23, 23
/* 09B5A0 8009E5A0 28000000 */  cmplwi    r0, 0x0
/* 09B5A4 8009E5A4 40820008 */  bne       lbl_8009E5AC
/* 09B5A8 8009E5A8 60A50001 */  ori       r5, r5, 0x1
lbl_8009E5AC:
/* 09B5AC 8009E5AC 54800630 */  rlwinm    r0, r4, 0, 24, 24
/* 09B5B0 8009E5B0 28000000 */  cmplwi    r0, 0x0
/* 09B5B4 8009E5B4 40820008 */  bne       lbl_8009E5BC
/* 09B5B8 8009E5B8 60A50100 */  ori       r5, r5, 0x100
lbl_8009E5BC:
/* 09B5BC 8009E5BC 54800672 */  rlwinm    r0, r4, 0, 25, 25
/* 09B5C0 8009E5C0 28000000 */  cmplwi    r0, 0x0
/* 09B5C4 8009E5C4 40820008 */  bne       lbl_8009E5CC
/* 09B5C8 8009E5C8 60A51000 */  ori       r5, r5, 0x1000
lbl_8009E5CC:
/* 09B5CC 8009E5CC 548004A4 */  rlwinm    r0, r4, 0, 18, 18
/* 09B5D0 8009E5D0 28000000 */  cmplwi    r0, 0x0
/* 09B5D4 8009E5D4 40820008 */  bne       lbl_8009E5DC
/* 09B5D8 8009E5D8 60A50200 */  ori       r5, r5, 0x200
lbl_8009E5DC:
/* 09B5DC 8009E5DC 548004E6 */  rlwinm    r0, r4, 0, 19, 19
/* 09B5E0 8009E5E0 28000000 */  cmplwi    r0, 0x0
/* 09B5E4 8009E5E4 40820008 */  bne       lbl_8009E5EC
/* 09B5E8 8009E5E8 60A50400 */  ori       r5, r5, 0x400
lbl_8009E5EC:
/* 09B5EC 8009E5EC 548006B4 */  rlwinm    r0, r4, 0, 26, 26
/* 09B5F0 8009E5F0 28000000 */  cmplwi    r0, 0x0
/* 09B5F4 8009E5F4 40820008 */  bne       lbl_8009E5FC
/* 09B5F8 8009E5F8 60A52000 */  ori       r5, r5, 0x2000
lbl_8009E5FC:
/* 09B5FC 8009E5FC 3C80CC00 */  lis       r4, 0xcc00
/* 09B600 8009E600 38843000 */  addi      r4, r4, 0x3000
/* 09B604 8009E604 90A40004 */  stw       r5, 0x4(r4)
/* 09B608 8009E608 546306E0 */  rlwinm    r3, r3, 0, 27, 16
lbl_8009E60C:
/* 09B60C 8009E60C 4E800020 */  blr

glabel __OSMaskInterrupts
/* 09B610 8009E610 7C0802A6 */  mflr      r0
/* 09B614 8009E614 90010004 */  stw       r0, 0x4(r1)
/* 09B618 8009E618 9421FFE0 */  stwu      r1, -0x20(r1)
/* 09B61C 8009E61C 93E1001C */  stw       r31, 0x1c(r1)
/* 09B620 8009E620 93C10018 */  stw       r30, 0x18(r1)
/* 09B624 8009E624 93A10014 */  stw       r29, 0x14(r1)
/* 09B628 8009E628 7C7F1B78 */  mr        r31, r3
/* 09B62C 8009E62C 4BFFFC1D */  bl        OSDisableInterrupts
/* 09B630 8009E630 3C808000 */  lis       r4, 0x8000
/* 09B634 8009E634 83A400C4 */  lwz       r29, 0xc4(r4)
/* 09B638 8009E638 7C7E1B78 */  mr        r30, r3
/* 09B63C 8009E63C 80A400C8 */  lwz       r5, 0xc8(r4)
/* 09B640 8009E640 7FA02B78 */  or        r0, r29, r5
/* 09B644 8009E644 7FE30078 */  andc      r3, r31, r0
/* 09B648 8009E648 7FFFEB78 */  or        r31, r31, r29
/* 09B64C 8009E64C 93E400C4 */  stw       r31, 0xc4(r4)
/* 09B650 8009E650 7FFF2B78 */  or        r31, r31, r5
/* 09B654 8009E654 48000004 */  b         lbl_8009E658
lbl_8009E658:
/* 09B658 8009E658 48000004 */  b         lbl_8009E65C
lbl_8009E65C:
/* 09B65C 8009E65C 4800000C */  b         lbl_8009E668
lbl_8009E660:
/* 09B660 8009E660 7FE4FB78 */  mr        r4, r31
/* 09B664 8009E664 4BFFFCD5 */  bl        SetInterruptMask
lbl_8009E668:
/* 09B668 8009E668 28030000 */  cmplwi    r3, 0x0
/* 09B66C 8009E66C 4082FFF4 */  bne       lbl_8009E660
/* 09B670 8009E670 7FC3F378 */  mr        r3, r30
/* 09B674 8009E674 4BFFFBFD */  bl        OSRestoreInterrupts
/* 09B678 8009E678 7FA3EB78 */  mr        r3, r29
/* 09B67C 8009E67C 80010024 */  lwz       r0, 0x24(r1)
/* 09B680 8009E680 83E1001C */  lwz       r31, 0x1c(r1)
/* 09B684 8009E684 83C10018 */  lwz       r30, 0x18(r1)
/* 09B688 8009E688 83A10014 */  lwz       r29, 0x14(r1)
/* 09B68C 8009E68C 38210020 */  addi      r1, r1, 0x20
/* 09B690 8009E690 7C0803A6 */  mtlr      r0
/* 09B694 8009E694 4E800020 */  blr

glabel __OSUnmaskInterrupts
/* 09B698 8009E698 7C0802A6 */  mflr      r0
/* 09B69C 8009E69C 90010004 */  stw       r0, 0x4(r1)
/* 09B6A0 8009E6A0 9421FFE0 */  stwu      r1, -0x20(r1)
/* 09B6A4 8009E6A4 93E1001C */  stw       r31, 0x1c(r1)
/* 09B6A8 8009E6A8 93C10018 */  stw       r30, 0x18(r1)
/* 09B6AC 8009E6AC 93A10014 */  stw       r29, 0x14(r1)
/* 09B6B0 8009E6B0 7C7F1B78 */  mr        r31, r3
/* 09B6B4 8009E6B4 4BFFFB95 */  bl        OSDisableInterrupts
/* 09B6B8 8009E6B8 3C808000 */  lis       r4, 0x8000
/* 09B6BC 8009E6BC 83A400C4 */  lwz       r29, 0xc4(r4)
/* 09B6C0 8009E6C0 7C7E1B78 */  mr        r30, r3
/* 09B6C4 8009E6C4 80A400C8 */  lwz       r5, 0xc8(r4)
/* 09B6C8 8009E6C8 7FA02B78 */  or        r0, r29, r5
/* 09B6CC 8009E6CC 7FE30038 */  and       r3, r31, r0
/* 09B6D0 8009E6D0 7FBFF878 */  andc      r31, r29, r31
/* 09B6D4 8009E6D4 93E400C4 */  stw       r31, 0xc4(r4)
/* 09B6D8 8009E6D8 7FFF2B78 */  or        r31, r31, r5
/* 09B6DC 8009E6DC 48000004 */  b         lbl_8009E6E0
lbl_8009E6E0:
/* 09B6E0 8009E6E0 48000004 */  b         lbl_8009E6E4
lbl_8009E6E4:
/* 09B6E4 8009E6E4 4800000C */  b         lbl_8009E6F0
lbl_8009E6E8:
/* 09B6E8 8009E6E8 7FE4FB78 */  mr        r4, r31
/* 09B6EC 8009E6EC 4BFFFC4D */  bl        SetInterruptMask
lbl_8009E6F0:
/* 09B6F0 8009E6F0 28030000 */  cmplwi    r3, 0x0
/* 09B6F4 8009E6F4 4082FFF4 */  bne       lbl_8009E6E8
/* 09B6F8 8009E6F8 7FC3F378 */  mr        r3, r30
/* 09B6FC 8009E6FC 4BFFFB75 */  bl        OSRestoreInterrupts
/* 09B700 8009E700 7FA3EB78 */  mr        r3, r29
/* 09B704 8009E704 80010024 */  lwz       r0, 0x24(r1)
/* 09B708 8009E708 83E1001C */  lwz       r31, 0x1c(r1)
/* 09B70C 8009E70C 83C10018 */  lwz       r30, 0x18(r1)
/* 09B710 8009E710 83A10014 */  lwz       r29, 0x14(r1)
/* 09B714 8009E714 38210020 */  addi      r1, r1, 0x20
/* 09B718 8009E718 7C0803A6 */  mtlr      r0
/* 09B71C 8009E71C 4E800020 */  blr

glabel __OSDispatchInterrupt
/* 09B720 8009E720 7C0802A6 */  mflr      r0
/* 09B724 8009E724 90010004 */  stw       r0, 0x4(r1)
/* 09B728 8009E728 9421FFD8 */  stwu      r1, -0x28(r1)
/* 09B72C 8009E72C 93E10024 */  stw       r31, 0x24(r1)
/* 09B730 8009E730 93C10020 */  stw       r30, 0x20(r1)
/* 09B734 8009E734 93A1001C */  stw       r29, 0x1c(r1)
/* 09B738 8009E738 7C9E2378 */  mr        r30, r4
/* 09B73C 8009E73C 3C60CC00 */  lis       r3, 0xcc00
/* 09B740 8009E740 83E33000 */  lwz       r31, 0x3000(r3)
/* 09B744 8009E744 57FF041C */  rlwinm    r31, r31, 0, 16, 14
/* 09B748 8009E748 281F0000 */  cmplwi    r31, 0x0
/* 09B74C 8009E74C 41820018 */  beq       lbl_8009E764
/* 09B750 8009E750 38633000 */  addi      r3, r3, 0x3000
/* 09B754 8009E754 80030004 */  lwz       r0, 0x4(r3)
/* 09B758 8009E758 7FE00038 */  and       r0, r31, r0
/* 09B75C 8009E75C 28000000 */  cmplwi    r0, 0x0
/* 09B760 8009E760 4082000C */  bne       lbl_8009E76C
lbl_8009E764:
/* 09B764 8009E764 7FC3F378 */  mr        r3, r30
/* 09B768 8009E768 4BFFEEA9 */  bl        OSLoadContext
lbl_8009E76C:
/* 09B76C 8009E76C 57E00630 */  rlwinm    r0, r31, 0, 24, 24
/* 09B770 8009E770 28000000 */  cmplwi    r0, 0x0
/* 09B774 8009E774 38000000 */  li        r0, 0x0
/* 09B778 8009E778 41820060 */  beq       lbl_8009E7D8
/* 09B77C 8009E77C 3C60CC00 */  lis       r3, 0xcc00
/* 09B780 8009E780 38634000 */  addi      r3, r3, 0x4000
/* 09B784 8009E784 A083001E */  lhz       r4, 0x1e(r3)
/* 09B788 8009E788 548307FE */  clrlwi    r3, r4, 31
/* 09B78C 8009E78C 28030000 */  cmplwi    r3, 0x0
/* 09B790 8009E790 41820008 */  beq       lbl_8009E798
/* 09B794 8009E794 64008000 */  oris      r0, r0, 0x8000
lbl_8009E798:
/* 09B798 8009E798 548307BC */  rlwinm    r3, r4, 0, 30, 30
/* 09B79C 8009E79C 28030000 */  cmplwi    r3, 0x0
/* 09B7A0 8009E7A0 41820008 */  beq       lbl_8009E7A8
/* 09B7A4 8009E7A4 64004000 */  oris      r0, r0, 0x4000
lbl_8009E7A8:
/* 09B7A8 8009E7A8 5483077A */  rlwinm    r3, r4, 0, 29, 29
/* 09B7AC 8009E7AC 28030000 */  cmplwi    r3, 0x0
/* 09B7B0 8009E7B0 41820008 */  beq       lbl_8009E7B8
/* 09B7B4 8009E7B4 64002000 */  oris      r0, r0, 0x2000
lbl_8009E7B8:
/* 09B7B8 8009E7B8 54830738 */  rlwinm    r3, r4, 0, 28, 28
/* 09B7BC 8009E7BC 28030000 */  cmplwi    r3, 0x0
/* 09B7C0 8009E7C0 41820008 */  beq       lbl_8009E7C8
/* 09B7C4 8009E7C4 64001000 */  oris      r0, r0, 0x1000
lbl_8009E7C8:
/* 09B7C8 8009E7C8 548306F6 */  rlwinm    r3, r4, 0, 27, 27
/* 09B7CC 8009E7CC 28030000 */  cmplwi    r3, 0x0
/* 09B7D0 8009E7D0 41820008 */  beq       lbl_8009E7D8
/* 09B7D4 8009E7D4 64000800 */  oris      r0, r0, 0x800
lbl_8009E7D8:
/* 09B7D8 8009E7D8 57E30672 */  rlwinm    r3, r31, 0, 25, 25
/* 09B7DC 8009E7DC 28030000 */  cmplwi    r3, 0x0
/* 09B7E0 8009E7E0 41820040 */  beq       lbl_8009E820
/* 09B7E4 8009E7E4 3C60CC00 */  lis       r3, 0xcc00
/* 09B7E8 8009E7E8 38635000 */  addi      r3, r3, 0x5000
/* 09B7EC 8009E7EC A083000A */  lhz       r4, 0xa(r3)
/* 09B7F0 8009E7F0 54830738 */  rlwinm    r3, r4, 0, 28, 28
/* 09B7F4 8009E7F4 28030000 */  cmplwi    r3, 0x0
/* 09B7F8 8009E7F8 41820008 */  beq       lbl_8009E800
/* 09B7FC 8009E7FC 64000400 */  oris      r0, r0, 0x400
lbl_8009E800:
/* 09B800 8009E800 548306B4 */  rlwinm    r3, r4, 0, 26, 26
/* 09B804 8009E804 28030000 */  cmplwi    r3, 0x0
/* 09B808 8009E808 41820008 */  beq       lbl_8009E810
/* 09B80C 8009E80C 64000200 */  oris      r0, r0, 0x200
lbl_8009E810:
/* 09B810 8009E810 54830630 */  rlwinm    r3, r4, 0, 24, 24
/* 09B814 8009E814 28030000 */  cmplwi    r3, 0x0
/* 09B818 8009E818 41820008 */  beq       lbl_8009E820
/* 09B81C 8009E81C 64000100 */  oris      r0, r0, 0x100
lbl_8009E820:
/* 09B820 8009E820 57E306B4 */  rlwinm    r3, r31, 0, 26, 26
/* 09B824 8009E824 28030000 */  cmplwi    r3, 0x0
/* 09B828 8009E828 4182001C */  beq       lbl_8009E844
/* 09B82C 8009E82C 3C60CC00 */  lis       r3, 0xcc00
/* 09B830 8009E830 80636C00 */  lwz       r3, 0x6c00(r3)
/* 09B834 8009E834 54630738 */  rlwinm    r3, r3, 0, 28, 28
/* 09B838 8009E838 28030000 */  cmplwi    r3, 0x0
/* 09B83C 8009E83C 41820008 */  beq       lbl_8009E844
/* 09B840 8009E840 64000080 */  oris      r0, r0, 0x80
lbl_8009E844:
/* 09B844 8009E844 57E306F6 */  rlwinm    r3, r31, 0, 27, 27
/* 09B848 8009E848 28030000 */  cmplwi    r3, 0x0
/* 09B84C 8009E84C 418200A4 */  beq       lbl_8009E8F0
/* 09B850 8009E850 3C60CC00 */  lis       r3, 0xcc00
/* 09B854 8009E854 80836800 */  lwz       r4, 0x6800(r3)
/* 09B858 8009E858 548307BC */  rlwinm    r3, r4, 0, 30, 30
/* 09B85C 8009E85C 28030000 */  cmplwi    r3, 0x0
/* 09B860 8009E860 41820008 */  beq       lbl_8009E868
/* 09B864 8009E864 64000040 */  oris      r0, r0, 0x40
lbl_8009E868:
/* 09B868 8009E868 54830738 */  rlwinm    r3, r4, 0, 28, 28
/* 09B86C 8009E86C 28030000 */  cmplwi    r3, 0x0
/* 09B870 8009E870 41820008 */  beq       lbl_8009E878
/* 09B874 8009E874 64000020 */  oris      r0, r0, 0x20
lbl_8009E878:
/* 09B878 8009E878 54830528 */  rlwinm    r3, r4, 0, 20, 20
/* 09B87C 8009E87C 28030000 */  cmplwi    r3, 0x0
/* 09B880 8009E880 41820008 */  beq       lbl_8009E888
/* 09B884 8009E884 64000010 */  oris      r0, r0, 0x10
lbl_8009E888:
/* 09B888 8009E888 3C60CC00 */  lis       r3, 0xcc00
/* 09B88C 8009E88C 38636800 */  addi      r3, r3, 0x6800
/* 09B890 8009E890 80830014 */  lwz       r4, 0x14(r3)
/* 09B894 8009E894 548307BC */  rlwinm    r3, r4, 0, 30, 30
/* 09B898 8009E898 28030000 */  cmplwi    r3, 0x0
/* 09B89C 8009E89C 41820008 */  beq       lbl_8009E8A4
/* 09B8A0 8009E8A0 64000008 */  oris      r0, r0, 0x8
lbl_8009E8A4:
/* 09B8A4 8009E8A4 54830738 */  rlwinm    r3, r4, 0, 28, 28
/* 09B8A8 8009E8A8 28030000 */  cmplwi    r3, 0x0
/* 09B8AC 8009E8AC 41820008 */  beq       lbl_8009E8B4
/* 09B8B0 8009E8B0 64000004 */  oris      r0, r0, 0x4
lbl_8009E8B4:
/* 09B8B4 8009E8B4 54830528 */  rlwinm    r3, r4, 0, 20, 20
/* 09B8B8 8009E8B8 28030000 */  cmplwi    r3, 0x0
/* 09B8BC 8009E8BC 41820008 */  beq       lbl_8009E8C4
/* 09B8C0 8009E8C0 64000002 */  oris      r0, r0, 0x2
lbl_8009E8C4:
/* 09B8C4 8009E8C4 3C60CC00 */  lis       r3, 0xcc00
/* 09B8C8 8009E8C8 38636800 */  addi      r3, r3, 0x6800
/* 09B8CC 8009E8CC 80830028 */  lwz       r4, 0x28(r3)
/* 09B8D0 8009E8D0 548307BC */  rlwinm    r3, r4, 0, 30, 30
/* 09B8D4 8009E8D4 28030000 */  cmplwi    r3, 0x0
/* 09B8D8 8009E8D8 41820008 */  beq       lbl_8009E8E0
/* 09B8DC 8009E8DC 64000001 */  oris      r0, r0, 0x1
lbl_8009E8E0:
/* 09B8E0 8009E8E0 54830738 */  rlwinm    r3, r4, 0, 28, 28
/* 09B8E4 8009E8E4 28030000 */  cmplwi    r3, 0x0
/* 09B8E8 8009E8E8 41820008 */  beq       lbl_8009E8F0
/* 09B8EC 8009E8EC 60008000 */  ori       r0, r0, 0x8000
lbl_8009E8F0:
/* 09B8F0 8009E8F0 57E304A4 */  rlwinm    r3, r31, 0, 18, 18
/* 09B8F4 8009E8F4 28030000 */  cmplwi    r3, 0x0
/* 09B8F8 8009E8F8 41820008 */  beq       lbl_8009E900
/* 09B8FC 8009E8FC 60000020 */  ori       r0, r0, 0x20
lbl_8009E900:
/* 09B900 8009E900 57E304E6 */  rlwinm    r3, r31, 0, 19, 19
/* 09B904 8009E904 28030000 */  cmplwi    r3, 0x0
/* 09B908 8009E908 41820008 */  beq       lbl_8009E910
/* 09B90C 8009E90C 60000040 */  ori       r0, r0, 0x40
lbl_8009E910:
/* 09B910 8009E910 57E3056A */  rlwinm    r3, r31, 0, 21, 21
/* 09B914 8009E914 28030000 */  cmplwi    r3, 0x0
/* 09B918 8009E918 41820008 */  beq       lbl_8009E920
/* 09B91C 8009E91C 60001000 */  ori       r0, r0, 0x1000
lbl_8009E920:
/* 09B920 8009E920 57E305AC */  rlwinm    r3, r31, 0, 22, 22
/* 09B924 8009E924 28030000 */  cmplwi    r3, 0x0
/* 09B928 8009E928 41820008 */  beq       lbl_8009E930
/* 09B92C 8009E92C 60002000 */  ori       r0, r0, 0x2000
lbl_8009E930:
/* 09B930 8009E930 57E305EE */  rlwinm    r3, r31, 0, 23, 23
/* 09B934 8009E934 28030000 */  cmplwi    r3, 0x0
/* 09B938 8009E938 41820008 */  beq       lbl_8009E940
/* 09B93C 8009E93C 60000080 */  ori       r0, r0, 0x80
lbl_8009E940:
/* 09B940 8009E940 57E30738 */  rlwinm    r3, r31, 0, 28, 28
/* 09B944 8009E944 28030000 */  cmplwi    r3, 0x0
/* 09B948 8009E948 41820008 */  beq       lbl_8009E950
/* 09B94C 8009E94C 60000800 */  ori       r0, r0, 0x800
lbl_8009E950:
/* 09B950 8009E950 57E3077A */  rlwinm    r3, r31, 0, 29, 29
/* 09B954 8009E954 28030000 */  cmplwi    r3, 0x0
/* 09B958 8009E958 41820008 */  beq       lbl_8009E960
/* 09B95C 8009E95C 60000400 */  ori       r0, r0, 0x400
lbl_8009E960:
/* 09B960 8009E960 57E307BC */  rlwinm    r3, r31, 0, 30, 30
/* 09B964 8009E964 28030000 */  cmplwi    r3, 0x0
/* 09B968 8009E968 41820008 */  beq       lbl_8009E970
/* 09B96C 8009E96C 60000200 */  ori       r0, r0, 0x200
lbl_8009E970:
/* 09B970 8009E970 57E30528 */  rlwinm    r3, r31, 0, 20, 20
/* 09B974 8009E974 28030000 */  cmplwi    r3, 0x0
/* 09B978 8009E978 41820008 */  beq       lbl_8009E980
/* 09B97C 8009E97C 60004000 */  ori       r0, r0, 0x4000
lbl_8009E980:
/* 09B980 8009E980 57E307FE */  clrlwi    r3, r31, 31
/* 09B984 8009E984 28030000 */  cmplwi    r3, 0x0
/* 09B988 8009E988 41820008 */  beq       lbl_8009E990
/* 09B98C 8009E98C 60000100 */  ori       r0, r0, 0x100
lbl_8009E990:
/* 09B990 8009E990 3C608000 */  lis       r3, 0x8000
/* 09B994 8009E994 808300C4 */  lwz       r4, 0xc4(r3)
/* 09B998 8009E998 806300C8 */  lwz       r3, 0xc8(r3)
/* 09B99C 8009E99C 7C831B78 */  or        r3, r4, r3
/* 09B9A0 8009E9A0 7C041878 */  andc      r4, r0, r3
/* 09B9A4 8009E9A4 28040000 */  cmplwi    r4, 0x0
/* 09B9A8 8009E9A8 41820098 */  beq       lbl_8009EA40
/* 09B9AC 8009E9AC 3C60800F */  lis       r3, D_800F2830@ha
/* 09B9B0 8009E9B0 38032830 */  addi      r0, r3, D_800F2830@l
/* 09B9B4 8009E9B4 7C030378 */  mr        r3, r0
/* 09B9B8 8009E9B8 48000004 */  b         lbl_8009E9BC
lbl_8009E9BC:
/* 09B9BC 8009E9BC 48000004 */  b         lbl_8009E9C0
lbl_8009E9C0:
/* 09B9C0 8009E9C0 80030000 */  lwz       r0, 0x0(r3)
/* 09B9C4 8009E9C4 7C800038 */  and       r0, r4, r0
/* 09B9C8 8009E9C8 28000000 */  cmplwi    r0, 0x0
/* 09B9CC 8009E9CC 41820010 */  beq       lbl_8009E9DC
/* 09B9D0 8009E9D0 7C000034 */  cntlzw    r0, r0
/* 09B9D4 8009E9D4 7C1D0734 */  extsh     r29, r0
/* 09B9D8 8009E9D8 4800000C */  b         lbl_8009E9E4
lbl_8009E9DC:
/* 09B9DC 8009E9DC 38630004 */  addi      r3, r3, 0x4
/* 09B9E0 8009E9E0 4BFFFFE0 */  b         lbl_8009E9C0
lbl_8009E9E4:
/* 09B9E4 8009E9E4 806D8B10 */  lwz       r3, InterruptHandlerTable@sda21(r0)
/* 09B9E8 8009E9E8 57A0103A */  slwi      r0, r29, 2
/* 09B9EC 8009E9EC 7FE3002E */  lwzx      r31, r3, r0
/* 09B9F0 8009E9F0 281F0000 */  cmplwi    r31, 0x0
/* 09B9F4 8009E9F4 4182004C */  beq       lbl_8009EA40
/* 09B9F8 8009E9F8 2C1D0004 */  cmpwi     r29, 0x4
/* 09B9FC 8009E9FC 4081001C */  ble       lbl_8009EA18
/* 09BA00 8009EA00 B3AD8B18 */  sth       r29, __OSLastInterrupt@sda21(r0)
/* 09BA04 8009EA04 48002ADD */  bl        OSGetTime
/* 09BA08 8009EA08 908D8B24 */  stw       r4, __OSLastInterruptTime+0x4@sda21(r0)
/* 09BA0C 8009EA0C 906D8B20 */  stw       r3, __OSLastInterruptTime@sda21(r0)
/* 09BA10 8009EA10 801E0198 */  lwz       r0, 0x198(r30)
/* 09BA14 8009EA14 900D8B14 */  stw       r0, __OSLastInterruptSrr0@sda21(r0)
lbl_8009EA18:
/* 09BA18 8009EA18 48001A71 */  bl        OSDisableScheduler
/* 09BA1C 8009EA1C 7FA3EB78 */  mr        r3, r29
/* 09BA20 8009EA20 7FC4F378 */  mr        r4, r30
/* 09BA24 8009EA24 7FECFB78 */  mr        r12, r31
/* 09BA28 8009EA28 7D8803A6 */  mtlr      r12
/* 09BA2C 8009EA2C 4E800021 */  blrl
/* 09BA30 8009EA30 48001A99 */  bl        OSEnableScheduler
/* 09BA34 8009EA34 48001F61 */  bl        __OSReschedule
/* 09BA38 8009EA38 7FC3F378 */  mr        r3, r30
/* 09BA3C 8009EA3C 4BFFEBD5 */  bl        OSLoadContext
lbl_8009EA40:
/* 09BA40 8009EA40 7FC3F378 */  mr        r3, r30
/* 09BA44 8009EA44 4BFFEBCD */  bl        OSLoadContext
/* 09BA48 8009EA48 8001002C */  lwz       r0, 0x2c(r1)
/* 09BA4C 8009EA4C 83E10024 */  lwz       r31, 0x24(r1)
/* 09BA50 8009EA50 83C10020 */  lwz       r30, 0x20(r1)
/* 09BA54 8009EA54 83A1001C */  lwz       r29, 0x1c(r1)
/* 09BA58 8009EA58 38210028 */  addi      r1, r1, 0x28
/* 09BA5C 8009EA5C 7C0803A6 */  mtlr      r0
/* 09BA60 8009EA60 4E800020 */  blr

ExternalInterruptHandler:
/* 09BA64 8009EA64 90040000 */  stw       r0, 0x0(r4)
/* 09BA68 8009EA68 90240004 */  stw       r1, 0x4(r4)
/* 09BA6C 8009EA6C 90440008 */  stw       r2, 0x8(r4)
/* 09BA70 8009EA70 BCC40018 */  stmw      r6, 0x18(r4)
/* 09BA74 8009EA74 7C11E2A6 */  mfspr     r0, GQR1
/* 09BA78 8009EA78 900401A8 */  stw       r0, 0x1a8(r4)
/* 09BA7C 8009EA7C 7C12E2A6 */  mfspr     r0, GQR2
/* 09BA80 8009EA80 900401AC */  stw       r0, 0x1ac(r4)
/* 09BA84 8009EA84 7C13E2A6 */  mfspr     r0, GQR3
/* 09BA88 8009EA88 900401B0 */  stw       r0, 0x1b0(r4)
/* 09BA8C 8009EA8C 7C14E2A6 */  mfspr     r0, GQR4
/* 09BA90 8009EA90 900401B4 */  stw       r0, 0x1b4(r4)
/* 09BA94 8009EA94 7C15E2A6 */  mfspr     r0, GQR5
/* 09BA98 8009EA98 900401B8 */  stw       r0, 0x1b8(r4)
/* 09BA9C 8009EA9C 7C16E2A6 */  mfspr     r0, GQR6
/* 09BAA0 8009EAA0 900401BC */  stw       r0, 0x1bc(r4)
/* 09BAA4 8009EAA4 7C17E2A6 */  mfspr     r0, GQR7
/* 09BAA8 8009EAA8 900401C0 */  stw       r0, 0x1c0(r4)
/* 09BAAC 8009EAAC 9421FFF8 */  stwu      r1, -0x8(r1)
/* 09BAB0 8009EAB0 4BFFFC70 */  b         __OSDispatchInterrupt

# 0x800F2830 - 0x800F2860
.section .data, "wa"

.balign 8

glabel D_800F2830
	.long 0x00000100
	.long 0x00000040
	.long 0xF8000000
	.long 0x00000200
	.long 0x00000080
	.long 0x00003000
	.long 0x00000020
	.long 0x03FF8C00
	.long 0x04000000
	.long 0x00004000
	.long 0xFFFFFFFF
	.long 0x00000000

# 0x8018BA90 - 0x8018BAA8
.section .sbss, "wa"

InterruptHandlerTable:
	.skip 0x4

glabel __OSLastInterruptSrr0
	.skip 0x4

glabel __OSLastInterrupt
	.skip 0x2

glabel gap_08_8018BA9A_sbss
.hidden gap_08_8018BA9A_sbss
	.skip 0x6

glabel __OSLastInterruptTime
	.skip 0x8
