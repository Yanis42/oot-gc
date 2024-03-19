# targimpl.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CA454 - 0x800CBA30

glabel fn_800CA454
/* 0C7454 800CA454 7C6000A6 */  mfmsr     r3
/* 0C7458 800CA458 4E800020 */  blr

glabel fn_800CA45C
/* 0C745C 800CA45C 7C600124 */  mtmsr     r3
/* 0C7460 800CA460 4E800020 */  blr

glabel fn_800CA464
/* 0C7464 800CA464 7C0802A6 */  mflr      r0
/* 0C7468 800CA468 90010004 */  stw       r0, 0x4(r1)
/* 0C746C 800CA46C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0C7470 800CA470 93E10014 */  stw       r31, 0x14(r1)
/* 0C7474 800CA474 93C10010 */  stw       r30, 0x10(r1)
/* 0C7478 800CA478 93A1000C */  stw       r29, 0xc(r1)
/* 0C747C 800CA47C 7CBE2B78 */  mr        r30, r5
/* 0C7480 800CA480 7FE41A14 */  add       r31, r4, r3
/* 0C7484 800CA484 3BFFFFFF */  subi      r31, r31, 0x1
/* 0C7488 800CA488 7C1F1840 */  cmplw     r31, r3
/* 0C748C 800CA48C 38A00700 */  li        r5, 0x700
/* 0C7490 800CA490 4080000C */  bge       lbl_800CA49C
/* 0C7494 800CA494 38600700 */  li        r3, 0x700
/* 0C7498 800CA498 480000E8 */  b         lbl_800CA580
lbl_800CA49C:
/* 0C749C 800CA49C 3C80800D */  lis       r4, D_800D1EA0@ha
/* 0C74A0 800CA4A0 38841EA0 */  addi      r4, r4, D_800D1EA0@l
/* 0C74A4 800CA4A4 38C00000 */  li        r6, 0x0
/* 0C74A8 800CA4A8 48000004 */  b         lbl_800CA4AC
lbl_800CA4AC:
/* 0C74AC 800CA4AC 48000004 */  b         lbl_800CA4B0
lbl_800CA4B0:
/* 0C74B0 800CA4B0 80040004 */  lwz       r0, 0x4(r4)
/* 0C74B4 800CA4B4 7C030040 */  cmplw     r3, r0
/* 0C74B8 800CA4B8 418100C4 */  bgt       lbl_800CA57C
/* 0C74BC 800CA4BC 80040000 */  lwz       r0, 0x0(r4)
/* 0C74C0 800CA4C0 7C1F0040 */  cmplw     r31, r0
/* 0C74C4 800CA4C4 418000B8 */  blt       lbl_800CA57C
/* 0C74C8 800CA4C8 57C0063E */  clrlwi    r0, r30, 24
/* 0C74CC 800CA4CC 28000000 */  cmplwi    r0, 0x0
/* 0C74D0 800CA4D0 40820018 */  bne       lbl_800CA4E8
/* 0C74D4 800CA4D4 54C02036 */  slwi      r0, r6, 4
/* 0C74D8 800CA4D8 7C840214 */  add       r4, r4, r0
/* 0C74DC 800CA4DC 80040008 */  lwz       r0, 0x8(r4)
/* 0C74E0 800CA4E0 2C000000 */  cmpwi     r0, 0x0
/* 0C74E4 800CA4E4 4182002C */  beq       lbl_800CA510
lbl_800CA4E8:
/* 0C74E8 800CA4E8 57C0063E */  clrlwi    r0, r30, 24
/* 0C74EC 800CA4EC 28000001 */  cmplwi    r0, 0x1
/* 0C74F0 800CA4F0 40820028 */  bne       lbl_800CA518
/* 0C74F4 800CA4F4 3C80800D */  lis       r4, D_800D1EA0@ha
/* 0C74F8 800CA4F8 38841EA0 */  addi      r4, r4, D_800D1EA0@l
/* 0C74FC 800CA4FC 54C02036 */  slwi      r0, r6, 4
/* 0C7500 800CA500 7C840214 */  add       r4, r4, r0
/* 0C7504 800CA504 8004000C */  lwz       r0, 0xc(r4)
/* 0C7508 800CA508 2C000000 */  cmpwi     r0, 0x0
/* 0C750C 800CA50C 4082000C */  bne       lbl_800CA518
lbl_800CA510:
/* 0C7510 800CA510 38A00700 */  li        r5, 0x700
/* 0C7514 800CA514 48000068 */  b         lbl_800CA57C
lbl_800CA518:
/* 0C7518 800CA518 3C80800D */  lis       r4, D_800D1EA0@ha
/* 0C751C 800CA51C 54DD2036 */  slwi      r29, r6, 4
/* 0C7520 800CA520 38041EA0 */  addi      r0, r4, D_800D1EA0@l
/* 0C7524 800CA524 7C80EA14 */  add       r4, r0, r29
/* 0C7528 800CA528 80040000 */  lwz       r0, 0x0(r4)
/* 0C752C 800CA52C 38A00000 */  li        r5, 0x0
/* 0C7530 800CA530 7C030040 */  cmplw     r3, r0
/* 0C7534 800CA534 40800014 */  bge       lbl_800CA548
/* 0C7538 800CA538 7FC5F378 */  mr        r5, r30
/* 0C753C 800CA53C 7C830050 */  subf      r4, r3, r0
/* 0C7540 800CA540 4BFFFF25 */  bl        fn_800CA464
/* 0C7544 800CA544 7C651B78 */  mr        r5, r3
lbl_800CA548:
/* 0C7548 800CA548 2C050000 */  cmpwi     r5, 0x0
/* 0C754C 800CA54C 40820030 */  bne       lbl_800CA57C
/* 0C7550 800CA550 3C60800D */  lis       r3, D_800D1EA0@ha
/* 0C7554 800CA554 38031EA0 */  addi      r0, r3, D_800D1EA0@l
/* 0C7558 800CA558 7C60EA14 */  add       r3, r0, r29
/* 0C755C 800CA55C 80630004 */  lwz       r3, 0x4(r3)
/* 0C7560 800CA560 7C1F1840 */  cmplw     r31, r3
/* 0C7564 800CA564 40810018 */  ble       lbl_800CA57C
/* 0C7568 800CA568 7FC5F378 */  mr        r5, r30
/* 0C756C 800CA56C 7C83F850 */  subf      r4, r3, r31
/* 0C7570 800CA570 4BFFFEF5 */  bl        fn_800CA464
/* 0C7574 800CA574 7C651B78 */  mr        r5, r3
/* 0C7578 800CA578 48000004 */  b         lbl_800CA57C
lbl_800CA57C:
/* 0C757C 800CA57C 7CA32B78 */  mr        r3, r5
lbl_800CA580:
/* 0C7580 800CA580 83E10014 */  lwz       r31, 0x14(r1)
/* 0C7584 800CA584 83C10010 */  lwz       r30, 0x10(r1)
/* 0C7588 800CA588 83A1000C */  lwz       r29, 0xc(r1)
/* 0C758C 800CA58C 38210018 */  addi      r1, r1, 0x18
/* 0C7590 800CA590 80010004 */  lwz       r0, 0x4(r1)
/* 0C7594 800CA594 7C0803A6 */  mtlr      r0
/* 0C7598 800CA598 4E800020 */  blr

glabel fn_800CA59C
/* 0C759C 800CA59C 7D0000A6 */  mfmsr     r8
/* 0C75A0 800CA5A0 39400000 */  li        r10, 0x0
lbl_800CA5A4:
/* 0C75A4 800CA5A4 7C0A2800 */  cmpw      r10, r5
/* 0C75A8 800CA5A8 41820024 */  beq       lbl_800CA5CC
/* 0C75AC 800CA5AC 7CE00124 */  mtmsr     r7
/* 0C75B0 800CA5B0 7C0004AC */  sync
/* 0C75B4 800CA5B4 7D2A20AE */  lbzx      r9, r10, r4
/* 0C75B8 800CA5B8 7CC00124 */  mtmsr     r6
/* 0C75BC 800CA5BC 7C0004AC */  sync
/* 0C75C0 800CA5C0 7D2A19AE */  stbx      r9, r10, r3
/* 0C75C4 800CA5C4 394A0001 */  addi      r10, r10, 0x1
/* 0C75C8 800CA5C8 4BFFFFDC */  b         lbl_800CA5A4
lbl_800CA5CC:
/* 0C75CC 800CA5CC 7D000124 */  mtmsr     r8
/* 0C75D0 800CA5D0 7C0004AC */  sync
/* 0C75D4 800CA5D4 4E800020 */  blr

glabel fn_800CA5D8
/* 0C75D8 800CA5D8 7C0802A6 */  mflr      r0
/* 0C75DC 800CA5DC 90010004 */  stw       r0, 0x4(r1)
/* 0C75E0 800CA5E0 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0C75E4 800CA5E4 BF21001C */  stmw      r25, 0x1c(r1)
/* 0C75E8 800CA5E8 7C7A1B78 */  mr        r26, r3
/* 0C75EC 800CA5EC 7C9B2378 */  mr        r27, r4
/* 0C75F0 800CA5F0 7CBC2B78 */  mr        r28, r5
/* 0C75F4 800CA5F4 7CFD3B78 */  mr        r29, r7
/* 0C75F8 800CA5F8 3C60800F */  lis       r3, gTRKExceptionStatus@ha
/* 0C75FC 800CA5FC 38A34E14 */  addi      r5, r3, gTRKExceptionStatus@l
/* 0C7600 800CA600 80850000 */  lwz       r4, 0x0(r5)
/* 0C7604 800CA604 3BE5000D */  addi      r31, r5, 0xd
/* 0C7608 800CA608 80050004 */  lwz       r0, 0x4(r5)
/* 0C760C 800CA60C 3BC00000 */  li        r30, 0x0
/* 0C7610 800CA610 7F63DB78 */  mr        r3, r27
/* 0C7614 800CA614 90810008 */  stw       r4, 0x8(r1)
/* 0C7618 800CA618 9001000C */  stw       r0, 0xc(r1)
/* 0C761C 800CA61C 80850008 */  lwz       r4, 0x8(r5)
/* 0C7620 800CA620 8005000C */  lwz       r0, 0xc(r5)
/* 0C7624 800CA624 90810010 */  stw       r4, 0x10(r1)
/* 0C7628 800CA628 90010014 */  stw       r0, 0x14(r1)
/* 0C762C 800CA62C 9BDF0000 */  stb       r30, 0x0(r31)
/* 0C7630 800CA630 480014B5 */  bl        fn_800CBAE4
/* 0C7634 800CA634 2C1D0000 */  cmpwi     r29, 0x0
/* 0C7638 800CA638 7C791B78 */  mr        r25, r3
/* 0C763C 800CA63C 41820008 */  beq       lbl_800CA644
/* 0C7640 800CA640 48000008 */  b         lbl_800CA648
lbl_800CA644:
/* 0C7644 800CA644 3BC00001 */  li        r30, 0x1
lbl_800CA648:
/* 0C7648 800CA648 809C0000 */  lwz       r4, 0x0(r28)
/* 0C764C 800CA64C 7F23CB78 */  mr        r3, r25
/* 0C7650 800CA650 7FC5F378 */  mr        r5, r30
/* 0C7654 800CA654 4BFFFE11 */  bl        fn_800CA464
/* 0C7658 800CA658 7C7E1B78 */  mr        r30, r3
/* 0C765C 800CA65C 2C1E0000 */  cmpwi     r30, 0x0
/* 0C7660 800CA660 41820010 */  beq       lbl_800CA670
/* 0C7664 800CA664 38000000 */  li        r0, 0x0
/* 0C7668 800CA668 901C0000 */  stw       r0, 0x0(r28)
/* 0C766C 800CA66C 48000078 */  b         lbl_800CA6E4
lbl_800CA670:
/* 0C7670 800CA670 4BFFFDE5 */  bl        fn_800CA454
/* 0C7674 800CA674 3C808019 */  lis       r4, gTRKCPUState@ha
/* 0C7678 800CA678 2C1D0000 */  cmpwi     r29, 0x0
/* 0C767C 800CA67C 3884A940 */  addi      r4, r4, gTRKCPUState@l
/* 0C7680 800CA680 800401F8 */  lwz       r0, 0x1f8(r4)
/* 0C7684 800CA684 7C681B78 */  mr        r8, r3
/* 0C7688 800CA688 540006F6 */  rlwinm    r0, r0, 0, 27, 27
/* 0C768C 800CA68C 7D070378 */  or        r7, r8, r0
/* 0C7690 800CA690 4182001C */  beq       lbl_800CA6AC
/* 0C7694 800CA694 80BC0000 */  lwz       r5, 0x0(r28)
/* 0C7698 800CA698 7F43D378 */  mr        r3, r26
/* 0C769C 800CA69C 7F24CB78 */  mr        r4, r25
/* 0C76A0 800CA6A0 7D064378 */  mr        r6, r8
/* 0C76A4 800CA6A4 4BFFFEF9 */  bl        fn_800CA59C
/* 0C76A8 800CA6A8 4800003C */  b         lbl_800CA6E4
lbl_800CA6AC:
/* 0C76AC 800CA6AC 80BC0000 */  lwz       r5, 0x0(r28)
/* 0C76B0 800CA6B0 7F23CB78 */  mr        r3, r25
/* 0C76B4 800CA6B4 7F44D378 */  mr        r4, r26
/* 0C76B8 800CA6B8 7CE63B78 */  mr        r6, r7
/* 0C76BC 800CA6BC 7D074378 */  mr        r7, r8
/* 0C76C0 800CA6C0 4BFFFEDD */  bl        fn_800CA59C
/* 0C76C4 800CA6C4 7F23CB78 */  mr        r3, r25
/* 0C76C8 800CA6C8 809C0000 */  lwz       r4, 0x0(r28)
/* 0C76CC 800CA6CC 4BFFFD51 */  bl        fn_800CA41C
/* 0C76D0 800CA6D0 7C1BC840 */  cmplw     r27, r25
/* 0C76D4 800CA6D4 41820010 */  beq       lbl_800CA6E4
/* 0C76D8 800CA6D8 7F63DB78 */  mr        r3, r27
/* 0C76DC 800CA6DC 809C0000 */  lwz       r4, 0x0(r28)
/* 0C76E0 800CA6E0 4BFFFD3D */  bl        fn_800CA41C
lbl_800CA6E4:
/* 0C76E4 800CA6E4 881F0000 */  lbz       r0, 0x0(r31)
/* 0C76E8 800CA6E8 28000000 */  cmplwi    r0, 0x0
/* 0C76EC 800CA6EC 41820010 */  beq       lbl_800CA6FC
/* 0C76F0 800CA6F0 38000000 */  li        r0, 0x0
/* 0C76F4 800CA6F4 901C0000 */  stw       r0, 0x0(r28)
/* 0C76F8 800CA6F8 3BC00702 */  li        r30, 0x702
lbl_800CA6FC:
/* 0C76FC 800CA6FC 3C60800F */  lis       r3, gTRKExceptionStatus@ha
/* 0C7700 800CA700 80810008 */  lwz       r4, 0x8(r1)
/* 0C7704 800CA704 8001000C */  lwz       r0, 0xc(r1)
/* 0C7708 800CA708 38A34E14 */  addi      r5, r3, gTRKExceptionStatus@l
/* 0C770C 800CA70C 7FC3F378 */  mr        r3, r30
/* 0C7710 800CA710 90850000 */  stw       r4, 0x0(r5)
/* 0C7714 800CA714 90050004 */  stw       r0, 0x4(r5)
/* 0C7718 800CA718 80810010 */  lwz       r4, 0x10(r1)
/* 0C771C 800CA71C 80010014 */  lwz       r0, 0x14(r1)
/* 0C7720 800CA720 90850008 */  stw       r4, 0x8(r5)
/* 0C7724 800CA724 9005000C */  stw       r0, 0xc(r5)
/* 0C7728 800CA728 BB21001C */  lmw       r25, 0x1c(r1)
/* 0C772C 800CA72C 38210038 */  addi      r1, r1, 0x38
/* 0C7730 800CA730 80010004 */  lwz       r0, 0x4(r1)
/* 0C7734 800CA734 7C0803A6 */  mtlr      r0
/* 0C7738 800CA738 4E800020 */  blr

