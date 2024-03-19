# CARDDir.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800BC690 - 0x800BC8F4

glabel __CARDGetDirBlock
/* 0B9690 800BC690 80630084 */  lwz       r3, 0x84(r3)
/* 0B9694 800BC694 4E800020 */  blr

WriteCallback:
/* 0B9698 800BC698 7C0802A6 */  mflr      r0
/* 0B969C 800BC69C 90010004 */  stw       r0, 0x4(r1)
/* 0B96A0 800BC6A0 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B96A4 800BC6A4 93E1001C */  stw       r31, 0x1c(r1)
/* 0B96A8 800BC6A8 93C10018 */  stw       r30, 0x18(r1)
/* 0B96AC 800BC6AC 7C9E2379 */  mr.       r30, r4
/* 0B96B0 800BC6B0 93A10014 */  stw       r29, 0x14(r1)
/* 0B96B4 800BC6B4 3BA30000 */  addi      r29, r3, 0x0
/* 0B96B8 800BC6B8 1CBD0110 */  mulli     r5, r29, 0x110
/* 0B96BC 800BC6BC 3C608019 */  lis       r3, D_80188A70@ha
/* 0B96C0 800BC6C0 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B96C4 800BC6C4 7FE02A14 */  add       r31, r0, r5
/* 0B96C8 800BC6C8 41800044 */  blt       lbl_800BC70C
/* 0B96CC 800BC6CC 807F0080 */  lwz       r3, 0x80(r31)
/* 0B96D0 800BC6D0 801F0084 */  lwz       r0, 0x84(r31)
/* 0B96D4 800BC6D4 38832000 */  addi      r4, r3, 0x2000
/* 0B96D8 800BC6D8 7C002040 */  cmplw     r0, r4
/* 0B96DC 800BC6DC 38034000 */  addi      r0, r3, 0x4000
/* 0B96E0 800BC6E0 40820018 */  bne       lbl_800BC6F8
/* 0B96E4 800BC6E4 901F0084 */  stw       r0, 0x84(r31)
/* 0B96E8 800BC6E8 7C030378 */  mr        r3, r0
/* 0B96EC 800BC6EC 38A02000 */  li        r5, 0x2000
/* 0B96F0 800BC6F0 4BF48D25 */  bl        memcpy
/* 0B96F4 800BC6F4 48000018 */  b         lbl_800BC70C
lbl_800BC6F8:
/* 0B96F8 800BC6F8 909F0084 */  stw       r4, 0x84(r31)
/* 0B96FC 800BC6FC 38640000 */  addi      r3, r4, 0x0
/* 0B9700 800BC700 7C040378 */  mr        r4, r0
/* 0B9704 800BC704 38A02000 */  li        r5, 0x2000
/* 0B9708 800BC708 4BF48D0D */  bl        memcpy
lbl_800BC70C:
/* 0B970C 800BC70C 801F00D0 */  lwz       r0, 0xd0(r31)
/* 0B9710 800BC710 28000000 */  cmplwi    r0, 0x0
/* 0B9714 800BC714 40820010 */  bne       lbl_800BC724
/* 0B9718 800BC718 387F0000 */  addi      r3, r31, 0x0
/* 0B971C 800BC71C 389E0000 */  addi      r4, r30, 0x0
/* 0B9720 800BC720 4BFFE3A9 */  bl        __CARDPutControlBlock
lbl_800BC724:
/* 0B9724 800BC724 801F00D8 */  lwz       r0, 0xd8(r31)
/* 0B9728 800BC728 28000000 */  cmplwi    r0, 0x0
/* 0B972C 800BC72C 7C0C0378 */  mr        r12, r0
/* 0B9730 800BC730 4182001C */  beq       lbl_800BC74C
/* 0B9734 800BC734 38000000 */  li        r0, 0x0
/* 0B9738 800BC738 7D8803A6 */  mtlr      r12
/* 0B973C 800BC73C 901F00D8 */  stw       r0, 0xd8(r31)
/* 0B9740 800BC740 387D0000 */  addi      r3, r29, 0x0
/* 0B9744 800BC744 389E0000 */  addi      r4, r30, 0x0
/* 0B9748 800BC748 4E800021 */  blrl
lbl_800BC74C:
/* 0B974C 800BC74C 80010024 */  lwz       r0, 0x24(r1)
/* 0B9750 800BC750 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B9754 800BC754 83C10018 */  lwz       r30, 0x18(r1)
/* 0B9758 800BC758 83A10014 */  lwz       r29, 0x14(r1)
/* 0B975C 800BC75C 38210020 */  addi      r1, r1, 0x20
/* 0B9760 800BC760 7C0803A6 */  mtlr      r0
/* 0B9764 800BC764 4E800020 */  blr

