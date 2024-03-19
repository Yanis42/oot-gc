# OSAlloc.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009C360 - 0x8009C9D0

glabel DLInsert
/* 099360 8009C360 38E30000 */  addi      r7, r3, 0x0
/* 099364 8009C364 38C00000 */  li        r6, 0x0
/* 099368 8009C368 48000014 */  b         lbl_8009C37C
lbl_8009C36C:
/* 09936C 8009C36C 7C043840 */  cmplw     r4, r7
/* 099370 8009C370 40810014 */  ble       lbl_8009C384
/* 099374 8009C374 7CE63B78 */  mr        r6, r7
/* 099378 8009C378 80E70004 */  lwz       r7, 0x4(r7)
lbl_8009C37C:
/* 09937C 8009C37C 28070000 */  cmplwi    r7, 0x0
/* 099380 8009C380 4082FFEC */  bne       lbl_8009C36C
lbl_8009C384:
/* 099384 8009C384 90E40004 */  stw       r7, 0x4(r4)
/* 099388 8009C388 28070000 */  cmplwi    r7, 0x0
/* 09938C 8009C38C 90C40000 */  stw       r6, 0x0(r4)
/* 099390 8009C390 41820038 */  beq       lbl_8009C3C8
/* 099394 8009C394 90870000 */  stw       r4, 0x0(r7)
/* 099398 8009C398 80A40008 */  lwz       r5, 0x8(r4)
/* 09939C 8009C39C 7C042A14 */  add       r0, r4, r5
/* 0993A0 8009C3A0 7C003840 */  cmplw     r0, r7
/* 0993A4 8009C3A4 40820024 */  bne       lbl_8009C3C8
/* 0993A8 8009C3A8 80070008 */  lwz       r0, 0x8(r7)
/* 0993AC 8009C3AC 7C050214 */  add       r0, r5, r0
/* 0993B0 8009C3B0 90040008 */  stw       r0, 0x8(r4)
/* 0993B4 8009C3B4 80E70004 */  lwz       r7, 0x4(r7)
/* 0993B8 8009C3B8 28070000 */  cmplwi    r7, 0x0
/* 0993BC 8009C3BC 90E40004 */  stw       r7, 0x4(r4)
/* 0993C0 8009C3C0 41820008 */  beq       lbl_8009C3C8
/* 0993C4 8009C3C4 90870000 */  stw       r4, 0x0(r7)
lbl_8009C3C8:
/* 0993C8 8009C3C8 28060000 */  cmplwi    r6, 0x0
/* 0993CC 8009C3CC 41820038 */  beq       lbl_8009C404
/* 0993D0 8009C3D0 90860004 */  stw       r4, 0x4(r6)
/* 0993D4 8009C3D4 80A60008 */  lwz       r5, 0x8(r6)
/* 0993D8 8009C3D8 7C062A14 */  add       r0, r6, r5
/* 0993DC 8009C3DC 7C002040 */  cmplw     r0, r4
/* 0993E0 8009C3E0 4C820020 */  bnelr
/* 0993E4 8009C3E4 80040008 */  lwz       r0, 0x8(r4)
/* 0993E8 8009C3E8 28070000 */  cmplwi    r7, 0x0
/* 0993EC 8009C3EC 7C050214 */  add       r0, r5, r0
/* 0993F0 8009C3F0 90060008 */  stw       r0, 0x8(r6)
/* 0993F4 8009C3F4 90E60004 */  stw       r7, 0x4(r6)
/* 0993F8 8009C3F8 4D820020 */  beqlr
/* 0993FC 8009C3FC 90C70000 */  stw       r6, 0x0(r7)
/* 099400 8009C400 4E800020 */  blr
lbl_8009C404:
/* 099404 8009C404 7C832378 */  mr        r3, r4
/* 099408 8009C408 4E800020 */  blr

