# CARDRead.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800BF2A4 - 0x800BF71C

glabel __CARDSeek
/* 0BC2A4 800BF2A4 7C0802A6 */  mflr      r0
/* 0BC2A8 800BF2A8 90010004 */  stw       r0, 0x4(r1)
/* 0BC2AC 800BF2AC 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0BC2B0 800BF2B0 93E1002C */  stw       r31, 0x2c(r1)
/* 0BC2B4 800BF2B4 3BE60000 */  addi      r31, r6, 0x0
/* 0BC2B8 800BF2B8 93C10028 */  stw       r30, 0x28(r1)
/* 0BC2BC 800BF2BC 3BC50000 */  addi      r30, r5, 0x0
/* 0BC2C0 800BF2C0 93A10024 */  stw       r29, 0x24(r1)
/* 0BC2C4 800BF2C4 3BA40000 */  addi      r29, r4, 0x0
/* 0BC2C8 800BF2C8 38810018 */  addi      r4, r1, 0x18
/* 0BC2CC 800BF2CC 93810020 */  stw       r28, 0x20(r1)
/* 0BC2D0 800BF2D0 7C7C1B78 */  mr        r28, r3
/* 0BC2D4 800BF2D4 80630000 */  lwz       r3, 0x0(r3)
/* 0BC2D8 800BF2D8 4BFFB739 */  bl        __CARDGetControlBlock
/* 0BC2DC 800BF2DC 2C030000 */  cmpwi     r3, 0x0
/* 0BC2E0 800BF2E0 40800008 */  bge       lbl_800BF2E8
/* 0BC2E4 800BF2E4 48000158 */  b         lbl_800BF43C
lbl_800BF2E8:
/* 0BC2E8 800BF2E8 A01C0010 */  lhz       r0, 0x10(r28)
/* 0BC2EC 800BF2EC 28000005 */  cmplwi    r0, 0x5
/* 0BC2F0 800BF2F0 41800028 */  blt       lbl_800BF318
/* 0BC2F4 800BF2F4 80610018 */  lwz       r3, 0x18(r1)
/* 0BC2F8 800BF2F8 A0A30010 */  lhz       r5, 0x10(r3)
/* 0BC2FC 800BF2FC 7C002840 */  cmplw     r0, r5
/* 0BC300 800BF300 40800018 */  bge       lbl_800BF318
/* 0BC304 800BF304 8083000C */  lwz       r4, 0xc(r3)
/* 0BC308 800BF308 801C0008 */  lwz       r0, 0x8(r28)
/* 0BC30C 800BF30C 7C8521D6 */  mullw     r4, r5, r4
/* 0BC310 800BF310 7C040000 */  cmpw      r4, r0
/* 0BC314 800BF314 41810014 */  bgt       lbl_800BF328
lbl_800BF318:
/* 0BC318 800BF318 80610018 */  lwz       r3, 0x18(r1)
/* 0BC31C 800BF31C 3880FF80 */  li        r4, -0x80
/* 0BC320 800BF320 4BFFB7A9 */  bl        __CARDPutControlBlock
/* 0BC324 800BF324 48000118 */  b         lbl_800BF43C
lbl_800BF328:
/* 0BC328 800BF328 4BFFD369 */  bl        __CARDGetDirBlock
/* 0BC32C 800BF32C 801C0004 */  lwz       r0, 0x4(r28)
/* 0BC330 800BF330 80A10018 */  lwz       r5, 0x18(r1)
/* 0BC334 800BF334 54003032 */  slwi      r0, r0, 6
/* 0BC338 800BF338 7C830214 */  add       r4, r3, r0
/* 0BC33C 800BF33C 8065000C */  lwz       r3, 0xc(r5)
/* 0BC340 800BF340 A0040038 */  lhz       r0, 0x38(r4)
/* 0BC344 800BF344 7C6019D6 */  mullw     r3, r0, r3
/* 0BC348 800BF348 7C03F000 */  cmpw      r3, r30
/* 0BC34C 800BF34C 40810010 */  ble       lbl_800BF35C
/* 0BC350 800BF350 7C1EEA14 */  add       r0, r30, r29
/* 0BC354 800BF354 7C030000 */  cmpw      r3, r0
/* 0BC358 800BF358 40800014 */  bge       lbl_800BF36C
lbl_800BF35C:
/* 0BC35C 800BF35C 38650000 */  addi      r3, r5, 0x0
/* 0BC360 800BF360 3880FFF5 */  li        r4, -0xb
/* 0BC364 800BF364 4BFFB765 */  bl        __CARDPutControlBlock
/* 0BC368 800BF368 480000D4 */  b         lbl_800BF43C
lbl_800BF36C:
/* 0BC36C 800BF36C 938500C0 */  stw       r28, 0xc0(r5)
/* 0BC370 800BF370 93BC000C */  stw       r29, 0xc(r28)
/* 0BC374 800BF374 801C0008 */  lwz       r0, 0x8(r28)
/* 0BC378 800BF378 7C1E0000 */  cmpw      r30, r0
/* 0BC37C 800BF37C 40800040 */  bge       lbl_800BF3BC
/* 0BC380 800BF380 38000000 */  li        r0, 0x0
/* 0BC384 800BF384 901C0008 */  stw       r0, 0x8(r28)
/* 0BC388 800BF388 A0040036 */  lhz       r0, 0x36(r4)
/* 0BC38C 800BF38C B01C0010 */  sth       r0, 0x10(r28)
/* 0BC390 800BF390 A09C0010 */  lhz       r4, 0x10(r28)
/* 0BC394 800BF394 28040005 */  cmplwi    r4, 0x5
/* 0BC398 800BF398 41800014 */  blt       lbl_800BF3AC
/* 0BC39C 800BF39C 80610018 */  lwz       r3, 0x18(r1)
/* 0BC3A0 800BF3A0 A0030010 */  lhz       r0, 0x10(r3)
/* 0BC3A4 800BF3A4 7C040040 */  cmplw     r4, r0
/* 0BC3A8 800BF3A8 41800014 */  blt       lbl_800BF3BC
lbl_800BF3AC:
/* 0BC3AC 800BF3AC 80610018 */  lwz       r3, 0x18(r1)
/* 0BC3B0 800BF3B0 3880FFFA */  li        r4, -0x6
/* 0BC3B4 800BF3B4 4BFFB715 */  bl        __CARDPutControlBlock
/* 0BC3B8 800BF3B8 48000084 */  b         lbl_800BF43C
lbl_800BF3BC:
/* 0BC3BC 800BF3BC 80610018 */  lwz       r3, 0x18(r1)
/* 0BC3C0 800BF3C0 4BFFCECD */  bl        __CARDGetFatBlock
/* 0BC3C4 800BF3C4 4800004C */  b         lbl_800BF410
lbl_800BF3C8:
/* 0BC3C8 800BF3C8 801C0008 */  lwz       r0, 0x8(r28)
/* 0BC3CC 800BF3CC 7C002214 */  add       r0, r0, r4
/* 0BC3D0 800BF3D0 901C0008 */  stw       r0, 0x8(r28)
/* 0BC3D4 800BF3D4 A01C0010 */  lhz       r0, 0x10(r28)
/* 0BC3D8 800BF3D8 5400083C */  slwi      r0, r0, 1
/* 0BC3DC 800BF3DC 7C03022E */  lhzx      r0, r3, r0
/* 0BC3E0 800BF3E0 B01C0010 */  sth       r0, 0x10(r28)
/* 0BC3E4 800BF3E4 A0BC0010 */  lhz       r5, 0x10(r28)
/* 0BC3E8 800BF3E8 28050005 */  cmplwi    r5, 0x5
/* 0BC3EC 800BF3EC 41800014 */  blt       lbl_800BF400
/* 0BC3F0 800BF3F0 80810018 */  lwz       r4, 0x18(r1)
/* 0BC3F4 800BF3F4 A0040010 */  lhz       r0, 0x10(r4)
/* 0BC3F8 800BF3F8 7C050040 */  cmplw     r5, r0
/* 0BC3FC 800BF3FC 41800014 */  blt       lbl_800BF410
lbl_800BF400:
/* 0BC400 800BF400 80610018 */  lwz       r3, 0x18(r1)
/* 0BC404 800BF404 3880FFFA */  li        r4, -0x6
/* 0BC408 800BF408 4BFFB6C1 */  bl        __CARDPutControlBlock
/* 0BC40C 800BF40C 48000030 */  b         lbl_800BF43C
lbl_800BF410:
/* 0BC410 800BF410 80810018 */  lwz       r4, 0x18(r1)
/* 0BC414 800BF414 80BC0008 */  lwz       r5, 0x8(r28)
/* 0BC418 800BF418 8084000C */  lwz       r4, 0xc(r4)
/* 0BC41C 800BF41C 3804FFFF */  subi      r0, r4, 0x1
/* 0BC420 800BF420 7FC00078 */  andc      r0, r30, r0
/* 0BC424 800BF424 7C050040 */  cmplw     r5, r0
/* 0BC428 800BF428 4180FFA0 */  blt       lbl_800BF3C8
/* 0BC42C 800BF42C 93DC0008 */  stw       r30, 0x8(r28)
/* 0BC430 800BF430 38600000 */  li        r3, 0x0
/* 0BC434 800BF434 80010018 */  lwz       r0, 0x18(r1)
/* 0BC438 800BF438 901F0000 */  stw       r0, 0x0(r31)
lbl_800BF43C:
/* 0BC43C 800BF43C 80010034 */  lwz       r0, 0x34(r1)
/* 0BC440 800BF440 83E1002C */  lwz       r31, 0x2c(r1)
/* 0BC444 800BF444 83C10028 */  lwz       r30, 0x28(r1)
/* 0BC448 800BF448 83A10024 */  lwz       r29, 0x24(r1)
/* 0BC44C 800BF44C 83810020 */  lwz       r28, 0x20(r1)
/* 0BC450 800BF450 38210030 */  addi      r1, r1, 0x30
/* 0BC454 800BF454 7C0803A6 */  mtlr      r0
/* 0BC458 800BF458 4E800020 */  blr

