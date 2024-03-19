# CARDBlock.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800BC28C - 0x800BC690

glabel __CARDGetFatBlock
/* 0B928C 800BC28C 80630088 */  lwz       r3, 0x88(r3)
/* 0B9290 800BC290 4E800020 */  blr

WriteCallback:
/* 0B9294 800BC294 7C0802A6 */  mflr      r0
/* 0B9298 800BC298 90010004 */  stw       r0, 0x4(r1)
/* 0B929C 800BC29C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B92A0 800BC2A0 93E1001C */  stw       r31, 0x1c(r1)
/* 0B92A4 800BC2A4 93C10018 */  stw       r30, 0x18(r1)
/* 0B92A8 800BC2A8 7C9E2379 */  mr.       r30, r4
/* 0B92AC 800BC2AC 93A10014 */  stw       r29, 0x14(r1)
/* 0B92B0 800BC2B0 3BA30000 */  addi      r29, r3, 0x0
/* 0B92B4 800BC2B4 1CBD0110 */  mulli     r5, r29, 0x110
/* 0B92B8 800BC2B8 3C608019 */  lis       r3, D_80188A70@ha
/* 0B92BC 800BC2BC 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B92C0 800BC2C0 7FE02A14 */  add       r31, r0, r5
/* 0B92C4 800BC2C4 41800048 */  blt       lbl_800BC30C
/* 0B92C8 800BC2C8 807F0080 */  lwz       r3, 0x80(r31)
/* 0B92CC 800BC2CC 801F0088 */  lwz       r0, 0x88(r31)
/* 0B92D0 800BC2D0 38836000 */  addi      r4, r3, 0x6000
/* 0B92D4 800BC2D4 7C002040 */  cmplw     r0, r4
/* 0B92D8 800BC2D8 3CA30001 */  addis     r5, r3, 0x1
/* 0B92DC 800BC2DC 38A58000 */  addi      r5, r5, -0x8000
/* 0B92E0 800BC2E0 40820018 */  bne       lbl_800BC2F8
/* 0B92E4 800BC2E4 90BF0088 */  stw       r5, 0x88(r31)
/* 0B92E8 800BC2E8 38650000 */  addi      r3, r5, 0x0
/* 0B92EC 800BC2EC 38A02000 */  li        r5, 0x2000
/* 0B92F0 800BC2F0 4BF49125 */  bl        memcpy
/* 0B92F4 800BC2F4 48000018 */  b         lbl_800BC30C
lbl_800BC2F8:
/* 0B92F8 800BC2F8 909F0088 */  stw       r4, 0x88(r31)
/* 0B92FC 800BC2FC 38640000 */  addi      r3, r4, 0x0
/* 0B9300 800BC300 38850000 */  addi      r4, r5, 0x0
/* 0B9304 800BC304 38A02000 */  li        r5, 0x2000
/* 0B9308 800BC308 4BF4910D */  bl        memcpy
lbl_800BC30C:
/* 0B930C 800BC30C 801F00D0 */  lwz       r0, 0xd0(r31)
/* 0B9310 800BC310 28000000 */  cmplwi    r0, 0x0
/* 0B9314 800BC314 40820010 */  bne       lbl_800BC324
/* 0B9318 800BC318 387F0000 */  addi      r3, r31, 0x0
/* 0B931C 800BC31C 389E0000 */  addi      r4, r30, 0x0
/* 0B9320 800BC320 4BFFE7A9 */  bl        __CARDPutControlBlock
lbl_800BC324:
/* 0B9324 800BC324 801F00D8 */  lwz       r0, 0xd8(r31)
/* 0B9328 800BC328 28000000 */  cmplwi    r0, 0x0
/* 0B932C 800BC32C 7C0C0378 */  mr        r12, r0
/* 0B9330 800BC330 4182001C */  beq       lbl_800BC34C
/* 0B9334 800BC334 38000000 */  li        r0, 0x0
/* 0B9338 800BC338 7D8803A6 */  mtlr      r12
/* 0B933C 800BC33C 901F00D8 */  stw       r0, 0xd8(r31)
/* 0B9340 800BC340 387D0000 */  addi      r3, r29, 0x0
/* 0B9344 800BC344 389E0000 */  addi      r4, r30, 0x0
/* 0B9348 800BC348 4E800021 */  blrl
lbl_800BC34C:
/* 0B934C 800BC34C 80010024 */  lwz       r0, 0x24(r1)
/* 0B9350 800BC350 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B9354 800BC354 83C10018 */  lwz       r30, 0x18(r1)
/* 0B9358 800BC358 83A10014 */  lwz       r29, 0x14(r1)
/* 0B935C 800BC35C 38210020 */  addi      r1, r1, 0x20
/* 0B9360 800BC360 7C0803A6 */  mtlr      r0
/* 0B9364 800BC364 4E800020 */  blr