glabel OSAllocFromHeap
/* 09940C 8009C40C 1C03000C */  mulli     r0, r3, 0xc
/* 099410 8009C410 806D8AF8 */  lwz       r3, D_8018BA78@sda21(r0)
/* 099414 8009C414 7CA30214 */  add       r5, r3, r0
/* 099418 8009C418 3804003F */  addi      r0, r4, 0x3f
/* 09941C 8009C41C 80C50004 */  lwz       r6, 0x4(r5)
/* 099420 8009C420 54030034 */  clrrwi    r3, r0, 5
/* 099424 8009C424 48000014 */  b         lbl_8009C438
lbl_8009C428:
/* 099428 8009C428 80060008 */  lwz       r0, 0x8(r6)
/* 09942C 8009C42C 7C030000 */  cmpw      r3, r0
/* 099430 8009C430 40810010 */  ble       lbl_8009C440
/* 099434 8009C434 80C60004 */  lwz       r6, 0x4(r6)
lbl_8009C438:
/* 099438 8009C438 28060000 */  cmplwi    r6, 0x0
/* 09943C 8009C43C 4082FFEC */  bne       lbl_8009C428
lbl_8009C440:
/* 099440 8009C440 28060000 */  cmplwi    r6, 0x0
/* 099444 8009C444 4082000C */  bne       lbl_8009C450
/* 099448 8009C448 38600000 */  li        r3, 0x0
/* 09944C 8009C44C 4E800020 */  blr
lbl_8009C450:
/* 099450 8009C450 80060008 */  lwz       r0, 0x8(r6)
/* 099454 8009C454 7C030050 */  subf      r0, r3, r0
/* 099458 8009C458 28000040 */  cmplwi    r0, 0x40
/* 09945C 8009C45C 40800040 */  bge       lbl_8009C49C
/* 099460 8009C460 80860004 */  lwz       r4, 0x4(r6)
/* 099464 8009C464 80650004 */  lwz       r3, 0x4(r5)
/* 099468 8009C468 28040000 */  cmplwi    r4, 0x0
/* 09946C 8009C46C 4182000C */  beq       lbl_8009C478
/* 099470 8009C470 80060000 */  lwz       r0, 0x0(r6)
/* 099474 8009C474 90040000 */  stw       r0, 0x0(r4)
lbl_8009C478:
/* 099478 8009C478 80860000 */  lwz       r4, 0x0(r6)
/* 09947C 8009C47C 28040000 */  cmplwi    r4, 0x0
/* 099480 8009C480 4082000C */  bne       lbl_8009C48C
/* 099484 8009C484 80660004 */  lwz       r3, 0x4(r6)
/* 099488 8009C488 4800000C */  b         lbl_8009C494
lbl_8009C48C:
/* 09948C 8009C48C 80060004 */  lwz       r0, 0x4(r6)
/* 099490 8009C490 90040004 */  stw       r0, 0x4(r4)
lbl_8009C494:
/* 099494 8009C494 90650004 */  stw       r3, 0x4(r5)
/* 099498 8009C498 48000048 */  b         lbl_8009C4E0
lbl_8009C49C:
/* 09949C 8009C49C 90660008 */  stw       r3, 0x8(r6)
/* 0994A0 8009C4A0 7C861A14 */  add       r4, r6, r3
/* 0994A4 8009C4A4 90040008 */  stw       r0, 0x8(r4)
/* 0994A8 8009C4A8 80060000 */  lwz       r0, 0x0(r6)
/* 0994AC 8009C4AC 90040000 */  stw       r0, 0x0(r4)
/* 0994B0 8009C4B0 80060004 */  lwz       r0, 0x4(r6)
/* 0994B4 8009C4B4 90040004 */  stw       r0, 0x4(r4)
/* 0994B8 8009C4B8 80640004 */  lwz       r3, 0x4(r4)
/* 0994BC 8009C4BC 28030000 */  cmplwi    r3, 0x0
/* 0994C0 8009C4C0 41820008 */  beq       lbl_8009C4C8
/* 0994C4 8009C4C4 90830000 */  stw       r4, 0x0(r3)
lbl_8009C4C8:
/* 0994C8 8009C4C8 80640000 */  lwz       r3, 0x0(r4)
/* 0994CC 8009C4CC 28030000 */  cmplwi    r3, 0x0
/* 0994D0 8009C4D0 4182000C */  beq       lbl_8009C4DC
/* 0994D4 8009C4D4 90830004 */  stw       r4, 0x4(r3)
/* 0994D8 8009C4D8 48000008 */  b         lbl_8009C4E0
lbl_8009C4DC:
/* 0994DC 8009C4DC 90850004 */  stw       r4, 0x4(r5)
lbl_8009C4E0:
/* 0994E0 8009C4E0 80650008 */  lwz       r3, 0x8(r5)
/* 0994E4 8009C4E4 38000000 */  li        r0, 0x0
/* 0994E8 8009C4E8 90660004 */  stw       r3, 0x4(r6)
/* 0994EC 8009C4EC 28030000 */  cmplwi    r3, 0x0
/* 0994F0 8009C4F0 90060000 */  stw       r0, 0x0(r6)
/* 0994F4 8009C4F4 41820008 */  beq       lbl_8009C4FC
/* 0994F8 8009C4F8 90C30000 */  stw       r6, 0x0(r3)
lbl_8009C4FC:
/* 0994FC 8009C4FC 90C50008 */  stw       r6, 0x8(r5)
/* 099500 8009C500 38660020 */  addi      r3, r6, 0x20
/* 099504 8009C504 4E800020 */  blr