glabel fn_800CA73C
/* 0C773C 800CA73C 7C0802A6 */  mflr      r0
/* 0C7740 800CA740 90010004 */  stw       r0, 0x4(r1)
/* 0C7744 800CA744 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C7748 800CA748 38000004 */  li        r0, 0x4
/* 0C774C 800CA74C 38A10008 */  addi      r5, r1, 0x8
/* 0C7750 800CA750 90010008 */  stw       r0, 0x8(r1)
/* 0C7754 800CA754 38C00000 */  li        r6, 0x0
/* 0C7758 800CA758 38E00001 */  li        r7, 0x1
/* 0C775C 800CA75C 4BFFFE7D */  bl        fn_800CA5D8
/* 0C7760 800CA760 2C030000 */  cmpwi     r3, 0x0
/* 0C7764 800CA764 40820014 */  bne       lbl_800CA778
/* 0C7768 800CA768 80010008 */  lwz       r0, 0x8(r1)
/* 0C776C 800CA76C 28000004 */  cmplwi    r0, 0x4
/* 0C7770 800CA770 41820008 */  beq       lbl_800CA778
/* 0C7774 800CA774 38600700 */  li        r3, 0x700
lbl_800CA778:
/* 0C7778 800CA778 38210010 */  addi      r1, r1, 0x10
/* 0C777C 800CA77C 80010004 */  lwz       r0, 0x4(r1)
/* 0C7780 800CA780 7C0803A6 */  mtlr      r0
/* 0C7784 800CA784 4E800020 */  blr

glabel fn_800CA788
/* 0C7788 800CA788 7C0802A6 */  mflr      r0
/* 0C778C 800CA78C 90010004 */  stw       r0, 0x4(r1)
/* 0C7790 800CA790 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0C7794 800CA794 93E1001C */  stw       r31, 0x1c(r1)
/* 0C7798 800CA798 93C10018 */  stw       r30, 0x18(r1)
/* 0C779C 800CA79C 7CDF3378 */  mr        r31, r6
/* 0C77A0 800CA7A0 28040024 */  cmplwi    r4, 0x24
/* 0C77A4 800CA7A4 4081000C */  ble       lbl_800CA7B0
/* 0C77A8 800CA7A8 38600701 */  li        r3, 0x701
/* 0C77AC 800CA7AC 480000C0 */  b         lbl_800CA86C
lbl_800CA7B0:
/* 0C77B0 800CA7B0 3CC0800F */  lis       r6, gTRKExceptionStatus@ha
/* 0C77B4 800CA7B4 2C070000 */  cmpwi     r7, 0x0
/* 0C77B8 800CA7B8 39064E14 */  addi      r8, r6, gTRKExceptionStatus@l
/* 0C77BC 800CA7BC 80080000 */  lwz       r0, 0x0(r8)
/* 0C77C0 800CA7C0 7C832050 */  subf      r4, r3, r4
/* 0C77C4 800CA7C4 80E80004 */  lwz       r7, 0x4(r8)
/* 0C77C8 800CA7C8 39240001 */  addi      r9, r4, 0x1
/* 0C77CC 800CA7CC 3C808019 */  lis       r4, gTRKCPUState@ha
/* 0C77D0 800CA7D0 90010008 */  stw       r0, 0x8(r1)
/* 0C77D4 800CA7D4 3804A940 */  addi      r0, r4, gTRKCPUState@l
/* 0C77D8 800CA7D8 5463103A */  slwi      r3, r3, 2
/* 0C77DC 800CA7DC 3BC8000D */  addi      r30, r8, 0xd
/* 0C77E0 800CA7E0 90E1000C */  stw       r7, 0xc(r1)
/* 0C77E4 800CA7E4 7C801A14 */  add       r4, r0, r3
/* 0C77E8 800CA7E8 80E80008 */  lwz       r7, 0x8(r8)
/* 0C77EC 800CA7EC 38C00000 */  li        r6, 0x0
/* 0C77F0 800CA7F0 8068000C */  lwz       r3, 0xc(r8)
/* 0C77F4 800CA7F4 5520103A */  slwi      r0, r9, 2
/* 0C77F8 800CA7F8 90E10010 */  stw       r7, 0x10(r1)
/* 0C77FC 800CA7FC 7D274B78 */  mr        r7, r9
/* 0C7800 800CA800 90610014 */  stw       r3, 0x14(r1)
/* 0C7804 800CA804 98DE0000 */  stb       r6, 0x0(r30)
/* 0C7808 800CA808 901F0000 */  stw       r0, 0x0(r31)
/* 0C780C 800CA80C 41820014 */  beq       lbl_800CA820
/* 0C7810 800CA810 7CA32B78 */  mr        r3, r5
/* 0C7814 800CA814 7CE53B78 */  mr        r5, r7
/* 0C7818 800CA818 4BFFDE79 */  bl        fn_800C8690
/* 0C781C 800CA81C 48000010 */  b         lbl_800CA82C
lbl_800CA820:
/* 0C7820 800CA820 7CA32B78 */  mr        r3, r5
/* 0C7824 800CA824 7CE53B78 */  mr        r5, r7
/* 0C7828 800CA828 4BFFE13D */  bl        fn_800C8964
lbl_800CA82C:
/* 0C782C 800CA82C 881E0000 */  lbz       r0, 0x0(r30)
/* 0C7830 800CA830 28000000 */  cmplwi    r0, 0x0
/* 0C7834 800CA834 41820010 */  beq       lbl_800CA844
/* 0C7838 800CA838 38000000 */  li        r0, 0x0
/* 0C783C 800CA83C 901F0000 */  stw       r0, 0x0(r31)
/* 0C7840 800CA840 38600702 */  li        r3, 0x702
lbl_800CA844:
/* 0C7844 800CA844 3CA0800F */  lis       r5, gTRKExceptionStatus@ha
/* 0C7848 800CA848 80810008 */  lwz       r4, 0x8(r1)
/* 0C784C 800CA84C 8001000C */  lwz       r0, 0xc(r1)
/* 0C7850 800CA850 38A54E14 */  addi      r5, r5, gTRKExceptionStatus@l
/* 0C7854 800CA854 90850000 */  stw       r4, 0x0(r5)
/* 0C7858 800CA858 90050004 */  stw       r0, 0x4(r5)
/* 0C785C 800CA85C 80810010 */  lwz       r4, 0x10(r1)
/* 0C7860 800CA860 80010014 */  lwz       r0, 0x14(r1)
/* 0C7864 800CA864 90850008 */  stw       r4, 0x8(r5)
/* 0C7868 800CA868 9005000C */  stw       r0, 0xc(r5)
lbl_800CA86C:
/* 0C786C 800CA86C 83E1001C */  lwz       r31, 0x1c(r1)
/* 0C7870 800CA870 83C10018 */  lwz       r30, 0x18(r1)
/* 0C7874 800CA874 38210020 */  addi      r1, r1, 0x20
/* 0C7878 800CA878 80010004 */  lwz       r0, 0x4(r1)
/* 0C787C 800CA87C 7C0803A6 */  mtlr      r0
/* 0C7880 800CA880 4E800020 */  blr

glabel fn_800CA884
/* 0C7884 800CA884 7C0802A6 */  mflr      r0
/* 0C7888 800CA888 90010004 */  stw       r0, 0x4(r1)
/* 0C788C 800CA88C 9421FFC0 */  stwu      r1, -0x40(r1)
/* 0C7890 800CA890 BF210024 */  stmw      r25, 0x24(r1)
/* 0C7894 800CA894 7C791B78 */  mr        r25, r3
/* 0C7898 800CA898 7C9C2378 */  mr        r28, r4
/* 0C789C 800CA89C 7CBD2B78 */  mr        r29, r5
/* 0C78A0 800CA8A0 7CDE3378 */  mr        r30, r6
/* 0C78A4 800CA8A4 7CFF3B78 */  mr        r31, r7
/* 0C78A8 800CA8A8 281C0021 */  cmplwi    r28, 0x21
/* 0C78AC 800CA8AC 4081000C */  ble       lbl_800CA8B8
/* 0C78B0 800CA8B0 38600701 */  li        r3, 0x701
/* 0C78B4 800CA8B4 48000104 */  b         lbl_800CA9B8
lbl_800CA8B8:
/* 0C78B8 800CA8B8 3C60800F */  lis       r3, gTRKExceptionStatus@ha
/* 0C78BC 800CA8BC 38834E14 */  addi      r4, r3, gTRKExceptionStatus@l
/* 0C78C0 800CA8C0 80640000 */  lwz       r3, 0x0(r4)
/* 0C78C4 800CA8C4 3B44000D */  addi      r26, r4, 0xd
/* 0C78C8 800CA8C8 80040004 */  lwz       r0, 0x4(r4)
/* 0C78CC 800CA8CC 3B600000 */  li        r27, 0x0
/* 0C78D0 800CA8D0 90610008 */  stw       r3, 0x8(r1)
/* 0C78D4 800CA8D4 9001000C */  stw       r0, 0xc(r1)
/* 0C78D8 800CA8D8 80640008 */  lwz       r3, 0x8(r4)
/* 0C78DC 800CA8DC 8004000C */  lwz       r0, 0xc(r4)
/* 0C78E0 800CA8E0 90610010 */  stw       r3, 0x10(r1)
/* 0C78E4 800CA8E4 90010014 */  stw       r0, 0x14(r1)
/* 0C78E8 800CA8E8 9B7A0000 */  stb       r27, 0x0(r26)
/* 0C78EC 800CA8EC 4BFFFB69 */  bl        fn_800CA454
/* 0C78F0 800CA8F0 60632000 */  ori       r3, r3, 0x2000
/* 0C78F4 800CA8F4 4BFFFB69 */  bl        fn_800CA45C
/* 0C78F8 800CA8F8 937E0000 */  stw       r27, 0x0(r30)
/* 0C78FC 800CA8FC 7F3BCB78 */  mr        r27, r25
/* 0C7900 800CA900 38600000 */  li        r3, 0x0
/* 0C7904 800CA904 48000004 */  b         lbl_800CA908
lbl_800CA908:
/* 0C7908 800CA908 48000004 */  b         lbl_800CA90C
lbl_800CA90C:
/* 0C790C 800CA90C 4800005C */  b         lbl_800CA968
lbl_800CA910:
/* 0C7910 800CA910 2C1F0000 */  cmpwi     r31, 0x0
/* 0C7914 800CA914 41820028 */  beq       lbl_800CA93C
/* 0C7918 800CA918 7F64DB78 */  mr        r4, r27
/* 0C791C 800CA91C 38610018 */  addi      r3, r1, 0x18
/* 0C7920 800CA920 7FE5FB78 */  mr        r5, r31
/* 0C7924 800CA924 48000F15 */  bl        fn_800CB838
/* 0C7928 800CA928 80A10018 */  lwz       r5, 0x18(r1)
/* 0C792C 800CA92C 7FA3EB78 */  mr        r3, r29
/* 0C7930 800CA930 80C1001C */  lwz       r6, 0x1c(r1)
/* 0C7934 800CA934 4BFFDC6D */  bl        fn_800C85A0
/* 0C7938 800CA938 48000020 */  b         lbl_800CA958
lbl_800CA93C:
/* 0C793C 800CA93C 7FA3EB78 */  mr        r3, r29
/* 0C7940 800CA940 38810018 */  addi      r4, r1, 0x18
/* 0C7944 800CA944 4BFFDEFD */  bl        fn_800C8840
/* 0C7948 800CA948 7F64DB78 */  mr        r4, r27
/* 0C794C 800CA94C 38610018 */  addi      r3, r1, 0x18
/* 0C7950 800CA950 7FE5FB78 */  mr        r5, r31
/* 0C7954 800CA954 48000EE5 */  bl        fn_800CB838
lbl_800CA958:
/* 0C7958 800CA958 809E0000 */  lwz       r4, 0x0(r30)
/* 0C795C 800CA95C 3B7B0001 */  addi      r27, r27, 0x1
/* 0C7960 800CA960 38040008 */  addi      r0, r4, 0x8
/* 0C7964 800CA964 901E0000 */  stw       r0, 0x0(r30)
lbl_800CA968:
/* 0C7968 800CA968 7C1BE040 */  cmplw     r27, r28
/* 0C796C 800CA96C 4181000C */  bgt       lbl_800CA978
/* 0C7970 800CA970 2C030000 */  cmpwi     r3, 0x0
/* 0C7974 800CA974 4182FF9C */  beq       lbl_800CA910
lbl_800CA978:
/* 0C7978 800CA978 881A0000 */  lbz       r0, 0x0(r26)
/* 0C797C 800CA97C 28000000 */  cmplwi    r0, 0x0
/* 0C7980 800CA980 41820010 */  beq       lbl_800CA990
/* 0C7984 800CA984 38000000 */  li        r0, 0x0
/* 0C7988 800CA988 901E0000 */  stw       r0, 0x0(r30)
/* 0C798C 800CA98C 38600702 */  li        r3, 0x702
lbl_800CA990:
/* 0C7990 800CA990 3CA0800F */  lis       r5, gTRKExceptionStatus@ha
/* 0C7994 800CA994 80810008 */  lwz       r4, 0x8(r1)
/* 0C7998 800CA998 8001000C */  lwz       r0, 0xc(r1)
/* 0C799C 800CA99C 38A54E14 */  addi      r5, r5, gTRKExceptionStatus@l
/* 0C79A0 800CA9A0 90850000 */  stw       r4, 0x0(r5)
/* 0C79A4 800CA9A4 90050004 */  stw       r0, 0x4(r5)
/* 0C79A8 800CA9A8 80810010 */  lwz       r4, 0x10(r1)
/* 0C79AC 800CA9AC 80010014 */  lwz       r0, 0x14(r1)
/* 0C79B0 800CA9B0 90850008 */  stw       r4, 0x8(r5)
/* 0C79B4 800CA9B4 9005000C */  stw       r0, 0xc(r5)
lbl_800CA9B8:
/* 0C79B8 800CA9B8 BB210024 */  lmw       r25, 0x24(r1)
/* 0C79BC 800CA9BC 38210040 */  addi      r1, r1, 0x40
/* 0C79C0 800CA9C0 80010004 */  lwz       r0, 0x4(r1)
/* 0C79C4 800CA9C4 7C0803A6 */  mtlr      r0
/* 0C79C8 800CA9C8 4E800020 */  blr