EraseCallback:
/* 0B9368 800BC368 7C0802A6 */  mflr      r0
/* 0B936C 800BC36C 90010004 */  stw       r0, 0x4(r1)
/* 0B9370 800BC370 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B9374 800BC374 93E10024 */  stw       r31, 0x24(r1)
/* 0B9378 800BC378 3BE30000 */  addi      r31, r3, 0x0
/* 0B937C 800BC37C 3C608019 */  lis       r3, D_80188A70@ha
/* 0B9380 800BC380 93C10020 */  stw       r30, 0x20(r1)
/* 0B9384 800BC384 1CBF0110 */  mulli     r5, r31, 0x110
/* 0B9388 800BC388 93A1001C */  stw       r29, 0x1c(r1)
/* 0B938C 800BC38C 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B9390 800BC390 7C9D2379 */  mr.       r29, r4
/* 0B9394 800BC394 7FC02A14 */  add       r30, r0, r5
/* 0B9398 800BC398 4180003C */  blt       lbl_800BC3D4
/* 0B939C 800BC39C 80BE0088 */  lwz       r5, 0x88(r30)
/* 0B93A0 800BC3A0 3C60800C */  lis       r3, WriteCallback@ha
/* 0B93A4 800BC3A4 801E0080 */  lwz       r0, 0x80(r30)
/* 0B93A8 800BC3A8 38E3C294 */  addi      r7, r3, WriteCallback@l
/* 0B93AC 800BC3AC 807E000C */  lwz       r3, 0xc(r30)
/* 0B93B0 800BC3B0 7C002850 */  subf      r0, r0, r5
/* 0B93B4 800BC3B4 54009B7E */  srwi      r0, r0, 13
/* 0B93B8 800BC3B8 7C8301D6 */  mullw     r4, r3, r0
/* 0B93BC 800BC3BC 38C50000 */  addi      r6, r5, 0x0
/* 0B93C0 800BC3C0 387F0000 */  addi      r3, r31, 0x0
/* 0B93C4 800BC3C4 38A02000 */  li        r5, 0x2000
/* 0B93C8 800BC3C8 4BFFFE49 */  bl        __CARDWrite
/* 0B93CC 800BC3CC 7C7D1B79 */  mr.       r29, r3
/* 0B93D0 800BC3D0 40800044 */  bge       lbl_800BC414
lbl_800BC3D4:
/* 0B93D4 800BC3D4 801E00D0 */  lwz       r0, 0xd0(r30)
/* 0B93D8 800BC3D8 28000000 */  cmplwi    r0, 0x0
/* 0B93DC 800BC3DC 40820010 */  bne       lbl_800BC3EC
/* 0B93E0 800BC3E0 387E0000 */  addi      r3, r30, 0x0
/* 0B93E4 800BC3E4 389D0000 */  addi      r4, r29, 0x0
/* 0B93E8 800BC3E8 4BFFE6E1 */  bl        __CARDPutControlBlock
lbl_800BC3EC:
/* 0B93EC 800BC3EC 801E00D8 */  lwz       r0, 0xd8(r30)
/* 0B93F0 800BC3F0 28000000 */  cmplwi    r0, 0x0
/* 0B93F4 800BC3F4 7C0C0378 */  mr        r12, r0
/* 0B93F8 800BC3F8 4182001C */  beq       lbl_800BC414
/* 0B93FC 800BC3FC 38000000 */  li        r0, 0x0
/* 0B9400 800BC400 7D8803A6 */  mtlr      r12
/* 0B9404 800BC404 901E00D8 */  stw       r0, 0xd8(r30)
/* 0B9408 800BC408 387F0000 */  addi      r3, r31, 0x0
/* 0B940C 800BC40C 389D0000 */  addi      r4, r29, 0x0
/* 0B9410 800BC410 4E800021 */  blrl
lbl_800BC414:
/* 0B9414 800BC414 8001002C */  lwz       r0, 0x2c(r1)
/* 0B9418 800BC418 83E10024 */  lwz       r31, 0x24(r1)
/* 0B941C 800BC41C 83C10020 */  lwz       r30, 0x20(r1)
/* 0B9420 800BC420 83A1001C */  lwz       r29, 0x1c(r1)
/* 0B9424 800BC424 38210028 */  addi      r1, r1, 0x28
/* 0B9428 800BC428 7C0803A6 */  mtlr      r0
/* 0B942C 800BC42C 4E800020 */  blr