glabel OSFreeToHeap
/* 099508 8009C508 7C0802A6 */  mflr      r0
/* 09950C 8009C50C 38C4FFE0 */  subi      r6, r4, 0x20
/* 099510 8009C510 90010004 */  stw       r0, 0x4(r1)
/* 099514 8009C514 1C03000C */  mulli     r0, r3, 0xc
/* 099518 8009C518 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09951C 8009C51C 93E10014 */  stw       r31, 0x14(r1)
/* 099520 8009C520 808D8AF8 */  lwz       r4, D_8018BA78@sda21(r0)
/* 099524 8009C524 80660004 */  lwz       r3, 0x4(r6)
/* 099528 8009C528 7FE40214 */  add       r31, r4, r0
/* 09952C 8009C52C 28030000 */  cmplwi    r3, 0x0
/* 099530 8009C530 80BF0008 */  lwz       r5, 0x8(r31)
/* 099534 8009C534 7CC43378 */  mr        r4, r6
/* 099538 8009C538 4182000C */  beq       lbl_8009C544
/* 09953C 8009C53C 80040000 */  lwz       r0, 0x0(r4)
/* 099540 8009C540 90030000 */  stw       r0, 0x0(r3)
lbl_8009C544:
/* 099544 8009C544 80640000 */  lwz       r3, 0x0(r4)
/* 099548 8009C548 28030000 */  cmplwi    r3, 0x0
/* 09954C 8009C54C 4082000C */  bne       lbl_8009C558
/* 099550 8009C550 80A40004 */  lwz       r5, 0x4(r4)
/* 099554 8009C554 4800000C */  b         lbl_8009C560
lbl_8009C558:
/* 099558 8009C558 80040004 */  lwz       r0, 0x4(r4)
/* 09955C 8009C55C 90030004 */  stw       r0, 0x4(r3)
lbl_8009C560:
/* 099560 8009C560 90BF0008 */  stw       r5, 0x8(r31)
/* 099564 8009C564 807F0004 */  lwz       r3, 0x4(r31)
/* 099568 8009C568 4BFFFDF9 */  bl        DLInsert
/* 09956C 8009C56C 907F0004 */  stw       r3, 0x4(r31)
/* 099570 8009C570 8001001C */  lwz       r0, 0x1c(r1)
/* 099574 8009C574 83E10014 */  lwz       r31, 0x14(r1)
/* 099578 8009C578 38210018 */  addi      r1, r1, 0x18
/* 09957C 8009C57C 7C0803A6 */  mtlr      r0
/* 099580 8009C580 4E800020 */  blr

glabel OSSetCurrentHeap
/* 099584 8009C584 800D8728 */  lwz       r0, __OSCurrHeap@sda21(r0)
/* 099588 8009C588 906D8728 */  stw       r3, __OSCurrHeap@sda21(r0)
/* 09958C 8009C58C 7C030378 */  mr        r3, r0
/* 099590 8009C590 4E800020 */  blr

glabel OSInitAlloc
/* 099594 8009C594 1CE5000C */  mulli     r7, r5, 0xc
/* 099598 8009C598 906D8AF8 */  stw       r3, D_8018BA78@sda21(r0)
/* 09959C 8009C59C 90AD8AFC */  stw       r5, D_8018BA7C@sda21(r0)
/* 0995A0 8009C5A0 38C00000 */  li        r6, 0x0
/* 0995A4 8009C5A4 38660000 */  addi      r3, r6, 0x0
/* 0995A8 8009C5A8 39000000 */  li        r8, 0x0
/* 0995AC 8009C5AC 38A0FFFF */  li        r5, -0x1
/* 0995B0 8009C5B0 48000020 */  b         lbl_8009C5D0
lbl_8009C5B4:
/* 0995B4 8009C5B4 800D8AF8 */  lwz       r0, D_8018BA78@sda21(r0)
/* 0995B8 8009C5B8 39080001 */  addi      r8, r8, 0x1
/* 0995BC 8009C5BC 7D203214 */  add       r9, r0, r6
/* 0995C0 8009C5C0 90A90000 */  stw       r5, 0x0(r9)
/* 0995C4 8009C5C4 38C6000C */  addi      r6, r6, 0xc
/* 0995C8 8009C5C8 90690008 */  stw       r3, 0x8(r9)
/* 0995CC 8009C5CC 90690004 */  stw       r3, 0x4(r9)
lbl_8009C5D0:
/* 0995D0 8009C5D0 800D8AFC */  lwz       r0, D_8018BA7C@sda21(r0)
/* 0995D4 8009C5D4 7C080000 */  cmpw      r8, r0
/* 0995D8 8009C5D8 4180FFDC */  blt       lbl_8009C5B4
/* 0995DC 8009C5DC 806D8AF8 */  lwz       r3, D_8018BA78@sda21(r0)
/* 0995E0 8009C5E0 54800034 */  clrrwi    r0, r4, 5
/* 0995E4 8009C5E4 3880FFFF */  li        r4, -0x1
/* 0995E8 8009C5E8 900D8B04 */  stw       r0, D_8018BA84@sda21(r0)
/* 0995EC 8009C5EC 7C633A14 */  add       r3, r3, r7
/* 0995F0 8009C5F0 3803001F */  addi      r0, r3, 0x1f
/* 0995F4 8009C5F4 908D8728 */  stw       r4, __OSCurrHeap@sda21(r0)
/* 0995F8 8009C5F8 54030034 */  clrrwi    r3, r0, 5
/* 0995FC 8009C5FC 906D8B00 */  stw       r3, D_8018BA80@sda21(r0)
/* 099600 8009C600 4E800020 */  blr