glabel fn_800CA9CC
/* 0C79CC 800CA9CC 7C0802A6 */  mflr      r0
/* 0C79D0 800CA9D0 90010004 */  stw       r0, 0x4(r1)
/* 0C79D4 800CA9D4 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0C79D8 800CA9D8 93E1001C */  stw       r31, 0x1c(r1)
/* 0C79DC 800CA9DC 93C10018 */  stw       r30, 0x18(r1)
/* 0C79E0 800CA9E0 7CDE3378 */  mr        r30, r6
/* 0C79E4 800CA9E4 28040060 */  cmplwi    r4, 0x60
/* 0C79E8 800CA9E8 4081000C */  ble       lbl_800CA9F4
/* 0C79EC 800CA9EC 38600701 */  li        r3, 0x701
/* 0C79F0 800CA9F0 4800013C */  b         lbl_800CAB2C
lbl_800CA9F4:
/* 0C79F4 800CA9F4 3CC0800F */  lis       r6, gTRKExceptionStatus@ha
/* 0C79F8 800CA9F8 7C032040 */  cmplw     r3, r4
/* 0C79FC 800CA9FC 39264E14 */  addi      r9, r6, gTRKExceptionStatus@l
/* 0C7A00 800CAA00 81090000 */  lwz       r8, 0x0(r9)
/* 0C7A04 800CAA04 3BE9000D */  addi      r31, r9, 0xd
/* 0C7A08 800CAA08 80C90004 */  lwz       r6, 0x4(r9)
/* 0C7A0C 800CAA0C 38000000 */  li        r0, 0x0
/* 0C7A10 800CAA10 91010008 */  stw       r8, 0x8(r1)
/* 0C7A14 800CAA14 90C1000C */  stw       r6, 0xc(r1)
/* 0C7A18 800CAA18 81090008 */  lwz       r8, 0x8(r9)
/* 0C7A1C 800CAA1C 80C9000C */  lwz       r6, 0xc(r9)
/* 0C7A20 800CAA20 91010010 */  stw       r8, 0x10(r1)
/* 0C7A24 800CAA24 90C10014 */  stw       r6, 0x14(r1)
/* 0C7A28 800CAA28 981F0000 */  stb       r0, 0x0(r31)
/* 0C7A2C 800CAA2C 901E0000 */  stw       r0, 0x0(r30)
/* 0C7A30 800CAA30 418100BC */  bgt       lbl_800CAAEC
/* 0C7A34 800CAA34 7C832050 */  subf      r4, r3, r4
/* 0C7A38 800CAA38 801E0000 */  lwz       r0, 0x0(r30)
/* 0C7A3C 800CAA3C 39040001 */  addi      r8, r4, 0x1
/* 0C7A40 800CAA40 2C070000 */  cmpwi     r7, 0x0
/* 0C7A44 800CAA44 5506103A */  slwi      r6, r8, 2
/* 0C7A48 800CAA48 3C808019 */  lis       r4, gTRKCPUState@ha
/* 0C7A4C 800CAA4C 7C003214 */  add       r0, r0, r6
/* 0C7A50 800CAA50 901E0000 */  stw       r0, 0x0(r30)
/* 0C7A54 800CAA54 38E4A940 */  addi      r7, r4, gTRKCPUState@l
/* 0C7A58 800CAA58 5460103A */  slwi      r0, r3, 2
/* 0C7A5C 800CAA5C 7C870214 */  add       r4, r7, r0
/* 0C7A60 800CAA60 388401A8 */  addi      r4, r4, 0x1a8
/* 0C7A64 800CAA64 41820014 */  beq       lbl_800CAA78
/* 0C7A68 800CAA68 7CA32B78 */  mr        r3, r5
/* 0C7A6C 800CAA6C 7D054378 */  mr        r5, r8
/* 0C7A70 800CAA70 4BFFDC21 */  bl        fn_800C8690
/* 0C7A74 800CAA74 48000078 */  b         lbl_800CAAEC
lbl_800CAA78:
/* 0C7A78 800CAA78 380701EC */  addi      r0, r7, 0x1ec
/* 0C7A7C 800CAA7C 7C040040 */  cmplw     r4, r0
/* 0C7A80 800CAA80 41810028 */  bgt       lbl_800CAAA8
/* 0C7A84 800CAA84 3866FFFC */  subi      r3, r6, 0x4
/* 0C7A88 800CAA88 380701E8 */  addi      r0, r7, 0x1e8
/* 0C7A8C 800CAA8C 7C641A14 */  add       r3, r4, r3
/* 0C7A90 800CAA90 7C030040 */  cmplw     r3, r0
/* 0C7A94 800CAA94 41800014 */  blt       lbl_800CAAA8
/* 0C7A98 800CAA98 3C60800F */  lis       r3, D_800F4E08@ha
/* 0C7A9C 800CAA9C 38634E08 */  addi      r3, r3, D_800F4E08@l
/* 0C7AA0 800CAAA0 38000001 */  li        r0, 0x1
/* 0C7AA4 800CAAA4 98030000 */  stb       r0, 0x0(r3)
lbl_800CAAA8:
/* 0C7AA8 800CAAA8 3C608019 */  lis       r3, gTRKCPUState@ha
/* 0C7AAC 800CAAAC 3863A940 */  addi      r3, r3, gTRKCPUState@l
/* 0C7AB0 800CAAB0 38C30278 */  addi      r6, r3, 0x278
/* 0C7AB4 800CAAB4 7C043040 */  cmplw     r4, r6
/* 0C7AB8 800CAAB8 41810028 */  bgt       lbl_800CAAE0
/* 0C7ABC 800CAABC 5503103A */  slwi      r3, r8, 2
/* 0C7AC0 800CAAC0 3803FFFC */  subi      r0, r3, 0x4
/* 0C7AC4 800CAAC4 7C040214 */  add       r0, r4, r0
/* 0C7AC8 800CAAC8 7C003040 */  cmplw     r0, r6
/* 0C7ACC 800CAACC 41800014 */  blt       lbl_800CAAE0
/* 0C7AD0 800CAAD0 3C60800F */  lis       r3, D_800F4E08@ha
/* 0C7AD4 800CAAD4 38634E08 */  addi      r3, r3, D_800F4E08@l
/* 0C7AD8 800CAAD8 38000001 */  li        r0, 0x1
/* 0C7ADC 800CAADC 98030001 */  stb       r0, 0x1(r3)
lbl_800CAAE0:
/* 0C7AE0 800CAAE0 7CA32B78 */  mr        r3, r5
/* 0C7AE4 800CAAE4 7D054378 */  mr        r5, r8
/* 0C7AE8 800CAAE8 4BFFDE7D */  bl        fn_800C8964
lbl_800CAAEC:
/* 0C7AEC 800CAAEC 881F0000 */  lbz       r0, 0x0(r31)
/* 0C7AF0 800CAAF0 28000000 */  cmplwi    r0, 0x0
/* 0C7AF4 800CAAF4 41820010 */  beq       lbl_800CAB04
/* 0C7AF8 800CAAF8 38000000 */  li        r0, 0x0
/* 0C7AFC 800CAAFC 901E0000 */  stw       r0, 0x0(r30)
/* 0C7B00 800CAB00 38600702 */  li        r3, 0x702
lbl_800CAB04:
/* 0C7B04 800CAB04 3CA0800F */  lis       r5, gTRKExceptionStatus@ha
/* 0C7B08 800CAB08 80810008 */  lwz       r4, 0x8(r1)
/* 0C7B0C 800CAB0C 8001000C */  lwz       r0, 0xc(r1)
/* 0C7B10 800CAB10 38A54E14 */  addi      r5, r5, gTRKExceptionStatus@l
/* 0C7B14 800CAB14 90850000 */  stw       r4, 0x0(r5)
/* 0C7B18 800CAB18 90050004 */  stw       r0, 0x4(r5)
/* 0C7B1C 800CAB1C 80810010 */  lwz       r4, 0x10(r1)
/* 0C7B20 800CAB20 80010014 */  lwz       r0, 0x14(r1)
/* 0C7B24 800CAB24 90850008 */  stw       r4, 0x8(r5)
/* 0C7B28 800CAB28 9005000C */  stw       r0, 0xc(r5)
lbl_800CAB2C:
/* 0C7B2C 800CAB2C 83E1001C */  lwz       r31, 0x1c(r1)
/* 0C7B30 800CAB30 83C10018 */  lwz       r30, 0x18(r1)
/* 0C7B34 800CAB34 38210020 */  addi      r1, r1, 0x20
/* 0C7B38 800CAB38 80010004 */  lwz       r0, 0x4(r1)
/* 0C7B3C 800CAB3C 7C0803A6 */  mtlr      r0
/* 0C7B40 800CAB40 4E800020 */  blr

glabel fn_800CAB44
/* 0C7B44 800CAB44 7C0802A6 */  mflr      r0
/* 0C7B48 800CAB48 90010004 */  stw       r0, 0x4(r1)
/* 0C7B4C 800CAB4C 9421FFC0 */  stwu      r1, -0x40(r1)
/* 0C7B50 800CAB50 BF210024 */  stmw      r25, 0x24(r1)
/* 0C7B54 800CAB54 7C791B78 */  mr        r25, r3
/* 0C7B58 800CAB58 7C9B2378 */  mr        r27, r4
/* 0C7B5C 800CAB5C 7CBC2B78 */  mr        r28, r5
/* 0C7B60 800CAB60 7CDD3378 */  mr        r29, r6
/* 0C7B64 800CAB64 7CFE3B78 */  mr        r30, r7
/* 0C7B68 800CAB68 281B001F */  cmplwi    r27, 0x1f
/* 0C7B6C 800CAB6C 4081000C */  ble       lbl_800CAB78
/* 0C7B70 800CAB70 38600701 */  li        r3, 0x701
/* 0C7B74 800CAB74 48000138 */  b         lbl_800CACAC
lbl_800CAB78:
/* 0C7B78 800CAB78 3C80800F */  lis       r4, gTRKExceptionStatus@ha
/* 0C7B7C 800CAB7C 38610008 */  addi      r3, r1, 0x8
/* 0C7B80 800CAB80 38E44E14 */  addi      r7, r4, gTRKExceptionStatus@l
/* 0C7B84 800CAB84 80A70000 */  lwz       r5, 0x0(r7)
/* 0C7B88 800CAB88 3BE7000D */  addi      r31, r7, 0xd
/* 0C7B8C 800CAB8C 80070004 */  lwz       r0, 0x4(r7)
/* 0C7B90 800CAB90 3B400000 */  li        r26, 0x0
/* 0C7B94 800CAB94 38800398 */  li        r4, 0x398
/* 0C7B98 800CAB98 90A1000C */  stw       r5, 0xc(r1)
/* 0C7B9C 800CAB9C 38A00001 */  li        r5, 0x1
/* 0C7BA0 800CABA0 90010010 */  stw       r0, 0x10(r1)
/* 0C7BA4 800CABA4 80C70008 */  lwz       r6, 0x8(r7)
/* 0C7BA8 800CABA8 8007000C */  lwz       r0, 0xc(r7)
/* 0C7BAC 800CABAC 90C10014 */  stw       r6, 0x14(r1)
/* 0C7BB0 800CABB0 90010018 */  stw       r0, 0x18(r1)
/* 0C7BB4 800CABB4 9B5F0000 */  stb       r26, 0x0(r31)
/* 0C7BB8 800CABB8 48000B59 */  bl        fn_800CB710
/* 0C7BBC 800CABBC 80010008 */  lwz       r0, 0x8(r1)
/* 0C7BC0 800CABC0 38610008 */  addi      r3, r1, 0x8
/* 0C7BC4 800CABC4 38800398 */  li        r4, 0x398
/* 0C7BC8 800CABC8 6400A000 */  oris      r0, r0, 0xa000
/* 0C7BCC 800CABCC 90010008 */  stw       r0, 0x8(r1)
/* 0C7BD0 800CABD0 38A00000 */  li        r5, 0x0
/* 0C7BD4 800CABD4 48000B3D */  bl        fn_800CB710
/* 0C7BD8 800CABD8 93410008 */  stw       r26, 0x8(r1)
/* 0C7BDC 800CABDC 38610008 */  addi      r3, r1, 0x8
/* 0C7BE0 800CABE0 38800390 */  li        r4, 0x390
/* 0C7BE4 800CABE4 38A00000 */  li        r5, 0x0
/* 0C7BE8 800CABE8 48000B29 */  bl        fn_800CB710
/* 0C7BEC 800CABEC 935D0000 */  stw       r26, 0x0(r29)
/* 0C7BF0 800CABF0 7F3ACB78 */  mr        r26, r25
/* 0C7BF4 800CABF4 38600000 */  li        r3, 0x0
/* 0C7BF8 800CABF8 48000004 */  b         lbl_800CABFC
lbl_800CABFC:
/* 0C7BFC 800CABFC 48000004 */  b         lbl_800CAC00
lbl_800CAC00:
/* 0C7C00 800CAC00 4800005C */  b         lbl_800CAC5C
lbl_800CAC04:
/* 0C7C04 800CAC04 2C1E0000 */  cmpwi     r30, 0x0
/* 0C7C08 800CAC08 41820028 */  beq       lbl_800CAC30
/* 0C7C0C 800CAC0C 7F44D378 */  mr        r4, r26
/* 0C7C10 800CAC10 3861001C */  addi      r3, r1, 0x1c
/* 0C7C14 800CAC14 7FC5F378 */  mr        r5, r30
/* 0C7C18 800CAC18 48000BA9 */  bl        fn_800CB7C0
/* 0C7C1C 800CAC1C 80A1001C */  lwz       r5, 0x1c(r1)
/* 0C7C20 800CAC20 7F83E378 */  mr        r3, r28
/* 0C7C24 800CAC24 80C10020 */  lwz       r6, 0x20(r1)
/* 0C7C28 800CAC28 4BFFD979 */  bl        fn_800C85A0
/* 0C7C2C 800CAC2C 48000020 */  b         lbl_800CAC4C
lbl_800CAC30:
/* 0C7C30 800CAC30 7F83E378 */  mr        r3, r28
/* 0C7C34 800CAC34 3881001C */  addi      r4, r1, 0x1c
/* 0C7C38 800CAC38 4BFFDC09 */  bl        fn_800C8840
/* 0C7C3C 800CAC3C 7F44D378 */  mr        r4, r26
/* 0C7C40 800CAC40 3861001C */  addi      r3, r1, 0x1c
/* 0C7C44 800CAC44 7FC5F378 */  mr        r5, r30
/* 0C7C48 800CAC48 48000B79 */  bl        fn_800CB7C0
lbl_800CAC4C:
/* 0C7C4C 800CAC4C 809D0000 */  lwz       r4, 0x0(r29)
/* 0C7C50 800CAC50 3B5A0001 */  addi      r26, r26, 0x1
/* 0C7C54 800CAC54 38040008 */  addi      r0, r4, 0x8
/* 0C7C58 800CAC58 901D0000 */  stw       r0, 0x0(r29)
lbl_800CAC5C:
/* 0C7C5C 800CAC5C 7C1AD840 */  cmplw     r26, r27
/* 0C7C60 800CAC60 4181000C */  bgt       lbl_800CAC6C
/* 0C7C64 800CAC64 2C030000 */  cmpwi     r3, 0x0
/* 0C7C68 800CAC68 4182FF9C */  beq       lbl_800CAC04
lbl_800CAC6C:
/* 0C7C6C 800CAC6C 881F0000 */  lbz       r0, 0x0(r31)
/* 0C7C70 800CAC70 28000000 */  cmplwi    r0, 0x0
/* 0C7C74 800CAC74 41820010 */  beq       lbl_800CAC84
/* 0C7C78 800CAC78 38000000 */  li        r0, 0x0
/* 0C7C7C 800CAC7C 901D0000 */  stw       r0, 0x0(r29)
/* 0C7C80 800CAC80 38600702 */  li        r3, 0x702
lbl_800CAC84:
/* 0C7C84 800CAC84 3CA0800F */  lis       r5, gTRKExceptionStatus@ha
/* 0C7C88 800CAC88 8081000C */  lwz       r4, 0xc(r1)
/* 0C7C8C 800CAC8C 80010010 */  lwz       r0, 0x10(r1)
/* 0C7C90 800CAC90 38A54E14 */  addi      r5, r5, gTRKExceptionStatus@l
/* 0C7C94 800CAC94 90850000 */  stw       r4, 0x0(r5)
/* 0C7C98 800CAC98 90050004 */  stw       r0, 0x4(r5)
/* 0C7C9C 800CAC9C 80810014 */  lwz       r4, 0x14(r1)
/* 0C7CA0 800CACA0 80010018 */  lwz       r0, 0x18(r1)
/* 0C7CA4 800CACA4 90850008 */  stw       r4, 0x8(r5)
/* 0C7CA8 800CACA8 9005000C */  stw       r0, 0xc(r5)
lbl_800CACAC:
/* 0C7CAC 800CACAC BB210024 */  lmw       r25, 0x24(r1)
/* 0C7CB0 800CACB0 38210040 */  addi      r1, r1, 0x40
/* 0C7CB4 800CACB4 80010004 */  lwz       r0, 0x4(r1)
/* 0C7CB8 800CACB8 7C0803A6 */  mtlr      r0
/* 0C7CBC 800CACBC 4E800020 */  blr