glabel __CARDAllocBlock
/* 0B9430 800BC430 7C0802A6 */  mflr      r0
/* 0B9434 800BC434 1CE30110 */  mulli     r7, r3, 0x110
/* 0B9438 800BC438 90010004 */  stw       r0, 0x4(r1)
/* 0B943C 800BC43C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B9440 800BC440 3CC08019 */  lis       r6, D_80188A70@ha
/* 0B9444 800BC444 38068A70 */  addi      r0, r6, D_80188A70@l
/* 0B9448 800BC448 93E1001C */  stw       r31, 0x1c(r1)
/* 0B944C 800BC44C 7D203A14 */  add       r9, r0, r7
/* 0B9450 800BC450 93C10018 */  stw       r30, 0x18(r1)
/* 0B9454 800BC454 80090000 */  lwz       r0, 0x0(r9)
/* 0B9458 800BC458 2C000000 */  cmpwi     r0, 0x0
/* 0B945C 800BC45C 4082000C */  bne       lbl_800BC468
/* 0B9460 800BC460 3860FFFD */  li        r3, -0x3
/* 0B9464 800BC464 480000CC */  b         lbl_800BC530
lbl_800BC468:
/* 0B9468 800BC468 81090088 */  lwz       r8, 0x88(r9)
/* 0B946C 800BC46C A0080006 */  lhz       r0, 0x6(r8)
/* 0B9470 800BC470 7C002040 */  cmplw     r0, r4
/* 0B9474 800BC474 4080000C */  bge       lbl_800BC480
/* 0B9478 800BC478 3860FFF7 */  li        r3, -0x9
/* 0B947C 800BC47C 480000B4 */  b         lbl_800BC530
lbl_800BC480:
/* 0B9480 800BC480 7C040050 */  subf      r0, r4, r0
/* 0B9484 800BC484 B0080006 */  sth       r0, 0x6(r8)
/* 0B9488 800BC488 3CC00001 */  lis       r6, 0x1
/* 0B948C 800BC48C 3986FFFF */  subi      r12, r6, 0x1
/* 0B9490 800BC490 A1680008 */  lhz       r11, 0x8(r8)
/* 0B9494 800BC494 380C0000 */  addi      r0, r12, 0x0
/* 0B9498 800BC498 3BC00000 */  li        r30, 0x0
/* 0B949C 800BC49C 4800007C */  b         lbl_800BC518
lbl_800BC4A0:
/* 0B94A0 800BC4A0 A1490010 */  lhz       r10, 0x10(r9)
/* 0B94A4 800BC4A4 3BDE0001 */  addi      r30, r30, 0x1
/* 0B94A8 800BC4A8 57C6043E */  clrlwi    r6, r30, 16
/* 0B94AC 800BC4AC 38EAFFFB */  subi      r7, r10, 0x5
/* 0B94B0 800BC4B0 7C073000 */  cmpw      r7, r6
/* 0B94B4 800BC4B4 4080000C */  bge       lbl_800BC4C0
/* 0B94B8 800BC4B8 3860FFFA */  li        r3, -0x6
/* 0B94BC 800BC4BC 48000074 */  b         lbl_800BC530
lbl_800BC4C0:
/* 0B94C0 800BC4C0 396B0001 */  addi      r11, r11, 0x1
/* 0B94C4 800BC4C4 5566043E */  clrlwi    r6, r11, 16
/* 0B94C8 800BC4C8 28060005 */  cmplwi    r6, 0x5
/* 0B94CC 800BC4CC 4180000C */  blt       lbl_800BC4D8
/* 0B94D0 800BC4D0 7C065040 */  cmplw     r6, r10
/* 0B94D4 800BC4D4 41800008 */  blt       lbl_800BC4DC
lbl_800BC4D8:
/* 0B94D8 800BC4D8 39600005 */  li        r11, 0x5
lbl_800BC4DC:
/* 0B94DC 800BC4DC 55660BFC */  clrlslwi  r6, r11, 16, 1
/* 0B94E0 800BC4E0 7CE83214 */  add       r7, r8, r6
/* 0B94E4 800BC4E4 A0C70000 */  lhz       r6, 0x0(r7)
/* 0B94E8 800BC4E8 28060000 */  cmplwi    r6, 0x0
/* 0B94EC 800BC4EC 4082002C */  bne       lbl_800BC518
/* 0B94F0 800BC4F0 5586043E */  clrlwi    r6, r12, 16
/* 0B94F4 800BC4F4 2806FFFF */  cmplwi    r6, 0xffff
/* 0B94F8 800BC4F8 4082000C */  bne       lbl_800BC504
/* 0B94FC 800BC4FC 7D6C5B78 */  mr        r12, r11
/* 0B9500 800BC500 4800000C */  b         lbl_800BC50C
lbl_800BC504:
/* 0B9504 800BC504 57E60BFC */  clrlslwi  r6, r31, 16, 1
/* 0B9508 800BC508 7D68332E */  sthx      r11, r8, r6
lbl_800BC50C:
/* 0B950C 800BC50C B0070000 */  sth       r0, 0x0(r7)
/* 0B9510 800BC510 3BEB0000 */  addi      r31, r11, 0x0
/* 0B9514 800BC514 3884FFFF */  subi      r4, r4, 0x1
lbl_800BC518:
/* 0B9518 800BC518 28040000 */  cmplwi    r4, 0x0
/* 0B951C 800BC51C 4082FF84 */  bne       lbl_800BC4A0
/* 0B9520 800BC520 B1680008 */  sth       r11, 0x8(r8)
/* 0B9524 800BC524 7D044378 */  mr        r4, r8
/* 0B9528 800BC528 B18900BE */  sth       r12, 0xbe(r9)
/* 0B952C 800BC52C 480000B9 */  bl        __CARDUpdateFatBlock
lbl_800BC530:
/* 0B9530 800BC530 80010024 */  lwz       r0, 0x24(r1)
/* 0B9534 800BC534 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B9538 800BC538 83C10018 */  lwz       r30, 0x18(r1)
/* 0B953C 800BC53C 38210020 */  addi      r1, r1, 0x20
/* 0B9540 800BC540 7C0803A6 */  mtlr      r0
/* 0B9544 800BC544 4E800020 */  blr