glabel OSCreateHeap
/* 099604 8009C604 80CD8AFC */  lwz       r6, D_8018BA7C@sda21(r0)
/* 099608 8009C608 3803001F */  addi      r0, r3, 0x1f
/* 09960C 8009C60C 80AD8AF8 */  lwz       r5, D_8018BA78@sda21(r0)
/* 099610 8009C610 54070034 */  clrrwi    r7, r0, 5
/* 099614 8009C614 2C060000 */  cmpwi     r6, 0x0
/* 099618 8009C618 7CC903A6 */  mtctr     r6
/* 09961C 8009C61C 54840034 */  clrrwi    r4, r4, 5
/* 099620 8009C620 38600000 */  li        r3, 0x0
/* 099624 8009C624 40810044 */  ble       lbl_8009C668
lbl_8009C628:
/* 099628 8009C628 80050000 */  lwz       r0, 0x0(r5)
/* 09962C 8009C62C 2C000000 */  cmpwi     r0, 0x0
/* 099630 8009C630 4080002C */  bge       lbl_8009C65C
/* 099634 8009C634 7C072050 */  subf      r0, r7, r4
/* 099638 8009C638 90050000 */  stw       r0, 0x0(r5)
/* 09963C 8009C63C 38800000 */  li        r4, 0x0
/* 099640 8009C640 90870000 */  stw       r4, 0x0(r7)
/* 099644 8009C644 90870004 */  stw       r4, 0x4(r7)
/* 099648 8009C648 80050000 */  lwz       r0, 0x0(r5)
/* 09964C 8009C64C 90070008 */  stw       r0, 0x8(r7)
/* 099650 8009C650 90E50004 */  stw       r7, 0x4(r5)
/* 099654 8009C654 90850008 */  stw       r4, 0x8(r5)
/* 099658 8009C658 4E800020 */  blr
lbl_8009C65C:
/* 09965C 8009C65C 38A5000C */  addi      r5, r5, 0xc
/* 099660 8009C660 38630001 */  addi      r3, r3, 0x1
/* 099664 8009C664 4200FFC4 */  bdnz      lbl_8009C628
lbl_8009C668:
/* 099668 8009C668 3860FFFF */  li        r3, -0x1
/* 09966C 8009C66C 4E800020 */  blr