glabel fn_800CACC0
/* 0C7CC0 800CACC0 38000000 */  li        r0, 0x0
/* 0C7CC4 800CACC4 98030000 */  stb       r0, 0x0(r3)
/* 0C7CC8 800CACC8 38000005 */  li        r0, 0x5
/* 0C7CCC 800CACCC 38800001 */  li        r4, 0x1
/* 0C7CD0 800CACD0 98030001 */  stb       r0, 0x1(r3)
/* 0C7CD4 800CACD4 38000009 */  li        r0, 0x9
/* 0C7CD8 800CACD8 98830002 */  stb       r4, 0x2(r3)
/* 0C7CDC 800CACDC 98030003 */  stb       r0, 0x3(r3)
/* 0C7CE0 800CACE0 38600000 */  li        r3, 0x0
/* 0C7CE4 800CACE4 4E800020 */  blr

glabel fn_800CACE8
/* 0C7CE8 800CACE8 3800007A */  li        r0, 0x7a
/* 0C7CEC 800CACEC 98030000 */  stb       r0, 0x0(r3)
/* 0C7CF0 800CACF0 38E00000 */  li        r7, 0x0
/* 0C7CF4 800CACF4 3800004F */  li        r0, 0x4f
/* 0C7CF8 800CACF8 98E30001 */  stb       r7, 0x1(r3)
/* 0C7CFC 800CACFC 38C00007 */  li        r6, 0x7
/* 0C7D00 800CAD00 38A00001 */  li        r5, 0x1
/* 0C7D04 800CAD04 98030002 */  stb       r0, 0x2(r3)
/* 0C7D08 800CAD08 38800003 */  li        r4, 0x3
/* 0C7D0C 800CAD0C 38000080 */  li        r0, 0x80
/* 0C7D10 800CAD10 98C30003 */  stb       r6, 0x3(r3)
/* 0C7D14 800CAD14 98E30004 */  stb       r7, 0x4(r3)
/* 0C7D18 800CAD18 98E30005 */  stb       r7, 0x5(r3)
/* 0C7D1C 800CAD1C 98E30006 */  stb       r7, 0x6(r3)
/* 0C7D20 800CAD20 98E30007 */  stb       r7, 0x7(r3)
/* 0C7D24 800CAD24 98E30008 */  stb       r7, 0x8(r3)
/* 0C7D28 800CAD28 98E30009 */  stb       r7, 0x9(r3)
/* 0C7D2C 800CAD2C 98E3000A */  stb       r7, 0xa(r3)
/* 0C7D30 800CAD30 98E3000B */  stb       r7, 0xb(r3)
/* 0C7D34 800CAD34 98E3000C */  stb       r7, 0xc(r3)
/* 0C7D38 800CAD38 98E3000D */  stb       r7, 0xd(r3)
/* 0C7D3C 800CAD3C 98E3000E */  stb       r7, 0xe(r3)
/* 0C7D40 800CAD40 98E3000F */  stb       r7, 0xf(r3)
/* 0C7D44 800CAD44 98A30010 */  stb       r5, 0x10(r3)
/* 0C7D48 800CAD48 98E30011 */  stb       r7, 0x11(r3)
/* 0C7D4C 800CAD4C 98830012 */  stb       r4, 0x12(r3)
/* 0C7D50 800CAD50 98E30013 */  stb       r7, 0x13(r3)
/* 0C7D54 800CAD54 98E30014 */  stb       r7, 0x14(r3)
/* 0C7D58 800CAD58 98E30015 */  stb       r7, 0x15(r3)
/* 0C7D5C 800CAD5C 98E30016 */  stb       r7, 0x16(r3)
/* 0C7D60 800CAD60 98E30017 */  stb       r7, 0x17(r3)
/* 0C7D64 800CAD64 98E30018 */  stb       r7, 0x18(r3)
/* 0C7D68 800CAD68 98E30019 */  stb       r7, 0x19(r3)
/* 0C7D6C 800CAD6C 9883001A */  stb       r4, 0x1a(r3)
/* 0C7D70 800CAD70 98E3001B */  stb       r7, 0x1b(r3)
/* 0C7D74 800CAD74 98E3001C */  stb       r7, 0x1c(r3)
/* 0C7D78 800CAD78 98E3001D */  stb       r7, 0x1d(r3)
/* 0C7D7C 800CAD7C 98E3001E */  stb       r7, 0x1e(r3)
/* 0C7D80 800CAD80 9803001F */  stb       r0, 0x1f(r3)
/* 0C7D84 800CAD84 38600000 */  li        r3, 0x0
/* 0C7D88 800CAD88 4E800020 */  blr

glabel fn_800CAD8C
/* 0C7D8C 800CAD8C 7C0802A6 */  mflr      r0
/* 0C7D90 800CAD90 90010004 */  stw       r0, 0x4(r1)
/* 0C7D94 800CAD94 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C7D98 800CAD98 93E1000C */  stw       r31, 0xc(r1)
/* 0C7D9C 800CAD9C 7C7F1B78 */  mr        r31, r3
/* 0C7DA0 800CADA0 38000000 */  li        r0, 0x0
/* 0C7DA4 800CADA4 981F0000 */  stb       r0, 0x0(r31)
/* 0C7DA8 800CADA8 480011ED */  bl        fn_800CBF94
/* 0C7DAC 800CADAC 987F0001 */  stb       r3, 0x1(r31)
/* 0C7DB0 800CADB0 3C608019 */  lis       r3, D_80188E18@ha
/* 0C7DB4 800CADB4 38638E18 */  addi      r3, r3, D_80188E18@l
/* 0C7DB8 800CADB8 80630000 */  lwz       r3, 0x0(r3)
/* 0C7DBC 800CADBC 38800004 */  li        r4, 0x4
/* 0C7DC0 800CADC0 38000008 */  li        r0, 0x8
/* 0C7DC4 800CADC4 5463063E */  clrlwi    r3, r3, 24
/* 0C7DC8 800CADC8 987F0002 */  stb       r3, 0x2(r31)
/* 0C7DCC 800CADCC 38600000 */  li        r3, 0x0
/* 0C7DD0 800CADD0 989F0003 */  stb       r4, 0x3(r31)
/* 0C7DD4 800CADD4 981F0004 */  stb       r0, 0x4(r31)
/* 0C7DD8 800CADD8 989F0005 */  stb       r4, 0x5(r31)
/* 0C7DDC 800CADDC 981F0006 */  stb       r0, 0x6(r31)
/* 0C7DE0 800CADE0 83E1000C */  lwz       r31, 0xc(r1)
/* 0C7DE4 800CADE4 38210010 */  addi      r1, r1, 0x10
/* 0C7DE8 800CADE8 80010004 */  lwz       r0, 0x4(r1)
/* 0C7DEC 800CADEC 7C0803A6 */  mtlr      r0
/* 0C7DF0 800CADF0 4E800020 */  blr

glabel TRKInterruptHandler
/* 0C7DF4 800CADF4 7C5A03A6 */  mtsrr0    r2
/* 0C7DF8 800CADF8 7C9B03A6 */  mtsrr1    r4
/* 0C7DFC 800CADFC 7C9342A6 */  mfsprg    r4, 3
/* 0C7E00 800CAE00 7C400026 */  mfcr      r2
/* 0C7E04 800CAE04 7C5343A6 */  mtsprg    3, r2
/* 0C7E08 800CAE08 3C408018 */  lis       r2, gTRKState@h
/* 0C7E0C 800CAE0C 6042A898 */  ori       r2, r2, gTRKState@l
/* 0C7E10 800CAE10 8042008C */  lwz       r2, 0x8c(r2)
/* 0C7E14 800CAE14 60428002 */  ori       r2, r2, 0x8002
/* 0C7E18 800CAE18 68428002 */  xori      r2, r2, 0x8002
/* 0C7E1C 800CAE1C 7C0004AC */  sync
/* 0C7E20 800CAE20 7C400124 */  mtmsr     r2
/* 0C7E24 800CAE24 7C0004AC */  sync
/* 0C7E28 800CAE28 3C408018 */  lis       r2, TRK_saved_exceptionID@h
/* 0C7E2C 800CAE2C 6042A7F0 */  ori       r2, r2, TRK_saved_exceptionID@l
/* 0C7E30 800CAE30 B0620000 */  sth       r3, 0x0(r2)
/* 0C7E34 800CAE34 2C030500 */  cmpwi     r3, 0x500
/* 0C7E38 800CAE38 40820084 */  bne       lbl_800CAEBC
/* 0C7E3C 800CAE3C 3C408018 */  lis       r2, gTRKCPUState@h
/* 0C7E40 800CAE40 6042A940 */  ori       r2, r2, gTRKCPUState@l
/* 0C7E44 800CAE44 7C6802A6 */  mflr      r3
/* 0C7E48 800CAE48 9062042C */  stw       r3, 0x42c(r2)
/* 0C7E4C 800CAE4C 48001341 */  bl        TRKUARTInterruptHandler
/* 0C7E50 800CAE50 3C408018 */  lis       r2, gTRKCPUState@h
/* 0C7E54 800CAE54 6042A940 */  ori       r2, r2, gTRKCPUState@l
/* 0C7E58 800CAE58 8062042C */  lwz       r3, 0x42c(r2)
/* 0C7E5C 800CAE5C 7C6803A6 */  mtlr      r3
/* 0C7E60 800CAE60 3C408018 */  lis       r2, gTRKState@h
/* 0C7E64 800CAE64 6042A898 */  ori       r2, r2, gTRKState@l
/* 0C7E68 800CAE68 804200A0 */  lwz       r2, 0xa0(r2)
/* 0C7E6C 800CAE6C 88420000 */  lbz       r2, 0x0(r2)
/* 0C7E70 800CAE70 2C020000 */  cmpwi     r2, 0x0
/* 0C7E74 800CAE74 4182002C */  beq       lbl_800CAEA0
/* 0C7E78 800CAE78 3C40800F */  lis       r2, gTRKExceptionStatus@h
/* 0C7E7C 800CAE7C 60424E14 */  ori       r2, r2, gTRKExceptionStatus@l
/* 0C7E80 800CAE80 8842000C */  lbz       r2, 0xc(r2)
/* 0C7E84 800CAE84 2C020001 */  cmpwi     r2, 0x1
/* 0C7E88 800CAE88 41820018 */  beq       lbl_800CAEA0
/* 0C7E8C 800CAE8C 3C408018 */  lis       r2, gTRKState@h
/* 0C7E90 800CAE90 6042A898 */  ori       r2, r2, gTRKState@l
/* 0C7E94 800CAE94 38600001 */  li        r3, 0x1
/* 0C7E98 800CAE98 9862009C */  stb       r3, 0x9c(r2)
/* 0C7E9C 800CAE9C 48000020 */  b         lbl_800CAEBC
lbl_800CAEA0:
/* 0C7EA0 800CAEA0 3C408018 */  lis       r2, gTRKSaveState@h
/* 0C7EA4 800CAEA4 6042A7F4 */  ori       r2, r2, gTRKSaveState@l
/* 0C7EA8 800CAEA8 80620088 */  lwz       r3, 0x88(r2)
/* 0C7EAC 800CAEAC 7C6FF120 */  mtcrf     255, r3
/* 0C7EB0 800CAEB0 8062000C */  lwz       r3, 0xc(r2)
/* 0C7EB4 800CAEB4 80420008 */  lwz       r2, 0x8(r2)
/* 0C7EB8 800CAEB8 4C000064 */  rfi
lbl_800CAEBC:
/* 0C7EBC 800CAEBC 3C408018 */  lis       r2, TRK_saved_exceptionID@h
/* 0C7EC0 800CAEC0 6042A7F0 */  ori       r2, r2, TRK_saved_exceptionID@l
/* 0C7EC4 800CAEC4 A0620000 */  lhz       r3, 0x0(r2)
/* 0C7EC8 800CAEC8 3C40800F */  lis       r2, gTRKExceptionStatus@h
/* 0C7ECC 800CAECC 60424E14 */  ori       r2, r2, gTRKExceptionStatus@l
/* 0C7ED0 800CAED0 8842000C */  lbz       r2, 0xc(r2)
/* 0C7ED4 800CAED4 2C020000 */  cmpwi     r2, 0x0
/* 0C7ED8 800CAED8 408200B0 */  bne       TRKExceptionHandler
/* 0C7EDC 800CAEDC 3C408018 */  lis       r2, gTRKCPUState@h
/* 0C7EE0 800CAEE0 6042A940 */  ori       r2, r2, gTRKCPUState@l
/* 0C7EE4 800CAEE4 90020000 */  stw       r0, 0x0(r2)
/* 0C7EE8 800CAEE8 90220004 */  stw       r1, 0x4(r2)
/* 0C7EEC 800CAEEC 7C1142A6 */  mfsprg    r0, 1
/* 0C7EF0 800CAEF0 90020008 */  stw       r0, 0x8(r2)
/* 0C7EF4 800CAEF4 B06202F8 */  sth       r3, 0x2f8(r2)
/* 0C7EF8 800CAEF8 B06202FA */  sth       r3, 0x2fa(r2)
/* 0C7EFC 800CAEFC 7C1242A6 */  mfsprg    r0, 2
/* 0C7F00 800CAF00 9002000C */  stw       r0, 0xc(r2)
/* 0C7F04 800CAF04 BC820010 */  stmw      r4, 0x10(r2)
/* 0C7F08 800CAF08 7F7A02A6 */  mfsrr0    r27
/* 0C7F0C 800CAF0C 7F8802A6 */  mflr      r28
/* 0C7F10 800CAF10 7FB342A6 */  mfsprg    r29, 3
/* 0C7F14 800CAF14 7FC902A6 */  mfctr     r30
/* 0C7F18 800CAF18 7FE102A6 */  mfxer     r31
/* 0C7F1C 800CAF1C BF620080 */  stmw      r27, 0x80(r2)
/* 0C7F20 800CAF20 48000D05 */  bl        TRKSaveExtended1Block
/* 0C7F24 800CAF24 3C40800F */  lis       r2, gTRKExceptionStatus@h
/* 0C7F28 800CAF28 60424E14 */  ori       r2, r2, gTRKExceptionStatus@l
/* 0C7F2C 800CAF2C 38600001 */  li        r3, 0x1
/* 0C7F30 800CAF30 9862000C */  stb       r3, 0xc(r2)
/* 0C7F34 800CAF34 3C408018 */  lis       r2, gTRKState@h
/* 0C7F38 800CAF38 6042A898 */  ori       r2, r2, gTRKState@l
/* 0C7F3C 800CAF3C 8002008C */  lwz       r0, 0x8c(r2)
/* 0C7F40 800CAF40 7C0004AC */  sync
/* 0C7F44 800CAF44 7C000124 */  mtmsr     r0
/* 0C7F48 800CAF48 7C0004AC */  sync
/* 0C7F4C 800CAF4C 80020080 */  lwz       r0, 0x80(r2)
/* 0C7F50 800CAF50 7C0803A6 */  mtlr      r0
/* 0C7F54 800CAF54 80020084 */  lwz       r0, 0x84(r2)
/* 0C7F58 800CAF58 7C0903A6 */  mtctr     r0
/* 0C7F5C 800CAF5C 80020088 */  lwz       r0, 0x88(r2)
/* 0C7F60 800CAF60 7C0103A6 */  mtxer     r0
/* 0C7F64 800CAF64 80020094 */  lwz       r0, 0x94(r2)
/* 0C7F68 800CAF68 7C1203A6 */  mtdsisr   r0
/* 0C7F6C 800CAF6C 80020090 */  lwz       r0, 0x90(r2)
/* 0C7F70 800CAF70 7C1303A6 */  mtdar     r0
/* 0C7F74 800CAF74 B862000C */  lmw       r3, 0xc(r2)
/* 0C7F78 800CAF78 80020000 */  lwz       r0, 0x0(r2)
/* 0C7F7C 800CAF7C 80220004 */  lwz       r1, 0x4(r2)
/* 0C7F80 800CAF80 80420008 */  lwz       r2, 0x8(r2)
/* 0C7F84 800CAF84 480000A0 */  b         TRKPostInterruptEvent

