# CARDWrite.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800BF71C - 0x800BFA50

WriteCallback:
/* 0BC71C 800BF71C 7C0802A6 */  mflr      r0
/* 0BC720 800BF720 90010004 */  stw       r0, 0x4(r1)
/* 0BC724 800BF724 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0BC728 800BF728 93E1001C */  stw       r31, 0x1c(r1)
/* 0BC72C 800BF72C 93C10018 */  stw       r30, 0x18(r1)
/* 0BC730 800BF730 3BC30000 */  addi      r30, r3, 0x0
/* 0BC734 800BF734 3C608019 */  lis       r3, D_80188A70@ha
/* 0BC738 800BF738 93A10014 */  stw       r29, 0x14(r1)
/* 0BC73C 800BF73C 1CBE0110 */  mulli     r5, r30, 0x110
/* 0BC740 800BF740 93810010 */  stw       r28, 0x10(r1)
/* 0BC744 800BF744 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0BC748 800BF748 7C9C2379 */  mr.       r28, r4
/* 0BC74C 800BF74C 7FE02A14 */  add       r31, r0, r5
/* 0BC750 800BF750 418000F0 */  blt       lbl_800BF840
/* 0BC754 800BF754 83BF00C0 */  lwz       r29, 0xc0(r31)
/* 0BC758 800BF758 807D000C */  lwz       r3, 0xc(r29)
/* 0BC75C 800BF75C 2C030000 */  cmpwi     r3, 0x0
/* 0BC760 800BF760 4080000C */  bge       lbl_800BF76C
/* 0BC764 800BF764 3B80FFF2 */  li        r28, -0xe
/* 0BC768 800BF768 480000D8 */  b         lbl_800BF840
lbl_800BF76C:
/* 0BC76C 800BF76C 801F000C */  lwz       r0, 0xc(r31)
/* 0BC770 800BF770 7C001850 */  subf      r0, r0, r3
/* 0BC774 800BF774 901D000C */  stw       r0, 0xc(r29)
/* 0BC778 800BF778 801D000C */  lwz       r0, 0xc(r29)
/* 0BC77C 800BF77C 2C000000 */  cmpwi     r0, 0x0
/* 0BC780 800BF780 41810054 */  bgt       lbl_800BF7D4
/* 0BC784 800BF784 7FE3FB78 */  mr        r3, r31
/* 0BC788 800BF788 4BFFCF09 */  bl        __CARDGetDirBlock
/* 0BC78C 800BF78C 80BD0004 */  lwz       r5, 0x4(r29)
/* 0BC790 800BF790 3C808000 */  lis       r4, 0x8000
/* 0BC794 800BF794 800400F8 */  lwz       r0, 0xf8(r4)
/* 0BC798 800BF798 54A43032 */  slwi      r4, r5, 6
/* 0BC79C 800BF79C 7F832214 */  add       r28, r3, r4
/* 0BC7A0 800BF7A0 541DF0BE */  srwi      r29, r0, 2
/* 0BC7A4 800BF7A4 4BFE1D3D */  bl        OSGetTime
/* 0BC7A8 800BF7A8 38DD0000 */  addi      r6, r29, 0x0
/* 0BC7AC 800BF7AC 38A00000 */  li        r5, 0x0
/* 0BC7B0 800BF7B0 4800CE45 */  bl        __div2i
/* 0BC7B4 800BF7B4 909C0028 */  stw       r4, 0x28(r28)
/* 0BC7B8 800BF7B8 38000000 */  li        r0, 0x0
/* 0BC7BC 800BF7BC 387E0000 */  addi      r3, r30, 0x0
/* 0BC7C0 800BF7C0 809F00D0 */  lwz       r4, 0xd0(r31)
/* 0BC7C4 800BF7C4 901F00D0 */  stw       r0, 0xd0(r31)
/* 0BC7C8 800BF7C8 4BFFD069 */  bl        __CARDUpdateDir
/* 0BC7CC 800BF7CC 7C7C1B78 */  mr        r28, r3
/* 0BC7D0 800BF7D0 48000068 */  b         lbl_800BF838
lbl_800BF7D4:
/* 0BC7D4 800BF7D4 7FE3FB78 */  mr        r3, r31
/* 0BC7D8 800BF7D8 4BFFCAB5 */  bl        __CARDGetFatBlock
/* 0BC7DC 800BF7DC 809D0008 */  lwz       r4, 0x8(r29)
/* 0BC7E0 800BF7E0 801F000C */  lwz       r0, 0xc(r31)
/* 0BC7E4 800BF7E4 7C040214 */  add       r0, r4, r0
/* 0BC7E8 800BF7E8 901D0008 */  stw       r0, 0x8(r29)
/* 0BC7EC 800BF7EC A01D0010 */  lhz       r0, 0x10(r29)
/* 0BC7F0 800BF7F0 5400083C */  slwi      r0, r0, 1
/* 0BC7F4 800BF7F4 7C03022E */  lhzx      r0, r3, r0
/* 0BC7F8 800BF7F8 B01D0010 */  sth       r0, 0x10(r29)
/* 0BC7FC 800BF7FC A09D0010 */  lhz       r4, 0x10(r29)
/* 0BC800 800BF800 28040005 */  cmplwi    r4, 0x5
/* 0BC804 800BF804 41800010 */  blt       lbl_800BF814
/* 0BC808 800BF808 A01F0010 */  lhz       r0, 0x10(r31)
/* 0BC80C 800BF80C 7C040040 */  cmplw     r4, r0
/* 0BC810 800BF810 4180000C */  blt       lbl_800BF81C
lbl_800BF814:
/* 0BC814 800BF814 3B80FFFA */  li        r28, -0x6
/* 0BC818 800BF818 48000028 */  b         lbl_800BF840
lbl_800BF81C:
/* 0BC81C 800BF81C 801F000C */  lwz       r0, 0xc(r31)
/* 0BC820 800BF820 3C60800C */  lis       r3, EraseCallback@ha
/* 0BC824 800BF824 38A3F88C */  addi      r5, r3, EraseCallback@l
/* 0BC828 800BF828 7C8021D6 */  mullw     r4, r0, r4
/* 0BC82C 800BF82C 387E0000 */  addi      r3, r30, 0x0
/* 0BC830 800BF830 4BFFB015 */  bl        __CARDEraseSector
/* 0BC834 800BF834 7C7C1B78 */  mr        r28, r3
lbl_800BF838:
/* 0BC838 800BF838 2C1C0000 */  cmpwi     r28, 0x0
/* 0BC83C 800BF83C 40800030 */  bge       lbl_800BF86C
lbl_800BF840:
/* 0BC840 800BF840 83BF00D0 */  lwz       r29, 0xd0(r31)
/* 0BC844 800BF844 38000000 */  li        r0, 0x0
/* 0BC848 800BF848 387F0000 */  addi      r3, r31, 0x0
/* 0BC84C 800BF84C 901F00D0 */  stw       r0, 0xd0(r31)
/* 0BC850 800BF850 7F84E378 */  mr        r4, r28
/* 0BC854 800BF854 4BFFB275 */  bl        __CARDPutControlBlock
/* 0BC858 800BF858 399D0000 */  addi      r12, r29, 0x0
/* 0BC85C 800BF85C 7D8803A6 */  mtlr      r12
/* 0BC860 800BF860 387E0000 */  addi      r3, r30, 0x0
/* 0BC864 800BF864 389C0000 */  addi      r4, r28, 0x0
/* 0BC868 800BF868 4E800021 */  blrl
lbl_800BF86C:
/* 0BC86C 800BF86C 80010024 */  lwz       r0, 0x24(r1)
/* 0BC870 800BF870 83E1001C */  lwz       r31, 0x1c(r1)
/* 0BC874 800BF874 83C10018 */  lwz       r30, 0x18(r1)
/* 0BC878 800BF878 83A10014 */  lwz       r29, 0x14(r1)
/* 0BC87C 800BF87C 83810010 */  lwz       r28, 0x10(r1)
/* 0BC880 800BF880 38210020 */  addi      r1, r1, 0x20
/* 0BC884 800BF884 7C0803A6 */  mtlr      r0
/* 0BC888 800BF888 4E800020 */  blr

