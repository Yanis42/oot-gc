# CARDDelete.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800BFA50 - 0x800BFC04

glabel DeleteCallback
/* 0BCA50 800BFA50 7C0802A6 */  mflr      r0
/* 0BCA54 800BFA54 90010004 */  stw       r0, 0x4(r1)
/* 0BCA58 800BFA58 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0BCA5C 800BFA5C 93E1001C */  stw       r31, 0x1c(r1)
/* 0BCA60 800BFA60 93C10018 */  stw       r30, 0x18(r1)
/* 0BCA64 800BFA64 93A10014 */  stw       r29, 0x14(r1)
/* 0BCA68 800BFA68 7C9D2379 */  mr.       r29, r4
/* 0BCA6C 800BFA6C 93810010 */  stw       r28, 0x10(r1)
/* 0BCA70 800BFA70 3B830000 */  addi      r28, r3, 0x0
/* 0BCA74 800BFA74 1CBC0110 */  mulli     r5, r28, 0x110
/* 0BCA78 800BFA78 3C608019 */  lis       r3, D_80188A70@ha
/* 0BCA7C 800BFA7C 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0BCA80 800BFA80 7FE02A14 */  add       r31, r0, r5
/* 0BCA84 800BFA84 83DF00D0 */  lwz       r30, 0xd0(r31)
/* 0BCA88 800BFA88 38000000 */  li        r0, 0x0
/* 0BCA8C 800BFA8C 901F00D0 */  stw       r0, 0xd0(r31)
/* 0BCA90 800BFA90 4180001C */  blt       lbl_800BFAAC
/* 0BCA94 800BFA94 A09F00BE */  lhz       r4, 0xbe(r31)
/* 0BCA98 800BFA98 387C0000 */  addi      r3, r28, 0x0
/* 0BCA9C 800BFA9C 38BE0000 */  addi      r5, r30, 0x0
/* 0BCAA0 800BFAA0 4BFFCAA9 */  bl        __CARDFreeBlock
/* 0BCAA4 800BFAA4 7C7D1B79 */  mr.       r29, r3
/* 0BCAA8 800BFAA8 4080002C */  bge       lbl_800BFAD4
lbl_800BFAAC:
/* 0BCAAC 800BFAAC 387F0000 */  addi      r3, r31, 0x0
/* 0BCAB0 800BFAB0 389D0000 */  addi      r4, r29, 0x0
/* 0BCAB4 800BFAB4 4BFFB015 */  bl        __CARDPutControlBlock
/* 0BCAB8 800BFAB8 281E0000 */  cmplwi    r30, 0x0
/* 0BCABC 800BFABC 41820018 */  beq       lbl_800BFAD4
/* 0BCAC0 800BFAC0 399E0000 */  addi      r12, r30, 0x0
/* 0BCAC4 800BFAC4 7D8803A6 */  mtlr      r12
/* 0BCAC8 800BFAC8 387C0000 */  addi      r3, r28, 0x0
/* 0BCACC 800BFACC 389D0000 */  addi      r4, r29, 0x0
/* 0BCAD0 800BFAD0 4E800021 */  blrl
lbl_800BFAD4:
/* 0BCAD4 800BFAD4 80010024 */  lwz       r0, 0x24(r1)
/* 0BCAD8 800BFAD8 83E1001C */  lwz       r31, 0x1c(r1)
/* 0BCADC 800BFADC 83C10018 */  lwz       r30, 0x18(r1)
/* 0BCAE0 800BFAE0 83A10014 */  lwz       r29, 0x14(r1)
/* 0BCAE4 800BFAE4 83810010 */  lwz       r28, 0x10(r1)
/* 0BCAE8 800BFAE8 38210020 */  addi      r1, r1, 0x20
/* 0BCAEC 800BFAEC 7C0803A6 */  mtlr      r0
/* 0BCAF0 800BFAF0 4E800020 */  blr