glabel __CARDFreeBlock
/* 0B9548 800BC548 7C0802A6 */  mflr      r0
/* 0B954C 800BC54C 1CE30110 */  mulli     r7, r3, 0x110
/* 0B9550 800BC550 90010004 */  stw       r0, 0x4(r1)
/* 0B9554 800BC554 3CC08019 */  lis       r6, D_80188A70@ha
/* 0B9558 800BC558 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B955C 800BC55C 38068A70 */  addi      r0, r6, D_80188A70@l
/* 0B9560 800BC560 7D203A14 */  add       r9, r0, r7
/* 0B9564 800BC564 80090000 */  lwz       r0, 0x0(r9)
/* 0B9568 800BC568 2C000000 */  cmpwi     r0, 0x0
/* 0B956C 800BC56C 4082000C */  bne       lbl_800BC578
/* 0B9570 800BC570 3860FFFD */  li        r3, -0x3
/* 0B9574 800BC574 48000060 */  b         lbl_800BC5D4
lbl_800BC578:
/* 0B9578 800BC578 81090088 */  lwz       r8, 0x88(r9)
/* 0B957C 800BC57C 38E00000 */  li        r7, 0x0
/* 0B9580 800BC580 48000040 */  b         lbl_800BC5C0
lbl_800BC584:
/* 0B9584 800BC584 5484043E */  clrlwi    r4, r4, 16
/* 0B9588 800BC588 28040005 */  cmplwi    r4, 0x5
/* 0B958C 800BC58C 41800010 */  blt       lbl_800BC59C
/* 0B9590 800BC590 A0090010 */  lhz       r0, 0x10(r9)
/* 0B9594 800BC594 7C040040 */  cmplw     r4, r0
/* 0B9598 800BC598 4180000C */  blt       lbl_800BC5A4
lbl_800BC59C:
/* 0B959C 800BC59C 3860FFFA */  li        r3, -0x6
/* 0B95A0 800BC5A0 48000034 */  b         lbl_800BC5D4
lbl_800BC5A4:
/* 0B95A4 800BC5A4 5480083C */  slwi      r0, r4, 1
/* 0B95A8 800BC5A8 7CC80214 */  add       r6, r8, r0
/* 0B95AC 800BC5AC A0860000 */  lhz       r4, 0x0(r6)
/* 0B95B0 800BC5B0 B0E60000 */  sth       r7, 0x0(r6)
/* 0B95B4 800BC5B4 A0C80006 */  lhz       r6, 0x6(r8)
/* 0B95B8 800BC5B8 38060001 */  addi      r0, r6, 0x1
/* 0B95BC 800BC5BC B0080006 */  sth       r0, 0x6(r8)
lbl_800BC5C0:
/* 0B95C0 800BC5C0 5480043E */  clrlwi    r0, r4, 16
/* 0B95C4 800BC5C4 2800FFFF */  cmplwi    r0, 0xffff
/* 0B95C8 800BC5C8 4082FFBC */  bne       lbl_800BC584
/* 0B95CC 800BC5CC 7D044378 */  mr        r4, r8
/* 0B95D0 800BC5D0 48000015 */  bl        __CARDUpdateFatBlock
lbl_800BC5D4:
/* 0B95D4 800BC5D4 8001000C */  lwz       r0, 0xc(r1)
/* 0B95D8 800BC5D8 38210008 */  addi      r1, r1, 0x8
/* 0B95DC 800BC5DC 7C0803A6 */  mtlr      r0
/* 0B95E0 800BC5E0 4E800020 */  blr