EraseCallback:
/* 0BC88C 800BF88C 7C0802A6 */  mflr      r0
/* 0BC890 800BF890 90010004 */  stw       r0, 0x4(r1)
/* 0BC894 800BF894 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0BC898 800BF898 93E1001C */  stw       r31, 0x1c(r1)
/* 0BC89C 800BF89C 93C10018 */  stw       r30, 0x18(r1)
/* 0BC8A0 800BF8A0 93A10014 */  stw       r29, 0x14(r1)
/* 0BC8A4 800BF8A4 7C9D2379 */  mr.       r29, r4
/* 0BC8A8 800BF8A8 93810010 */  stw       r28, 0x10(r1)
/* 0BC8AC 800BF8AC 3B830000 */  addi      r28, r3, 0x0
/* 0BC8B0 800BF8B0 1CBC0110 */  mulli     r5, r28, 0x110
/* 0BC8B4 800BF8B4 3C608019 */  lis       r3, D_80188A70@ha
/* 0BC8B8 800BF8B8 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0BC8BC 800BF8BC 7FE02A14 */  add       r31, r0, r5
/* 0BC8C0 800BF8C0 41800030 */  blt       lbl_800BF8F0
/* 0BC8C4 800BF8C4 809F00C0 */  lwz       r4, 0xc0(r31)
/* 0BC8C8 800BF8C8 3C60800C */  lis       r3, WriteCallback@ha
/* 0BC8CC 800BF8CC 38E3F71C */  addi      r7, r3, WriteCallback@l
/* 0BC8D0 800BF8D0 80BF000C */  lwz       r5, 0xc(r31)
/* 0BC8D4 800BF8D4 A0040010 */  lhz       r0, 0x10(r4)
/* 0BC8D8 800BF8D8 80DF00B4 */  lwz       r6, 0xb4(r31)
/* 0BC8DC 800BF8DC 387C0000 */  addi      r3, r28, 0x0
/* 0BC8E0 800BF8E0 7C8501D6 */  mullw     r4, r5, r0
/* 0BC8E4 800BF8E4 4BFFC92D */  bl        __CARDWrite
/* 0BC8E8 800BF8E8 7C7D1B79 */  mr.       r29, r3
/* 0BC8EC 800BF8EC 40800030 */  bge       lbl_800BF91C
lbl_800BF8F0:
/* 0BC8F0 800BF8F0 83DF00D0 */  lwz       r30, 0xd0(r31)
/* 0BC8F4 800BF8F4 38000000 */  li        r0, 0x0
/* 0BC8F8 800BF8F8 387F0000 */  addi      r3, r31, 0x0
/* 0BC8FC 800BF8FC 901F00D0 */  stw       r0, 0xd0(r31)
/* 0BC900 800BF900 7FA4EB78 */  mr        r4, r29
/* 0BC904 800BF904 4BFFB1C5 */  bl        __CARDPutControlBlock
/* 0BC908 800BF908 399E0000 */  addi      r12, r30, 0x0
/* 0BC90C 800BF90C 7D8803A6 */  mtlr      r12
/* 0BC910 800BF910 387C0000 */  addi      r3, r28, 0x0
/* 0BC914 800BF914 389D0000 */  addi      r4, r29, 0x0
/* 0BC918 800BF918 4E800021 */  blrl
lbl_800BF91C:
/* 0BC91C 800BF91C 80010024 */  lwz       r0, 0x24(r1)
/* 0BC920 800BF920 83E1001C */  lwz       r31, 0x1c(r1)
/* 0BC924 800BF924 83C10018 */  lwz       r30, 0x18(r1)
/* 0BC928 800BF928 83A10014 */  lwz       r29, 0x14(r1)
/* 0BC92C 800BF92C 83810010 */  lwz       r28, 0x10(r1)
/* 0BC930 800BF930 38210020 */  addi      r1, r1, 0x20
/* 0BC934 800BF934 7C0803A6 */  mtlr      r0
/* 0BC938 800BF938 4E800020 */  blr