glabel OSCheckHeap
/* 099670 8009C670 7C0802A6 */  mflr      r0
/* 099674 8009C674 3C80800F */  lis       r4, D_800F1CF0@ha
/* 099678 8009C678 90010004 */  stw       r0, 0x4(r1)
/* 09967C 8009C67C 38C41CF0 */  addi      r6, r4, D_800F1CF0@l
/* 099680 8009C680 38000000 */  li        r0, 0x0
/* 099684 8009C684 9421FFF8 */  stwu      r1, -0x8(r1)
/* 099688 8009C688 38800000 */  li        r4, 0x0
/* 09968C 8009C68C 80ED8AF8 */  lwz       r7, D_8018BA78@sda21(r0)
/* 099690 8009C690 28070000 */  cmplwi    r7, 0x0
/* 099694 8009C694 4082001C */  bne       lbl_8009C6B0
/* 099698 8009C698 38660000 */  addi      r3, r6, 0x0
/* 09969C 8009C69C 4CC63182 */  crclr     cr1eq
/* 0996A0 8009C6A0 3880037D */  li        r4, 0x37d
/* 0996A4 8009C6A4 480014A1 */  bl        OSReport
/* 0996A8 8009C6A8 3860FFFF */  li        r3, -0x1
/* 0996AC 8009C6AC 48000314 */  b         lbl_8009C9C0
lbl_8009C6B0:
/* 0996B0 8009C6B0 2C030000 */  cmpwi     r3, 0x0
/* 0996B4 8009C6B4 41800010 */  blt       lbl_8009C6C4
/* 0996B8 8009C6B8 80AD8AFC */  lwz       r5, D_8018BA7C@sda21(r0)
/* 0996BC 8009C6BC 7C032800 */  cmpw      r3, r5
/* 0996C0 8009C6C0 4180001C */  blt       lbl_8009C6DC
lbl_8009C6C4:
/* 0996C4 8009C6C4 38660024 */  addi      r3, r6, 0x24
/* 0996C8 8009C6C8 4CC63182 */  crclr     cr1eq
/* 0996CC 8009C6CC 3880037E */  li        r4, 0x37e
/* 0996D0 8009C6D0 48001475 */  bl        OSReport
/* 0996D4 8009C6D4 3860FFFF */  li        r3, -0x1
/* 0996D8 8009C6D8 480002E8 */  b         lbl_8009C9C0
lbl_8009C6DC:
/* 0996DC 8009C6DC 1C63000C */  mulli     r3, r3, 0xc
/* 0996E0 8009C6E0 7CA71A14 */  add       r5, r7, r3
/* 0996E4 8009C6E4 80650000 */  lwz       r3, 0x0(r5)
/* 0996E8 8009C6E8 2C030000 */  cmpwi     r3, 0x0
/* 0996EC 8009C6EC 4080001C */  bge       lbl_8009C708
/* 0996F0 8009C6F0 3866005C */  addi      r3, r6, 0x5c
/* 0996F4 8009C6F4 4CC63182 */  crclr     cr1eq
/* 0996F8 8009C6F8 38800381 */  li        r4, 0x381
/* 0996FC 8009C6FC 48001449 */  bl        OSReport
/* 099700 8009C700 3860FFFF */  li        r3, -0x1
/* 099704 8009C704 480002BC */  b         lbl_8009C9C0
lbl_8009C708:
/* 099708 8009C708 80E50008 */  lwz       r7, 0x8(r5)
/* 09970C 8009C70C 28070000 */  cmplwi    r7, 0x0
/* 099710 8009C710 41820028 */  beq       lbl_8009C738
/* 099714 8009C714 80670000 */  lwz       r3, 0x0(r7)
/* 099718 8009C718 28030000 */  cmplwi    r3, 0x0
/* 09971C 8009C71C 4182001C */  beq       lbl_8009C738
/* 099720 8009C720 38660084 */  addi      r3, r6, 0x84
/* 099724 8009C724 4CC63182 */  crclr     cr1eq
/* 099728 8009C728 38800383 */  li        r4, 0x383
/* 09972C 8009C72C 48001419 */  bl        OSReport
/* 099730 8009C730 3860FFFF */  li        r3, -0x1
/* 099734 8009C734 4800028C */  b         lbl_8009C9C0
lbl_8009C738:
/* 099738 8009C738 812D8B00 */  lwz       r9, D_8018BA80@sda21(r0)
/* 09973C 8009C73C 7CE83B78 */  mr        r8, r7
/* 099740 8009C740 814D8B04 */  lwz       r10, D_8018BA84@sda21(r0)
/* 099744 8009C744 480000F0 */  b         lbl_8009C834
lbl_8009C748:
/* 099748 8009C748 7C094040 */  cmplw     r9, r8
/* 09974C 8009C74C 4181000C */  bgt       lbl_8009C758
/* 099750 8009C750 7C085040 */  cmplw     r8, r10
/* 099754 8009C754 4180001C */  blt       lbl_8009C770
lbl_8009C758:
/* 099758 8009C758 386600D4 */  addi      r3, r6, 0xd4
/* 09975C 8009C75C 4CC63182 */  crclr     cr1eq
/* 099760 8009C760 38800386 */  li        r4, 0x386
/* 099764 8009C764 480013E1 */  bl        OSReport
/* 099768 8009C768 3860FFFF */  li        r3, -0x1
/* 09976C 8009C76C 48000254 */  b         lbl_8009C9C0
lbl_8009C770:
/* 099770 8009C770 550306FF */  clrlwi.   r3, r8, 27
/* 099774 8009C774 4182001C */  beq       lbl_8009C790
/* 099778 8009C778 38660114 */  addi      r3, r6, 0x114
/* 09977C 8009C77C 4CC63182 */  crclr     cr1eq
/* 099780 8009C780 38800387 */  li        r4, 0x387
/* 099784 8009C784 480013C1 */  bl        OSReport
/* 099788 8009C788 3860FFFF */  li        r3, -0x1
/* 09978C 8009C78C 48000234 */  b         lbl_8009C9C0
lbl_8009C790:
/* 099790 8009C790 80E80004 */  lwz       r7, 0x4(r8)
/* 099794 8009C794 28070000 */  cmplwi    r7, 0x0
/* 099798 8009C798 41820028 */  beq       lbl_8009C7C0
/* 09979C 8009C79C 80670000 */  lwz       r3, 0x0(r7)
/* 0997A0 8009C7A0 7C034040 */  cmplw     r3, r8
/* 0997A4 8009C7A4 4182001C */  beq       lbl_8009C7C0
/* 0997A8 8009C7A8 3866014C */  addi      r3, r6, 0x14c
/* 0997AC 8009C7AC 4CC63182 */  crclr     cr1eq
/* 0997B0 8009C7B0 38800388 */  li        r4, 0x388
/* 0997B4 8009C7B4 48001391 */  bl        OSReport
/* 0997B8 8009C7B8 3860FFFF */  li        r3, -0x1
/* 0997BC 8009C7BC 48000204 */  b         lbl_8009C9C0
lbl_8009C7C0:
/* 0997C0 8009C7C0 81080008 */  lwz       r8, 0x8(r8)
/* 0997C4 8009C7C4 28080040 */  cmplwi    r8, 0x40
/* 0997C8 8009C7C8 4080001C */  bge       lbl_8009C7E4
/* 0997CC 8009C7CC 38660198 */  addi      r3, r6, 0x198
/* 0997D0 8009C7D0 4CC63182 */  crclr     cr1eq
/* 0997D4 8009C7D4 38800389 */  li        r4, 0x389
/* 0997D8 8009C7D8 4800136D */  bl        OSReport
/* 0997DC 8009C7DC 3860FFFF */  li        r3, -0x1
/* 0997E0 8009C7E0 480001E0 */  b         lbl_8009C9C0
lbl_8009C7E4:
/* 0997E4 8009C7E4 550306FF */  clrlwi.   r3, r8, 27
/* 0997E8 8009C7E8 4182001C */  beq       lbl_8009C804
/* 0997EC 8009C7EC 386601CC */  addi      r3, r6, 0x1cc
/* 0997F0 8009C7F0 4CC63182 */  crclr     cr1eq
/* 0997F4 8009C7F4 3880038A */  li        r4, 0x38a
/* 0997F8 8009C7F8 4800134D */  bl        OSReport
/* 0997FC 8009C7FC 3860FFFF */  li        r3, -0x1
/* 099800 8009C800 480001C0 */  b         lbl_8009C9C0
lbl_8009C804:
/* 099804 8009C804 7C004215 */  add.      r0, r0, r8
/* 099808 8009C808 40810010 */  ble       lbl_8009C818
/* 09980C 8009C80C 80650000 */  lwz       r3, 0x0(r5)
/* 099810 8009C810 7C001800 */  cmpw      r0, r3
/* 099814 8009C814 4081001C */  ble       lbl_8009C830
lbl_8009C818:
/* 099818 8009C818 3866020C */  addi      r3, r6, 0x20c
/* 09981C 8009C81C 4CC63182 */  crclr     cr1eq
/* 099820 8009C820 3880038D */  li        r4, 0x38d
/* 099824 8009C824 48001321 */  bl        OSReport
/* 099828 8009C828 3860FFFF */  li        r3, -0x1
/* 09982C 8009C82C 48000194 */  b         lbl_8009C9C0
lbl_8009C830:
/* 099830 8009C830 7CE83B78 */  mr        r8, r7
lbl_8009C834:
/* 099834 8009C834 28080000 */  cmplwi    r8, 0x0
/* 099838 8009C838 4082FF10 */  bne       lbl_8009C748
/* 09983C 8009C83C 81650004 */  lwz       r11, 0x4(r5)
/* 099840 8009C840 280B0000 */  cmplwi    r11, 0x0
/* 099844 8009C844 4182014C */  beq       lbl_8009C990
/* 099848 8009C848 806B0000 */  lwz       r3, 0x0(r11)
/* 09984C 8009C84C 28030000 */  cmplwi    r3, 0x0
/* 099850 8009C850 41820140 */  beq       lbl_8009C990
/* 099854 8009C854 38660248 */  addi      r3, r6, 0x248
/* 099858 8009C858 4CC63182 */  crclr     cr1eq
/* 09985C 8009C85C 38800395 */  li        r4, 0x395
/* 099860 8009C860 480012E5 */  bl        OSReport
/* 099864 8009C864 3860FFFF */  li        r3, -0x1
/* 099868 8009C868 48000158 */  b         lbl_8009C9C0
/* 09986C 8009C86C 48000124 */  b         lbl_8009C990
lbl_8009C870:
/* 099870 8009C870 7C095840 */  cmplw     r9, r11
/* 099874 8009C874 4181000C */  bgt       lbl_8009C880
/* 099878 8009C878 7C0B5040 */  cmplw     r11, r10
/* 09987C 8009C87C 4180001C */  blt       lbl_8009C898
lbl_8009C880:
/* 099880 8009C880 386600D4 */  addi      r3, r6, 0xd4
/* 099884 8009C884 4CC63182 */  crclr     cr1eq
/* 099888 8009C888 38800398 */  li        r4, 0x398
/* 09988C 8009C88C 480012B9 */  bl        OSReport
/* 099890 8009C890 3860FFFF */  li        r3, -0x1
/* 099894 8009C894 4800012C */  b         lbl_8009C9C0
lbl_8009C898:
/* 099898 8009C898 556306FF */  clrlwi.   r3, r11, 27
/* 09989C 8009C89C 4182001C */  beq       lbl_8009C8B8
/* 0998A0 8009C8A0 38660114 */  addi      r3, r6, 0x114
/* 0998A4 8009C8A4 4CC63182 */  crclr     cr1eq
/* 0998A8 8009C8A8 38800399 */  li        r4, 0x399
/* 0998AC 8009C8AC 48001299 */  bl        OSReport
/* 0998B0 8009C8B0 3860FFFF */  li        r3, -0x1
/* 0998B4 8009C8B4 4800010C */  b         lbl_8009C9C0
lbl_8009C8B8:
/* 0998B8 8009C8B8 80EB0004 */  lwz       r7, 0x4(r11)
/* 0998BC 8009C8BC 28070000 */  cmplwi    r7, 0x0
/* 0998C0 8009C8C0 41820028 */  beq       lbl_8009C8E8
/* 0998C4 8009C8C4 80670000 */  lwz       r3, 0x0(r7)
/* 0998C8 8009C8C8 7C035840 */  cmplw     r3, r11
/* 0998CC 8009C8CC 4182001C */  beq       lbl_8009C8E8
/* 0998D0 8009C8D0 3866014C */  addi      r3, r6, 0x14c
/* 0998D4 8009C8D4 4CC63182 */  crclr     cr1eq
/* 0998D8 8009C8D8 3880039A */  li        r4, 0x39a
/* 0998DC 8009C8DC 48001269 */  bl        OSReport
/* 0998E0 8009C8E0 3860FFFF */  li        r3, -0x1
/* 0998E4 8009C8E4 480000DC */  b         lbl_8009C9C0
lbl_8009C8E8:
/* 0998E8 8009C8E8 810B0008 */  lwz       r8, 0x8(r11)
/* 0998EC 8009C8EC 28080040 */  cmplwi    r8, 0x40
/* 0998F0 8009C8F0 4080001C */  bge       lbl_8009C90C
/* 0998F4 8009C8F4 38660198 */  addi      r3, r6, 0x198
/* 0998F8 8009C8F8 4CC63182 */  crclr     cr1eq
/* 0998FC 8009C8FC 3880039B */  li        r4, 0x39b
/* 099900 8009C900 48001245 */  bl        OSReport
/* 099904 8009C904 3860FFFF */  li        r3, -0x1
/* 099908 8009C908 480000B8 */  b         lbl_8009C9C0
lbl_8009C90C:
/* 09990C 8009C90C 550306FF */  clrlwi.   r3, r8, 27
/* 099910 8009C910 4182001C */  beq       lbl_8009C92C
/* 099914 8009C914 386601CC */  addi      r3, r6, 0x1cc
/* 099918 8009C918 4CC63182 */  crclr     cr1eq
/* 09991C 8009C91C 3880039C */  li        r4, 0x39c
/* 099920 8009C920 48001225 */  bl        OSReport
/* 099924 8009C924 3860FFFF */  li        r3, -0x1
/* 099928 8009C928 48000098 */  b         lbl_8009C9C0
lbl_8009C92C:
/* 09992C 8009C92C 28070000 */  cmplwi    r7, 0x0
/* 099930 8009C930 41820028 */  beq       lbl_8009C958
/* 099934 8009C934 7C6B4214 */  add       r3, r11, r8
/* 099938 8009C938 7C033840 */  cmplw     r3, r7
/* 09993C 8009C93C 4180001C */  blt       lbl_8009C958
/* 099940 8009C940 38660290 */  addi      r3, r6, 0x290
/* 099944 8009C944 4CC63182 */  crclr     cr1eq
/* 099948 8009C948 3880039D */  li        r4, 0x39d
/* 09994C 8009C94C 480011F9 */  bl        OSReport
/* 099950 8009C950 3860FFFF */  li        r3, -0x1
/* 099954 8009C954 4800006C */  b         lbl_8009C9C0
lbl_8009C958:
/* 099958 8009C958 7C004215 */  add.      r0, r0, r8
/* 09995C 8009C95C 7C882214 */  add       r4, r8, r4
/* 099960 8009C960 3884FFE0 */  subi      r4, r4, 0x20
/* 099964 8009C964 40810010 */  ble       lbl_8009C974
/* 099968 8009C968 80650000 */  lwz       r3, 0x0(r5)
/* 09996C 8009C96C 7C001800 */  cmpw      r0, r3
/* 099970 8009C970 4081001C */  ble       lbl_8009C98C
lbl_8009C974:
/* 099974 8009C974 3866020C */  addi      r3, r6, 0x20c
/* 099978 8009C978 4CC63182 */  crclr     cr1eq
/* 09997C 8009C97C 388003A1 */  li        r4, 0x3a1
/* 099980 8009C980 480011C5 */  bl        OSReport
/* 099984 8009C984 3860FFFF */  li        r3, -0x1
/* 099988 8009C988 48000038 */  b         lbl_8009C9C0
lbl_8009C98C:
/* 09998C 8009C98C 7CEB3B78 */  mr        r11, r7
lbl_8009C990:
/* 099990 8009C990 280B0000 */  cmplwi    r11, 0x0
/* 099994 8009C994 4082FEDC */  bne       lbl_8009C870
/* 099998 8009C998 80650000 */  lwz       r3, 0x0(r5)
/* 09999C 8009C99C 7C001800 */  cmpw      r0, r3
/* 0999A0 8009C9A0 4182001C */  beq       lbl_8009C9BC
/* 0999A4 8009C9A4 386602F0 */  addi      r3, r6, 0x2f0
/* 0999A8 8009C9A8 4CC63182 */  crclr     cr1eq
/* 0999AC 8009C9AC 388003A8 */  li        r4, 0x3a8
/* 0999B0 8009C9B0 48001195 */  bl        OSReport
/* 0999B4 8009C9B4 3860FFFF */  li        r3, -0x1
/* 0999B8 8009C9B8 48000008 */  b         lbl_8009C9C0
lbl_8009C9BC:
/* 0999BC 8009C9BC 7C832378 */  mr        r3, r4
lbl_8009C9C0:
/* 0999C0 8009C9C0 8001000C */  lwz       r0, 0xc(r1)
/* 0999C4 8009C9C4 38210008 */  addi      r1, r1, 0x8
/* 0999C8 8009C9C8 7C0803A6 */  mtlr      r0
/* 0999CC 8009C9CC 4E800020 */  blr