glabel TRKExceptionHandler
/* 0C7F88 800CAF88 3C40800F */  lis       r2, gTRKExceptionStatus@h
/* 0C7F8C 800CAF8C 60424E14 */  ori       r2, r2, gTRKExceptionStatus@l
/* 0C7F90 800CAF90 B0620008 */  sth       r3, 0x8(r2)
/* 0C7F94 800CAF94 7C7A02A6 */  mfsrr0    r3
/* 0C7F98 800CAF98 90620000 */  stw       r3, 0x0(r2)
/* 0C7F9C 800CAF9C A0620008 */  lhz       r3, 0x8(r2)
/* 0C7FA0 800CAFA0 2C030200 */  cmpwi     r3, 0x200
/* 0C7FA4 800CAFA4 41820050 */  beq       lbl_800CAFF4
/* 0C7FA8 800CAFA8 2C030300 */  cmpwi     r3, 0x300
/* 0C7FAC 800CAFAC 41820048 */  beq       lbl_800CAFF4
/* 0C7FB0 800CAFB0 2C030400 */  cmpwi     r3, 0x400
/* 0C7FB4 800CAFB4 41820040 */  beq       lbl_800CAFF4
/* 0C7FB8 800CAFB8 2C030600 */  cmpwi     r3, 0x600
/* 0C7FBC 800CAFBC 41820038 */  beq       lbl_800CAFF4
/* 0C7FC0 800CAFC0 2C030700 */  cmpwi     r3, 0x700
/* 0C7FC4 800CAFC4 41820030 */  beq       lbl_800CAFF4
/* 0C7FC8 800CAFC8 2C030800 */  cmpwi     r3, 0x800
/* 0C7FCC 800CAFCC 41820028 */  beq       lbl_800CAFF4
/* 0C7FD0 800CAFD0 2C031000 */  cmpwi     r3, 0x1000
/* 0C7FD4 800CAFD4 41820020 */  beq       lbl_800CAFF4
/* 0C7FD8 800CAFD8 2C031100 */  cmpwi     r3, 0x1100
/* 0C7FDC 800CAFDC 41820018 */  beq       lbl_800CAFF4
/* 0C7FE0 800CAFE0 2C031200 */  cmpwi     r3, 0x1200
/* 0C7FE4 800CAFE4 41820010 */  beq       lbl_800CAFF4
/* 0C7FE8 800CAFE8 2C031300 */  cmpwi     r3, 0x1300
/* 0C7FEC 800CAFEC 41820008 */  beq       lbl_800CAFF4
/* 0C7FF0 800CAFF0 48000010 */  b         lbl_800CB000
lbl_800CAFF4:
/* 0C7FF4 800CAFF4 7C7A02A6 */  mfsrr0    r3
/* 0C7FF8 800CAFF8 38630004 */  addi      r3, r3, 0x4
/* 0C7FFC 800CAFFC 7C7A03A6 */  mtsrr0    r3
lbl_800CB000:
/* 0C8000 800CB000 3C40800F */  lis       r2, gTRKExceptionStatus@h
/* 0C8004 800CB004 60424E14 */  ori       r2, r2, gTRKExceptionStatus@l
/* 0C8008 800CB008 38600001 */  li        r3, 0x1
/* 0C800C 800CB00C 9862000D */  stb       r3, 0xd(r2)
/* 0C8010 800CB010 7C7342A6 */  mfsprg    r3, 3
/* 0C8014 800CB014 7C6FF120 */  mtcrf     255, r3
/* 0C8018 800CB018 7C5142A6 */  mfsprg    r2, 1
/* 0C801C 800CB01C 7C7242A6 */  mfsprg    r3, 2
/* 0C8020 800CB020 4C000064 */  rfi

glabel TRKPostInterruptEvent
/* 0C8024 800CB024 7C0802A6 */  mflr      r0
/* 0C8028 800CB028 90010004 */  stw       r0, 0x4(r1)
/* 0C802C 800CB02C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0C8030 800CB030 3C608019 */  lis       r3, gTRKState@ha
/* 0C8034 800CB034 3863A898 */  addi      r3, r3, gTRKState@l
/* 0C8038 800CB038 3863009C */  addi      r3, r3, 0x9c
/* 0C803C 800CB03C 80030000 */  lwz       r0, 0x0(r3)
/* 0C8040 800CB040 2C000000 */  cmpwi     r0, 0x0
/* 0C8044 800CB044 41820010 */  beq       lbl_800CB054
/* 0C8048 800CB048 38000000 */  li        r0, 0x0
/* 0C804C 800CB04C 90030000 */  stw       r0, 0x0(r3)
/* 0C8050 800CB050 48000074 */  b         lbl_800CB0C4
lbl_800CB054:
/* 0C8054 800CB054 3C608019 */  lis       r3, gTRKCPUState@ha
/* 0C8058 800CB058 3863A940 */  addi      r3, r3, gTRKCPUState@l
/* 0C805C 800CB05C 800302F8 */  lwz       r0, 0x2f8(r3)
/* 0C8060 800CB060 5400043E */  clrlwi    r0, r0, 16
/* 0C8064 800CB064 2C000D00 */  cmpwi     r0, 0xd00
/* 0C8068 800CB068 41820014 */  beq       lbl_800CB07C
/* 0C806C 800CB06C 40800044 */  bge       lbl_800CB0B0
/* 0C8070 800CB070 2C000700 */  cmpwi     r0, 0x700
/* 0C8074 800CB074 41820008 */  beq       lbl_800CB07C
/* 0C8078 800CB078 48000038 */  b         lbl_800CB0B0
lbl_800CB07C:
/* 0C807C 800CB07C 3C808019 */  lis       r4, gTRKCPUState@ha
/* 0C8080 800CB080 38610008 */  addi      r3, r1, 0x8
/* 0C8084 800CB084 3884A940 */  addi      r4, r4, gTRKCPUState@l
/* 0C8088 800CB088 80840080 */  lwz       r4, 0x80(r4)
/* 0C808C 800CB08C 4BFFF6B1 */  bl        fn_800CA73C
/* 0C8090 800CB090 80610008 */  lwz       r3, 0x8(r1)
/* 0C8094 800CB094 3C03F020 */  subis     r0, r3, 0xfe0
/* 0C8098 800CB098 28000000 */  cmplwi    r0, 0x0
/* 0C809C 800CB09C 4082000C */  bne       lbl_800CB0A8
/* 0C80A0 800CB0A0 38800005 */  li        r4, 0x5
/* 0C80A4 800CB0A4 48000010 */  b         lbl_800CB0B4
lbl_800CB0A8:
/* 0C80A8 800CB0A8 38800003 */  li        r4, 0x3
/* 0C80AC 800CB0AC 48000008 */  b         lbl_800CB0B4
lbl_800CB0B0:
/* 0C80B0 800CB0B0 38800004 */  li        r4, 0x4
lbl_800CB0B4:
/* 0C80B4 800CB0B4 3861000C */  addi      r3, r1, 0xc
/* 0C80B8 800CB0B8 4BFFCEE9 */  bl        fn_800C7FA0
/* 0C80BC 800CB0BC 3861000C */  addi      r3, r1, 0xc
/* 0C80C0 800CB0C0 4BFFCE01 */  bl        fn_800C7EC0
lbl_800CB0C4:
/* 0C80C4 800CB0C4 38210018 */  addi      r1, r1, 0x18
/* 0C80C8 800CB0C8 80010004 */  lwz       r0, 0x4(r1)
/* 0C80CC 800CB0CC 7C0803A6 */  mtlr      r0
/* 0C80D0 800CB0D0 4E800020 */  blr

glabel fn_800CB0D4
/* 0C80D4 800CB0D4 3C608018 */  lis       r3, gTRKState@h
/* 0C80D8 800CB0D8 6063A898 */  ori       r3, r3, gTRKState@l
/* 0C80DC 800CB0DC BC030000 */  stmw      r0, 0x0(r3)
/* 0C80E0 800CB0E0 7C0000A6 */  mfmsr     r0
/* 0C80E4 800CB0E4 9003008C */  stw       r0, 0x8c(r3)
/* 0C80E8 800CB0E8 7C0802A6 */  mflr      r0
/* 0C80EC 800CB0EC 90030080 */  stw       r0, 0x80(r3)
/* 0C80F0 800CB0F0 7C0902A6 */  mfctr     r0
/* 0C80F4 800CB0F4 90030084 */  stw       r0, 0x84(r3)
/* 0C80F8 800CB0F8 7C0102A6 */  mfxer     r0
/* 0C80FC 800CB0FC 90030088 */  stw       r0, 0x88(r3)
/* 0C8100 800CB100 7C1202A6 */  mfdsisr   r0
/* 0C8104 800CB104 90030094 */  stw       r0, 0x94(r3)
/* 0C8108 800CB108 7C1302A6 */  mfdar     r0
/* 0C810C 800CB10C 90030090 */  stw       r0, 0x90(r3)
/* 0C8110 800CB110 38208002 */  li        r1, -0x7ffe
/* 0C8114 800CB114 7C2108F8 */  nor       r1, r1, r1
/* 0C8118 800CB118 7C6000A6 */  mfmsr     r3
/* 0C811C 800CB11C 7C630838 */  and       r3, r3, r1
/* 0C8120 800CB120 7C600124 */  mtmsr     r3
/* 0C8124 800CB124 3C408018 */  lis       r2, gTRKState@h
/* 0C8128 800CB128 6042A898 */  ori       r2, r2, gTRKState@l
/* 0C812C 800CB12C 804200A0 */  lwz       r2, 0xa0(r2)
/* 0C8130 800CB130 88420000 */  lbz       r2, 0x0(r2)
/* 0C8134 800CB134 2C020000 */  cmpwi     r2, 0x0
/* 0C8138 800CB138 41820018 */  beq       lbl_800CB150
/* 0C813C 800CB13C 3C408018 */  lis       r2, gTRKState@h
/* 0C8140 800CB140 6042A898 */  ori       r2, r2, gTRKState@l
/* 0C8144 800CB144 38600001 */  li        r3, 0x1
/* 0C8148 800CB148 9862009C */  stb       r3, 0x9c(r2)
/* 0C814C 800CB14C 4800004C */  b         lbl_800CB198
lbl_800CB150:
/* 0C8150 800CB150 3C40800F */  lis       r2, gTRKExceptionStatus@h
/* 0C8154 800CB154 60424E14 */  ori       r2, r2, gTRKExceptionStatus@l
/* 0C8158 800CB158 38600000 */  li        r3, 0x0
/* 0C815C 800CB15C 9862000C */  stb       r3, 0xc(r2)
/* 0C8160 800CB160 48000C7D */  bl        fn_800CBDDC
/* 0C8164 800CB164 3C408018 */  lis       r2, gTRKCPUState@h
/* 0C8168 800CB168 6042A940 */  ori       r2, r2, gTRKCPUState@l
/* 0C816C 800CB16C BB620080 */  lmw       r27, 0x80(r2)
/* 0C8170 800CB170 7F7A03A6 */  mtsrr0    r27
/* 0C8174 800CB174 7F8803A6 */  mtlr      r28
/* 0C8178 800CB178 7FAFF120 */  mtcrf     255, r29
/* 0C817C 800CB17C 7FC903A6 */  mtctr     r30
/* 0C8180 800CB180 7FE103A6 */  mtxer     r31
/* 0C8184 800CB184 B862000C */  lmw       r3, 0xc(r2)
/* 0C8188 800CB188 80020000 */  lwz       r0, 0x0(r2)
/* 0C818C 800CB18C 80220004 */  lwz       r1, 0x4(r2)
/* 0C8190 800CB190 80420008 */  lwz       r2, 0x8(r2)
/* 0C8194 800CB194 4C000064 */  rfi
lbl_800CB198:
/* 0C8198 800CB198 3C408018 */  lis       r2, gTRKState@h
/* 0C819C 800CB19C 6042A898 */  ori       r2, r2, gTRKState@l
/* 0C81A0 800CB1A0 8002008C */  lwz       r0, 0x8c(r2)
/* 0C81A4 800CB1A4 7C0004AC */  sync
/* 0C81A8 800CB1A8 7C000124 */  mtmsr     r0
/* 0C81AC 800CB1AC 7C0004AC */  sync
/* 0C81B0 800CB1B0 80020080 */  lwz       r0, 0x80(r2)
/* 0C81B4 800CB1B4 7C0803A6 */  mtlr      r0
/* 0C81B8 800CB1B8 80020084 */  lwz       r0, 0x84(r2)
/* 0C81BC 800CB1BC 7C0903A6 */  mtctr     r0
/* 0C81C0 800CB1C0 80020088 */  lwz       r0, 0x88(r2)
/* 0C81C4 800CB1C4 7C0103A6 */  mtxer     r0
/* 0C81C8 800CB1C8 80020094 */  lwz       r0, 0x94(r2)
/* 0C81CC 800CB1CC 7C1203A6 */  mtdsisr   r0
/* 0C81D0 800CB1D0 80020090 */  lwz       r0, 0x90(r2)
/* 0C81D4 800CB1D4 7C1303A6 */  mtdar     r0
/* 0C81D8 800CB1D8 B862000C */  lmw       r3, 0xc(r2)
/* 0C81DC 800CB1DC 80020000 */  lwz       r0, 0x0(r2)
/* 0C81E0 800CB1E0 80220004 */  lwz       r1, 0x4(r2)
/* 0C81E4 800CB1E4 80420008 */  lwz       r2, 0x8(r2)
/* 0C81E8 800CB1E8 4BFFFE3C */  b         TRKPostInterruptEvent