EraseCallback:
/* 0B9768 800BC768 7C0802A6 */  mflr      r0
/* 0B976C 800BC76C 90010004 */  stw       r0, 0x4(r1)
/* 0B9770 800BC770 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B9774 800BC774 93E10024 */  stw       r31, 0x24(r1)
/* 0B9778 800BC778 3BE30000 */  addi      r31, r3, 0x0
/* 0B977C 800BC77C 3C608019 */  lis       r3, D_80188A70@ha
/* 0B9780 800BC780 93C10020 */  stw       r30, 0x20(r1)
/* 0B9784 800BC784 1CBF0110 */  mulli     r5, r31, 0x110
/* 0B9788 800BC788 93A1001C */  stw       r29, 0x1c(r1)
/* 0B978C 800BC78C 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B9790 800BC790 7C9D2379 */  mr.       r29, r4
/* 0B9794 800BC794 7FC02A14 */  add       r30, r0, r5
/* 0B9798 800BC798 4180003C */  blt       lbl_800BC7D4
/* 0B979C 800BC79C 80BE0084 */  lwz       r5, 0x84(r30)
/* 0B97A0 800BC7A0 3C60800C */  lis       r3, WriteCallback@ha
/* 0B97A4 800BC7A4 801E0080 */  lwz       r0, 0x80(r30)
/* 0B97A8 800BC7A8 38E3C698 */  addi      r7, r3, WriteCallback@l
/* 0B97AC 800BC7AC 807E000C */  lwz       r3, 0xc(r30)
/* 0B97B0 800BC7B0 7C002850 */  subf      r0, r0, r5
/* 0B97B4 800BC7B4 54009B7E */  srwi      r0, r0, 13
/* 0B97B8 800BC7B8 7C8301D6 */  mullw     r4, r3, r0
/* 0B97BC 800BC7BC 38C50000 */  addi      r6, r5, 0x0
/* 0B97C0 800BC7C0 387F0000 */  addi      r3, r31, 0x0
/* 0B97C4 800BC7C4 38A02000 */  li        r5, 0x2000
/* 0B97C8 800BC7C8 4BFFFA49 */  bl        __CARDWrite
/* 0B97CC 800BC7CC 7C7D1B79 */  mr.       r29, r3
/* 0B97D0 800BC7D0 40800044 */  bge       lbl_800BC814
lbl_800BC7D4:
/* 0B97D4 800BC7D4 801E00D0 */  lwz       r0, 0xd0(r30)
/* 0B97D8 800BC7D8 28000000 */  cmplwi    r0, 0x0
/* 0B97DC 800BC7DC 40820010 */  bne       lbl_800BC7EC
/* 0B97E0 800BC7E0 387E0000 */  addi      r3, r30, 0x0
/* 0B97E4 800BC7E4 389D0000 */  addi      r4, r29, 0x0
/* 0B97E8 800BC7E8 4BFFE2E1 */  bl        __CARDPutControlBlock
lbl_800BC7EC:
/* 0B97EC 800BC7EC 801E00D8 */  lwz       r0, 0xd8(r30)
/* 0B97F0 800BC7F0 28000000 */  cmplwi    r0, 0x0
/* 0B97F4 800BC7F4 7C0C0378 */  mr        r12, r0
/* 0B97F8 800BC7F8 4182001C */  beq       lbl_800BC814
/* 0B97FC 800BC7FC 38000000 */  li        r0, 0x0
/* 0B9800 800BC800 7D8803A6 */  mtlr      r12
/* 0B9804 800BC804 901E00D8 */  stw       r0, 0xd8(r30)
/* 0B9808 800BC808 387F0000 */  addi      r3, r31, 0x0
/* 0B980C 800BC80C 389D0000 */  addi      r4, r29, 0x0
/* 0B9810 800BC810 4E800021 */  blrl
lbl_800BC814:
/* 0B9814 800BC814 8001002C */  lwz       r0, 0x2c(r1)
/* 0B9818 800BC818 83E10024 */  lwz       r31, 0x24(r1)
/* 0B981C 800BC81C 83C10020 */  lwz       r30, 0x20(r1)
/* 0B9820 800BC820 83A1001C */  lwz       r29, 0x1c(r1)
/* 0B9824 800BC824 38210028 */  addi      r1, r1, 0x28
/* 0B9828 800BC828 7C0803A6 */  mtlr      r0
/* 0B982C 800BC82C 4E800020 */  blr