glabel CARDWriteAsync
/* 0BC93C 800BF93C 7C0802A6 */  mflr      r0
/* 0BC940 800BF940 90010004 */  stw       r0, 0x4(r1)
/* 0BC944 800BF944 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0BC948 800BF948 BF610024 */  stmw      r27, 0x24(r1)
/* 0BC94C 800BF94C 3B860000 */  addi      r28, r6, 0x0
/* 0BC950 800BF950 3B650000 */  addi      r27, r5, 0x0
/* 0BC954 800BF954 3BE40000 */  addi      r31, r4, 0x0
/* 0BC958 800BF958 3BC30000 */  addi      r30, r3, 0x0
/* 0BC95C 800BF95C 3BA70000 */  addi      r29, r7, 0x0
/* 0BC960 800BF960 389B0000 */  addi      r4, r27, 0x0
/* 0BC964 800BF964 38BC0000 */  addi      r5, r28, 0x0
/* 0BC968 800BF968 38C1001C */  addi      r6, r1, 0x1c
/* 0BC96C 800BF96C 4BFFF939 */  bl        __CARDSeek
/* 0BC970 800BF970 2C030000 */  cmpwi     r3, 0x0
/* 0BC974 800BF974 40800008 */  bge       lbl_800BF97C
/* 0BC978 800BF978 480000C4 */  b         lbl_800BFA3C
lbl_800BF97C:
/* 0BC97C 800BF97C 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC980 800BF980 8083000C */  lwz       r4, 0xc(r3)
/* 0BC984 800BF984 3884FFFF */  subi      r4, r4, 0x1
/* 0BC988 800BF988 7F802039 */  and.      r0, r28, r4
/* 0BC98C 800BF98C 4082000C */  bne       lbl_800BF998
/* 0BC990 800BF990 7F602039 */  and.      r0, r27, r4
/* 0BC994 800BF994 41820010 */  beq       lbl_800BF9A4
lbl_800BF998:
/* 0BC998 800BF998 3880FF80 */  li        r4, -0x80
/* 0BC99C 800BF99C 4BFFB12D */  bl        __CARDPutControlBlock
/* 0BC9A0 800BF9A0 4800009C */  b         lbl_800BFA3C
lbl_800BF9A4:
/* 0BC9A4 800BF9A4 4BFFCCED */  bl        __CARDGetDirBlock
/* 0BC9A8 800BF9A8 801E0004 */  lwz       r0, 0x4(r30)
/* 0BC9AC 800BF9AC 54003032 */  slwi      r0, r0, 6
/* 0BC9B0 800BF9B0 7C830214 */  add       r4, r3, r0
/* 0BC9B4 800BF9B4 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC9B8 800BF9B8 4BFFF1B1 */  bl        fn_800BEB68
/* 0BC9BC 800BF9BC 7C641B79 */  mr.       r4, r3
/* 0BC9C0 800BF9C0 40800010 */  bge       lbl_800BF9D0
/* 0BC9C4 800BF9C4 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC9C8 800BF9C8 4BFFB101 */  bl        __CARDPutControlBlock
/* 0BC9CC 800BF9CC 48000070 */  b         lbl_800BFA3C
lbl_800BF9D0:
/* 0BC9D0 800BF9D0 387F0000 */  addi      r3, r31, 0x0
/* 0BC9D4 800BF9D4 389B0000 */  addi      r4, r27, 0x0
/* 0BC9D8 800BF9D8 4BFDD31D */  bl        DCStoreRange
/* 0BC9DC 800BF9DC 281D0000 */  cmplwi    r29, 0x0
/* 0BC9E0 800BF9E0 4182000C */  beq       lbl_800BF9EC
/* 0BC9E4 800BF9E4 7FA0EB78 */  mr        r0, r29
/* 0BC9E8 800BF9E8 4800000C */  b         lbl_800BF9F4
lbl_800BF9EC:
/* 0BC9EC 800BF9EC 3C60800C */  lis       r3, __CARDDefaultApiCallback@ha
/* 0BC9F0 800BF9F0 38039AB0 */  addi      r0, r3, __CARDDefaultApiCallback@l
lbl_800BF9F4:
/* 0BC9F4 800BF9F4 8081001C */  lwz       r4, 0x1c(r1)
/* 0BC9F8 800BF9F8 3C60800C */  lis       r3, EraseCallback@ha
/* 0BC9FC 800BF9FC 38A3F88C */  addi      r5, r3, EraseCallback@l
/* 0BCA00 800BFA00 900400D0 */  stw       r0, 0xd0(r4)
/* 0BCA04 800BFA04 8061001C */  lwz       r3, 0x1c(r1)
/* 0BCA08 800BFA08 93E300B4 */  stw       r31, 0xb4(r3)
/* 0BCA0C 800BFA0C 8061001C */  lwz       r3, 0x1c(r1)
/* 0BCA10 800BFA10 A01E0010 */  lhz       r0, 0x10(r30)
/* 0BCA14 800BFA14 8083000C */  lwz       r4, 0xc(r3)
/* 0BCA18 800BFA18 807E0000 */  lwz       r3, 0x0(r30)
/* 0BCA1C 800BFA1C 7C8401D6 */  mullw     r4, r4, r0
/* 0BCA20 800BFA20 4BFFAE25 */  bl        __CARDEraseSector
/* 0BCA24 800BFA24 7C7E1B79 */  mr.       r30, r3
/* 0BCA28 800BFA28 40800010 */  bge       lbl_800BFA38
/* 0BCA2C 800BFA2C 8061001C */  lwz       r3, 0x1c(r1)
/* 0BCA30 800BFA30 7FC4F378 */  mr        r4, r30
/* 0BCA34 800BFA34 4BFFB095 */  bl        __CARDPutControlBlock
lbl_800BFA38:
/* 0BCA38 800BFA38 7FC3F378 */  mr        r3, r30
lbl_800BFA3C:
/* 0BCA3C 800BFA3C BB610024 */  lmw       r27, 0x24(r1)
/* 0BCA40 800BFA40 8001003C */  lwz       r0, 0x3c(r1)
/* 0BCA44 800BFA44 38210038 */  addi      r1, r1, 0x38
/* 0BCA48 800BFA48 7C0803A6 */  mtlr      r0
/* 0BCA4C 800BFA4C 4E800020 */  blr