# 0x800F1CF0 - 0x800F2088
.section .data, "wa"

.balign 8

glabel D_800F1CF0
	.string "OSCheckHeap: Failed HeapArray in %d"

glabel D_800F1D14
	.string "OSCheckHeap: Failed 0 <= heap && heap < NumHeaps in %d"

glabel gap_05_800F1D4B_data
.hidden gap_05_800F1D4B_data
	.byte 0x00

glabel D_800F1D4C
	.string "OSCheckHeap: Failed 0 <= hd->size in %d"

glabel D_800F1D74
	.string "OSCheckHeap: Failed hd->allocated == NULL || hd->allocated->prev == NULL in %d"

glabel gap_05_800F1DC3_data
.hidden gap_05_800F1DC3_data
	.byte 0x00

glabel D_800F1DC4
	.string "OSCheckHeap: Failed InRange(cell, ArenaStart, ArenaEnd) in %d"

glabel gap_05_800F1E02_data
.hidden gap_05_800F1E02_data
	.2byte 0x0000

glabel D_800F1E04
	.string "OSCheckHeap: Failed OFFSET(cell, ALIGNMENT) == 0 in %d"

glabel gap_05_800F1E3B_data
.hidden gap_05_800F1E3B_data
	.byte 0x00

glabel D_800F1E3C
	.string "OSCheckHeap: Failed cell->next == NULL || cell->next->prev == cell in %d"