glabel TRKTargetInterrupt
/* 0C81EC 800CB1EC 7C0802A6 */  mflr      r0
/* 0C81F0 800CB1F0 90010004 */  stw       r0, 0x4(r1)
/* 0C81F4 800CB1F4 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C81F8 800CB1F8 93E1000C */  stw       r31, 0xc(r1)
/* 0C81FC 800CB1FC 88030000 */  lbz       r0, 0x0(r3)
/* 0C8200 800CB200 3BE00000 */  li        r31, 0x0
/* 0C8204 800CB204 2C000005 */  cmpwi     r0, 0x5
/* 0C8208 800CB208 40800030 */  bge       lbl_800CB238
/* 0C820C 800CB20C 2C000003 */  cmpwi     r0, 0x3
/* 0C8210 800CB210 40800008 */  bge       lbl_800CB218
/* 0C8214 800CB214 48000024 */  b         lbl_800CB238
lbl_800CB218:
/* 0C8218 800CB218 48000281 */  bl        fn_800CB498
/* 0C821C 800CB21C 2C030000 */  cmpwi     r3, 0x0
/* 0C8220 800CB220 40820018 */  bne       lbl_800CB238
/* 0C8224 800CB224 38600001 */  li        r3, 0x1
/* 0C8228 800CB228 480004B1 */  bl        fn_800CB6D8
/* 0C822C 800CB22C 38600090 */  li        r3, 0x90
/* 0C8230 800CB230 4BFFF115 */  bl        fn_800CA344
/* 0C8234 800CB234 7C7F1B78 */  mr        r31, r3
lbl_800CB238:
/* 0C8238 800CB238 7FE3FB78 */  mr        r3, r31
/* 0C823C 800CB23C 83E1000C */  lwz       r31, 0xc(r1)
/* 0C8240 800CB240 38210010 */  addi      r1, r1, 0x10
/* 0C8244 800CB244 80010004 */  lwz       r0, 0x4(r1)
/* 0C8248 800CB248 7C0803A6 */  mtlr      r0
/* 0C824C 800CB24C 4E800020 */  blr

glabel fn_800CB250
/* 0C8250 800CB250 7C0802A6 */  mflr      r0
/* 0C8254 800CB254 90010004 */  stw       r0, 0x4(r1)
/* 0C8258 800CB258 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0C825C 800CB25C 93E10014 */  stw       r31, 0x14(r1)
/* 0C8260 800CB260 93C10010 */  stw       r30, 0x10(r1)
/* 0C8264 800CB264 7C7E1B78 */  mr        r30, r3
/* 0C8268 800CB268 3C608019 */  lis       r3, gTRKCPUState@ha
/* 0C826C 800CB26C 3863A940 */  addi      r3, r3, gTRKCPUState@l
/* 0C8270 800CB270 3BE30080 */  addi      r31, r3, 0x80
/* 0C8274 800CB274 809F0000 */  lwz       r4, 0x0(r31)
/* 0C8278 800CB278 7FC3F378 */  mr        r3, r30
/* 0C827C 800CB27C 4BFFD2C1 */  bl        fn_800C853C
/* 0C8280 800CB280 2C030000 */  cmpwi     r3, 0x0
/* 0C8284 800CB284 40820010 */  bne       lbl_800CB294
/* 0C8288 800CB288 38610008 */  addi      r3, r1, 0x8
/* 0C828C 800CB28C 809F0000 */  lwz       r4, 0x0(r31)
/* 0C8290 800CB290 4BFFF4AD */  bl        fn_800CA73C
lbl_800CB294:
/* 0C8294 800CB294 2C030000 */  cmpwi     r3, 0x0
/* 0C8298 800CB298 40820010 */  bne       lbl_800CB2A8
/* 0C829C 800CB29C 7FC3F378 */  mr        r3, r30
/* 0C82A0 800CB2A0 80810008 */  lwz       r4, 0x8(r1)
/* 0C82A4 800CB2A4 4BFFD299 */  bl        fn_800C853C
lbl_800CB2A8:
/* 0C82A8 800CB2A8 2C030000 */  cmpwi     r3, 0x0
/* 0C82AC 800CB2AC 4082001C */  bne       lbl_800CB2C8
/* 0C82B0 800CB2B0 3C608019 */  lis       r3, gTRKCPUState@ha
/* 0C82B4 800CB2B4 3863A940 */  addi      r3, r3, gTRKCPUState@l
/* 0C82B8 800CB2B8 800302F8 */  lwz       r0, 0x2f8(r3)
/* 0C82BC 800CB2BC 7FC3F378 */  mr        r3, r30
/* 0C82C0 800CB2C0 5404043E */  clrlwi    r4, r0, 16
/* 0C82C4 800CB2C4 4BFFD225 */  bl        fn_800C84E8
lbl_800CB2C8:
/* 0C82C8 800CB2C8 83E10014 */  lwz       r31, 0x14(r1)
/* 0C82CC 800CB2CC 83C10010 */  lwz       r30, 0x10(r1)
/* 0C82D0 800CB2D0 38210018 */  addi      r1, r1, 0x18
/* 0C82D4 800CB2D4 80010004 */  lwz       r0, 0x4(r1)
/* 0C82D8 800CB2D8 7C0803A6 */  mtlr      r0
/* 0C82DC 800CB2DC 4E800020 */  blr

glabel fn_800CB2E0
/* 0C82E0 800CB2E0 7C0802A6 */  mflr      r0
/* 0C82E4 800CB2E4 90010004 */  stw       r0, 0x4(r1)
/* 0C82E8 800CB2E8 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0C82EC 800CB2EC 93E10014 */  stw       r31, 0x14(r1)
/* 0C82F0 800CB2F0 93C10010 */  stw       r30, 0x10(r1)
/* 0C82F4 800CB2F4 7C7E1B78 */  mr        r30, r3
/* 0C82F8 800CB2F8 3C60800F */  lis       r3, gTRKExceptionStatus@ha
/* 0C82FC 800CB2FC 3BE34E14 */  addi      r31, r3, gTRKExceptionStatus@l
/* 0C8300 800CB300 809F0000 */  lwz       r4, 0x0(r31)
/* 0C8304 800CB304 7FC3F378 */  mr        r3, r30
/* 0C8308 800CB308 4BFFD235 */  bl        fn_800C853C
/* 0C830C 800CB30C 2C030000 */  cmpwi     r3, 0x0
/* 0C8310 800CB310 40820010 */  bne       lbl_800CB320
/* 0C8314 800CB314 38610008 */  addi      r3, r1, 0x8
/* 0C8318 800CB318 809F0000 */  lwz       r4, 0x0(r31)
/* 0C831C 800CB31C 4BFFF421 */  bl        fn_800CA73C
lbl_800CB320:
/* 0C8320 800CB320 2C030000 */  cmpwi     r3, 0x0
/* 0C8324 800CB324 40820010 */  bne       lbl_800CB334
/* 0C8328 800CB328 7FC3F378 */  mr        r3, r30
/* 0C832C 800CB32C 80810008 */  lwz       r4, 0x8(r1)
/* 0C8330 800CB330 4BFFD20D */  bl        fn_800C853C
lbl_800CB334:
/* 0C8334 800CB334 2C030000 */  cmpwi     r3, 0x0
/* 0C8338 800CB338 40820018 */  bne       lbl_800CB350
/* 0C833C 800CB33C 3C60800F */  lis       r3, gTRKExceptionStatus@ha
/* 0C8340 800CB340 38634E14 */  addi      r3, r3, gTRKExceptionStatus@l
/* 0C8344 800CB344 A0830008 */  lhz       r4, 0x8(r3)
/* 0C8348 800CB348 7FC3F378 */  mr        r3, r30
/* 0C834C 800CB34C 4BFFD19D */  bl        fn_800C84E8
lbl_800CB350:
/* 0C8350 800CB350 83E10014 */  lwz       r31, 0x14(r1)
/* 0C8354 800CB354 83C10010 */  lwz       r30, 0x10(r1)
/* 0C8358 800CB358 38210018 */  addi      r1, r1, 0x18
/* 0C835C 800CB35C 80010004 */  lwz       r0, 0x4(r1)
/* 0C8360 800CB360 7C0803A6 */  mtlr      r0
/* 0C8364 800CB364 4E800020 */  blr

glabel fn_800CB368
/* 0C8368 800CB368 2C030000 */  cmpwi     r3, 0x0
/* 0C836C 800CB36C 4182001C */  beq       lbl_800CB388
/* 0C8370 800CB370 3C608019 */  lis       r3, gTRKCPUState@ha
/* 0C8374 800CB374 3863A940 */  addi      r3, r3, gTRKCPUState@l
/* 0C8378 800CB378 800301F8 */  lwz       r0, 0x1f8(r3)
/* 0C837C 800CB37C 60000400 */  ori       r0, r0, 0x400
/* 0C8380 800CB380 900301F8 */  stw       r0, 0x1f8(r3)
/* 0C8384 800CB384 48000018 */  b         lbl_800CB39C
lbl_800CB388:
/* 0C8388 800CB388 3C608019 */  lis       r3, gTRKCPUState@ha
/* 0C838C 800CB38C 3863A940 */  addi      r3, r3, gTRKCPUState@l
/* 0C8390 800CB390 800301F8 */  lwz       r0, 0x1f8(r3)
/* 0C8394 800CB394 540005A8 */  rlwinm    r0, r0, 0, 22, 20
/* 0C8398 800CB398 900301F8 */  stw       r0, 0x1f8(r3)
lbl_800CB39C:
/* 0C839C 800CB39C 38600000 */  li        r3, 0x0
/* 0C83A0 800CB3A0 4E800020 */  blr

glabel fn_800CB3A4
/* 0C83A4 800CB3A4 3C60800F */  lis       r3, D_800F4E24@ha
/* 0C83A8 800CB3A8 38A34E24 */  addi      r5, r3, D_800F4E24@l
/* 0C83AC 800CB3AC 80050000 */  lwz       r0, 0x0(r5)
/* 0C83B0 800CB3B0 38600001 */  li        r3, 0x1
/* 0C83B4 800CB3B4 2C000000 */  cmpwi     r0, 0x0
/* 0C83B8 800CB3B8 4182006C */  beq       lbl_800CB424
/* 0C83BC 800CB3BC 3C808019 */  lis       r4, gTRKCPUState@ha
/* 0C83C0 800CB3C0 3884A940 */  addi      r4, r4, gTRKCPUState@l
/* 0C83C4 800CB3C4 800402F8 */  lwz       r0, 0x2f8(r4)
/* 0C83C8 800CB3C8 5400043E */  clrlwi    r0, r0, 16
/* 0C83CC 800CB3CC 28000D00 */  cmplwi    r0, 0xd00
/* 0C83D0 800CB3D0 40820054 */  bne       lbl_800CB424
/* 0C83D4 800CB3D4 88050004 */  lbz       r0, 0x4(r5)
/* 0C83D8 800CB3D8 2C000001 */  cmpwi     r0, 0x1
/* 0C83DC 800CB3DC 41820028 */  beq       lbl_800CB404
/* 0C83E0 800CB3E0 40800044 */  bge       lbl_800CB424
/* 0C83E4 800CB3E4 2C000000 */  cmpwi     r0, 0x0
/* 0C83E8 800CB3E8 40800008 */  bge       lbl_800CB3F0
/* 0C83EC 800CB3EC 48000038 */  b         lbl_800CB424
lbl_800CB3F0:
/* 0C83F0 800CB3F0 80050008 */  lwz       r0, 0x8(r5)
/* 0C83F4 800CB3F4 28000000 */  cmplwi    r0, 0x0
/* 0C83F8 800CB3F8 4182002C */  beq       lbl_800CB424
/* 0C83FC 800CB3FC 38600000 */  li        r3, 0x0
/* 0C8400 800CB400 48000024 */  b         lbl_800CB424
lbl_800CB404:
/* 0C8404 800CB404 80840080 */  lwz       r4, 0x80(r4)
/* 0C8408 800CB408 8005000C */  lwz       r0, 0xc(r5)
/* 0C840C 800CB40C 7C040040 */  cmplw     r4, r0
/* 0C8410 800CB410 41800014 */  blt       lbl_800CB424
/* 0C8414 800CB414 80050010 */  lwz       r0, 0x10(r5)
/* 0C8418 800CB418 7C040040 */  cmplw     r4, r0
/* 0C841C 800CB41C 41810008 */  bgt       lbl_800CB424
/* 0C8420 800CB420 38600000 */  li        r3, 0x0
lbl_800CB424:
/* 0C8424 800CB424 4E800020 */  blr

glabel fn_800CB428
/* 0C8428 800CB428 7C0802A6 */  mflr      r0
/* 0C842C 800CB42C 90010004 */  stw       r0, 0x4(r1)
/* 0C8430 800CB430 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C8434 800CB434 93E1000C */  stw       r31, 0xc(r1)
/* 0C8438 800CB438 3C60800F */  lis       r3, D_800F4E24@ha
/* 0C843C 800CB43C 3BE34E24 */  addi      r31, r3, D_800F4E24@l
/* 0C8440 800CB440 38000001 */  li        r0, 0x1
/* 0C8444 800CB444 901F0000 */  stw       r0, 0x0(r31)
/* 0C8448 800CB448 38600001 */  li        r3, 0x1
/* 0C844C 800CB44C 4BFFFF1D */  bl        fn_800CB368
/* 0C8450 800CB450 881F0004 */  lbz       r0, 0x4(r31)
/* 0C8454 800CB454 28000000 */  cmplwi    r0, 0x0
/* 0C8458 800CB458 4182000C */  beq       lbl_800CB464
/* 0C845C 800CB45C 28000010 */  cmplwi    r0, 0x10
/* 0C8460 800CB460 40820018 */  bne       lbl_800CB478
lbl_800CB464:
/* 0C8464 800CB464 3C60800F */  lis       r3, D_800F4E24@ha
/* 0C8468 800CB468 38834E24 */  addi      r4, r3, D_800F4E24@l
/* 0C846C 800CB46C 80640008 */  lwz       r3, 0x8(r4)
/* 0C8470 800CB470 3803FFFF */  subi      r0, r3, 0x1
/* 0C8474 800CB474 90040008 */  stw       r0, 0x8(r4)
lbl_800CB478:
/* 0C8478 800CB478 38600000 */  li        r3, 0x0
/* 0C847C 800CB47C 4800025D */  bl        fn_800CB6D8
/* 0C8480 800CB480 38600000 */  li        r3, 0x0
/* 0C8484 800CB484 83E1000C */  lwz       r31, 0xc(r1)
/* 0C8488 800CB488 38210010 */  addi      r1, r1, 0x10
/* 0C848C 800CB48C 80010004 */  lwz       r0, 0x4(r1)
/* 0C8490 800CB490 7C0803A6 */  mtlr      r0
/* 0C8494 800CB494 4E800020 */  blr

glabel fn_800CB498
/* 0C8498 800CB498 7C0802A6 */  mflr      r0
/* 0C849C 800CB49C 90010004 */  stw       r0, 0x4(r1)
/* 0C84A0 800CB4A0 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C84A4 800CB4A4 93E1000C */  stw       r31, 0xc(r1)
/* 0C84A8 800CB4A8 3C60800F */  lis       r3, D_800F4E24@ha
/* 0C84AC 800CB4AC 3BE34E24 */  addi      r31, r3, D_800F4E24@l
/* 0C84B0 800CB4B0 801F0000 */  lwz       r0, 0x0(r31)
/* 0C84B4 800CB4B4 2C000000 */  cmpwi     r0, 0x0
/* 0C84B8 800CB4B8 41820028 */  beq       lbl_800CB4E0
/* 0C84BC 800CB4BC 38600000 */  li        r3, 0x0
/* 0C84C0 800CB4C0 4BFFFEA9 */  bl        fn_800CB368
/* 0C84C4 800CB4C4 4BFFFEE1 */  bl        fn_800CB3A4
/* 0C84C8 800CB4C8 2C030000 */  cmpwi     r3, 0x0
/* 0C84CC 800CB4CC 41820010 */  beq       lbl_800CB4DC
/* 0C84D0 800CB4D0 38000000 */  li        r0, 0x0
/* 0C84D4 800CB4D4 901F0000 */  stw       r0, 0x0(r31)
/* 0C84D8 800CB4D8 48000008 */  b         lbl_800CB4E0
lbl_800CB4DC:
/* 0C84DC 800CB4DC 4BFFFF4D */  bl        fn_800CB428
lbl_800CB4E0:
/* 0C84E0 800CB4E0 3C60800F */  lis       r3, D_800F4E24@ha
/* 0C84E4 800CB4E4 38634E24 */  addi      r3, r3, D_800F4E24@l
/* 0C84E8 800CB4E8 80630000 */  lwz       r3, 0x0(r3)
/* 0C84EC 800CB4EC 83E1000C */  lwz       r31, 0xc(r1)
/* 0C84F0 800CB4F0 38210010 */  addi      r1, r1, 0x10
/* 0C84F4 800CB4F4 80010004 */  lwz       r0, 0x4(r1)
/* 0C84F8 800CB4F8 7C0803A6 */  mtlr      r0
/* 0C84FC 800CB4FC 4E800020 */  blr