glabel ReadCallback
/* 0BC45C 800BF45C 7C0802A6 */  mflr      r0
/* 0BC460 800BF460 90010004 */  stw       r0, 0x4(r1)
/* 0BC464 800BF464 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0BC468 800BF468 BF610014 */  stmw      r27, 0x14(r1)
/* 0BC46C 800BF46C 3BA30000 */  addi      r29, r3, 0x0
/* 0BC470 800BF470 3C608019 */  lis       r3, D_80188A70@ha
/* 0BC474 800BF474 1CBD0110 */  mulli     r5, r29, 0x110
/* 0BC478 800BF478 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0BC47C 800BF47C 7C9E2379 */  mr.       r30, r4
/* 0BC480 800BF480 7FE02A14 */  add       r31, r0, r5
/* 0BC484 800BF484 418000C8 */  blt       lbl_800BF54C
/* 0BC488 800BF488 839F00C0 */  lwz       r28, 0xc0(r31)
/* 0BC48C 800BF48C 809C000C */  lwz       r4, 0xc(r28)
/* 0BC490 800BF490 2C040000 */  cmpwi     r4, 0x0
/* 0BC494 800BF494 4080000C */  bge       lbl_800BF4A0
/* 0BC498 800BF498 3BC0FFF2 */  li        r30, -0xe
/* 0BC49C 800BF49C 480000B0 */  b         lbl_800BF54C
lbl_800BF4A0:
/* 0BC4A0 800BF4A0 80BF000C */  lwz       r5, 0xc(r31)
/* 0BC4A4 800BF4A4 80DC0008 */  lwz       r6, 0x8(r28)
/* 0BC4A8 800BF4A8 3805FFFF */  subi      r0, r5, 0x1
/* 0BC4AC 800BF4AC 7C0300F8 */  nor       r3, r0, r0
/* 0BC4B0 800BF4B0 7C062A14 */  add       r0, r6, r5
/* 0BC4B4 800BF4B4 7C600038 */  and       r0, r3, r0
/* 0BC4B8 800BF4B8 7F660050 */  subf      r27, r6, r0
/* 0BC4BC 800BF4BC 7C1B2050 */  subf      r0, r27, r4
/* 0BC4C0 800BF4C0 901C000C */  stw       r0, 0xc(r28)
/* 0BC4C4 800BF4C4 801C000C */  lwz       r0, 0xc(r28)
/* 0BC4C8 800BF4C8 2C000000 */  cmpwi     r0, 0x0
/* 0BC4CC 800BF4CC 40810080 */  ble       lbl_800BF54C
/* 0BC4D0 800BF4D0 7FE3FB78 */  mr        r3, r31
/* 0BC4D4 800BF4D4 4BFFCDB9 */  bl        __CARDGetFatBlock
/* 0BC4D8 800BF4D8 801C0008 */  lwz       r0, 0x8(r28)
/* 0BC4DC 800BF4DC 7C00DA14 */  add       r0, r0, r27
/* 0BC4E0 800BF4E0 901C0008 */  stw       r0, 0x8(r28)
/* 0BC4E4 800BF4E4 A01C0010 */  lhz       r0, 0x10(r28)
/* 0BC4E8 800BF4E8 5400083C */  slwi      r0, r0, 1
/* 0BC4EC 800BF4EC 7C03022E */  lhzx      r0, r3, r0
/* 0BC4F0 800BF4F0 B01C0010 */  sth       r0, 0x10(r28)
/* 0BC4F4 800BF4F4 A07C0010 */  lhz       r3, 0x10(r28)
/* 0BC4F8 800BF4F8 28030005 */  cmplwi    r3, 0x5
/* 0BC4FC 800BF4FC 41800010 */  blt       lbl_800BF50C
/* 0BC500 800BF500 A01F0010 */  lhz       r0, 0x10(r31)
/* 0BC504 800BF504 7C030040 */  cmplw     r3, r0
/* 0BC508 800BF508 4180000C */  blt       lbl_800BF514
lbl_800BF50C:
/* 0BC50C 800BF50C 3BC0FFFA */  li        r30, -0x6
/* 0BC510 800BF510 4800003C */  b         lbl_800BF54C
lbl_800BF514:
/* 0BC514 800BF514 80BC000C */  lwz       r5, 0xc(r28)
/* 0BC518 800BF518 801F000C */  lwz       r0, 0xc(r31)
/* 0BC51C 800BF51C 7C050000 */  cmpw      r5, r0
/* 0BC520 800BF520 40800008 */  bge       lbl_800BF528
/* 0BC524 800BF524 48000008 */  b         lbl_800BF52C
lbl_800BF528:
/* 0BC528 800BF528 7C050378 */  mr        r5, r0
lbl_800BF52C:
/* 0BC52C 800BF52C 7C8019D6 */  mullw     r4, r0, r3
/* 0BC530 800BF530 80DF00B4 */  lwz       r6, 0xb4(r31)
/* 0BC534 800BF534 3C60800C */  lis       r3, ReadCallback@ha
/* 0BC538 800BF538 38E3F45C */  addi      r7, r3, ReadCallback@l
/* 0BC53C 800BF53C 387D0000 */  addi      r3, r29, 0x0
/* 0BC540 800BF540 4BFFCB91 */  bl        __CARDRead
/* 0BC544 800BF544 7C7E1B79 */  mr.       r30, r3
/* 0BC548 800BF548 40800030 */  bge       lbl_800BF578
lbl_800BF54C:
/* 0BC54C 800BF54C 837F00D0 */  lwz       r27, 0xd0(r31)
/* 0BC550 800BF550 38000000 */  li        r0, 0x0
/* 0BC554 800BF554 387F0000 */  addi      r3, r31, 0x0
/* 0BC558 800BF558 901F00D0 */  stw       r0, 0xd0(r31)
/* 0BC55C 800BF55C 7FC4F378 */  mr        r4, r30
/* 0BC560 800BF560 4BFFB569 */  bl        __CARDPutControlBlock
/* 0BC564 800BF564 399B0000 */  addi      r12, r27, 0x0
/* 0BC568 800BF568 7D8803A6 */  mtlr      r12
/* 0BC56C 800BF56C 387D0000 */  addi      r3, r29, 0x0
/* 0BC570 800BF570 389E0000 */  addi      r4, r30, 0x0
/* 0BC574 800BF574 4E800021 */  blrl
lbl_800BF578:
/* 0BC578 800BF578 BB610014 */  lmw       r27, 0x14(r1)
/* 0BC57C 800BF57C 8001002C */  lwz       r0, 0x2c(r1)
/* 0BC580 800BF580 38210028 */  addi      r1, r1, 0x28
/* 0BC584 800BF584 7C0803A6 */  mtlr      r0
/* 0BC588 800BF588 4E800020 */  blr