glabel gap_05_800F1E85_data
.hidden gap_05_800F1E85_data
	.byte 0x00, 0x00, 0x00

glabel D_800F1E88
	.string "OSCheckHeap: Failed MINOBJSIZE <= cell->size in %d"

glabel gap_05_800F1EBB_data
.hidden gap_05_800F1EBB_data
	.byte 0x00

glabel D_800F1EBC
	.string "OSCheckHeap: Failed OFFSET(cell->size, ALIGNMENT) == 0 in %d"

glabel gap_05_800F1EF9_data
.hidden gap_05_800F1EF9_data
	.byte 0x00, 0x00, 0x00

glabel D_800F1EFC
	.string "OSCheckHeap: Failed 0 < total && total <= hd->size in %d"

glabel gap_05_800F1F35_data
.hidden gap_05_800F1F35_data
	.byte 0x00, 0x00, 0x00

glabel D_800F1F38
	.string "OSCheckHeap: Failed hd->free == NULL || hd->free->prev == NULL in %d"

glabel gap_05_800F1F7D_data
.hidden gap_05_800F1F7D_data
	.byte 0x00, 0x00, 0x00

glabel D_800F1F80
	.string "OSCheckHeap: Failed cell->next == NULL || (char*) cell + cell->size < (char*) cell->next in %d"