glabel fn_800CB500
/* 0C8500 800CB500 7C0802A6 */  mflr      r0
/* 0C8504 800CB504 90010004 */  stw       r0, 0x4(r1)
/* 0C8508 800CB508 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C850C 800CB50C 2C040000 */  cmpwi     r4, 0x0
/* 0C8510 800CB510 4182000C */  beq       lbl_800CB51C
/* 0C8514 800CB514 38600703 */  li        r3, 0x703
/* 0C8518 800CB518 4800001C */  b         lbl_800CB534
lbl_800CB51C:
/* 0C851C 800CB51C 3C80800F */  lis       r4, D_800F4E24@ha
/* 0C8520 800CB520 38844E24 */  addi      r4, r4, D_800F4E24@l
/* 0C8524 800CB524 38000000 */  li        r0, 0x0
/* 0C8528 800CB528 98040004 */  stb       r0, 0x4(r4)
/* 0C852C 800CB52C 90640008 */  stw       r3, 0x8(r4)
/* 0C8530 800CB530 4BFFFEF9 */  bl        fn_800CB428
lbl_800CB534:
/* 0C8534 800CB534 38210008 */  addi      r1, r1, 0x8
/* 0C8538 800CB538 80010004 */  lwz       r0, 0x4(r1)
/* 0C853C 800CB53C 7C0803A6 */  mtlr      r0
/* 0C8540 800CB540 4E800020 */  blr

glabel fn_800CB544
/* 0C8544 800CB544 7C0802A6 */  mflr      r0
/* 0C8548 800CB548 90010004 */  stw       r0, 0x4(r1)
/* 0C854C 800CB54C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C8550 800CB550 2C050000 */  cmpwi     r5, 0x0
/* 0C8554 800CB554 4182000C */  beq       lbl_800CB560
/* 0C8558 800CB558 38600703 */  li        r3, 0x703
/* 0C855C 800CB55C 48000020 */  b         lbl_800CB57C
lbl_800CB560:
/* 0C8560 800CB560 3CA0800F */  lis       r5, D_800F4E24@ha
/* 0C8564 800CB564 38A54E24 */  addi      r5, r5, D_800F4E24@l
/* 0C8568 800CB568 38000001 */  li        r0, 0x1
/* 0C856C 800CB56C 98050004 */  stb       r0, 0x4(r5)
/* 0C8570 800CB570 9065000C */  stw       r3, 0xc(r5)
/* 0C8574 800CB574 90850010 */  stw       r4, 0x10(r5)
/* 0C8578 800CB578 4BFFFEB1 */  bl        fn_800CB428
lbl_800CB57C:
/* 0C857C 800CB57C 38210008 */  addi      r1, r1, 0x8
/* 0C8580 800CB580 80010004 */  lwz       r0, 0x4(r1)
/* 0C8584 800CB584 7C0803A6 */  mtlr      r0
/* 0C8588 800CB588 4E800020 */  blr

glabel fn_800CB58C
/* 0C858C 800CB58C 3C608019 */  lis       r3, gTRKCPUState@ha
/* 0C8590 800CB590 3863A940 */  addi      r3, r3, gTRKCPUState@l
/* 0C8594 800CB594 80630080 */  lwz       r3, 0x80(r3)
/* 0C8598 800CB598 4E800020 */  blr

glabel fn_800CB59C
/* 0C859C 800CB59C 7C0802A6 */  mflr      r0
/* 0C85A0 800CB5A0 90010004 */  stw       r0, 0x4(r1)
/* 0C85A4 800CB5A4 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0C85A8 800CB5A8 BF61001C */  stmw      r27, 0x1c(r1)
/* 0C85AC 800CB5AC 3C608019 */  lis       r3, gTRKCPUState@ha
/* 0C85B0 800CB5B0 3863A940 */  addi      r3, r3, gTRKCPUState@l
/* 0C85B4 800CB5B4 3BE3000C */  addi      r31, r3, 0xc
/* 0C85B8 800CB5B8 801F0000 */  lwz       r0, 0x0(r31)
/* 0C85BC 800CB5BC 541B063E */  clrlwi    r27, r0, 24
/* 0C85C0 800CB5C0 281B00D1 */  cmplwi    r27, 0xd1
/* 0C85C4 800CB5C4 41820028 */  beq       lbl_800CB5EC
/* 0C85C8 800CB5C8 281B00D0 */  cmplwi    r27, 0xd0
/* 0C85CC 800CB5CC 41820020 */  beq       lbl_800CB5EC
/* 0C85D0 800CB5D0 3861000C */  addi      r3, r1, 0xc
/* 0C85D4 800CB5D4 38800004 */  li        r4, 0x4
/* 0C85D8 800CB5D8 4BFFC9C9 */  bl        fn_800C7FA0
/* 0C85DC 800CB5DC 3861000C */  addi      r3, r1, 0xc
/* 0C85E0 800CB5E0 4BFFC8E1 */  bl        fn_800C7EC0
/* 0C85E4 800CB5E4 38600000 */  li        r3, 0x0
/* 0C85E8 800CB5E8 48000090 */  b         lbl_800CB678
lbl_800CB5EC:
/* 0C85EC 800CB5EC 3C608019 */  lis       r3, gTRKCPUState@ha
/* 0C85F0 800CB5F0 38C10008 */  addi      r6, r1, 0x8
/* 0C85F4 800CB5F4 3883A940 */  addi      r4, r3, gTRKCPUState@l
/* 0C85F8 800CB5F8 80640010 */  lwz       r3, 0x10(r4)
/* 0C85FC 800CB5FC 201B00D1 */  subfic    r0, r27, 0xd1
/* 0C8600 800CB600 83840014 */  lwz       r28, 0x14(r4)
/* 0C8604 800CB604 3BC40018 */  addi      r30, r4, 0x18
/* 0C8608 800CB608 7C000034 */  cntlzw    r0, r0
/* 0C860C 800CB60C 809E0000 */  lwz       r4, 0x0(r30)
/* 0C8610 800CB610 5463063E */  clrlwi    r3, r3, 24
/* 0C8614 800CB614 7F85E378 */  mr        r5, r28
/* 0C8618 800CB618 5408D97E */  srwi      r8, r0, 5
/* 0C861C 800CB61C 38E00001 */  li        r7, 0x1
/* 0C8620 800CB620 4BFFE891 */  bl        fn_800C9EB0
/* 0C8624 800CB624 88010008 */  lbz       r0, 0x8(r1)
/* 0C8628 800CB628 7C7D1B78 */  mr        r29, r3
/* 0C862C 800CB62C 28000000 */  cmplwi    r0, 0x0
/* 0C8630 800CB630 40820014 */  bne       lbl_800CB644
/* 0C8634 800CB634 2C1D0000 */  cmpwi     r29, 0x0
/* 0C8638 800CB638 4182000C */  beq       lbl_800CB644
/* 0C863C 800CB63C 38000001 */  li        r0, 0x1
/* 0C8640 800CB640 98010008 */  stb       r0, 0x8(r1)
lbl_800CB644:
/* 0C8644 800CB644 88010008 */  lbz       r0, 0x8(r1)
/* 0C8648 800CB648 281B00D1 */  cmplwi    r27, 0xd1
/* 0C864C 800CB64C 901F0000 */  stw       r0, 0x0(r31)
/* 0C8650 800CB650 40820010 */  bne       lbl_800CB660
/* 0C8654 800CB654 807E0000 */  lwz       r3, 0x0(r30)
/* 0C8658 800CB658 809C0000 */  lwz       r4, 0x0(r28)
/* 0C865C 800CB65C 4BFFEDC1 */  bl        fn_800CA41C
lbl_800CB660:
/* 0C8660 800CB660 3C608019 */  lis       r3, gTRKCPUState@ha
/* 0C8664 800CB664 38A3A940 */  addi      r5, r3, gTRKCPUState@l
/* 0C8668 800CB668 80850080 */  lwz       r4, 0x80(r5)
/* 0C866C 800CB66C 7FA3EB78 */  mr        r3, r29
/* 0C8670 800CB670 38040004 */  addi      r0, r4, 0x4
/* 0C8674 800CB674 90050080 */  stw       r0, 0x80(r5)
lbl_800CB678:
/* 0C8678 800CB678 BB61001C */  lmw       r27, 0x1c(r1)
/* 0C867C 800CB67C 38210030 */  addi      r1, r1, 0x30
/* 0C8680 800CB680 80010004 */  lwz       r0, 0x4(r1)
/* 0C8684 800CB684 7C0803A6 */  mtlr      r0
/* 0C8688 800CB688 4E800020 */  blr

glabel fn_800CB68C
/* 0C868C 800CB68C 7C0802A6 */  mflr      r0
/* 0C8690 800CB690 90010004 */  stw       r0, 0x4(r1)
/* 0C8694 800CB694 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C8698 800CB698 7C042840 */  cmplw     r4, r5
/* 0C869C 800CB69C 40800018 */  bge       lbl_800CB6B4
/* 0C86A0 800CB6A0 7C832378 */  mr        r3, r4
/* 0C86A4 800CB6A4 7C842850 */  subf      r4, r4, r5
/* 0C86A8 800CB6A8 4BFFED75 */  bl        fn_800CA41C
/* 0C86AC 800CB6AC 38600000 */  li        r3, 0x0
/* 0C86B0 800CB6B0 48000008 */  b         lbl_800CB6B8
lbl_800CB6B4:
/* 0C86B4 800CB6B4 38600700 */  li        r3, 0x700
lbl_800CB6B8:
/* 0C86B8 800CB6B8 38210008 */  addi      r1, r1, 0x8
/* 0C86BC 800CB6BC 80010004 */  lwz       r0, 0x4(r1)
/* 0C86C0 800CB6C0 7C0803A6 */  mtlr      r0
/* 0C86C4 800CB6C4 4E800020 */  blr

glabel fn_800CB6C8
/* 0C86C8 800CB6C8 3C608019 */  lis       r3, gTRKState@ha
/* 0C86CC 800CB6CC 3863A898 */  addi      r3, r3, gTRKState@l
/* 0C86D0 800CB6D0 80630098 */  lwz       r3, 0x98(r3)
/* 0C86D4 800CB6D4 4E800020 */  blr

glabel fn_800CB6D8
/* 0C86D8 800CB6D8 3C808019 */  lis       r4, gTRKState@ha
/* 0C86DC 800CB6DC 3884A898 */  addi      r4, r4, gTRKState@l
/* 0C86E0 800CB6E0 90640098 */  stw       r3, 0x98(r4)
/* 0C86E4 800CB6E4 4E800020 */  blr

glabel fn_800CB6E8
/* 0C86E8 800CB6E8 7C0802A6 */  mflr      r0
/* 0C86EC 800CB6EC 90010004 */  stw       r0, 0x4(r1)
/* 0C86F0 800CB6F0 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C86F4 800CB6F4 38600001 */  li        r3, 0x1
/* 0C86F8 800CB6F8 4BFFFFE1 */  bl        fn_800CB6D8
/* 0C86FC 800CB6FC 38600000 */  li        r3, 0x0
/* 0C8700 800CB700 38210008 */  addi      r1, r1, 0x8
/* 0C8704 800CB704 80010004 */  lwz       r0, 0x4(r1)
/* 0C8708 800CB708 7C0803A6 */  mtlr      r0
/* 0C870C 800CB70C 4E800020 */  blr

glabel fn_800CB710
/* 0C8710 800CB710 7C0802A6 */  mflr      r0
/* 0C8714 800CB714 90010004 */  stw       r0, 0x4(r1)
/* 0C8718 800CB718 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0C871C 800CB71C 3CC0800D */  lis       r6, D_800D1EB0@ha
/* 0C8720 800CB720 2C050000 */  cmpwi     r5, 0x0
/* 0C8724 800CB724 38E61EB0 */  addi      r7, r6, D_800D1EB0@l
/* 0C8728 800CB728 80C70000 */  lwz       r6, 0x0(r7)
/* 0C872C 800CB72C 80070004 */  lwz       r0, 0x4(r7)
/* 0C8730 800CB730 90C10008 */  stw       r6, 0x8(r1)
/* 0C8734 800CB734 9001000C */  stw       r0, 0xc(r1)
/* 0C8738 800CB738 80C70008 */  lwz       r6, 0x8(r7)
/* 0C873C 800CB73C 8007000C */  lwz       r0, 0xc(r7)
/* 0C8740 800CB740 90C10010 */  stw       r6, 0x10(r1)
/* 0C8744 800CB744 90010014 */  stw       r0, 0x14(r1)
/* 0C8748 800CB748 80070010 */  lwz       r0, 0x10(r7)
/* 0C874C 800CB74C 90010018 */  stw       r0, 0x18(r1)
/* 0C8750 800CB750 41820030 */  beq       lbl_800CB780
/* 0C8754 800CB754 54800534 */  rlwinm    r0, r4, 0, 20, 26
/* 0C8758 800CB758 54063032 */  slwi      r6, r0, 6
/* 0C875C 800CB75C 548006FE */  clrlwi    r0, r4, 27
/* 0C8760 800CB760 64C47C80 */  oris      r4, r6, 0x7c80
/* 0C8764 800CB764 5400801E */  slwi      r0, r0, 16
/* 0C8768 800CB768 7C800378 */  or        r0, r4, r0
/* 0C876C 800CB76C 600002A6 */  ori       r0, r0, 0x2a6
/* 0C8770 800CB770 90010008 */  stw       r0, 0x8(r1)
/* 0C8774 800CB774 3C009083 */  lis       r0, 0x9083
/* 0C8778 800CB778 9001000C */  stw       r0, 0xc(r1)
/* 0C877C 800CB77C 4800002C */  b         lbl_800CB7A8
lbl_800CB780:
/* 0C8780 800CB780 54800534 */  rlwinm    r0, r4, 0, 20, 26
/* 0C8784 800CB784 54063032 */  slwi      r6, r0, 6
/* 0C8788 800CB788 548006FE */  clrlwi    r0, r4, 27
/* 0C878C 800CB78C 3CE08083 */  lis       r7, 0x8083
/* 0C8790 800CB790 64C47C80 */  oris      r4, r6, 0x7c80
/* 0C8794 800CB794 90E10008 */  stw       r7, 0x8(r1)
/* 0C8798 800CB798 5400801E */  slwi      r0, r0, 16
/* 0C879C 800CB79C 7C800378 */  or        r0, r4, r0
/* 0C87A0 800CB7A0 600003A6 */  ori       r0, r0, 0x3a6
/* 0C87A4 800CB7A4 9001000C */  stw       r0, 0xc(r1)
lbl_800CB7A8:
/* 0C87A8 800CB7A8 38810008 */  addi      r4, r1, 0x8
/* 0C87AC 800CB7AC 4800020D */  bl        fn_800CB9B8
/* 0C87B0 800CB7B0 38210020 */  addi      r1, r1, 0x20
/* 0C87B4 800CB7B4 80010004 */  lwz       r0, 0x4(r1)
/* 0C87B8 800CB7B8 7C0803A6 */  mtlr      r0
/* 0C87BC 800CB7BC 4E800020 */  blr