glabel CARDDeleteAsync
/* 0BCAF4 800BFAF4 7C0802A6 */  mflr      r0
/* 0BCAF8 800BFAF8 90010004 */  stw       r0, 0x4(r1)
/* 0BCAFC 800BFAFC 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0BCB00 800BFB00 93E1002C */  stw       r31, 0x2c(r1)
/* 0BCB04 800BFB04 3BE30000 */  addi      r31, r3, 0x0
/* 0BCB08 800BFB08 93C10028 */  stw       r30, 0x28(r1)
/* 0BCB0C 800BFB0C 3BC50000 */  addi      r30, r5, 0x0
/* 0BCB10 800BFB10 93A10024 */  stw       r29, 0x24(r1)
/* 0BCB14 800BFB14 3BA40000 */  addi      r29, r4, 0x0
/* 0BCB18 800BFB18 38810018 */  addi      r4, r1, 0x18
/* 0BCB1C 800BFB1C 4BFFAEF5 */  bl        __CARDGetControlBlock
/* 0BCB20 800BFB20 2C030000 */  cmpwi     r3, 0x0
/* 0BCB24 800BFB24 40800008 */  bge       lbl_800BFB2C
/* 0BCB28 800BFB28 480000C0 */  b         lbl_800BFBE8
lbl_800BFB2C:
/* 0BCB2C 800BFB2C 80610018 */  lwz       r3, 0x18(r1)
/* 0BCB30 800BFB30 389D0000 */  addi      r4, r29, 0x0
/* 0BCB34 800BFB34 38A10014 */  addi      r5, r1, 0x14
/* 0BCB38 800BFB38 4BFFF0F9 */  bl        fn_800BEC30
/* 0BCB3C 800BFB3C 7C641B79 */  mr.       r4, r3
/* 0BCB40 800BFB40 40800010 */  bge       lbl_800BFB50
/* 0BCB44 800BFB44 80610018 */  lwz       r3, 0x18(r1)
/* 0BCB48 800BFB48 4BFFAF81 */  bl        __CARDPutControlBlock
/* 0BCB4C 800BFB4C 4800009C */  b         lbl_800BFBE8
lbl_800BFB50:
/* 0BCB50 800BFB50 80610018 */  lwz       r3, 0x18(r1)
/* 0BCB54 800BFB54 80810014 */  lwz       r4, 0x14(r1)
/* 0BCB58 800BFB58 4BFFF3F5 */  bl        fn_800BEF4C
/* 0BCB5C 800BFB5C 2C030000 */  cmpwi     r3, 0x0
/* 0BCB60 800BFB60 41820014 */  beq       lbl_800BFB74
/* 0BCB64 800BFB64 80610018 */  lwz       r3, 0x18(r1)
/* 0BCB68 800BFB68 3880FFFF */  li        r4, -0x1
/* 0BCB6C 800BFB6C 4BFFAF5D */  bl        __CARDPutControlBlock
/* 0BCB70 800BFB70 48000078 */  b         lbl_800BFBE8
lbl_800BFB74:
/* 0BCB74 800BFB74 80610018 */  lwz       r3, 0x18(r1)
/* 0BCB78 800BFB78 4BFFCB19 */  bl        __CARDGetDirBlock
/* 0BCB7C 800BFB7C 80010014 */  lwz       r0, 0x14(r1)
/* 0BCB80 800BFB80 388000FF */  li        r4, 0xff
/* 0BCB84 800BFB84 80C10018 */  lwz       r6, 0x18(r1)
/* 0BCB88 800BFB88 38A00040 */  li        r5, 0x40
/* 0BCB8C 800BFB8C 54003032 */  slwi      r0, r0, 6
/* 0BCB90 800BFB90 7C630214 */  add       r3, r3, r0
/* 0BCB94 800BFB94 A0030036 */  lhz       r0, 0x36(r3)
/* 0BCB98 800BFB98 B00600BE */  sth       r0, 0xbe(r6)
/* 0BCB9C 800BFB9C 4BF45785 */  bl        memset
/* 0BCBA0 800BFBA0 281E0000 */  cmplwi    r30, 0x0
/* 0BCBA4 800BFBA4 4182000C */  beq       lbl_800BFBB0
/* 0BCBA8 800BFBA8 7FC0F378 */  mr        r0, r30
/* 0BCBAC 800BFBAC 4800000C */  b         lbl_800BFBB8
lbl_800BFBB0:
/* 0BCBB0 800BFBB0 3C60800C */  lis       r3, __CARDDefaultApiCallback@ha
/* 0BCBB4 800BFBB4 38039AB0 */  addi      r0, r3, __CARDDefaultApiCallback@l
lbl_800BFBB8:
/* 0BCBB8 800BFBB8 80A10018 */  lwz       r5, 0x18(r1)
/* 0BCBBC 800BFBBC 3C60800C */  lis       r3, DeleteCallback@ha
/* 0BCBC0 800BFBC0 3883FA50 */  addi      r4, r3, DeleteCallback@l
/* 0BCBC4 800BFBC4 900500D0 */  stw       r0, 0xd0(r5)
/* 0BCBC8 800BFBC8 7FE3FB78 */  mr        r3, r31
/* 0BCBCC 800BFBCC 4BFFCC65 */  bl        __CARDUpdateDir
/* 0BCBD0 800BFBD0 7C7F1B79 */  mr.       r31, r3
/* 0BCBD4 800BFBD4 40800010 */  bge       lbl_800BFBE4
/* 0BCBD8 800BFBD8 80610018 */  lwz       r3, 0x18(r1)
/* 0BCBDC 800BFBDC 7FE4FB78 */  mr        r4, r31
/* 0BCBE0 800BFBE0 4BFFAEE9 */  bl        __CARDPutControlBlock
lbl_800BFBE4:
/* 0BCBE4 800BFBE4 7FE3FB78 */  mr        r3, r31
lbl_800BFBE8:
/* 0BCBE8 800BFBE8 80010034 */  lwz       r0, 0x34(r1)
/* 0BCBEC 800BFBEC 83E1002C */  lwz       r31, 0x2c(r1)
/* 0BCBF0 800BFBF0 83C10028 */  lwz       r30, 0x28(r1)
/* 0BCBF4 800BFBF4 83A10024 */  lwz       r29, 0x24(r1)
/* 0BCBF8 800BFBF8 38210030 */  addi      r1, r1, 0x30
/* 0BCBFC 800BFBFC 7C0803A6 */  mtlr      r0
/* 0BCC00 800BFC00 4E800020 */  blr