glabel gap_05_800F1FDF_data
.hidden gap_05_800F1FDF_data
	.byte 0x00

glabel D_800F1FE0
	.string "OSCheckHeap: Failed total == hd->size in %d"

glabel D_800F200C
	.string "\nOSDumpHeap(%d):\n"

glabel gap_05_800F201E_data
.hidden gap_05_800F201E_data
	.2byte 0x0000

glabel D_800F2020
	.string "--------Inactive\n"

glabel gap_05_800F2032_data
.hidden gap_05_800F2032_data
	.2byte 0x0000

glabel D_800F2034
	.string "addr\tsize\t\tend\tprev\tnext\n"

glabel gap_05_800F204E_data
.hidden gap_05_800F204E_data
	.2byte 0x0000

glabel D_800F2050
	.string "--------Allocated\n"

glabel gap_05_800F2063_data
.hidden gap_05_800F2063_data
	.byte 0x00

glabel D_800F2064
	.string "%x\t%d\t%x\t%x\t%x\n"

glabel D_800F2074
	.string "--------Free\n"

glabel gap_05_800F2082_data
.hidden gap_05_800F2082_data
	.2byte 0x0000

glabel D_800F2084
	.string ""

glabel gap_05_800F2085_data
.hidden gap_05_800F2085_data
	.byte 0x00, 0x00, 0x00

# 0x8018B6A8 - 0x8018B6B0
.section .sdata, "wa"

glabel __OSCurrHeap
	.long 0xFFFFFFFF
	.long 0x00000000

# 0x8018BA78 - 0x8018BA88
.section .sbss, "wa"

glabel D_8018BA78
	.skip 0x4

glabel D_8018BA7C
	.skip 0x4

glabel D_8018BA80
	.skip 0x4

glabel D_8018BA84
	.skip 0x4