glabel fn_800CB7C0
/* 0C87C0 800CB7C0 7C0802A6 */  mflr      r0
/* 0C87C4 800CB7C4 90010004 */  stw       r0, 0x4(r1)
/* 0C87C8 800CB7C8 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0C87CC 800CB7CC 3CC0800D */  lis       r6, D_800D1EC4@ha
/* 0C87D0 800CB7D0 2C050000 */  cmpwi     r5, 0x0
/* 0C87D4 800CB7D4 38E61EC4 */  addi      r7, r6, D_800D1EC4@l
/* 0C87D8 800CB7D8 80C70000 */  lwz       r6, 0x0(r7)
/* 0C87DC 800CB7DC 80070004 */  lwz       r0, 0x4(r7)
/* 0C87E0 800CB7E0 90C10008 */  stw       r6, 0x8(r1)
/* 0C87E4 800CB7E4 9001000C */  stw       r0, 0xc(r1)
/* 0C87E8 800CB7E8 80C70008 */  lwz       r6, 0x8(r7)
/* 0C87EC 800CB7EC 8007000C */  lwz       r0, 0xc(r7)
/* 0C87F0 800CB7F0 90C10010 */  stw       r6, 0x10(r1)
/* 0C87F4 800CB7F4 90010014 */  stw       r0, 0x14(r1)
/* 0C87F8 800CB7F8 80070010 */  lwz       r0, 0x10(r7)
/* 0C87FC 800CB7FC 90010018 */  stw       r0, 0x18(r1)
/* 0C8800 800CB800 41820014 */  beq       lbl_800CB814
/* 0C8804 800CB804 5480A814 */  slwi      r0, r4, 21
/* 0C8808 800CB808 6400F003 */  oris      r0, r0, 0xf003
/* 0C880C 800CB80C 90010008 */  stw       r0, 0x8(r1)
/* 0C8810 800CB810 48000010 */  b         lbl_800CB820
lbl_800CB814:
/* 0C8814 800CB814 5480A814 */  slwi      r0, r4, 21
/* 0C8818 800CB818 6400E003 */  oris      r0, r0, 0xe003
/* 0C881C 800CB81C 90010008 */  stw       r0, 0x8(r1)
lbl_800CB820:
/* 0C8820 800CB820 38810008 */  addi      r4, r1, 0x8
/* 0C8824 800CB824 48000195 */  bl        fn_800CB9B8
/* 0C8828 800CB828 38210020 */  addi      r1, r1, 0x20
/* 0C882C 800CB82C 80010004 */  lwz       r0, 0x4(r1)
/* 0C8830 800CB830 7C0803A6 */  mtlr      r0
/* 0C8834 800CB834 4E800020 */  blr

glabel fn_800CB838
/* 0C8838 800CB838 7C0802A6 */  mflr      r0
/* 0C883C 800CB83C 90010004 */  stw       r0, 0x4(r1)
/* 0C8840 800CB840 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0C8844 800CB844 93E10024 */  stw       r31, 0x24(r1)
/* 0C8848 800CB848 93C10020 */  stw       r30, 0x20(r1)
/* 0C884C 800CB84C 7C7E1B78 */  mr        r30, r3
/* 0C8850 800CB850 7CBF2B78 */  mr        r31, r5
/* 0C8854 800CB854 3C60800D */  lis       r3, D_800D1ED8@ha
/* 0C8858 800CB858 28040020 */  cmplwi    r4, 0x20
/* 0C885C 800CB85C 38C31ED8 */  addi      r6, r3, D_800D1ED8@l
/* 0C8860 800CB860 80A60000 */  lwz       r5, 0x0(r6)
/* 0C8864 800CB864 38600000 */  li        r3, 0x0
/* 0C8868 800CB868 80060004 */  lwz       r0, 0x4(r6)
/* 0C886C 800CB86C 90A10008 */  stw       r5, 0x8(r1)
/* 0C8870 800CB870 9001000C */  stw       r0, 0xc(r1)
/* 0C8874 800CB874 80A60008 */  lwz       r5, 0x8(r6)
/* 0C8878 800CB878 8006000C */  lwz       r0, 0xc(r6)
/* 0C887C 800CB87C 90A10010 */  stw       r5, 0x10(r1)
/* 0C8880 800CB880 90010014 */  stw       r0, 0x14(r1)
/* 0C8884 800CB884 80060010 */  lwz       r0, 0x10(r6)
/* 0C8888 800CB888 90010018 */  stw       r0, 0x18(r1)
/* 0C888C 800CB88C 4080003C */  bge       lbl_800CB8C8
/* 0C8890 800CB890 2C1F0000 */  cmpwi     r31, 0x0
/* 0C8894 800CB894 41820014 */  beq       lbl_800CB8A8
/* 0C8898 800CB898 5480A814 */  slwi      r0, r4, 21
/* 0C889C 800CB89C 6400D803 */  oris      r0, r0, 0xd803
/* 0C88A0 800CB8A0 90010008 */  stw       r0, 0x8(r1)
/* 0C88A4 800CB8A4 48000010 */  b         lbl_800CB8B4
lbl_800CB8A8:
/* 0C88A8 800CB8A8 5480A814 */  slwi      r0, r4, 21
/* 0C88AC 800CB8AC 6400C803 */  oris      r0, r0, 0xc803
/* 0C88B0 800CB8B0 90010008 */  stw       r0, 0x8(r1)
lbl_800CB8B4:
/* 0C88B4 800CB8B4 7FC3F378 */  mr        r3, r30
/* 0C88B8 800CB8B8 38810008 */  addi      r4, r1, 0x8
/* 0C88BC 800CB8BC 7FE5FB78 */  mr        r5, r31
/* 0C88C0 800CB8C0 480000F9 */  bl        fn_800CB9B8
/* 0C88C4 800CB8C4 480000DC */  b         lbl_800CB9A0
lbl_800CB8C8:
/* 0C88C8 800CB8C8 4082008C */  bne       lbl_800CB954
/* 0C88CC 800CB8CC 2C1F0000 */  cmpwi     r31, 0x0
/* 0C88D0 800CB8D0 4182002C */  beq       lbl_800CB8FC
/* 0C88D4 800CB8D4 3C00D824 */  lis       r0, 0xd824
/* 0C88D8 800CB8D8 3C60FC20 */  lis       r3, 0xfc20
/* 0C88DC 800CB8DC 90010008 */  stw       r0, 0x8(r1)
/* 0C88E0 800CB8E0 3803048E */  addi      r0, r3, 0x48e
/* 0C88E4 800CB8E4 9001000C */  stw       r0, 0xc(r1)
/* 0C88E8 800CB8E8 3C60D823 */  lis       r3, 0xd823
/* 0C88EC 800CB8EC 3C00C824 */  lis       r0, 0xc824
/* 0C88F0 800CB8F0 90610010 */  stw       r3, 0x10(r1)
/* 0C88F4 800CB8F4 90010014 */  stw       r0, 0x14(r1)
/* 0C88F8 800CB8F8 48000028 */  b         lbl_800CB920
lbl_800CB8FC:
/* 0C88FC 800CB8FC 3C00D824 */  lis       r0, 0xd824
/* 0C8900 800CB900 90010008 */  stw       r0, 0x8(r1)
/* 0C8904 800CB904 3C00D823 */  lis       r0, 0xd823
/* 0C8908 800CB908 3C60FDFE */  lis       r3, 0xfdfe
/* 0C890C 800CB90C 9001000C */  stw       r0, 0xc(r1)
/* 0C8910 800CB910 38630D8E */  addi      r3, r3, 0xd8e
/* 0C8914 800CB914 3C00C824 */  lis       r0, 0xc824
/* 0C8918 800CB918 90610010 */  stw       r3, 0x10(r1)
/* 0C891C 800CB91C 90010014 */  stw       r0, 0x14(r1)
lbl_800CB920:
/* 0C8920 800CB920 7FC3F378 */  mr        r3, r30
/* 0C8924 800CB924 38810008 */  addi      r4, r1, 0x8
/* 0C8928 800CB928 7FE5FB78 */  mr        r5, r31
/* 0C892C 800CB92C 4800008D */  bl        fn_800CB9B8
/* 0C8930 800CB930 80DE0004 */  lwz       r6, 0x4(r30)
/* 0C8934 800CB934 3800FFFF */  li        r0, -0x1
/* 0C8938 800CB938 80BE0000 */  lwz       r5, 0x0(r30)
/* 0C893C 800CB93C 38800000 */  li        r4, 0x0
/* 0C8940 800CB940 7CC00038 */  and       r0, r6, r0
/* 0C8944 800CB944 901E0004 */  stw       r0, 0x4(r30)
/* 0C8948 800CB948 7CA02038 */  and       r0, r5, r4
/* 0C894C 800CB94C 901E0000 */  stw       r0, 0x0(r30)
/* 0C8950 800CB950 48000050 */  b         lbl_800CB9A0
lbl_800CB954:
/* 0C8954 800CB954 28040021 */  cmplwi    r4, 0x21
/* 0C8958 800CB958 40820048 */  bne       lbl_800CB9A0
/* 0C895C 800CB95C 2C1F0000 */  cmpwi     r31, 0x0
/* 0C8960 800CB960 4082000C */  bne       lbl_800CB96C
/* 0C8964 800CB964 801E0004 */  lwz       r0, 0x4(r30)
/* 0C8968 800CB968 901E0000 */  stw       r0, 0x0(r30)
lbl_800CB96C:
/* 0C896C 800CB96C 7FC3F378 */  mr        r3, r30
/* 0C8970 800CB970 7FE5FB78 */  mr        r5, r31
/* 0C8974 800CB974 388003FE */  li        r4, 0x3fe
/* 0C8978 800CB978 4BFFFD99 */  bl        fn_800CB710
/* 0C897C 800CB97C 2C1F0000 */  cmpwi     r31, 0x0
/* 0C8980 800CB980 41820020 */  beq       lbl_800CB9A0
/* 0C8984 800CB984 80BE0000 */  lwz       r5, 0x0(r30)
/* 0C8988 800CB988 3800FFFF */  li        r0, -0x1
/* 0C898C 800CB98C 38800000 */  li        r4, 0x0
/* 0C8990 800CB990 7CA00038 */  and       r0, r5, r0
/* 0C8994 800CB994 901E0004 */  stw       r0, 0x4(r30)
/* 0C8998 800CB998 7C802038 */  and       r0, r4, r4
/* 0C899C 800CB99C 901E0000 */  stw       r0, 0x0(r30)
lbl_800CB9A0:
/* 0C89A0 800CB9A0 83E10024 */  lwz       r31, 0x24(r1)
/* 0C89A4 800CB9A4 83C10020 */  lwz       r30, 0x20(r1)
/* 0C89A8 800CB9A8 38210028 */  addi      r1, r1, 0x28
/* 0C89AC 800CB9AC 80010004 */  lwz       r0, 0x4(r1)
/* 0C89B0 800CB9B0 7C0803A6 */  mtlr      r0
/* 0C89B4 800CB9B4 4E800020 */  blr

glabel fn_800CB9B8
/* 0C89B8 800CB9B8 7C0802A6 */  mflr      r0
/* 0C89BC 800CB9BC 90010004 */  stw       r0, 0x4(r1)
/* 0C89C0 800CB9C0 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C89C4 800CB9C4 93E1000C */  stw       r31, 0xc(r1)
/* 0C89C8 800CB9C8 93C10008 */  stw       r30, 0x8(r1)
/* 0C89CC 800CB9CC 7C7E1B78 */  mr        r30, r3
/* 0C89D0 800CB9D0 7C9F2378 */  mr        r31, r4
/* 0C89D4 800CB9D4 3C604E80 */  lis       r3, 0x4e80
/* 0C89D8 800CB9D8 38030020 */  addi      r0, r3, 0x20
/* 0C89DC 800CB9DC 901F0010 */  stw       r0, 0x10(r31)
/* 0C89E0 800CB9E0 7FE3FB78 */  mr        r3, r31
/* 0C89E4 800CB9E4 38800014 */  li        r4, 0x14
/* 0C89E8 800CB9E8 4BFFEA35 */  bl        fn_800CA41C
/* 0C89EC 800CB9EC 3C608019 */  lis       r3, D_8018A888@ha
/* 0C89F0 800CB9F0 3883A888 */  addi      r4, r3, D_8018A888@l
/* 0C89F4 800CB9F4 7FC3F378 */  mr        r3, r30
/* 0C89F8 800CB9F8 7FECFB78 */  mr        r12, r31
/* 0C89FC 800CB9FC 7D8803A6 */  mtlr      r12
/* 0C8A00 800CBA00 4E800021 */  blrl
/* 0C8A04 800CBA04 38600000 */  li        r3, 0x0
/* 0C8A08 800CBA08 83E1000C */  lwz       r31, 0xc(r1)
/* 0C8A0C 800CBA0C 83C10008 */  lwz       r30, 0x8(r1)
/* 0C8A10 800CBA10 38210010 */  addi      r1, r1, 0x10
/* 0C8A14 800CBA14 80010004 */  lwz       r0, 0x4(r1)
/* 0C8A18 800CBA18 7C0803A6 */  mtlr      r0
/* 0C8A1C 800CBA1C 4E800020 */  blr

glabel TRKTargetSetInputPendingPtr
/* 0C8A20 800CBA20 3C808019 */  lis       r4, gTRKState@ha
/* 0C8A24 800CBA24 3884A898 */  addi      r4, r4, gTRKState@l
/* 0C8A28 800CBA28 906400A0 */  stw       r3, 0xa0(r4)
/* 0C8A2C 800CBA2C 4E800020 */  blr

# 0x800D1EA0 - 0x800D1EF0
.section .rodata, "a"

.balign 8

glabel D_800D1EA0
	.long 0x00000000
	.long 0xFFFFFFFF
	.long 0x00000001
	.long 0x00000001

glabel D_800D1EB0
	.long 0x60000000
	.long 0x60000000
	.long 0x60000000
	.long 0x60000000
	.long 0x60000000

glabel D_800D1EC4
	.long 0x60000000
	.long 0x60000000
	.long 0x60000000
	.long 0x60000000
	.long 0x60000000

glabel D_800D1ED8
	.long 0x60000000
	.long 0x60000000
	.long 0x60000000
	.long 0x60000000
	.long 0x60000000
	.long 0x00000000

# 0x800F4E08 - 0x800F4E38
.section .data, "wa"

.balign 8

glabel D_800F4E08
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

gTRKExceptionStatus:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x01000000

glabel D_800F4E24
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000

# 0x8018A7F0 - 0x8018AD70
.section .bss, "wa"

TRK_saved_exceptionID:
	.skip 0x2

glabel gap_06_8018A7F2_bss
.hidden gap_06_8018A7F2_bss
	.skip 0x2

glabel gTRKSaveState
	.skip 0x94

glabel D_8018A888
	.skip 0x10

glabel gTRKState
	.skip 0xA4

glabel gap_06_8018A93C_bss
.hidden gap_06_8018A93C_bss
	.skip 0x4

glabel gTRKCPUState
	.skip 0x430