glabel __CARDUpdateDir
/* 0B9830 800BC830 7C0802A6 */  mflr      r0
/* 0B9834 800BC834 90010004 */  stw       r0, 0x4(r1)
/* 0B9838 800BC838 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B983C 800BC83C 93E10024 */  stw       r31, 0x24(r1)
/* 0B9840 800BC840 93C10020 */  stw       r30, 0x20(r1)
/* 0B9844 800BC844 93A1001C */  stw       r29, 0x1c(r1)
/* 0B9848 800BC848 3BA40000 */  addi      r29, r4, 0x0
/* 0B984C 800BC84C 93810018 */  stw       r28, 0x18(r1)
/* 0B9850 800BC850 3B830000 */  addi      r28, r3, 0x0
/* 0B9854 800BC854 1CBC0110 */  mulli     r5, r28, 0x110
/* 0B9858 800BC858 3C608019 */  lis       r3, D_80188A70@ha
/* 0B985C 800BC85C 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B9860 800BC860 7FC02A14 */  add       r30, r0, r5
/* 0B9864 800BC864 801E0000 */  lwz       r0, 0x0(r30)
/* 0B9868 800BC868 2C000000 */  cmpwi     r0, 0x0
/* 0B986C 800BC86C 4082000C */  bne       lbl_800BC878
/* 0B9870 800BC870 3860FFFD */  li        r3, -0x3
/* 0B9874 800BC874 48000060 */  b         lbl_800BC8D4
lbl_800BC878:
/* 0B9878 800BC878 83FE0084 */  lwz       r31, 0x84(r30)
/* 0B987C 800BC87C 38801FFC */  li        r4, 0x1ffc
/* 0B9880 800BC880 A8BF1FFA */  lha       r5, 0x1ffa(r31)
/* 0B9884 800BC884 38DF1FC0 */  addi      r6, r31, 0x1fc0
/* 0B9888 800BC888 387F0000 */  addi      r3, r31, 0x0
/* 0B988C 800BC88C 38050001 */  addi      r0, r5, 0x1
/* 0B9890 800BC890 B01F1FFA */  sth       r0, 0x1ffa(r31)
/* 0B9894 800BC894 38A6003C */  addi      r5, r6, 0x3c
/* 0B9898 800BC898 38C6003E */  addi      r6, r6, 0x3e
/* 0B989C 800BC89C 48000059 */  bl        __CARDCheckSum
/* 0B98A0 800BC8A0 387F0000 */  addi      r3, r31, 0x0
/* 0B98A4 800BC8A4 38802000 */  li        r4, 0x2000
/* 0B98A8 800BC8A8 4BFE044D */  bl        DCStoreRange
/* 0B98AC 800BC8AC 93BE00D8 */  stw       r29, 0xd8(r30)
/* 0B98B0 800BC8B0 3C60800C */  lis       r3, EraseCallback@ha
/* 0B98B4 800BC8B4 38A3C768 */  addi      r5, r3, EraseCallback@l
/* 0B98B8 800BC8B8 801E0080 */  lwz       r0, 0x80(r30)
/* 0B98BC 800BC8BC 7F83E378 */  mr        r3, r28
/* 0B98C0 800BC8C0 809E000C */  lwz       r4, 0xc(r30)
/* 0B98C4 800BC8C4 7C00F850 */  subf      r0, r0, r31
/* 0B98C8 800BC8C8 54009B7E */  srwi      r0, r0, 13
/* 0B98CC 800BC8CC 7C8401D6 */  mullw     r4, r4, r0
/* 0B98D0 800BC8D0 4BFFDF75 */  bl        __CARDEraseSector
lbl_800BC8D4:
/* 0B98D4 800BC8D4 8001002C */  lwz       r0, 0x2c(r1)
/* 0B98D8 800BC8D8 83E10024 */  lwz       r31, 0x24(r1)
/* 0B98DC 800BC8DC 83C10020 */  lwz       r30, 0x20(r1)
/* 0B98E0 800BC8E0 83A1001C */  lwz       r29, 0x1c(r1)
/* 0B98E4 800BC8E4 83810018 */  lwz       r28, 0x18(r1)
/* 0B98E8 800BC8E8 38210028 */  addi      r1, r1, 0x28
/* 0B98EC 800BC8EC 7C0803A6 */  mtlr      r0
/* 0B98F0 800BC8F0 4E800020 */  blr
