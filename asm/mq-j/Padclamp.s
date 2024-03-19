# Padclamp.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800AE9F8 - 0x800AEC3C

glabel ClampStick
/* 0AB9F8 800AE9F8 88030000 */  lbz       r0, 0x0(r3)
/* 0AB9FC 800AE9FC 89840000 */  lbz       r12, 0x0(r4)
/* 0ABA00 800AEA00 7C000775 */  extsb.    r0, r0
/* 0ABA04 800AEA04 7D8C0774 */  extsb     r12, r12
/* 0ABA08 800AEA08 7C0B0378 */  mr        r11, r0
/* 0ABA0C 800AEA0C 4180000C */  blt       lbl_800AEA18
/* 0ABA10 800AEA10 38000001 */  li        r0, 0x1
/* 0ABA14 800AEA14 4800000C */  b         lbl_800AEA20
lbl_800AEA18:
/* 0ABA18 800AEA18 3800FFFF */  li        r0, -0x1
/* 0ABA1C 800AEA1C 7D6B00D0 */  neg       r11, r11
lbl_800AEA20:
/* 0ABA20 800AEA20 2C0C0000 */  cmpwi     r12, 0x0
/* 0ABA24 800AEA24 4180000C */  blt       lbl_800AEA30
/* 0ABA28 800AEA28 39000001 */  li        r8, 0x1
/* 0ABA2C 800AEA2C 4800000C */  b         lbl_800AEA38
lbl_800AEA30:
/* 0ABA30 800AEA30 3900FFFF */  li        r8, -0x1
/* 0ABA34 800AEA34 7D8C00D0 */  neg       r12, r12
lbl_800AEA38:
/* 0ABA38 800AEA38 7CE70774 */  extsb     r7, r7
/* 0ABA3C 800AEA3C 7C0B3800 */  cmpw      r11, r7
/* 0ABA40 800AEA40 4181000C */  bgt       lbl_800AEA4C
/* 0ABA44 800AEA44 39600000 */  li        r11, 0x0
/* 0ABA48 800AEA48 48000008 */  b         lbl_800AEA50
lbl_800AEA4C:
/* 0ABA4C 800AEA4C 7D675850 */  subf      r11, r7, r11
lbl_800AEA50:
/* 0ABA50 800AEA50 7C0C3800 */  cmpw      r12, r7
/* 0ABA54 800AEA54 4181000C */  bgt       lbl_800AEA60
/* 0ABA58 800AEA58 39800000 */  li        r12, 0x0
/* 0ABA5C 800AEA5C 48000008 */  b         lbl_800AEA64
lbl_800AEA60:
/* 0ABA60 800AEA60 7D876050 */  subf      r12, r7, r12
lbl_800AEA64:
/* 0ABA64 800AEA64 2C0B0000 */  cmpwi     r11, 0x0
/* 0ABA68 800AEA68 4082001C */  bne       lbl_800AEA84
/* 0ABA6C 800AEA6C 2C0C0000 */  cmpwi     r12, 0x0
/* 0ABA70 800AEA70 40820014 */  bne       lbl_800AEA84
/* 0ABA74 800AEA74 38000000 */  li        r0, 0x0
/* 0ABA78 800AEA78 98040000 */  stb       r0, 0x0(r4)
/* 0ABA7C 800AEA7C 98030000 */  stb       r0, 0x0(r3)
/* 0ABA80 800AEA80 4E800020 */  blr
lbl_800AEA84:
/* 0ABA84 800AEA84 7CC60774 */  extsb     r6, r6
/* 0ABA88 800AEA88 7D2661D6 */  mullw     r9, r6, r12
/* 0ABA8C 800AEA8C 7CE659D6 */  mullw     r7, r6, r11
/* 0ABA90 800AEA90 7C093800 */  cmpw      r9, r7
/* 0ABA94 800AEA94 41810044 */  bgt       lbl_800AEAD8
/* 0ABA98 800AEA98 7CA90774 */  extsb     r9, r5
/* 0ABA9C 800AEA9C 7CA64850 */  subf      r5, r6, r9
/* 0ABAA0 800AEAA0 7CAC29D6 */  mullw     r5, r12, r5
/* 0ABAA4 800AEAA4 7D2649D6 */  mullw     r9, r6, r9
/* 0ABAA8 800AEAA8 7CE72A14 */  add       r7, r7, r5
/* 0ABAAC 800AEAAC 7C093800 */  cmpw      r9, r7
/* 0ABAB0 800AEAB0 40800064 */  bge       lbl_800AEB14
/* 0ABAB4 800AEAB4 7CCB49D6 */  mullw     r6, r11, r9
/* 0ABAB8 800AEAB8 7CAC49D6 */  mullw     r5, r12, r9
/* 0ABABC 800AEABC 7CC63BD6 */  divw      r6, r6, r7
/* 0ABAC0 800AEAC0 7CA53BD6 */  divw      r5, r5, r7
/* 0ABAC4 800AEAC4 7CC60774 */  extsb     r6, r6
/* 0ABAC8 800AEAC8 7CA50774 */  extsb     r5, r5
/* 0ABACC 800AEACC 39660000 */  addi      r11, r6, 0x0
/* 0ABAD0 800AEAD0 39850000 */  addi      r12, r5, 0x0
/* 0ABAD4 800AEAD4 48000040 */  b         lbl_800AEB14
lbl_800AEAD8:
/* 0ABAD8 800AEAD8 7CA70774 */  extsb     r7, r5
/* 0ABADC 800AEADC 7CA63850 */  subf      r5, r6, r7
/* 0ABAE0 800AEAE0 7CAB29D6 */  mullw     r5, r11, r5
/* 0ABAE4 800AEAE4 7D4639D6 */  mullw     r10, r6, r7
/* 0ABAE8 800AEAE8 7CE92A14 */  add       r7, r9, r5
/* 0ABAEC 800AEAEC 7C0A3800 */  cmpw      r10, r7
/* 0ABAF0 800AEAF0 40800024 */  bge       lbl_800AEB14
/* 0ABAF4 800AEAF4 7CCB51D6 */  mullw     r6, r11, r10
/* 0ABAF8 800AEAF8 7CAC51D6 */  mullw     r5, r12, r10
/* 0ABAFC 800AEAFC 7CC63BD6 */  divw      r6, r6, r7
/* 0ABB00 800AEB00 7CA53BD6 */  divw      r5, r5, r7
/* 0ABB04 800AEB04 7CC60774 */  extsb     r6, r6
/* 0ABB08 800AEB08 7CA50774 */  extsb     r5, r5
/* 0ABB0C 800AEB0C 39660000 */  addi      r11, r6, 0x0
/* 0ABB10 800AEB10 39850000 */  addi      r12, r5, 0x0
lbl_800AEB14:
/* 0ABB14 800AEB14 7CA059D6 */  mullw     r5, r0, r11
/* 0ABB18 800AEB18 7C0861D6 */  mullw     r0, r8, r12
/* 0ABB1C 800AEB1C 98A30000 */  stb       r5, 0x0(r3)
/* 0ABB20 800AEB20 98040000 */  stb       r0, 0x0(r4)
/* 0ABB24 800AEB24 4E800020 */  blr