glabel CARDReadAsync
/* 0BC58C 800BF58C 7C0802A6 */  mflr      r0
/* 0BC590 800BF590 90010004 */  stw       r0, 0x4(r1)
/* 0BC594 800BF594 54C005FF */  clrlwi.   r0, r6, 23
/* 0BC598 800BF598 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0BC59C 800BF59C BF610024 */  stmw      r27, 0x24(r1)
/* 0BC5A0 800BF5A0 3BA30000 */  addi      r29, r3, 0x0
/* 0BC5A4 800BF5A4 3BC40000 */  addi      r30, r4, 0x0
/* 0BC5A8 800BF5A8 3BE50000 */  addi      r31, r5, 0x0
/* 0BC5AC 800BF5AC 3B670000 */  addi      r27, r7, 0x0
/* 0BC5B0 800BF5B0 4082000C */  bne       lbl_800BF5BC
/* 0BC5B4 800BF5B4 57E005FF */  clrlwi.   r0, r31, 23
/* 0BC5B8 800BF5B8 4182000C */  beq       lbl_800BF5C4
lbl_800BF5BC:
/* 0BC5BC 800BF5BC 3860FF80 */  li        r3, -0x80
/* 0BC5C0 800BF5C0 48000100 */  b         lbl_800BF6C0
lbl_800BF5C4:
/* 0BC5C4 800BF5C4 387D0000 */  addi      r3, r29, 0x0
/* 0BC5C8 800BF5C8 389F0000 */  addi      r4, r31, 0x0
/* 0BC5CC 800BF5CC 38A60000 */  addi      r5, r6, 0x0
/* 0BC5D0 800BF5D0 38C1001C */  addi      r6, r1, 0x1c
/* 0BC5D4 800BF5D4 4BFFFCD1 */  bl        __CARDSeek
/* 0BC5D8 800BF5D8 2C030000 */  cmpwi     r3, 0x0
/* 0BC5DC 800BF5DC 40800008 */  bge       lbl_800BF5E4
/* 0BC5E0 800BF5E0 480000E0 */  b         lbl_800BF6C0
lbl_800BF5E4:
/* 0BC5E4 800BF5E4 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC5E8 800BF5E8 4BFFD0A9 */  bl        __CARDGetDirBlock
/* 0BC5EC 800BF5EC 801D0004 */  lwz       r0, 0x4(r29)
/* 0BC5F0 800BF5F0 54003032 */  slwi      r0, r0, 6
/* 0BC5F4 800BF5F4 7F830214 */  add       r28, r3, r0
/* 0BC5F8 800BF5F8 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC5FC 800BF5FC 7F84E378 */  mr        r4, r28
/* 0BC600 800BF600 4BFFF569 */  bl        fn_800BEB68
/* 0BC604 800BF604 38830000 */  addi      r4, r3, 0x0
/* 0BC608 800BF608 2C04FFF6 */  cmpwi     r4, -0xa
/* 0BC60C 800BF60C 40820010 */  bne       lbl_800BF61C
/* 0BC610 800BF610 7F83E378 */  mr        r3, r28
/* 0BC614 800BF614 4BFFF5ED */  bl        fn_800BEC00
/* 0BC618 800BF618 7C641B78 */  mr        r4, r3
lbl_800BF61C:
/* 0BC61C 800BF61C 2C040000 */  cmpwi     r4, 0x0
/* 0BC620 800BF620 40800010 */  bge       lbl_800BF630
/* 0BC624 800BF624 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC628 800BF628 4BFFB4A1 */  bl        __CARDPutControlBlock
/* 0BC62C 800BF62C 48000094 */  b         lbl_800BF6C0
lbl_800BF630:
/* 0BC630 800BF630 387E0000 */  addi      r3, r30, 0x0
/* 0BC634 800BF634 389F0000 */  addi      r4, r31, 0x0
/* 0BC638 800BF638 4BFDD661 */  bl        DCInvalidateRange
/* 0BC63C 800BF63C 281B0000 */  cmplwi    r27, 0x0
/* 0BC640 800BF640 4182000C */  beq       lbl_800BF64C
/* 0BC644 800BF644 7F60DB78 */  mr        r0, r27
/* 0BC648 800BF648 4800000C */  b         lbl_800BF654
lbl_800BF64C:
/* 0BC64C 800BF64C 3C60800C */  lis       r3, __CARDDefaultApiCallback@ha
/* 0BC650 800BF650 38039AB0 */  addi      r0, r3, __CARDDefaultApiCallback@l
lbl_800BF654:
/* 0BC654 800BF654 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC658 800BF658 900300D0 */  stw       r0, 0xd0(r3)
/* 0BC65C 800BF65C 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC660 800BF660 809D0008 */  lwz       r4, 0x8(r29)
/* 0BC664 800BF664 80A3000C */  lwz       r5, 0xc(r3)
/* 0BC668 800BF668 3805FFFF */  subi      r0, r5, 0x1
/* 0BC66C 800BF66C 7C880038 */  and       r8, r4, r0
/* 0BC670 800BF670 7C682850 */  subf      r3, r8, r5
/* 0BC674 800BF674 7C1F1800 */  cmpw      r31, r3
/* 0BC678 800BF678 40800008 */  bge       lbl_800BF680
/* 0BC67C 800BF67C 7FE3FB78 */  mr        r3, r31
lbl_800BF680:
/* 0BC680 800BF680 A01D0010 */  lhz       r0, 0x10(r29)
/* 0BC684 800BF684 3C80800C */  lis       r4, ReadCallback@ha
/* 0BC688 800BF688 3BE30000 */  addi      r31, r3, 0x0
/* 0BC68C 800BF68C 807D0000 */  lwz       r3, 0x0(r29)
/* 0BC690 800BF690 7C0501D6 */  mullw     r0, r5, r0
/* 0BC694 800BF694 38E4F45C */  addi      r7, r4, ReadCallback@l
/* 0BC698 800BF698 38BF0000 */  addi      r5, r31, 0x0
/* 0BC69C 800BF69C 38DE0000 */  addi      r6, r30, 0x0
/* 0BC6A0 800BF6A0 7C880214 */  add       r4, r8, r0
/* 0BC6A4 800BF6A4 4BFFCA2D */  bl        __CARDRead
/* 0BC6A8 800BF6A8 7C7D1B79 */  mr.       r29, r3
/* 0BC6AC 800BF6AC 40800010 */  bge       lbl_800BF6BC
/* 0BC6B0 800BF6B0 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC6B4 800BF6B4 7FA4EB78 */  mr        r4, r29
/* 0BC6B8 800BF6B8 4BFFB411 */  bl        __CARDPutControlBlock
lbl_800BF6BC:
/* 0BC6BC 800BF6BC 7FA3EB78 */  mr        r3, r29
lbl_800BF6C0:
/* 0BC6C0 800BF6C0 BB610024 */  lmw       r27, 0x24(r1)
/* 0BC6C4 800BF6C4 8001003C */  lwz       r0, 0x3c(r1)
/* 0BC6C8 800BF6C8 38210038 */  addi      r1, r1, 0x38
/* 0BC6CC 800BF6CC 7C0803A6 */  mtlr      r0
/* 0BC6D0 800BF6D0 4E800020 */  blr