glabel __CARDUpdateFatBlock
/* 0B95E4 800BC5E4 7C0802A6 */  mflr      r0
/* 0B95E8 800BC5E8 90010004 */  stw       r0, 0x4(r1)
/* 0B95EC 800BC5EC 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B95F0 800BC5F0 93E10024 */  stw       r31, 0x24(r1)
/* 0B95F4 800BC5F4 93C10020 */  stw       r30, 0x20(r1)
/* 0B95F8 800BC5F8 3BC50000 */  addi      r30, r5, 0x0
/* 0B95FC 800BC5FC 93A1001C */  stw       r29, 0x1c(r1)
/* 0B9600 800BC600 3BA40000 */  addi      r29, r4, 0x0
/* 0B9604 800BC604 38BD0000 */  addi      r5, r29, 0x0
/* 0B9608 800BC608 93810018 */  stw       r28, 0x18(r1)
/* 0B960C 800BC60C 3B830000 */  addi      r28, r3, 0x0
/* 0B9610 800BC610 38DD0002 */  addi      r6, r29, 0x2
/* 0B9614 800BC614 A0640004 */  lhz       r3, 0x4(r4)
/* 0B9618 800BC618 1C9C0110 */  mulli     r4, r28, 0x110
/* 0B961C 800BC61C 38030001 */  addi      r0, r3, 0x1
/* 0B9620 800BC620 3C608019 */  lis       r3, D_80188A70@ha
/* 0B9624 800BC624 B01D0004 */  sth       r0, 0x4(r29)
/* 0B9628 800BC628 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B962C 800BC62C 7FE02214 */  add       r31, r0, r4
/* 0B9630 800BC630 387D0004 */  addi      r3, r29, 0x4
/* 0B9634 800BC634 38801FFC */  li        r4, 0x1ffc
/* 0B9638 800BC638 480002BD */  bl        __CARDCheckSum
/* 0B963C 800BC63C 387D0000 */  addi      r3, r29, 0x0
/* 0B9640 800BC640 38802000 */  li        r4, 0x2000
/* 0B9644 800BC644 4BFE06B1 */  bl        DCStoreRange
/* 0B9648 800BC648 93DF00D8 */  stw       r30, 0xd8(r31)
/* 0B964C 800BC64C 3C60800C */  lis       r3, EraseCallback@ha
/* 0B9650 800BC650 38A3C368 */  addi      r5, r3, EraseCallback@l
/* 0B9654 800BC654 801F0080 */  lwz       r0, 0x80(r31)
/* 0B9658 800BC658 7F83E378 */  mr        r3, r28
/* 0B965C 800BC65C 809F000C */  lwz       r4, 0xc(r31)
/* 0B9660 800BC660 7C00E850 */  subf      r0, r0, r29
/* 0B9664 800BC664 54009B7E */  srwi      r0, r0, 13
/* 0B9668 800BC668 7C8401D6 */  mullw     r4, r4, r0
/* 0B966C 800BC66C 4BFFE1D9 */  bl        __CARDEraseSector
/* 0B9670 800BC670 8001002C */  lwz       r0, 0x2c(r1)
/* 0B9674 800BC674 83E10024 */  lwz       r31, 0x24(r1)
/* 0B9678 800BC678 83C10020 */  lwz       r30, 0x20(r1)
/* 0B967C 800BC67C 83A1001C */  lwz       r29, 0x1c(r1)
/* 0B9680 800BC680 83810018 */  lwz       r28, 0x18(r1)
/* 0B9684 800BC684 38210028 */  addi      r1, r1, 0x28
/* 0B9688 800BC688 7C0803A6 */  mtlr      r0
/* 0B968C 800BC68C 4E800020 */  blr