glabel PADClamp
/* 0ABB28 800AEB28 7C0802A6 */  mflr      r0
/* 0ABB2C 800AEB2C 3C80800D */  lis       r4, D_800D1DE0@ha
/* 0ABB30 800AEB30 90010004 */  stw       r0, 0x4(r1)
/* 0ABB34 800AEB34 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0ABB38 800AEB38 93E1001C */  stw       r31, 0x1c(r1)
/* 0ABB3C 800AEB3C 93C10018 */  stw       r30, 0x18(r1)
/* 0ABB40 800AEB40 3BC00000 */  li        r30, 0x0
/* 0ABB44 800AEB44 93A10014 */  stw       r29, 0x14(r1)
/* 0ABB48 800AEB48 3BA30000 */  addi      r29, r3, 0x0
/* 0ABB4C 800AEB4C 93810010 */  stw       r28, 0x10(r1)
/* 0ABB50 800AEB50 3B841DE0 */  addi      r28, r4, D_800D1DE0@l
/* 0ABB54 800AEB54 3BFC0001 */  addi      r31, r28, 0x1
lbl_800AEB58:
/* 0ABB58 800AEB58 881D000A */  lbz       r0, 0xa(r29)
/* 0ABB5C 800AEB5C 7C000775 */  extsb.    r0, r0
/* 0ABB60 800AEB60 408200AC */  bne       lbl_800AEC0C
/* 0ABB64 800AEB64 88BC0003 */  lbz       r5, 0x3(r28)
/* 0ABB68 800AEB68 387D0002 */  addi      r3, r29, 0x2
/* 0ABB6C 800AEB6C 88DC0004 */  lbz       r6, 0x4(r28)
/* 0ABB70 800AEB70 389D0003 */  addi      r4, r29, 0x3
/* 0ABB74 800AEB74 88FC0002 */  lbz       r7, 0x2(r28)
/* 0ABB78 800AEB78 4BFFFE81 */  bl        ClampStick
/* 0ABB7C 800AEB7C 88BC0006 */  lbz       r5, 0x6(r28)
/* 0ABB80 800AEB80 387D0004 */  addi      r3, r29, 0x4
/* 0ABB84 800AEB84 88DC0007 */  lbz       r6, 0x7(r28)
/* 0ABB88 800AEB88 389D0005 */  addi      r4, r29, 0x5
/* 0ABB8C 800AEB8C 88FC0005 */  lbz       r7, 0x5(r28)
/* 0ABB90 800AEB90 4BFFFE69 */  bl        ClampStick
/* 0ABB94 800AEB94 889D0006 */  lbz       r4, 0x6(r29)
/* 0ABB98 800AEB98 881C0000 */  lbz       r0, 0x0(r28)
/* 0ABB9C 800AEB9C 887F0000 */  lbz       r3, 0x0(r31)
/* 0ABBA0 800AEBA0 7C040040 */  cmplw     r4, r0
/* 0ABBA4 800AEBA4 41810010 */  bgt       lbl_800AEBB4
/* 0ABBA8 800AEBA8 38000000 */  li        r0, 0x0
/* 0ABBAC 800AEBAC 981D0006 */  stb       r0, 0x6(r29)
/* 0ABBB0 800AEBB0 48000020 */  b         lbl_800AEBD0
lbl_800AEBB4:
/* 0ABBB4 800AEBB4 7C032040 */  cmplw     r3, r4
/* 0ABBB8 800AEBB8 40800008 */  bge       lbl_800AEBC0
/* 0ABBBC 800AEBBC 987D0006 */  stb       r3, 0x6(r29)
lbl_800AEBC0:
/* 0ABBC0 800AEBC0 887C0000 */  lbz       r3, 0x0(r28)
/* 0ABBC4 800AEBC4 881D0006 */  lbz       r0, 0x6(r29)
/* 0ABBC8 800AEBC8 7C030050 */  subf      r0, r3, r0
/* 0ABBCC 800AEBCC 981D0006 */  stb       r0, 0x6(r29)
lbl_800AEBD0:
/* 0ABBD0 800AEBD0 889D0007 */  lbz       r4, 0x7(r29)
/* 0ABBD4 800AEBD4 881C0000 */  lbz       r0, 0x0(r28)
/* 0ABBD8 800AEBD8 887F0000 */  lbz       r3, 0x0(r31)
/* 0ABBDC 800AEBDC 7C040040 */  cmplw     r4, r0
/* 0ABBE0 800AEBE0 41810010 */  bgt       lbl_800AEBF0
/* 0ABBE4 800AEBE4 38000000 */  li        r0, 0x0
/* 0ABBE8 800AEBE8 981D0007 */  stb       r0, 0x7(r29)
/* 0ABBEC 800AEBEC 48000020 */  b         lbl_800AEC0C
lbl_800AEBF0:
/* 0ABBF0 800AEBF0 7C032040 */  cmplw     r3, r4
/* 0ABBF4 800AEBF4 40800008 */  bge       lbl_800AEBFC
/* 0ABBF8 800AEBF8 987D0007 */  stb       r3, 0x7(r29)
lbl_800AEBFC:
/* 0ABBFC 800AEBFC 887C0000 */  lbz       r3, 0x0(r28)
/* 0ABC00 800AEC00 881D0007 */  lbz       r0, 0x7(r29)
/* 0ABC04 800AEC04 7C030050 */  subf      r0, r3, r0
/* 0ABC08 800AEC08 981D0007 */  stb       r0, 0x7(r29)
lbl_800AEC0C:
/* 0ABC0C 800AEC0C 3BDE0001 */  addi      r30, r30, 0x1
/* 0ABC10 800AEC10 2C1E0004 */  cmpwi     r30, 0x4
/* 0ABC14 800AEC14 3BBD000C */  addi      r29, r29, 0xc
/* 0ABC18 800AEC18 4180FF40 */  blt       lbl_800AEB58
/* 0ABC1C 800AEC1C 80010024 */  lwz       r0, 0x24(r1)
/* 0ABC20 800AEC20 83E1001C */  lwz       r31, 0x1c(r1)
/* 0ABC24 800AEC24 83C10018 */  lwz       r30, 0x18(r1)
/* 0ABC28 800AEC28 83A10014 */  lwz       r29, 0x14(r1)
/* 0ABC2C 800AEC2C 83810010 */  lwz       r28, 0x10(r1)
/* 0ABC30 800AEC30 38210020 */  addi      r1, r1, 0x20
/* 0ABC34 800AEC34 7C0803A6 */  mtlr      r0
/* 0ABC38 800AEC38 4E800020 */  blr

# 0x800D1DE0 - 0x800D1DF0
.section .rodata, "a"

.balign 8

glabel D_800D1DE0
	.2byte 0x1EB4
	.2byte 0x0F48
	.2byte 0x280F
	.2byte 0x3B1F
	.2byte 0x382C
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