glabel CARDRead
/* 0BC6D4 800BF6D4 7C0802A6 */  mflr      r0
/* 0BC6D8 800BF6D8 3CE0800C */  lis       r7, __CARDSyncCallback@ha
/* 0BC6DC 800BF6DC 90010004 */  stw       r0, 0x4(r1)
/* 0BC6E0 800BF6E0 38E79AB4 */  addi      r7, r7, __CARDSyncCallback@l
/* 0BC6E4 800BF6E4 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0BC6E8 800BF6E8 93E1001C */  stw       r31, 0x1c(r1)
/* 0BC6EC 800BF6EC 3BE30000 */  addi      r31, r3, 0x0
/* 0BC6F0 800BF6F0 4BFFFE9D */  bl        CARDReadAsync
/* 0BC6F4 800BF6F4 2C030000 */  cmpwi     r3, 0x0
/* 0BC6F8 800BF6F8 40800008 */  bge       lbl_800BF700
/* 0BC6FC 800BF6FC 4800000C */  b         lbl_800BF708
lbl_800BF700:
/* 0BC700 800BF700 807F0000 */  lwz       r3, 0x0(r31)
/* 0BC704 800BF704 4BFFB5A9 */  bl        __CARDSync
lbl_800BF708:
/* 0BC708 800BF708 80010024 */  lwz       r0, 0x24(r1)
/* 0BC70C 800BF70C 83E1001C */  lwz       r31, 0x1c(r1)
/* 0BC710 800BF710 38210020 */  addi      r1, r1, 0x20
/* 0BC714 800BF714 7C0803A6 */  mtlr      r0
/* 0BC718 800BF718 4E800020 */  blr
