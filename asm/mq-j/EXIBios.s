# EXIBios.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A1998 - 0x800A3274

glabel SetExiInterruptMask
/* 09E998 800A1998 7C0802A6 */  mflr      r0
/* 09E99C 800A199C 90010004 */  stw       r0, 0x4(r1)
/* 09E9A0 800A19A0 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09E9A4 800A19A4 93E10014 */  stw       r31, 0x14(r1)
/* 09E9A8 800A19A8 3BE40000 */  addi      r31, r4, 0x0
/* 09E9AC 800A19AC 3C808018 */  lis       r4, Ecb@ha
/* 09E9B0 800A19B0 38847D90 */  addi      r4, r4, Ecb@l
/* 09E9B4 800A19B4 38840080 */  addi      r4, r4, 0x80
/* 09E9B8 800A19B8 2C030001 */  cmpwi     r3, 0x1
/* 09E9BC 800A19BC 4182005C */  beq       lbl_800A1A18
/* 09E9C0 800A19C0 40800010 */  bge       lbl_800A19D0
/* 09E9C4 800A19C4 2C030000 */  cmpwi     r3, 0x0
/* 09E9C8 800A19C8 40800014 */  bge       lbl_800A19DC
/* 09E9CC 800A19CC 480000AC */  b         lbl_800A1A78
lbl_800A19D0:
/* 09E9D0 800A19D0 2C030003 */  cmpwi     r3, 0x3
/* 09E9D4 800A19D4 408000A4 */  bge       lbl_800A1A78
/* 09E9D8 800A19D8 48000070 */  b         lbl_800A1A48
lbl_800A19DC:
/* 09E9DC 800A19DC 801F0000 */  lwz       r0, 0x0(r31)
/* 09E9E0 800A19E0 28000000 */  cmplwi    r0, 0x0
/* 09E9E4 800A19E4 40820010 */  bne       lbl_800A19F4
/* 09E9E8 800A19E8 80040000 */  lwz       r0, 0x0(r4)
/* 09E9EC 800A19EC 28000000 */  cmplwi    r0, 0x0
/* 09E9F0 800A19F0 41820010 */  beq       lbl_800A1A00
lbl_800A19F4:
/* 09E9F4 800A19F4 801F000C */  lwz       r0, 0xc(r31)
/* 09E9F8 800A19F8 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 09E9FC 800A19FC 41820010 */  beq       lbl_800A1A0C
lbl_800A1A00:
/* 09EA00 800A1A00 3C600041 */  lis       r3, 0x41
/* 09EA04 800A1A04 4BFFCC0D */  bl        __OSMaskInterrupts
/* 09EA08 800A1A08 48000070 */  b         lbl_800A1A78
lbl_800A1A0C:
/* 09EA0C 800A1A0C 3C600041 */  lis       r3, 0x41
/* 09EA10 800A1A10 4BFFCC89 */  bl        __OSUnmaskInterrupts
/* 09EA14 800A1A14 48000064 */  b         lbl_800A1A78
lbl_800A1A18:
/* 09EA18 800A1A18 801F0000 */  lwz       r0, 0x0(r31)
/* 09EA1C 800A1A1C 28000000 */  cmplwi    r0, 0x0
/* 09EA20 800A1A20 41820010 */  beq       lbl_800A1A30
/* 09EA24 800A1A24 801F000C */  lwz       r0, 0xc(r31)
/* 09EA28 800A1A28 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 09EA2C 800A1A2C 41820010 */  beq       lbl_800A1A3C
lbl_800A1A30:
/* 09EA30 800A1A30 3C600008 */  lis       r3, 0x8
/* 09EA34 800A1A34 4BFFCBDD */  bl        __OSMaskInterrupts
/* 09EA38 800A1A38 48000040 */  b         lbl_800A1A78
lbl_800A1A3C:
/* 09EA3C 800A1A3C 3C600008 */  lis       r3, 0x8
/* 09EA40 800A1A40 4BFFCC59 */  bl        __OSUnmaskInterrupts
/* 09EA44 800A1A44 48000034 */  b         lbl_800A1A78
lbl_800A1A48:
/* 09EA48 800A1A48 38600019 */  li        r3, 0x19
/* 09EA4C 800A1A4C 4BFFC865 */  bl        __OSGetInterruptHandler
/* 09EA50 800A1A50 28030000 */  cmplwi    r3, 0x0
/* 09EA54 800A1A54 41820010 */  beq       lbl_800A1A64
/* 09EA58 800A1A58 801F000C */  lwz       r0, 0xc(r31)
/* 09EA5C 800A1A5C 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 09EA60 800A1A60 41820010 */  beq       lbl_800A1A70
lbl_800A1A64:
/* 09EA64 800A1A64 38600040 */  li        r3, 0x40
/* 09EA68 800A1A68 4BFFCBA9 */  bl        __OSMaskInterrupts
/* 09EA6C 800A1A6C 4800000C */  b         lbl_800A1A78
lbl_800A1A70:
/* 09EA70 800A1A70 38600040 */  li        r3, 0x40
/* 09EA74 800A1A74 4BFFCC25 */  bl        __OSUnmaskInterrupts
lbl_800A1A78:
/* 09EA78 800A1A78 8001001C */  lwz       r0, 0x1c(r1)
/* 09EA7C 800A1A7C 83E10014 */  lwz       r31, 0x14(r1)
/* 09EA80 800A1A80 38210018 */  addi      r1, r1, 0x18
/* 09EA84 800A1A84 7C0803A6 */  mtlr      r0
/* 09EA88 800A1A88 4E800020 */  blr

glabel EXIImm
/* 09EA8C 800A1A8C 7C0802A6 */  mflr      r0
/* 09EA90 800A1A90 90010004 */  stw       r0, 0x4(r1)
/* 09EA94 800A1A94 9421FFC0 */  stwu      r1, -0x40(r1)
/* 09EA98 800A1A98 BF210024 */  stmw      r25, 0x24(r1)
/* 09EA9C 800A1A9C 3B430000 */  addi      r26, r3, 0x0
/* 09EAA0 800A1AA0 3B640000 */  addi      r27, r4, 0x0
/* 09EAA4 800A1AA4 3B850000 */  addi      r28, r5, 0x0
/* 09EAA8 800A1AA8 3BA60000 */  addi      r29, r6, 0x0
/* 09EAAC 800A1AAC 3B270000 */  addi      r25, r7, 0x0
/* 09EAB0 800A1AB0 54643032 */  slwi      r4, r3, 6
/* 09EAB4 800A1AB4 3C608018 */  lis       r3, Ecb@ha
/* 09EAB8 800A1AB8 38037D90 */  addi      r0, r3, Ecb@l
/* 09EABC 800A1ABC 7FE02214 */  add       r31, r0, r4
/* 09EAC0 800A1AC0 4BFFC789 */  bl        OSDisableInterrupts
/* 09EAC4 800A1AC4 7C7E1B78 */  mr        r30, r3
/* 09EAC8 800A1AC8 801F000C */  lwz       r0, 0xc(r31)
/* 09EACC 800A1ACC 540007BF */  clrlwi.   r0, r0, 30
/* 09EAD0 800A1AD0 40820010 */  bne       lbl_800A1AE0
/* 09EAD4 800A1AD4 801F000C */  lwz       r0, 0xc(r31)
/* 09EAD8 800A1AD8 5400077B */  rlwinm.   r0, r0, 0, 29, 29
/* 09EADC 800A1ADC 40820014 */  bne       lbl_800A1AF0
lbl_800A1AE0:
/* 09EAE0 800A1AE0 7FC3F378 */  mr        r3, r30
/* 09EAE4 800A1AE4 4BFFC78D */  bl        OSRestoreInterrupts
/* 09EAE8 800A1AE8 38600000 */  li        r3, 0x0
/* 09EAEC 800A1AEC 480001E8 */  b         lbl_800A1CD4
lbl_800A1AF0:
/* 09EAF0 800A1AF0 933F0004 */  stw       r25, 0x4(r31)
/* 09EAF4 800A1AF4 801F0004 */  lwz       r0, 0x4(r31)
/* 09EAF8 800A1AF8 28000000 */  cmplwi    r0, 0x0
/* 09EAFC 800A1AFC 41820028 */  beq       lbl_800A1B24
/* 09EB00 800A1B00 387A0000 */  addi      r3, r26, 0x0
/* 09EB04 800A1B04 38800000 */  li        r4, 0x0
/* 09EB08 800A1B08 38A00001 */  li        r5, 0x1
/* 09EB0C 800A1B0C 38C00000 */  li        r6, 0x0
/* 09EB10 800A1B10 4800059D */  bl        EXIClearInterrupts
/* 09EB14 800A1B14 3C600020 */  lis       r3, 0x20
/* 09EB18 800A1B18 1C1A0003 */  mulli     r0, r26, 0x3
/* 09EB1C 800A1B1C 7C630430 */  srw       r3, r3, r0
/* 09EB20 800A1B20 4BFFCB79 */  bl        __OSUnmaskInterrupts
lbl_800A1B24:
/* 09EB24 800A1B24 801F000C */  lwz       r0, 0xc(r31)
/* 09EB28 800A1B28 60000002 */  ori       r0, r0, 0x2
/* 09EB2C 800A1B2C 901F000C */  stw       r0, 0xc(r31)
/* 09EB30 800A1B30 281D0000 */  cmplwi    r29, 0x0
/* 09EB34 800A1B34 41820144 */  beq       lbl_800A1C78
/* 09EB38 800A1B38 38000000 */  li        r0, 0x0
/* 09EB3C 800A1B3C 38800000 */  li        r4, 0x0
/* 09EB40 800A1B40 7C04E000 */  cmpw      r4, r28
/* 09EB44 800A1B44 40800120 */  bge       lbl_800A1C64
/* 09EB48 800A1B48 38DCFFF8 */  subi      r6, r28, 0x8
/* 09EB4C 800A1B4C 2C1C0008 */  cmpwi     r28, 0x8
/* 09EB50 800A1B50 4081017C */  ble       lbl_800A1CCC
/* 09EB54 800A1B54 387B0000 */  addi      r3, r27, 0x0
/* 09EB58 800A1B58 38A60007 */  addi      r5, r6, 0x7
/* 09EB5C 800A1B5C 54A5E8FE */  srwi      r5, r5, 3
/* 09EB60 800A1B60 7CA903A6 */  mtctr     r5
/* 09EB64 800A1B64 2C060000 */  cmpwi     r6, 0x0
/* 09EB68 800A1B68 40810164 */  ble       lbl_800A1CCC
lbl_800A1B6C:
/* 09EB6C 800A1B6C 88C30000 */  lbz       r6, 0x0(r3)
/* 09EB70 800A1B70 20A40003 */  subfic    r5, r4, 0x3
/* 09EB74 800A1B74 54A51838 */  slwi      r5, r5, 3
/* 09EB78 800A1B78 7CC52830 */  slw       r5, r6, r5
/* 09EB7C 800A1B7C 7C002B78 */  or        r0, r0, r5
/* 09EB80 800A1B80 88C30001 */  lbz       r6, 0x1(r3)
/* 09EB84 800A1B84 38A40001 */  addi      r5, r4, 0x1
/* 09EB88 800A1B88 20A50003 */  subfic    r5, r5, 0x3
/* 09EB8C 800A1B8C 54A51838 */  slwi      r5, r5, 3
/* 09EB90 800A1B90 7CC52830 */  slw       r5, r6, r5
/* 09EB94 800A1B94 7C002B78 */  or        r0, r0, r5
/* 09EB98 800A1B98 88C30002 */  lbz       r6, 0x2(r3)
/* 09EB9C 800A1B9C 38A40002 */  addi      r5, r4, 0x2
/* 09EBA0 800A1BA0 20A50003 */  subfic    r5, r5, 0x3
/* 09EBA4 800A1BA4 54A51838 */  slwi      r5, r5, 3
/* 09EBA8 800A1BA8 7CC52830 */  slw       r5, r6, r5
/* 09EBAC 800A1BAC 7C002B78 */  or        r0, r0, r5
/* 09EBB0 800A1BB0 88C30003 */  lbz       r6, 0x3(r3)
/* 09EBB4 800A1BB4 7CA400D0 */  neg       r5, r4
/* 09EBB8 800A1BB8 54A51838 */  slwi      r5, r5, 3
/* 09EBBC 800A1BBC 7CC52830 */  slw       r5, r6, r5
/* 09EBC0 800A1BC0 7C002B78 */  or        r0, r0, r5
/* 09EBC4 800A1BC4 88C30004 */  lbz       r6, 0x4(r3)
/* 09EBC8 800A1BC8 38A40004 */  addi      r5, r4, 0x4
/* 09EBCC 800A1BCC 20A50003 */  subfic    r5, r5, 0x3
/* 09EBD0 800A1BD0 54A51838 */  slwi      r5, r5, 3
/* 09EBD4 800A1BD4 7CC52830 */  slw       r5, r6, r5
/* 09EBD8 800A1BD8 7C002B78 */  or        r0, r0, r5
/* 09EBDC 800A1BDC 88C30005 */  lbz       r6, 0x5(r3)
/* 09EBE0 800A1BE0 38A40005 */  addi      r5, r4, 0x5
/* 09EBE4 800A1BE4 20A50003 */  subfic    r5, r5, 0x3
/* 09EBE8 800A1BE8 54A51838 */  slwi      r5, r5, 3
/* 09EBEC 800A1BEC 7CC52830 */  slw       r5, r6, r5
/* 09EBF0 800A1BF0 7C002B78 */  or        r0, r0, r5
/* 09EBF4 800A1BF4 88C30006 */  lbz       r6, 0x6(r3)
/* 09EBF8 800A1BF8 38A40006 */  addi      r5, r4, 0x6
/* 09EBFC 800A1BFC 20A50003 */  subfic    r5, r5, 0x3
/* 09EC00 800A1C00 54A51838 */  slwi      r5, r5, 3
/* 09EC04 800A1C04 7CC52830 */  slw       r5, r6, r5
/* 09EC08 800A1C08 7C002B78 */  or        r0, r0, r5
/* 09EC0C 800A1C0C 88C30007 */  lbz       r6, 0x7(r3)
/* 09EC10 800A1C10 38A40007 */  addi      r5, r4, 0x7
/* 09EC14 800A1C14 20A50003 */  subfic    r5, r5, 0x3
/* 09EC18 800A1C18 54A51838 */  slwi      r5, r5, 3
/* 09EC1C 800A1C1C 7CC52830 */  slw       r5, r6, r5
/* 09EC20 800A1C20 7C002B78 */  or        r0, r0, r5
/* 09EC24 800A1C24 38630008 */  addi      r3, r3, 0x8
/* 09EC28 800A1C28 38840008 */  addi      r4, r4, 0x8
/* 09EC2C 800A1C2C 4200FF40 */  bdnz      lbl_800A1B6C
/* 09EC30 800A1C30 4800009C */  b         lbl_800A1CCC
lbl_800A1C34:
/* 09EC34 800A1C34 7C64E050 */  subf      r3, r4, r28
/* 09EC38 800A1C38 7C6903A6 */  mtctr     r3
/* 09EC3C 800A1C3C 7C04E000 */  cmpw      r4, r28
/* 09EC40 800A1C40 40800024 */  bge       lbl_800A1C64
lbl_800A1C44:
/* 09EC44 800A1C44 88A60000 */  lbz       r5, 0x0(r6)
/* 09EC48 800A1C48 20640003 */  subfic    r3, r4, 0x3
/* 09EC4C 800A1C4C 54631838 */  slwi      r3, r3, 3
/* 09EC50 800A1C50 7CA31830 */  slw       r3, r5, r3
/* 09EC54 800A1C54 7C001B78 */  or        r0, r0, r3
/* 09EC58 800A1C58 38C60001 */  addi      r6, r6, 0x1
/* 09EC5C 800A1C5C 38840001 */  addi      r4, r4, 0x1
/* 09EC60 800A1C60 4200FFE4 */  bdnz      lbl_800A1C44
lbl_800A1C64:
/* 09EC64 800A1C64 3C60CC00 */  lis       r3, 0xcc00
/* 09EC68 800A1C68 38836800 */  addi      r4, r3, 0x6800
/* 09EC6C 800A1C6C 1C7A0014 */  mulli     r3, r26, 0x14
/* 09EC70 800A1C70 7C641A14 */  add       r3, r4, r3
/* 09EC74 800A1C74 90030010 */  stw       r0, 0x10(r3)
lbl_800A1C78:
/* 09EC78 800A1C78 937F0014 */  stw       r27, 0x14(r31)
/* 09EC7C 800A1C7C 281D0001 */  cmplwi    r29, 0x1
/* 09EC80 800A1C80 4182000C */  beq       lbl_800A1C8C
/* 09EC84 800A1C84 7F80E378 */  mr        r0, r28
/* 09EC88 800A1C88 48000008 */  b         lbl_800A1C90
lbl_800A1C8C:
/* 09EC8C 800A1C8C 38000000 */  li        r0, 0x0
lbl_800A1C90:
/* 09EC90 800A1C90 901F0010 */  stw       r0, 0x10(r31)
/* 09EC94 800A1C94 57A0103A */  slwi      r0, r29, 2
/* 09EC98 800A1C98 60030001 */  ori       r3, r0, 0x1
/* 09EC9C 800A1C9C 381CFFFF */  subi      r0, r28, 0x1
/* 09ECA0 800A1CA0 54002036 */  slwi      r0, r0, 4
/* 09ECA4 800A1CA4 7C640378 */  or        r4, r3, r0
/* 09ECA8 800A1CA8 3C60CC00 */  lis       r3, 0xcc00
/* 09ECAC 800A1CAC 38636800 */  addi      r3, r3, 0x6800
/* 09ECB0 800A1CB0 1C1A0014 */  mulli     r0, r26, 0x14
/* 09ECB4 800A1CB4 7C630214 */  add       r3, r3, r0
/* 09ECB8 800A1CB8 9083000C */  stw       r4, 0xc(r3)
/* 09ECBC 800A1CBC 7FC3F378 */  mr        r3, r30
/* 09ECC0 800A1CC0 4BFFC5B1 */  bl        OSRestoreInterrupts
/* 09ECC4 800A1CC4 38600001 */  li        r3, 0x1
/* 09ECC8 800A1CC8 4800000C */  b         lbl_800A1CD4
lbl_800A1CCC:
/* 09ECCC 800A1CCC 7CDB2214 */  add       r6, r27, r4
/* 09ECD0 800A1CD0 4BFFFF64 */  b         lbl_800A1C34
lbl_800A1CD4:
/* 09ECD4 800A1CD4 80010044 */  lwz       r0, 0x44(r1)
/* 09ECD8 800A1CD8 BB210024 */  lmw       r25, 0x24(r1)
/* 09ECDC 800A1CDC 38210040 */  addi      r1, r1, 0x40
/* 09ECE0 800A1CE0 7C0803A6 */  mtlr      r0
/* 09ECE4 800A1CE4 4E800020 */  blr

glabel EXIImmEx
/* 09ECE8 800A1CE8 7C0802A6 */  mflr      r0
/* 09ECEC 800A1CEC 90010004 */  stw       r0, 0x4(r1)
/* 09ECF0 800A1CF0 9421FFD0 */  stwu      r1, -0x30(r1)
/* 09ECF4 800A1CF4 BF61001C */  stmw      r27, 0x1c(r1)
/* 09ECF8 800A1CF8 3B630000 */  addi      r27, r3, 0x0
/* 09ECFC 800A1CFC 3B840000 */  addi      r28, r4, 0x0
/* 09ED00 800A1D00 3BA50000 */  addi      r29, r5, 0x0
/* 09ED04 800A1D04 3BC60000 */  addi      r30, r6, 0x0
/* 09ED08 800A1D08 48000060 */  b         lbl_800A1D68
lbl_800A1D0C:
/* 09ED0C 800A1D0C 2C1D0004 */  cmpwi     r29, 0x4
/* 09ED10 800A1D10 4080000C */  bge       lbl_800A1D1C
/* 09ED14 800A1D14 7FBFEB78 */  mr        r31, r29
/* 09ED18 800A1D18 48000008 */  b         lbl_800A1D20
lbl_800A1D1C:
/* 09ED1C 800A1D1C 3BE00004 */  li        r31, 0x4
lbl_800A1D20:
/* 09ED20 800A1D20 38BF0000 */  addi      r5, r31, 0x0
/* 09ED24 800A1D24 387B0000 */  addi      r3, r27, 0x0
/* 09ED28 800A1D28 389C0000 */  addi      r4, r28, 0x0
/* 09ED2C 800A1D2C 38DE0000 */  addi      r6, r30, 0x0
/* 09ED30 800A1D30 38E00000 */  li        r7, 0x0
/* 09ED34 800A1D34 4BFFFD59 */  bl        EXIImm
/* 09ED38 800A1D38 2C030000 */  cmpwi     r3, 0x0
/* 09ED3C 800A1D3C 4082000C */  bne       lbl_800A1D48
/* 09ED40 800A1D40 38600000 */  li        r3, 0x0
/* 09ED44 800A1D44 48000030 */  b         lbl_800A1D74
lbl_800A1D48:
/* 09ED48 800A1D48 7F63DB78 */  mr        r3, r27
/* 09ED4C 800A1D4C 48000129 */  bl        EXISync
/* 09ED50 800A1D50 2C030000 */  cmpwi     r3, 0x0
/* 09ED54 800A1D54 4082000C */  bne       lbl_800A1D60
/* 09ED58 800A1D58 38600000 */  li        r3, 0x0
/* 09ED5C 800A1D5C 48000018 */  b         lbl_800A1D74
lbl_800A1D60:
/* 09ED60 800A1D60 7F9CFA14 */  add       r28, r28, r31
/* 09ED64 800A1D64 7FBFE850 */  subf      r29, r31, r29
lbl_800A1D68:
/* 09ED68 800A1D68 2C1D0000 */  cmpwi     r29, 0x0
/* 09ED6C 800A1D6C 4082FFA0 */  bne       lbl_800A1D0C
/* 09ED70 800A1D70 38600001 */  li        r3, 0x1
lbl_800A1D74:
/* 09ED74 800A1D74 80010034 */  lwz       r0, 0x34(r1)
/* 09ED78 800A1D78 BB61001C */  lmw       r27, 0x1c(r1)
/* 09ED7C 800A1D7C 38210030 */  addi      r1, r1, 0x30
/* 09ED80 800A1D80 7C0803A6 */  mtlr      r0
/* 09ED84 800A1D84 4E800020 */  blr

glabel EXIDma
/* 09ED88 800A1D88 7C0802A6 */  mflr      r0
/* 09ED8C 800A1D8C 90010004 */  stw       r0, 0x4(r1)
/* 09ED90 800A1D90 9421FFC0 */  stwu      r1, -0x40(r1)
/* 09ED94 800A1D94 BF210024 */  stmw      r25, 0x24(r1)
/* 09ED98 800A1D98 3B630000 */  addi      r27, r3, 0x0
/* 09ED9C 800A1D9C 3B840000 */  addi      r28, r4, 0x0
/* 09EDA0 800A1DA0 3BA50000 */  addi      r29, r5, 0x0
/* 09EDA4 800A1DA4 3BC60000 */  addi      r30, r6, 0x0
/* 09EDA8 800A1DA8 3B270000 */  addi      r25, r7, 0x0
/* 09EDAC 800A1DAC 54643032 */  slwi      r4, r3, 6
/* 09EDB0 800A1DB0 3C608018 */  lis       r3, Ecb@ha
/* 09EDB4 800A1DB4 38037D90 */  addi      r0, r3, Ecb@l
/* 09EDB8 800A1DB8 7F402214 */  add       r26, r0, r4
/* 09EDBC 800A1DBC 4BFFC48D */  bl        OSDisableInterrupts
/* 09EDC0 800A1DC0 7C7F1B78 */  mr        r31, r3
/* 09EDC4 800A1DC4 801A000C */  lwz       r0, 0xc(r26)
/* 09EDC8 800A1DC8 540007BF */  clrlwi.   r0, r0, 30
/* 09EDCC 800A1DCC 40820010 */  bne       lbl_800A1DDC
/* 09EDD0 800A1DD0 801A000C */  lwz       r0, 0xc(r26)
/* 09EDD4 800A1DD4 5400077B */  rlwinm.   r0, r0, 0, 29, 29
/* 09EDD8 800A1DD8 40820014 */  bne       lbl_800A1DEC
lbl_800A1DDC:
/* 09EDDC 800A1DDC 7FE3FB78 */  mr        r3, r31
/* 09EDE0 800A1DE0 4BFFC491 */  bl        OSRestoreInterrupts
/* 09EDE4 800A1DE4 38600000 */  li        r3, 0x0
/* 09EDE8 800A1DE8 48000078 */  b         lbl_800A1E60
lbl_800A1DEC:
/* 09EDEC 800A1DEC 933A0004 */  stw       r25, 0x4(r26)
/* 09EDF0 800A1DF0 801A0004 */  lwz       r0, 0x4(r26)
/* 09EDF4 800A1DF4 28000000 */  cmplwi    r0, 0x0
/* 09EDF8 800A1DF8 41820028 */  beq       lbl_800A1E20
/* 09EDFC 800A1DFC 387B0000 */  addi      r3, r27, 0x0
/* 09EE00 800A1E00 38800000 */  li        r4, 0x0
/* 09EE04 800A1E04 38A00001 */  li        r5, 0x1
/* 09EE08 800A1E08 38C00000 */  li        r6, 0x0
/* 09EE0C 800A1E0C 480002A1 */  bl        EXIClearInterrupts
/* 09EE10 800A1E10 3C600020 */  lis       r3, 0x20
/* 09EE14 800A1E14 1C1B0003 */  mulli     r0, r27, 0x3
/* 09EE18 800A1E18 7C630430 */  srw       r3, r3, r0
/* 09EE1C 800A1E1C 4BFFC87D */  bl        __OSUnmaskInterrupts
lbl_800A1E20:
/* 09EE20 800A1E20 801A000C */  lwz       r0, 0xc(r26)
/* 09EE24 800A1E24 60000001 */  ori       r0, r0, 0x1
/* 09EE28 800A1E28 901A000C */  stw       r0, 0xc(r26)
/* 09EE2C 800A1E2C 578401B4 */  rlwinm    r4, r28, 0, 6, 26
/* 09EE30 800A1E30 3C60CC00 */  lis       r3, 0xcc00
/* 09EE34 800A1E34 38036800 */  addi      r0, r3, 0x6800
/* 09EE38 800A1E38 1C7B0014 */  mulli     r3, r27, 0x14
/* 09EE3C 800A1E3C 7C601A14 */  add       r3, r0, r3
/* 09EE40 800A1E40 90830004 */  stw       r4, 0x4(r3)
/* 09EE44 800A1E44 93A30008 */  stw       r29, 0x8(r3)
/* 09EE48 800A1E48 57C0103A */  slwi      r0, r30, 2
/* 09EE4C 800A1E4C 60000003 */  ori       r0, r0, 0x3
/* 09EE50 800A1E50 9003000C */  stw       r0, 0xc(r3)
/* 09EE54 800A1E54 7FE3FB78 */  mr        r3, r31
/* 09EE58 800A1E58 4BFFC419 */  bl        OSRestoreInterrupts
/* 09EE5C 800A1E5C 38600001 */  li        r3, 0x1
lbl_800A1E60:
/* 09EE60 800A1E60 80010044 */  lwz       r0, 0x44(r1)
/* 09EE64 800A1E64 BB210024 */  lmw       r25, 0x24(r1)
/* 09EE68 800A1E68 38210040 */  addi      r1, r1, 0x40
/* 09EE6C 800A1E6C 7C0803A6 */  mtlr      r0
/* 09EE70 800A1E70 4E800020 */  blr

glabel EXISync
/* 09EE74 800A1E74 7C0802A6 */  mflr      r0
/* 09EE78 800A1E78 90010004 */  stw       r0, 0x4(r1)
/* 09EE7C 800A1E7C 9421FFD0 */  stwu      r1, -0x30(r1)
/* 09EE80 800A1E80 BF61001C */  stmw      r27, 0x1c(r1)
/* 09EE84 800A1E84 54653032 */  slwi      r5, r3, 6
/* 09EE88 800A1E88 3C808018 */  lis       r4, Ecb@ha
/* 09EE8C 800A1E8C 38047D90 */  addi      r0, r4, Ecb@l
/* 09EE90 800A1E90 7FE02A14 */  add       r31, r0, r5
/* 09EE94 800A1E94 3B800000 */  li        r28, 0x0
/* 09EE98 800A1E98 1FC30014 */  mulli     r30, r3, 0x14
/* 09EE9C 800A1E9C 3C60CC00 */  lis       r3, 0xcc00
/* 09EEA0 800A1EA0 3BA36800 */  addi      r29, r3, 0x6800
/* 09EEA4 800A1EA4 7FBDF214 */  add       r29, r29, r30
/* 09EEA8 800A1EA8 480001E0 */  b         lbl_800A2088
lbl_800A1EAC:
/* 09EEAC 800A1EAC 801D000C */  lwz       r0, 0xc(r29)
/* 09EEB0 800A1EB0 540007FF */  clrlwi.   r0, r0, 31
/* 09EEB4 800A1EB4 408201D4 */  bne       lbl_800A2088
/* 09EEB8 800A1EB8 4BFFC391 */  bl        OSDisableInterrupts
/* 09EEBC 800A1EBC 7C7B1B78 */  mr        r27, r3
/* 09EEC0 800A1EC0 801F000C */  lwz       r0, 0xc(r31)
/* 09EEC4 800A1EC4 5400077B */  rlwinm.   r0, r0, 0, 29, 29
/* 09EEC8 800A1EC8 418201B4 */  beq       lbl_800A207C
/* 09EECC 800A1ECC 801F000C */  lwz       r0, 0xc(r31)
/* 09EED0 800A1ED0 540007BF */  clrlwi.   r0, r0, 30
/* 09EED4 800A1ED4 41820134 */  beq       lbl_800A2008
/* 09EED8 800A1ED8 801F000C */  lwz       r0, 0xc(r31)
/* 09EEDC 800A1EDC 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 09EEE0 800A1EE0 4182011C */  beq       lbl_800A1FFC
/* 09EEE4 800A1EE4 807F0010 */  lwz       r3, 0x10(r31)
/* 09EEE8 800A1EE8 2C030000 */  cmpwi     r3, 0x0
/* 09EEEC 800A1EEC 41820110 */  beq       lbl_800A1FFC
/* 09EEF0 800A1EF0 80BF0014 */  lwz       r5, 0x14(r31)
/* 09EEF4 800A1EF4 3C80CC00 */  lis       r4, 0xcc00
/* 09EEF8 800A1EF8 38046800 */  addi      r0, r4, 0x6800
/* 09EEFC 800A1EFC 7C80F214 */  add       r4, r0, r30
/* 09EF00 800A1F00 80040010 */  lwz       r0, 0x10(r4)
/* 09EF04 800A1F04 38800000 */  li        r4, 0x0
/* 09EF08 800A1F08 408100F4 */  ble       lbl_800A1FFC
/* 09EF0C 800A1F0C 38E3FFF8 */  subi      r7, r3, 0x8
/* 09EF10 800A1F10 2C030008 */  cmpwi     r3, 0x8
/* 09EF14 800A1F14 408100BC */  ble       lbl_800A1FD0
/* 09EF18 800A1F18 38C70007 */  addi      r6, r7, 0x7
/* 09EF1C 800A1F1C 54C6E8FE */  srwi      r6, r6, 3
/* 09EF20 800A1F20 7CC903A6 */  mtctr     r6
/* 09EF24 800A1F24 2C070000 */  cmpwi     r7, 0x0
/* 09EF28 800A1F28 408100A8 */  ble       lbl_800A1FD0
lbl_800A1F2C:
/* 09EF2C 800A1F2C 20C40003 */  subfic    r6, r4, 0x3
/* 09EF30 800A1F30 54C61838 */  slwi      r6, r6, 3
/* 09EF34 800A1F34 7C063430 */  srw       r6, r0, r6
/* 09EF38 800A1F38 98C50000 */  stb       r6, 0x0(r5)
/* 09EF3C 800A1F3C 38C40001 */  addi      r6, r4, 0x1
/* 09EF40 800A1F40 20C60003 */  subfic    r6, r6, 0x3
/* 09EF44 800A1F44 54C61838 */  slwi      r6, r6, 3
/* 09EF48 800A1F48 7C063430 */  srw       r6, r0, r6
/* 09EF4C 800A1F4C 98C50001 */  stb       r6, 0x1(r5)
/* 09EF50 800A1F50 38C40002 */  addi      r6, r4, 0x2
/* 09EF54 800A1F54 20C60003 */  subfic    r6, r6, 0x3
/* 09EF58 800A1F58 54C61838 */  slwi      r6, r6, 3
/* 09EF5C 800A1F5C 7C063430 */  srw       r6, r0, r6
/* 09EF60 800A1F60 98C50002 */  stb       r6, 0x2(r5)
/* 09EF64 800A1F64 7CC400D0 */  neg       r6, r4
/* 09EF68 800A1F68 54C61838 */  slwi      r6, r6, 3
/* 09EF6C 800A1F6C 7C063430 */  srw       r6, r0, r6
/* 09EF70 800A1F70 98C50003 */  stb       r6, 0x3(r5)
/* 09EF74 800A1F74 38C40004 */  addi      r6, r4, 0x4
/* 09EF78 800A1F78 20C60003 */  subfic    r6, r6, 0x3
/* 09EF7C 800A1F7C 54C61838 */  slwi      r6, r6, 3
/* 09EF80 800A1F80 7C063430 */  srw       r6, r0, r6
/* 09EF84 800A1F84 98C50004 */  stb       r6, 0x4(r5)
/* 09EF88 800A1F88 38C40005 */  addi      r6, r4, 0x5
/* 09EF8C 800A1F8C 20C60003 */  subfic    r6, r6, 0x3
/* 09EF90 800A1F90 54C61838 */  slwi      r6, r6, 3
/* 09EF94 800A1F94 7C063430 */  srw       r6, r0, r6
/* 09EF98 800A1F98 98C50005 */  stb       r6, 0x5(r5)
/* 09EF9C 800A1F9C 38C40006 */  addi      r6, r4, 0x6
/* 09EFA0 800A1FA0 20C60003 */  subfic    r6, r6, 0x3
/* 09EFA4 800A1FA4 54C61838 */  slwi      r6, r6, 3
/* 09EFA8 800A1FA8 7C063430 */  srw       r6, r0, r6
/* 09EFAC 800A1FAC 98C50006 */  stb       r6, 0x6(r5)
/* 09EFB0 800A1FB0 38C40007 */  addi      r6, r4, 0x7
/* 09EFB4 800A1FB4 20C60003 */  subfic    r6, r6, 0x3
/* 09EFB8 800A1FB8 54C61838 */  slwi      r6, r6, 3
/* 09EFBC 800A1FBC 7C063430 */  srw       r6, r0, r6
/* 09EFC0 800A1FC0 98C50007 */  stb       r6, 0x7(r5)
/* 09EFC4 800A1FC4 38A50008 */  addi      r5, r5, 0x8
/* 09EFC8 800A1FC8 38840008 */  addi      r4, r4, 0x8
/* 09EFCC 800A1FCC 4200FF60 */  bdnz      lbl_800A1F2C
lbl_800A1FD0:
/* 09EFD0 800A1FD0 7CC41850 */  subf      r6, r4, r3
/* 09EFD4 800A1FD4 7CC903A6 */  mtctr     r6
/* 09EFD8 800A1FD8 7C041800 */  cmpw      r4, r3
/* 09EFDC 800A1FDC 40800020 */  bge       lbl_800A1FFC
lbl_800A1FE0:
/* 09EFE0 800A1FE0 20640003 */  subfic    r3, r4, 0x3
/* 09EFE4 800A1FE4 54631838 */  slwi      r3, r3, 3
/* 09EFE8 800A1FE8 7C031C30 */  srw       r3, r0, r3
/* 09EFEC 800A1FEC 98650000 */  stb       r3, 0x0(r5)
/* 09EFF0 800A1FF0 38A50001 */  addi      r5, r5, 0x1
/* 09EFF4 800A1FF4 38840001 */  addi      r4, r4, 0x1
/* 09EFF8 800A1FF8 4200FFE8 */  bdnz      lbl_800A1FE0
lbl_800A1FFC:
/* 09EFFC 800A1FFC 801F000C */  lwz       r0, 0xc(r31)
/* 09F000 800A2000 5400003A */  clrrwi    r0, r0, 2
/* 09F004 800A2004 901F000C */  stw       r0, 0xc(r31)
lbl_800A2008:
/* 09F008 800A2008 4BFF9C69 */  bl        fn_8009BC70
/* 09F00C 800A200C 280300FF */  cmplwi    r3, 0xff
/* 09F010 800A2010 40820068 */  bne       lbl_800A2078
/* 09F014 800A2014 801F0010 */  lwz       r0, 0x10(r31)
/* 09F018 800A2018 2C000004 */  cmpwi     r0, 0x4
/* 09F01C 800A201C 4082005C */  bne       lbl_800A2078
/* 09F020 800A2020 801D0000 */  lwz       r0, 0x0(r29)
/* 09F024 800A2024 54000677 */  rlwinm.   r0, r0, 0, 25, 27
/* 09F028 800A2028 40820050 */  bne       lbl_800A2078
/* 09F02C 800A202C 3C60CC00 */  lis       r3, 0xcc00
/* 09F030 800A2030 38036800 */  addi      r0, r3, 0x6800
/* 09F034 800A2034 7C80F214 */  add       r4, r0, r30
/* 09F038 800A2038 84640010 */  lwzu      r3, 0x10(r4)
/* 09F03C 800A203C 3C03FEFF */  subis     r0, r3, 0x101
/* 09F040 800A2040 28000000 */  cmplwi    r0, 0x0
/* 09F044 800A2044 41820024 */  beq       lbl_800A2068
/* 09F048 800A2048 80640000 */  lwz       r3, 0x0(r4)
/* 09F04C 800A204C 3C03FAF9 */  subis     r0, r3, 0x507
/* 09F050 800A2050 28000000 */  cmplwi    r0, 0x0
/* 09F054 800A2054 41820014 */  beq       lbl_800A2068
/* 09F058 800A2058 80640000 */  lwz       r3, 0x0(r4)
/* 09F05C 800A205C 3C03FBDE */  subis     r0, r3, 0x422
/* 09F060 800A2060 28000001 */  cmplwi    r0, 0x1
/* 09F064 800A2064 40820014 */  bne       lbl_800A2078
lbl_800A2068:
/* 09F068 800A2068 3C608000 */  lis       r3, 0x8000
/* 09F06C 800A206C A00330E6 */  lhz       r0, 0x30e6(r3)
/* 09F070 800A2070 28008200 */  cmplwi    r0, 0x8200
/* 09F074 800A2074 40820008 */  bne       lbl_800A207C
lbl_800A2078:
/* 09F078 800A2078 3B800001 */  li        r28, 0x1
lbl_800A207C:
/* 09F07C 800A207C 7F63DB78 */  mr        r3, r27
/* 09F080 800A2080 4BFFC1F1 */  bl        OSRestoreInterrupts
/* 09F084 800A2084 48000010 */  b         lbl_800A2094
lbl_800A2088:
/* 09F088 800A2088 801F000C */  lwz       r0, 0xc(r31)
/* 09F08C 800A208C 5400077B */  rlwinm.   r0, r0, 0, 29, 29
/* 09F090 800A2090 4082FE1C */  bne       lbl_800A1EAC
lbl_800A2094:
/* 09F094 800A2094 7F83E378 */  mr        r3, r28
/* 09F098 800A2098 80010034 */  lwz       r0, 0x34(r1)
/* 09F09C 800A209C BB61001C */  lmw       r27, 0x1c(r1)
/* 09F0A0 800A20A0 38210030 */  addi      r1, r1, 0x30
/* 09F0A4 800A20A4 7C0803A6 */  mtlr      r0
/* 09F0A8 800A20A8 4E800020 */  blr

glabel EXIClearInterrupts
/* 09F0AC 800A20AC 1C030014 */  mulli     r0, r3, 0x14
/* 09F0B0 800A20B0 3C60CC00 */  lis       r3, 0xcc00
/* 09F0B4 800A20B4 38E36800 */  addi      r7, r3, 0x6800
/* 09F0B8 800A20B8 7CE70214 */  add       r7, r7, r0
/* 09F0BC 800A20BC 80070000 */  lwz       r0, 0x0(r7)
/* 09F0C0 800A20C0 7C030378 */  mr        r3, r0
/* 09F0C4 800A20C4 700007F5 */  andi.     r0, r0, 0x7f5
/* 09F0C8 800A20C8 2C040000 */  cmpwi     r4, 0x0
/* 09F0CC 800A20CC 41820008 */  beq       lbl_800A20D4
/* 09F0D0 800A20D0 60000002 */  ori       r0, r0, 0x2
lbl_800A20D4:
/* 09F0D4 800A20D4 2C050000 */  cmpwi     r5, 0x0
/* 09F0D8 800A20D8 41820008 */  beq       lbl_800A20E0
/* 09F0DC 800A20DC 60000008 */  ori       r0, r0, 0x8
lbl_800A20E0:
/* 09F0E0 800A20E0 2C060000 */  cmpwi     r6, 0x0
/* 09F0E4 800A20E4 41820008 */  beq       lbl_800A20EC
/* 09F0E8 800A20E8 60000800 */  ori       r0, r0, 0x800
lbl_800A20EC:
/* 09F0EC 800A20EC 90070000 */  stw       r0, 0x0(r7)
/* 09F0F0 800A20F0 4E800020 */  blr

glabel EXISetExiCallback
/* 09F0F4 800A20F4 7C0802A6 */  mflr      r0
/* 09F0F8 800A20F8 90010004 */  stw       r0, 0x4(r1)
/* 09F0FC 800A20FC 9421FFD8 */  stwu      r1, -0x28(r1)
/* 09F100 800A2100 BF410010 */  stmw      r26, 0x10(r1)
/* 09F104 800A2104 3B430000 */  addi      r26, r3, 0x0
/* 09F108 800A2108 3B640000 */  addi      r27, r4, 0x0
/* 09F10C 800A210C 54603032 */  slwi      r0, r3, 6
/* 09F110 800A2110 3C608018 */  lis       r3, Ecb@ha
/* 09F114 800A2114 3BE37D90 */  addi      r31, r3, Ecb@l
/* 09F118 800A2118 7FDF0214 */  add       r30, r31, r0
/* 09F11C 800A211C 4BFFC12D */  bl        OSDisableInterrupts
/* 09F120 800A2120 7C7C1B78 */  mr        r28, r3
/* 09F124 800A2124 83BE0000 */  lwz       r29, 0x0(r30)
/* 09F128 800A2128 937E0000 */  stw       r27, 0x0(r30)
/* 09F12C 800A212C 2C1A0002 */  cmpwi     r26, 0x2
/* 09F130 800A2130 41820014 */  beq       lbl_800A2144
/* 09F134 800A2134 387A0000 */  addi      r3, r26, 0x0
/* 09F138 800A2138 389E0000 */  addi      r4, r30, 0x0
/* 09F13C 800A213C 4BFFF85D */  bl        SetExiInterruptMask
/* 09F140 800A2140 48000010 */  b         lbl_800A2150
lbl_800A2144:
/* 09F144 800A2144 38600000 */  li        r3, 0x0
/* 09F148 800A2148 389F0000 */  addi      r4, r31, 0x0
/* 09F14C 800A214C 4BFFF84D */  bl        SetExiInterruptMask
lbl_800A2150:
/* 09F150 800A2150 7F83E378 */  mr        r3, r28
/* 09F154 800A2154 4BFFC11D */  bl        OSRestoreInterrupts
/* 09F158 800A2158 7FA3EB78 */  mr        r3, r29
/* 09F15C 800A215C 8001002C */  lwz       r0, 0x2c(r1)
/* 09F160 800A2160 BB410010 */  lmw       r26, 0x10(r1)
/* 09F164 800A2164 38210028 */  addi      r1, r1, 0x28
/* 09F168 800A2168 7C0803A6 */  mtlr      r0
/* 09F16C 800A216C 4E800020 */  blr

__EXIProbe:
/* 09F170 800A2170 7C0802A6 */  mflr      r0
/* 09F174 800A2174 90010004 */  stw       r0, 0x4(r1)
/* 09F178 800A2178 9421FFD8 */  stwu      r1, -0x28(r1)
/* 09F17C 800A217C BF610014 */  stmw      r27, 0x14(r1)
/* 09F180 800A2180 3B830000 */  addi      r28, r3, 0x0
/* 09F184 800A2184 54643032 */  slwi      r4, r3, 6
/* 09F188 800A2188 3C608018 */  lis       r3, Ecb@ha
/* 09F18C 800A218C 38037D90 */  addi      r0, r3, Ecb@l
/* 09F190 800A2190 7FE02214 */  add       r31, r0, r4
/* 09F194 800A2194 2C1C0002 */  cmpwi     r28, 0x2
/* 09F198 800A2198 4082000C */  bne       lbl_800A21A4
/* 09F19C 800A219C 38600001 */  li        r3, 0x1
/* 09F1A0 800A21A0 48000130 */  b         lbl_800A22D0
lbl_800A21A4:
/* 09F1A4 800A21A4 3BA00001 */  li        r29, 0x1
/* 09F1A8 800A21A8 4BFFC0A1 */  bl        OSDisableInterrupts
/* 09F1AC 800A21AC 3BC30000 */  addi      r30, r3, 0x0
/* 09F1B0 800A21B0 1C1C0014 */  mulli     r0, r28, 0x14
/* 09F1B4 800A21B4 3C60CC00 */  lis       r3, 0xcc00
/* 09F1B8 800A21B8 38636800 */  addi      r3, r3, 0x6800
/* 09F1BC 800A21BC 7C630214 */  add       r3, r3, r0
/* 09F1C0 800A21C0 80A30000 */  lwz       r5, 0x0(r3)
/* 09F1C4 800A21C4 801F000C */  lwz       r0, 0xc(r31)
/* 09F1C8 800A21C8 54000739 */  rlwinm.   r0, r0, 0, 28, 28
/* 09F1CC 800A21CC 408200CC */  bne       lbl_800A2298
/* 09F1D0 800A21D0 54A00529 */  rlwinm.   r0, r5, 0, 20, 20
/* 09F1D4 800A21D4 4182002C */  beq       lbl_800A2200
/* 09F1D8 800A21D8 80030000 */  lwz       r0, 0x0(r3)
/* 09F1DC 800A21DC 700007F5 */  andi.     r0, r0, 0x7f5
/* 09F1E0 800A21E0 60000800 */  ori       r0, r0, 0x800
/* 09F1E4 800A21E4 90030000 */  stw       r0, 0x0(r3)
/* 09F1E8 800A21E8 38800000 */  li        r4, 0x0
/* 09F1EC 800A21EC 909F0020 */  stw       r4, 0x20(r31)
/* 09F1F0 800A21F0 5780103A */  slwi      r0, r28, 2
/* 09F1F4 800A21F4 3C608000 */  lis       r3, 0x8000
/* 09F1F8 800A21F8 386330C0 */  addi      r3, r3, 0x30c0
/* 09F1FC 800A21FC 7C83012E */  stwx      r4, r3, r0
lbl_800A2200:
/* 09F200 800A2200 54A004E7 */  rlwinm.   r0, r5, 0, 19, 19
/* 09F204 800A2204 41820074 */  beq       lbl_800A2278
/* 09F208 800A2208 3FE08000 */  lis       r31, 0x8000
/* 09F20C 800A220C 801F00F8 */  lwz       r0, 0xf8(r31)
/* 09F210 800A2210 5400F0BE */  srwi      r0, r0, 2
/* 09F214 800A2214 3C601062 */  lis       r3, 0x1062
/* 09F218 800A2218 38634DD3 */  addi      r3, r3, 0x4dd3
/* 09F21C 800A221C 7C030016 */  mulhwu    r0, r3, r0
/* 09F220 800A2220 541BD1BE */  srwi      r27, r0, 6
/* 09F224 800A2224 4BFFF2BD */  bl        OSGetTime
/* 09F228 800A2228 38A00000 */  li        r5, 0x0
/* 09F22C 800A222C 38DB0000 */  addi      r6, r27, 0x0
/* 09F230 800A2230 4802A3C5 */  bl        __div2i
/* 09F234 800A2234 38A00000 */  li        r5, 0x0
/* 09F238 800A2238 38C00064 */  li        r6, 0x64
/* 09F23C 800A223C 4802A3B9 */  bl        __div2i
/* 09F240 800A2240 38840001 */  addi      r4, r4, 0x1
/* 09F244 800A2244 5780103A */  slwi      r0, r28, 2
/* 09F248 800A2248 387F30C0 */  addi      r3, r31, 0x30c0
/* 09F24C 800A224C 7C630214 */  add       r3, r3, r0
/* 09F250 800A2250 80030000 */  lwz       r0, 0x0(r3)
/* 09F254 800A2254 2C000000 */  cmpwi     r0, 0x0
/* 09F258 800A2258 40820008 */  bne       lbl_800A2260
/* 09F25C 800A225C 90830000 */  stw       r4, 0x0(r3)
lbl_800A2260:
/* 09F260 800A2260 80030000 */  lwz       r0, 0x0(r3)
/* 09F264 800A2264 7C002050 */  subf      r0, r0, r4
/* 09F268 800A2268 2C000003 */  cmpwi     r0, 0x3
/* 09F26C 800A226C 40800058 */  bge       lbl_800A22C4
/* 09F270 800A2270 3BA00000 */  li        r29, 0x0
/* 09F274 800A2274 48000050 */  b         lbl_800A22C4
lbl_800A2278:
/* 09F278 800A2278 38800000 */  li        r4, 0x0
/* 09F27C 800A227C 909F0020 */  stw       r4, 0x20(r31)
/* 09F280 800A2280 5780103A */  slwi      r0, r28, 2
/* 09F284 800A2284 3C608000 */  lis       r3, 0x8000
/* 09F288 800A2288 386330C0 */  addi      r3, r3, 0x30c0
/* 09F28C 800A228C 7C83012E */  stwx      r4, r3, r0
/* 09F290 800A2290 3BA00000 */  li        r29, 0x0
/* 09F294 800A2294 48000030 */  b         lbl_800A22C4
lbl_800A2298:
/* 09F298 800A2298 54A004E7 */  rlwinm.   r0, r5, 0, 19, 19
/* 09F29C 800A229C 4182000C */  beq       lbl_800A22A8
/* 09F2A0 800A22A0 54A00529 */  rlwinm.   r0, r5, 0, 20, 20
/* 09F2A4 800A22A4 41820020 */  beq       lbl_800A22C4
lbl_800A22A8:
/* 09F2A8 800A22A8 38800000 */  li        r4, 0x0
/* 09F2AC 800A22AC 909F0020 */  stw       r4, 0x20(r31)
/* 09F2B0 800A22B0 5780103A */  slwi      r0, r28, 2
/* 09F2B4 800A22B4 3C608000 */  lis       r3, 0x8000
/* 09F2B8 800A22B8 386330C0 */  addi      r3, r3, 0x30c0
/* 09F2BC 800A22BC 7C83012E */  stwx      r4, r3, r0
/* 09F2C0 800A22C0 3BA00000 */  li        r29, 0x0
lbl_800A22C4:
/* 09F2C4 800A22C4 7FC3F378 */  mr        r3, r30
/* 09F2C8 800A22C8 4BFFBFA9 */  bl        OSRestoreInterrupts
/* 09F2CC 800A22CC 7FA3EB78 */  mr        r3, r29
lbl_800A22D0:
/* 09F2D0 800A22D0 8001002C */  lwz       r0, 0x2c(r1)
/* 09F2D4 800A22D4 BB610014 */  lmw       r27, 0x14(r1)
/* 09F2D8 800A22D8 38210028 */  addi      r1, r1, 0x28
/* 09F2DC 800A22DC 7C0803A6 */  mtlr      r0
/* 09F2E0 800A22E0 4E800020 */  blr

glabel EXIProbe
/* 09F2E4 800A22E4 7C0802A6 */  mflr      r0
/* 09F2E8 800A22E8 90010004 */  stw       r0, 0x4(r1)
/* 09F2EC 800A22EC 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09F2F0 800A22F0 93E10014 */  stw       r31, 0x14(r1)
/* 09F2F4 800A22F4 93C10010 */  stw       r30, 0x10(r1)
/* 09F2F8 800A22F8 3BC30000 */  addi      r30, r3, 0x0
/* 09F2FC 800A22FC 54643032 */  slwi      r4, r3, 6
/* 09F300 800A2300 3C608018 */  lis       r3, Ecb@ha
/* 09F304 800A2304 38037D90 */  addi      r0, r3, Ecb@l
/* 09F308 800A2308 7FE02214 */  add       r31, r0, r4
/* 09F30C 800A230C 387E0000 */  addi      r3, r30, 0x0
/* 09F310 800A2310 4BFFFE61 */  bl        __EXIProbe
/* 09F314 800A2314 2C030000 */  cmpwi     r3, 0x0
/* 09F318 800A2318 41820034 */  beq       lbl_800A234C
/* 09F31C 800A231C 801F0020 */  lwz       r0, 0x20(r31)
/* 09F320 800A2320 2C000000 */  cmpwi     r0, 0x0
/* 09F324 800A2324 40820028 */  bne       lbl_800A234C
/* 09F328 800A2328 387E0000 */  addi      r3, r30, 0x0
/* 09F32C 800A232C 38800000 */  li        r4, 0x0
/* 09F330 800A2330 38A1000C */  addi      r5, r1, 0xc
/* 09F334 800A2334 48000BC5 */  bl        EXIGetID
/* 09F338 800A2338 2C030000 */  cmpwi     r3, 0x0
/* 09F33C 800A233C 4182000C */  beq       lbl_800A2348
/* 09F340 800A2340 38600001 */  li        r3, 0x1
/* 09F344 800A2344 48000008 */  b         lbl_800A234C
lbl_800A2348:
/* 09F348 800A2348 38600000 */  li        r3, 0x0
lbl_800A234C:
/* 09F34C 800A234C 8001001C */  lwz       r0, 0x1c(r1)
/* 09F350 800A2350 83E10014 */  lwz       r31, 0x14(r1)
/* 09F354 800A2354 83C10010 */  lwz       r30, 0x10(r1)
/* 09F358 800A2358 38210018 */  addi      r1, r1, 0x18
/* 09F35C 800A235C 7C0803A6 */  mtlr      r0
/* 09F360 800A2360 4E800020 */  blr

glabel EXIProbeEx
/* 09F364 800A2364 7C0802A6 */  mflr      r0
/* 09F368 800A2368 90010004 */  stw       r0, 0x4(r1)
/* 09F36C 800A236C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09F370 800A2370 93E10014 */  stw       r31, 0x14(r1)
/* 09F374 800A2374 93C10010 */  stw       r30, 0x10(r1)
/* 09F378 800A2378 3BC30000 */  addi      r30, r3, 0x0
/* 09F37C 800A237C 54643032 */  slwi      r4, r3, 6
/* 09F380 800A2380 3C608018 */  lis       r3, Ecb@ha
/* 09F384 800A2384 38037D90 */  addi      r0, r3, Ecb@l
/* 09F388 800A2388 7FE02214 */  add       r31, r0, r4
/* 09F38C 800A238C 387E0000 */  addi      r3, r30, 0x0
/* 09F390 800A2390 4BFFFDE1 */  bl        __EXIProbe
/* 09F394 800A2394 2C030000 */  cmpwi     r3, 0x0
/* 09F398 800A2398 41820034 */  beq       lbl_800A23CC
/* 09F39C 800A239C 801F0020 */  lwz       r0, 0x20(r31)
/* 09F3A0 800A23A0 2C000000 */  cmpwi     r0, 0x0
/* 09F3A4 800A23A4 40820028 */  bne       lbl_800A23CC
/* 09F3A8 800A23A8 387E0000 */  addi      r3, r30, 0x0
/* 09F3AC 800A23AC 38800000 */  li        r4, 0x0
/* 09F3B0 800A23B0 38A1000C */  addi      r5, r1, 0xc
/* 09F3B4 800A23B4 48000B45 */  bl        EXIGetID
/* 09F3B8 800A23B8 2C030000 */  cmpwi     r3, 0x0
/* 09F3BC 800A23BC 4182000C */  beq       lbl_800A23C8
/* 09F3C0 800A23C0 38600001 */  li        r3, 0x1
/* 09F3C4 800A23C4 48000008 */  b         lbl_800A23CC
lbl_800A23C8:
/* 09F3C8 800A23C8 38600000 */  li        r3, 0x0
lbl_800A23CC:
/* 09F3CC 800A23CC 2C030000 */  cmpwi     r3, 0x0
/* 09F3D0 800A23D0 4182000C */  beq       lbl_800A23DC
/* 09F3D4 800A23D4 38600001 */  li        r3, 0x1
/* 09F3D8 800A23D8 48000028 */  b         lbl_800A2400
lbl_800A23DC:
/* 09F3DC 800A23DC 57C0103A */  slwi      r0, r30, 2
/* 09F3E0 800A23E0 3C608000 */  lis       r3, 0x8000
/* 09F3E4 800A23E4 386330C0 */  addi      r3, r3, 0x30c0
/* 09F3E8 800A23E8 7C03002E */  lwzx      r0, r3, r0
/* 09F3EC 800A23EC 2C000000 */  cmpwi     r0, 0x0
/* 09F3F0 800A23F0 4182000C */  beq       lbl_800A23FC
/* 09F3F4 800A23F4 38600000 */  li        r3, 0x0
/* 09F3F8 800A23F8 48000008 */  b         lbl_800A2400
lbl_800A23FC:
/* 09F3FC 800A23FC 3860FFFF */  li        r3, -0x1
lbl_800A2400:
/* 09F400 800A2400 8001001C */  lwz       r0, 0x1c(r1)
/* 09F404 800A2404 83E10014 */  lwz       r31, 0x14(r1)
/* 09F408 800A2408 83C10010 */  lwz       r30, 0x10(r1)
/* 09F40C 800A240C 38210018 */  addi      r1, r1, 0x18
/* 09F410 800A2410 7C0803A6 */  mtlr      r0
/* 09F414 800A2414 4E800020 */  blr

glabel EXIAttach
/* 09F418 800A2418 7C0802A6 */  mflr      r0
/* 09F41C 800A241C 90010004 */  stw       r0, 0x4(r1)
/* 09F420 800A2420 9421FFC0 */  stwu      r1, -0x40(r1)
/* 09F424 800A2424 BF61002C */  stmw      r27, 0x2c(r1)
/* 09F428 800A2428 3B630000 */  addi      r27, r3, 0x0
/* 09F42C 800A242C 3B840000 */  addi      r28, r4, 0x0
/* 09F430 800A2430 54643032 */  slwi      r4, r3, 6
/* 09F434 800A2434 3C608018 */  lis       r3, Ecb@ha
/* 09F438 800A2438 38037D90 */  addi      r0, r3, Ecb@l
/* 09F43C 800A243C 7FC02214 */  add       r30, r0, r4
/* 09F440 800A2440 387B0000 */  addi      r3, r27, 0x0
/* 09F444 800A2444 4BFFFD2D */  bl        __EXIProbe
/* 09F448 800A2448 2C030000 */  cmpwi     r3, 0x0
/* 09F44C 800A244C 41820020 */  beq       lbl_800A246C
/* 09F450 800A2450 801E0020 */  lwz       r0, 0x20(r30)
/* 09F454 800A2454 2C000000 */  cmpwi     r0, 0x0
/* 09F458 800A2458 40820014 */  bne       lbl_800A246C
/* 09F45C 800A245C 387B0000 */  addi      r3, r27, 0x0
/* 09F460 800A2460 38800000 */  li        r4, 0x0
/* 09F464 800A2464 38A1001C */  addi      r5, r1, 0x1c
/* 09F468 800A2468 48000A91 */  bl        EXIGetID
lbl_800A246C:
/* 09F46C 800A246C 4BFFBDDD */  bl        OSDisableInterrupts
/* 09F470 800A2470 7C7D1B78 */  mr        r29, r3
/* 09F474 800A2474 801E0020 */  lwz       r0, 0x20(r30)
/* 09F478 800A2478 2C000000 */  cmpwi     r0, 0x0
/* 09F47C 800A247C 40820014 */  bne       lbl_800A2490
/* 09F480 800A2480 7FA3EB78 */  mr        r3, r29
/* 09F484 800A2484 4BFFBDED */  bl        OSRestoreInterrupts
/* 09F488 800A2488 38600000 */  li        r3, 0x0
/* 09F48C 800A248C 48000084 */  b         lbl_800A2510
lbl_800A2490:
/* 09F490 800A2490 4BFFBDB9 */  bl        OSDisableInterrupts
/* 09F494 800A2494 7C7F1B78 */  mr        r31, r3
/* 09F498 800A2498 801E000C */  lwz       r0, 0xc(r30)
/* 09F49C 800A249C 54000739 */  rlwinm.   r0, r0, 0, 28, 28
/* 09F4A0 800A24A0 40820014 */  bne       lbl_800A24B4
/* 09F4A4 800A24A4 7F63DB78 */  mr        r3, r27
/* 09F4A8 800A24A8 4BFFFCC9 */  bl        __EXIProbe
/* 09F4AC 800A24AC 2C030000 */  cmpwi     r3, 0x0
/* 09F4B0 800A24B0 40820014 */  bne       lbl_800A24C4
lbl_800A24B4:
/* 09F4B4 800A24B4 7FE3FB78 */  mr        r3, r31
/* 09F4B8 800A24B8 4BFFBDB9 */  bl        OSRestoreInterrupts
/* 09F4BC 800A24BC 3BE00000 */  li        r31, 0x0
/* 09F4C0 800A24C0 48000044 */  b         lbl_800A2504
lbl_800A24C4:
/* 09F4C4 800A24C4 387B0000 */  addi      r3, r27, 0x0
/* 09F4C8 800A24C8 38800001 */  li        r4, 0x1
/* 09F4CC 800A24CC 38A00000 */  li        r5, 0x0
/* 09F4D0 800A24D0 38C00000 */  li        r6, 0x0
/* 09F4D4 800A24D4 4BFFFBD9 */  bl        EXIClearInterrupts
/* 09F4D8 800A24D8 939E0008 */  stw       r28, 0x8(r30)
/* 09F4DC 800A24DC 3C600010 */  lis       r3, 0x10
/* 09F4E0 800A24E0 1C1B0003 */  mulli     r0, r27, 0x3
/* 09F4E4 800A24E4 7C630430 */  srw       r3, r3, r0
/* 09F4E8 800A24E8 4BFFC1B1 */  bl        __OSUnmaskInterrupts
/* 09F4EC 800A24EC 801E000C */  lwz       r0, 0xc(r30)
/* 09F4F0 800A24F0 60000008 */  ori       r0, r0, 0x8
/* 09F4F4 800A24F4 901E000C */  stw       r0, 0xc(r30)
/* 09F4F8 800A24F8 7FE3FB78 */  mr        r3, r31
/* 09F4FC 800A24FC 4BFFBD75 */  bl        OSRestoreInterrupts
/* 09F500 800A2500 3BE00001 */  li        r31, 0x1
lbl_800A2504:
/* 09F504 800A2504 7FA3EB78 */  mr        r3, r29
/* 09F508 800A2508 4BFFBD69 */  bl        OSRestoreInterrupts
/* 09F50C 800A250C 7FE3FB78 */  mr        r3, r31
lbl_800A2510:
/* 09F510 800A2510 80010044 */  lwz       r0, 0x44(r1)
/* 09F514 800A2514 BB61002C */  lmw       r27, 0x2c(r1)
/* 09F518 800A2518 38210040 */  addi      r1, r1, 0x40
/* 09F51C 800A251C 7C0803A6 */  mtlr      r0
/* 09F520 800A2520 4E800020 */  blr

glabel EXIDetach
/* 09F524 800A2524 7C0802A6 */  mflr      r0
/* 09F528 800A2528 90010004 */  stw       r0, 0x4(r1)
/* 09F52C 800A252C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 09F530 800A2530 93E1001C */  stw       r31, 0x1c(r1)
/* 09F534 800A2534 93C10018 */  stw       r30, 0x18(r1)
/* 09F538 800A2538 93A10014 */  stw       r29, 0x14(r1)
/* 09F53C 800A253C 3BA30000 */  addi      r29, r3, 0x0
/* 09F540 800A2540 54643032 */  slwi      r4, r3, 6
/* 09F544 800A2544 3C608018 */  lis       r3, Ecb@ha
/* 09F548 800A2548 38037D90 */  addi      r0, r3, Ecb@l
/* 09F54C 800A254C 7FE02214 */  add       r31, r0, r4
/* 09F550 800A2550 4BFFBCF9 */  bl        OSDisableInterrupts
/* 09F554 800A2554 7C7E1B78 */  mr        r30, r3
/* 09F558 800A2558 801F000C */  lwz       r0, 0xc(r31)
/* 09F55C 800A255C 54000739 */  rlwinm.   r0, r0, 0, 28, 28
/* 09F560 800A2560 40820014 */  bne       lbl_800A2574
/* 09F564 800A2564 7FC3F378 */  mr        r3, r30
/* 09F568 800A2568 4BFFBD09 */  bl        OSRestoreInterrupts
/* 09F56C 800A256C 38600001 */  li        r3, 0x1
/* 09F570 800A2570 48000054 */  b         lbl_800A25C4
lbl_800A2574:
/* 09F574 800A2574 801F000C */  lwz       r0, 0xc(r31)
/* 09F578 800A2578 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 09F57C 800A257C 41820020 */  beq       lbl_800A259C
/* 09F580 800A2580 801F0018 */  lwz       r0, 0x18(r31)
/* 09F584 800A2584 28000000 */  cmplwi    r0, 0x0
/* 09F588 800A2588 40820014 */  bne       lbl_800A259C
/* 09F58C 800A258C 7FC3F378 */  mr        r3, r30
/* 09F590 800A2590 4BFFBCE1 */  bl        OSRestoreInterrupts
/* 09F594 800A2594 38600000 */  li        r3, 0x0
/* 09F598 800A2598 4800002C */  b         lbl_800A25C4
lbl_800A259C:
/* 09F59C 800A259C 801F000C */  lwz       r0, 0xc(r31)
/* 09F5A0 800A25A0 54000776 */  rlwinm    r0, r0, 0, 29, 27
/* 09F5A4 800A25A4 901F000C */  stw       r0, 0xc(r31)
/* 09F5A8 800A25A8 3C600050 */  lis       r3, 0x50
/* 09F5AC 800A25AC 1C1D0003 */  mulli     r0, r29, 0x3
/* 09F5B0 800A25B0 7C630430 */  srw       r3, r3, r0
/* 09F5B4 800A25B4 4BFFC05D */  bl        __OSMaskInterrupts
/* 09F5B8 800A25B8 7FC3F378 */  mr        r3, r30
/* 09F5BC 800A25BC 4BFFBCB5 */  bl        OSRestoreInterrupts
/* 09F5C0 800A25C0 38600001 */  li        r3, 0x1
lbl_800A25C4:
/* 09F5C4 800A25C4 80010024 */  lwz       r0, 0x24(r1)
/* 09F5C8 800A25C8 83E1001C */  lwz       r31, 0x1c(r1)
/* 09F5CC 800A25CC 83C10018 */  lwz       r30, 0x18(r1)
/* 09F5D0 800A25D0 83A10014 */  lwz       r29, 0x14(r1)
/* 09F5D4 800A25D4 38210020 */  addi      r1, r1, 0x20
/* 09F5D8 800A25D8 7C0803A6 */  mtlr      r0
/* 09F5DC 800A25DC 4E800020 */  blr

glabel EXISelect
/* 09F5E0 800A25E0 7C0802A6 */  mflr      r0
/* 09F5E4 800A25E4 90010004 */  stw       r0, 0x4(r1)
/* 09F5E8 800A25E8 9421FFD0 */  stwu      r1, -0x30(r1)
/* 09F5EC 800A25EC BF61001C */  stmw      r27, 0x1c(r1)
/* 09F5F0 800A25F0 3B630000 */  addi      r27, r3, 0x0
/* 09F5F4 800A25F4 3B840000 */  addi      r28, r4, 0x0
/* 09F5F8 800A25F8 3BA50000 */  addi      r29, r5, 0x0
/* 09F5FC 800A25FC 54643032 */  slwi      r4, r3, 6
/* 09F600 800A2600 3C608018 */  lis       r3, Ecb@ha
/* 09F604 800A2604 38037D90 */  addi      r0, r3, Ecb@l
/* 09F608 800A2608 7FE02214 */  add       r31, r0, r4
/* 09F60C 800A260C 4BFFBC3D */  bl        OSDisableInterrupts
/* 09F610 800A2610 7C7E1B78 */  mr        r30, r3
/* 09F614 800A2614 801F000C */  lwz       r0, 0xc(r31)
/* 09F618 800A2618 5400077B */  rlwinm.   r0, r0, 0, 29, 29
/* 09F61C 800A261C 40820048 */  bne       lbl_800A2664
/* 09F620 800A2620 2C1B0002 */  cmpwi     r27, 0x2
/* 09F624 800A2624 41820050 */  beq       lbl_800A2674
/* 09F628 800A2628 281C0000 */  cmplwi    r28, 0x0
/* 09F62C 800A262C 40820020 */  bne       lbl_800A264C
/* 09F630 800A2630 801F000C */  lwz       r0, 0xc(r31)
/* 09F634 800A2634 54000739 */  rlwinm.   r0, r0, 0, 28, 28
/* 09F638 800A2638 40820014 */  bne       lbl_800A264C
/* 09F63C 800A263C 7F63DB78 */  mr        r3, r27
/* 09F640 800A2640 4BFFFB31 */  bl        __EXIProbe
/* 09F644 800A2644 2C030000 */  cmpwi     r3, 0x0
/* 09F648 800A2648 4182001C */  beq       lbl_800A2664
lbl_800A264C:
/* 09F64C 800A264C 801F000C */  lwz       r0, 0xc(r31)
/* 09F650 800A2650 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 09F654 800A2654 41820010 */  beq       lbl_800A2664
/* 09F658 800A2658 801F0018 */  lwz       r0, 0x18(r31)
/* 09F65C 800A265C 7C00E040 */  cmplw     r0, r28
/* 09F660 800A2660 41820014 */  beq       lbl_800A2674
lbl_800A2664:
/* 09F664 800A2664 7FC3F378 */  mr        r3, r30
/* 09F668 800A2668 4BFFBC09 */  bl        OSRestoreInterrupts
/* 09F66C 800A266C 38600000 */  li        r3, 0x0
/* 09F670 800A2670 48000088 */  b         lbl_800A26F8
lbl_800A2674:
/* 09F674 800A2674 801F000C */  lwz       r0, 0xc(r31)
/* 09F678 800A2678 60000004 */  ori       r0, r0, 0x4
/* 09F67C 800A267C 901F000C */  stw       r0, 0xc(r31)
/* 09F680 800A2680 1C1B0014 */  mulli     r0, r27, 0x14
/* 09F684 800A2684 3C60CC00 */  lis       r3, 0xcc00
/* 09F688 800A2688 38836800 */  addi      r4, r3, 0x6800
/* 09F68C 800A268C 7C840214 */  add       r4, r4, r0
/* 09F690 800A2690 80A40000 */  lwz       r5, 0x0(r4)
/* 09F694 800A2694 70A50405 */  andi.     r5, r5, 0x405
/* 09F698 800A2698 38000001 */  li        r0, 0x1
/* 09F69C 800A269C 7C00E030 */  slw       r0, r0, r28
/* 09F6A0 800A26A0 54033830 */  slwi      r3, r0, 7
/* 09F6A4 800A26A4 57A02036 */  slwi      r0, r29, 4
/* 09F6A8 800A26A8 7C600378 */  or        r0, r3, r0
/* 09F6AC 800A26AC 7CA50378 */  or        r5, r5, r0
/* 09F6B0 800A26B0 90A40000 */  stw       r5, 0x0(r4)
/* 09F6B4 800A26B4 801F000C */  lwz       r0, 0xc(r31)
/* 09F6B8 800A26B8 54000739 */  rlwinm.   r0, r0, 0, 28, 28
/* 09F6BC 800A26BC 41820030 */  beq       lbl_800A26EC
/* 09F6C0 800A26C0 2C1B0001 */  cmpwi     r27, 0x1
/* 09F6C4 800A26C4 41820020 */  beq       lbl_800A26E4
/* 09F6C8 800A26C8 40800024 */  bge       lbl_800A26EC
/* 09F6CC 800A26CC 2C1B0000 */  cmpwi     r27, 0x0
/* 09F6D0 800A26D0 40800008 */  bge       lbl_800A26D8
/* 09F6D4 800A26D4 48000018 */  b         lbl_800A26EC
lbl_800A26D8:
/* 09F6D8 800A26D8 3C600010 */  lis       r3, 0x10
/* 09F6DC 800A26DC 4BFFBF35 */  bl        __OSMaskInterrupts
/* 09F6E0 800A26E0 4800000C */  b         lbl_800A26EC
lbl_800A26E4:
/* 09F6E4 800A26E4 3C600002 */  lis       r3, 0x2
/* 09F6E8 800A26E8 4BFFBF29 */  bl        __OSMaskInterrupts
lbl_800A26EC:
/* 09F6EC 800A26EC 7FC3F378 */  mr        r3, r30
/* 09F6F0 800A26F0 4BFFBB81 */  bl        OSRestoreInterrupts
/* 09F6F4 800A26F4 38600001 */  li        r3, 0x1
lbl_800A26F8:
/* 09F6F8 800A26F8 80010034 */  lwz       r0, 0x34(r1)
/* 09F6FC 800A26FC BB61001C */  lmw       r27, 0x1c(r1)
/* 09F700 800A2700 38210030 */  addi      r1, r1, 0x30
/* 09F704 800A2704 7C0803A6 */  mtlr      r0
/* 09F708 800A2708 4E800020 */  blr

glabel EXIDeselect
/* 09F70C 800A270C 7C0802A6 */  mflr      r0
/* 09F710 800A2710 90010004 */  stw       r0, 0x4(r1)
/* 09F714 800A2714 9421FFE0 */  stwu      r1, -0x20(r1)
/* 09F718 800A2718 93E1001C */  stw       r31, 0x1c(r1)
/* 09F71C 800A271C 93C10018 */  stw       r30, 0x18(r1)
/* 09F720 800A2720 93A10014 */  stw       r29, 0x14(r1)
/* 09F724 800A2724 93810010 */  stw       r28, 0x10(r1)
/* 09F728 800A2728 3BE30000 */  addi      r31, r3, 0x0
/* 09F72C 800A272C 54643032 */  slwi      r4, r3, 6
/* 09F730 800A2730 3C608018 */  lis       r3, Ecb@ha
/* 09F734 800A2734 38037D90 */  addi      r0, r3, Ecb@l
/* 09F738 800A2738 7FC02214 */  add       r30, r0, r4
/* 09F73C 800A273C 4BFFBB0D */  bl        OSDisableInterrupts
/* 09F740 800A2740 7C7C1B78 */  mr        r28, r3
/* 09F744 800A2744 801E000C */  lwz       r0, 0xc(r30)
/* 09F748 800A2748 5400077B */  rlwinm.   r0, r0, 0, 29, 29
/* 09F74C 800A274C 40820014 */  bne       lbl_800A2760
/* 09F750 800A2750 7F83E378 */  mr        r3, r28
/* 09F754 800A2754 4BFFBB1D */  bl        OSRestoreInterrupts
/* 09F758 800A2758 38600000 */  li        r3, 0x0
/* 09F75C 800A275C 480000A0 */  b         lbl_800A27FC
lbl_800A2760:
/* 09F760 800A2760 801E000C */  lwz       r0, 0xc(r30)
/* 09F764 800A2764 540007B8 */  rlwinm    r0, r0, 0, 30, 28
/* 09F768 800A2768 901E000C */  stw       r0, 0xc(r30)
/* 09F76C 800A276C 1C1F0014 */  mulli     r0, r31, 0x14
/* 09F770 800A2770 3C60CC00 */  lis       r3, 0xcc00
/* 09F774 800A2774 38636800 */  addi      r3, r3, 0x6800
/* 09F778 800A2778 7C630214 */  add       r3, r3, r0
/* 09F77C 800A277C 83A30000 */  lwz       r29, 0x0(r3)
/* 09F780 800A2780 73A00405 */  andi.     r0, r29, 0x405
/* 09F784 800A2784 90030000 */  stw       r0, 0x0(r3)
/* 09F788 800A2788 801E000C */  lwz       r0, 0xc(r30)
/* 09F78C 800A278C 54000739 */  rlwinm.   r0, r0, 0, 28, 28
/* 09F790 800A2790 41820030 */  beq       lbl_800A27C0
/* 09F794 800A2794 2C1F0001 */  cmpwi     r31, 0x1
/* 09F798 800A2798 41820020 */  beq       lbl_800A27B8
/* 09F79C 800A279C 40800024 */  bge       lbl_800A27C0
/* 09F7A0 800A27A0 2C1F0000 */  cmpwi     r31, 0x0
/* 09F7A4 800A27A4 40800008 */  bge       lbl_800A27AC
/* 09F7A8 800A27A8 48000018 */  b         lbl_800A27C0
lbl_800A27AC:
/* 09F7AC 800A27AC 3C600010 */  lis       r3, 0x10
/* 09F7B0 800A27B0 4BFFBEE9 */  bl        __OSUnmaskInterrupts
/* 09F7B4 800A27B4 4800000C */  b         lbl_800A27C0
lbl_800A27B8:
/* 09F7B8 800A27B8 3C600002 */  lis       r3, 0x2
/* 09F7BC 800A27BC 4BFFBEDD */  bl        __OSUnmaskInterrupts
lbl_800A27C0:
/* 09F7C0 800A27C0 7F83E378 */  mr        r3, r28
/* 09F7C4 800A27C4 4BFFBAAD */  bl        OSRestoreInterrupts
/* 09F7C8 800A27C8 2C1F0002 */  cmpwi     r31, 0x2
/* 09F7CC 800A27CC 4182002C */  beq       lbl_800A27F8
/* 09F7D0 800A27D0 57A00631 */  rlwinm.   r0, r29, 0, 24, 24
/* 09F7D4 800A27D4 41820024 */  beq       lbl_800A27F8
/* 09F7D8 800A27D8 7FE3FB78 */  mr        r3, r31
/* 09F7DC 800A27DC 4BFFF995 */  bl        __EXIProbe
/* 09F7E0 800A27E0 2C030000 */  cmpwi     r3, 0x0
/* 09F7E4 800A27E4 4182000C */  beq       lbl_800A27F0
/* 09F7E8 800A27E8 38600001 */  li        r3, 0x1
/* 09F7EC 800A27EC 48000010 */  b         lbl_800A27FC
lbl_800A27F0:
/* 09F7F0 800A27F0 38600000 */  li        r3, 0x0
/* 09F7F4 800A27F4 48000008 */  b         lbl_800A27FC
lbl_800A27F8:
/* 09F7F8 800A27F8 38600001 */  li        r3, 0x1
lbl_800A27FC:
/* 09F7FC 800A27FC 80010024 */  lwz       r0, 0x24(r1)
/* 09F800 800A2800 83E1001C */  lwz       r31, 0x1c(r1)
/* 09F804 800A2804 83C10018 */  lwz       r30, 0x18(r1)
/* 09F808 800A2808 83A10014 */  lwz       r29, 0x14(r1)
/* 09F80C 800A280C 83810010 */  lwz       r28, 0x10(r1)
/* 09F810 800A2810 38210020 */  addi      r1, r1, 0x20
/* 09F814 800A2814 7C0803A6 */  mtlr      r0
/* 09F818 800A2818 4E800020 */  blr

EXIIntrruptHandler:
/* 09F81C 800A281C 7C0802A6 */  mflr      r0
/* 09F820 800A2820 90010004 */  stw       r0, 0x4(r1)
/* 09F824 800A2824 9421FD08 */  stwu      r1, -0x2f8(r1)
/* 09F828 800A2828 93E102F4 */  stw       r31, 0x2f4(r1)
/* 09F82C 800A282C 93C102F0 */  stw       r30, 0x2f0(r1)
/* 09F830 800A2830 93A102EC */  stw       r29, 0x2ec(r1)
/* 09F834 800A2834 3BE40000 */  addi      r31, r4, 0x0
/* 09F838 800A2838 7C630734 */  extsh     r3, r3
/* 09F83C 800A283C 3803FFF7 */  subi      r0, r3, 0x9
/* 09F840 800A2840 3C605555 */  lis       r3, 0x5555
/* 09F844 800A2844 38635556 */  addi      r3, r3, 0x5556
/* 09F848 800A2848 7C630096 */  mulhw     r3, r3, r0
/* 09F84C 800A284C 54600FFE */  srwi      r0, r3, 31
/* 09F850 800A2850 7FC30214 */  add       r30, r3, r0
/* 09F854 800A2854 1C1E0014 */  mulli     r0, r30, 0x14
/* 09F858 800A2858 3C60CC00 */  lis       r3, 0xcc00
/* 09F85C 800A285C 38636800 */  addi      r3, r3, 0x6800
/* 09F860 800A2860 7C630214 */  add       r3, r3, r0
/* 09F864 800A2864 80030000 */  lwz       r0, 0x0(r3)
/* 09F868 800A2868 700007F5 */  andi.     r0, r0, 0x7f5
/* 09F86C 800A286C 60000002 */  ori       r0, r0, 0x2
/* 09F870 800A2870 90030000 */  stw       r0, 0x0(r3)
/* 09F874 800A2874 57C43032 */  slwi      r4, r30, 6
/* 09F878 800A2878 3C608018 */  lis       r3, Ecb@ha
/* 09F87C 800A287C 38037D90 */  addi      r0, r3, Ecb@l
/* 09F880 800A2880 7C602214 */  add       r3, r0, r4
/* 09F884 800A2884 80030000 */  lwz       r0, 0x0(r3)
/* 09F888 800A2888 7C1D0378 */  mr        r29, r0
/* 09F88C 800A288C 28000000 */  cmplwi    r0, 0x0
/* 09F890 800A2890 41820038 */  beq       lbl_800A28C8
/* 09F894 800A2894 38610018 */  addi      r3, r1, 0x18
/* 09F898 800A2898 4BFFAE59 */  bl        OSClearContext
/* 09F89C 800A289C 38610018 */  addi      r3, r1, 0x18
/* 09F8A0 800A28A0 4BFFAC89 */  bl        OSSetCurrentContext
/* 09F8A4 800A28A4 387E0000 */  addi      r3, r30, 0x0
/* 09F8A8 800A28A8 389F0000 */  addi      r4, r31, 0x0
/* 09F8AC 800A28AC 399D0000 */  addi      r12, r29, 0x0
/* 09F8B0 800A28B0 7D8803A6 */  mtlr      r12
/* 09F8B4 800A28B4 4E800021 */  blrl
/* 09F8B8 800A28B8 38610018 */  addi      r3, r1, 0x18
/* 09F8BC 800A28BC 4BFFAE35 */  bl        OSClearContext
/* 09F8C0 800A28C0 7FE3FB78 */  mr        r3, r31
/* 09F8C4 800A28C4 4BFFAC65 */  bl        OSSetCurrentContext
lbl_800A28C8:
/* 09F8C8 800A28C8 800102FC */  lwz       r0, 0x2fc(r1)
/* 09F8CC 800A28CC 83E102F4 */  lwz       r31, 0x2f4(r1)
/* 09F8D0 800A28D0 83C102F0 */  lwz       r30, 0x2f0(r1)
/* 09F8D4 800A28D4 83A102EC */  lwz       r29, 0x2ec(r1)
/* 09F8D8 800A28D8 382102F8 */  addi      r1, r1, 0x2f8
/* 09F8DC 800A28DC 7C0803A6 */  mtlr      r0
/* 09F8E0 800A28E0 4E800020 */  blr

TCIntrruptHandler:
/* 09F8E4 800A28E4 7C0802A6 */  mflr      r0
/* 09F8E8 800A28E8 90010004 */  stw       r0, 0x4(r1)
/* 09F8EC 800A28EC 9421FD08 */  stwu      r1, -0x2f8(r1)
/* 09F8F0 800A28F0 93E102F4 */  stw       r31, 0x2f4(r1)
/* 09F8F4 800A28F4 93C102F0 */  stw       r30, 0x2f0(r1)
/* 09F8F8 800A28F8 93A102EC */  stw       r29, 0x2ec(r1)
/* 09F8FC 800A28FC 938102E8 */  stw       r28, 0x2e8(r1)
/* 09F900 800A2900 3B840000 */  addi      r28, r4, 0x0
/* 09F904 800A2904 7C650734 */  extsh     r5, r3
/* 09F908 800A2908 3805FFF6 */  subi      r0, r5, 0xa
/* 09F90C 800A290C 3C605555 */  lis       r3, 0x5555
/* 09F910 800A2910 38635556 */  addi      r3, r3, 0x5556
/* 09F914 800A2914 7C630096 */  mulhw     r3, r3, r0
/* 09F918 800A2918 54600FFE */  srwi      r0, r3, 31
/* 09F91C 800A291C 7FC30214 */  add       r30, r3, r0
/* 09F920 800A2920 57C43032 */  slwi      r4, r30, 6
/* 09F924 800A2924 3C608018 */  lis       r3, Ecb@ha
/* 09F928 800A2928 38037D90 */  addi      r0, r3, Ecb@l
/* 09F92C 800A292C 7FE02214 */  add       r31, r0, r4
/* 09F930 800A2930 3C008000 */  lis       r0, 0x8000
/* 09F934 800A2934 7C032C30 */  srw       r3, r0, r5
/* 09F938 800A2938 4BFFBCD9 */  bl        __OSMaskInterrupts
/* 09F93C 800A293C 1CFE0014 */  mulli     r7, r30, 0x14
/* 09F940 800A2940 3CC0CC00 */  lis       r6, 0xcc00
/* 09F944 800A2944 38666800 */  addi      r3, r6, 0x6800
/* 09F948 800A2948 7C633A14 */  add       r3, r3, r7
/* 09F94C 800A294C 80030000 */  lwz       r0, 0x0(r3)
/* 09F950 800A2950 700007F5 */  andi.     r0, r0, 0x7f5
/* 09F954 800A2954 60000008 */  ori       r0, r0, 0x8
/* 09F958 800A2958 90030000 */  stw       r0, 0x0(r3)
/* 09F95C 800A295C 801F0004 */  lwz       r0, 0x4(r31)
/* 09F960 800A2960 7C1D0378 */  mr        r29, r0
/* 09F964 800A2964 28000000 */  cmplwi    r0, 0x0
/* 09F968 800A2968 41820174 */  beq       lbl_800A2ADC
/* 09F96C 800A296C 38800000 */  li        r4, 0x0
/* 09F970 800A2970 909F0004 */  stw       r4, 0x4(r31)
/* 09F974 800A2974 801F000C */  lwz       r0, 0xc(r31)
/* 09F978 800A2978 540007BF */  clrlwi.   r0, r0, 30
/* 09F97C 800A297C 4182012C */  beq       lbl_800A2AA8
/* 09F980 800A2980 801F000C */  lwz       r0, 0xc(r31)
/* 09F984 800A2984 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 09F988 800A2988 41820114 */  beq       lbl_800A2A9C
/* 09F98C 800A298C 807F0010 */  lwz       r3, 0x10(r31)
/* 09F990 800A2990 2C030000 */  cmpwi     r3, 0x0
/* 09F994 800A2994 41820108 */  beq       lbl_800A2A9C
/* 09F998 800A2998 80BF0014 */  lwz       r5, 0x14(r31)
/* 09F99C 800A299C 38066800 */  addi      r0, r6, 0x6800
/* 09F9A0 800A29A0 7CC03A14 */  add       r6, r0, r7
/* 09F9A4 800A29A4 80060010 */  lwz       r0, 0x10(r6)
/* 09F9A8 800A29A8 408100F4 */  ble       lbl_800A2A9C
/* 09F9AC 800A29AC 38E3FFF8 */  subi      r7, r3, 0x8
/* 09F9B0 800A29B0 2C030008 */  cmpwi     r3, 0x8
/* 09F9B4 800A29B4 408100BC */  ble       lbl_800A2A70
/* 09F9B8 800A29B8 38C70007 */  addi      r6, r7, 0x7
/* 09F9BC 800A29BC 54C6E8FE */  srwi      r6, r6, 3
/* 09F9C0 800A29C0 7CC903A6 */  mtctr     r6
/* 09F9C4 800A29C4 2C070000 */  cmpwi     r7, 0x0
/* 09F9C8 800A29C8 408100A8 */  ble       lbl_800A2A70
lbl_800A29CC:
/* 09F9CC 800A29CC 20C40003 */  subfic    r6, r4, 0x3
/* 09F9D0 800A29D0 54C61838 */  slwi      r6, r6, 3
/* 09F9D4 800A29D4 7C063430 */  srw       r6, r0, r6
/* 09F9D8 800A29D8 98C50000 */  stb       r6, 0x0(r5)
/* 09F9DC 800A29DC 38C40001 */  addi      r6, r4, 0x1
/* 09F9E0 800A29E0 20C60003 */  subfic    r6, r6, 0x3
/* 09F9E4 800A29E4 54C61838 */  slwi      r6, r6, 3
/* 09F9E8 800A29E8 7C063430 */  srw       r6, r0, r6
/* 09F9EC 800A29EC 98C50001 */  stb       r6, 0x1(r5)
/* 09F9F0 800A29F0 38C40002 */  addi      r6, r4, 0x2
/* 09F9F4 800A29F4 20C60003 */  subfic    r6, r6, 0x3
/* 09F9F8 800A29F8 54C61838 */  slwi      r6, r6, 3
/* 09F9FC 800A29FC 7C063430 */  srw       r6, r0, r6
/* 09FA00 800A2A00 98C50002 */  stb       r6, 0x2(r5)
/* 09FA04 800A2A04 7CC400D0 */  neg       r6, r4
/* 09FA08 800A2A08 54C61838 */  slwi      r6, r6, 3
/* 09FA0C 800A2A0C 7C063430 */  srw       r6, r0, r6
/* 09FA10 800A2A10 98C50003 */  stb       r6, 0x3(r5)
/* 09FA14 800A2A14 38C40004 */  addi      r6, r4, 0x4
/* 09FA18 800A2A18 20C60003 */  subfic    r6, r6, 0x3
/* 09FA1C 800A2A1C 54C61838 */  slwi      r6, r6, 3
/* 09FA20 800A2A20 7C063430 */  srw       r6, r0, r6
/* 09FA24 800A2A24 98C50004 */  stb       r6, 0x4(r5)
/* 09FA28 800A2A28 38C40005 */  addi      r6, r4, 0x5
/* 09FA2C 800A2A2C 20C60003 */  subfic    r6, r6, 0x3
/* 09FA30 800A2A30 54C61838 */  slwi      r6, r6, 3
/* 09FA34 800A2A34 7C063430 */  srw       r6, r0, r6
/* 09FA38 800A2A38 98C50005 */  stb       r6, 0x5(r5)
/* 09FA3C 800A2A3C 38C40006 */  addi      r6, r4, 0x6
/* 09FA40 800A2A40 20C60003 */  subfic    r6, r6, 0x3
/* 09FA44 800A2A44 54C61838 */  slwi      r6, r6, 3
/* 09FA48 800A2A48 7C063430 */  srw       r6, r0, r6
/* 09FA4C 800A2A4C 98C50006 */  stb       r6, 0x6(r5)
/* 09FA50 800A2A50 38C40007 */  addi      r6, r4, 0x7
/* 09FA54 800A2A54 20C60003 */  subfic    r6, r6, 0x3
/* 09FA58 800A2A58 54C61838 */  slwi      r6, r6, 3
/* 09FA5C 800A2A5C 7C063430 */  srw       r6, r0, r6
/* 09FA60 800A2A60 98C50007 */  stb       r6, 0x7(r5)
/* 09FA64 800A2A64 38A50008 */  addi      r5, r5, 0x8
/* 09FA68 800A2A68 38840008 */  addi      r4, r4, 0x8
/* 09FA6C 800A2A6C 4200FF60 */  bdnz      lbl_800A29CC
lbl_800A2A70:
/* 09FA70 800A2A70 7CC41850 */  subf      r6, r4, r3
/* 09FA74 800A2A74 7CC903A6 */  mtctr     r6
/* 09FA78 800A2A78 7C041800 */  cmpw      r4, r3
/* 09FA7C 800A2A7C 40800020 */  bge       lbl_800A2A9C
lbl_800A2A80:
/* 09FA80 800A2A80 20640003 */  subfic    r3, r4, 0x3
/* 09FA84 800A2A84 54631838 */  slwi      r3, r3, 3
/* 09FA88 800A2A88 7C031C30 */  srw       r3, r0, r3
/* 09FA8C 800A2A8C 98650000 */  stb       r3, 0x0(r5)
/* 09FA90 800A2A90 38A50001 */  addi      r5, r5, 0x1
/* 09FA94 800A2A94 38840001 */  addi      r4, r4, 0x1
/* 09FA98 800A2A98 4200FFE8 */  bdnz      lbl_800A2A80
lbl_800A2A9C:
/* 09FA9C 800A2A9C 801F000C */  lwz       r0, 0xc(r31)
/* 09FAA0 800A2AA0 5400003A */  clrrwi    r0, r0, 2
/* 09FAA4 800A2AA4 901F000C */  stw       r0, 0xc(r31)
lbl_800A2AA8:
/* 09FAA8 800A2AA8 38610020 */  addi      r3, r1, 0x20
/* 09FAAC 800A2AAC 4BFFAC45 */  bl        OSClearContext
/* 09FAB0 800A2AB0 38610020 */  addi      r3, r1, 0x20
/* 09FAB4 800A2AB4 4BFFAA75 */  bl        OSSetCurrentContext
/* 09FAB8 800A2AB8 387E0000 */  addi      r3, r30, 0x0
/* 09FABC 800A2ABC 389C0000 */  addi      r4, r28, 0x0
/* 09FAC0 800A2AC0 399D0000 */  addi      r12, r29, 0x0
/* 09FAC4 800A2AC4 7D8803A6 */  mtlr      r12
/* 09FAC8 800A2AC8 4E800021 */  blrl
/* 09FACC 800A2ACC 38610020 */  addi      r3, r1, 0x20
/* 09FAD0 800A2AD0 4BFFAC21 */  bl        OSClearContext
/* 09FAD4 800A2AD4 7F83E378 */  mr        r3, r28
/* 09FAD8 800A2AD8 4BFFAA51 */  bl        OSSetCurrentContext
lbl_800A2ADC:
/* 09FADC 800A2ADC 800102FC */  lwz       r0, 0x2fc(r1)
/* 09FAE0 800A2AE0 83E102F4 */  lwz       r31, 0x2f4(r1)
/* 09FAE4 800A2AE4 83C102F0 */  lwz       r30, 0x2f0(r1)
/* 09FAE8 800A2AE8 83A102EC */  lwz       r29, 0x2ec(r1)
/* 09FAEC 800A2AEC 838102E8 */  lwz       r28, 0x2e8(r1)
/* 09FAF0 800A2AF0 382102F8 */  addi      r1, r1, 0x2f8
/* 09FAF4 800A2AF4 7C0803A6 */  mtlr      r0
/* 09FAF8 800A2AF8 4E800020 */  blr

EXTIntrruptHandler:
/* 09FAFC 800A2AFC 7C0802A6 */  mflr      r0
/* 09FB00 800A2B00 90010004 */  stw       r0, 0x4(r1)
/* 09FB04 800A2B04 9421FD18 */  stwu      r1, -0x2e8(r1)
/* 09FB08 800A2B08 93E102E4 */  stw       r31, 0x2e4(r1)
/* 09FB0C 800A2B0C 93C102E0 */  stw       r30, 0x2e0(r1)
/* 09FB10 800A2B10 93A102DC */  stw       r29, 0x2dc(r1)
/* 09FB14 800A2B14 938102D8 */  stw       r28, 0x2d8(r1)
/* 09FB18 800A2B18 3BE40000 */  addi      r31, r4, 0x0
/* 09FB1C 800A2B1C 7C630734 */  extsh     r3, r3
/* 09FB20 800A2B20 3803FFF5 */  subi      r0, r3, 0xb
/* 09FB24 800A2B24 3C605555 */  lis       r3, 0x5555
/* 09FB28 800A2B28 38635556 */  addi      r3, r3, 0x5556
/* 09FB2C 800A2B2C 7C630096 */  mulhw     r3, r3, r0
/* 09FB30 800A2B30 54600FFE */  srwi      r0, r3, 31
/* 09FB34 800A2B34 7FC30214 */  add       r30, r3, r0
/* 09FB38 800A2B38 3C600050 */  lis       r3, 0x50
/* 09FB3C 800A2B3C 1C1E0003 */  mulli     r0, r30, 0x3
/* 09FB40 800A2B40 7C630430 */  srw       r3, r3, r0
/* 09FB44 800A2B44 4BFFBACD */  bl        __OSMaskInterrupts
/* 09FB48 800A2B48 57C43032 */  slwi      r4, r30, 6
/* 09FB4C 800A2B4C 3C608018 */  lis       r3, Ecb@ha
/* 09FB50 800A2B50 38037D90 */  addi      r0, r3, Ecb@l
/* 09FB54 800A2B54 7FA02214 */  add       r29, r0, r4
/* 09FB58 800A2B58 839D0008 */  lwz       r28, 0x8(r29)
/* 09FB5C 800A2B5C 801D000C */  lwz       r0, 0xc(r29)
/* 09FB60 800A2B60 54000776 */  rlwinm    r0, r0, 0, 29, 27
/* 09FB64 800A2B64 901D000C */  stw       r0, 0xc(r29)
/* 09FB68 800A2B68 281C0000 */  cmplwi    r28, 0x0
/* 09FB6C 800A2B6C 41820040 */  beq       lbl_800A2BAC
/* 09FB70 800A2B70 38610010 */  addi      r3, r1, 0x10
/* 09FB74 800A2B74 4BFFAB7D */  bl        OSClearContext
/* 09FB78 800A2B78 38610010 */  addi      r3, r1, 0x10
/* 09FB7C 800A2B7C 4BFFA9AD */  bl        OSSetCurrentContext
/* 09FB80 800A2B80 38000000 */  li        r0, 0x0
/* 09FB84 800A2B84 901D0008 */  stw       r0, 0x8(r29)
/* 09FB88 800A2B88 387E0000 */  addi      r3, r30, 0x0
/* 09FB8C 800A2B8C 389F0000 */  addi      r4, r31, 0x0
/* 09FB90 800A2B90 399C0000 */  addi      r12, r28, 0x0
/* 09FB94 800A2B94 7D8803A6 */  mtlr      r12
/* 09FB98 800A2B98 4E800021 */  blrl
/* 09FB9C 800A2B9C 38610010 */  addi      r3, r1, 0x10
/* 09FBA0 800A2BA0 4BFFAB51 */  bl        OSClearContext
/* 09FBA4 800A2BA4 7FE3FB78 */  mr        r3, r31
/* 09FBA8 800A2BA8 4BFFA981 */  bl        OSSetCurrentContext
lbl_800A2BAC:
/* 09FBAC 800A2BAC 800102EC */  lwz       r0, 0x2ec(r1)
/* 09FBB0 800A2BB0 83E102E4 */  lwz       r31, 0x2e4(r1)
/* 09FBB4 800A2BB4 83C102E0 */  lwz       r30, 0x2e0(r1)
/* 09FBB8 800A2BB8 83A102DC */  lwz       r29, 0x2dc(r1)
/* 09FBBC 800A2BBC 838102D8 */  lwz       r28, 0x2d8(r1)
/* 09FBC0 800A2BC0 382102E8 */  addi      r1, r1, 0x2e8
/* 09FBC4 800A2BC4 7C0803A6 */  mtlr      r0
/* 09FBC8 800A2BC8 4E800020 */  blr

glabel EXIInit
/* 09FBCC 800A2BCC 7C0802A6 */  mflr      r0
/* 09FBD0 800A2BD0 90010004 */  stw       r0, 0x4(r1)
/* 09FBD4 800A2BD4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09FBD8 800A2BD8 93E10014 */  stw       r31, 0x14(r1)
/* 09FBDC 800A2BDC 93C10010 */  stw       r30, 0x10(r1)
/* 09FBE0 800A2BE0 93A1000C */  stw       r29, 0xc(r1)
/* 09FBE4 800A2BE4 93810008 */  stw       r28, 0x8(r1)
/* 09FBE8 800A2BE8 806D8750 */  lwz       r3, __EXIVersion@sda21(r0)
/* 09FBEC 800A2BEC 4BFF9099 */  bl        OSRegisterVersion
/* 09FBF0 800A2BF0 3C600080 */  lis       r3, 0x80
/* 09FBF4 800A2BF4 38638000 */  addi      r3, r3, -0x8000
/* 09FBF8 800A2BF8 4BFFBA19 */  bl        __OSMaskInterrupts
/* 09FBFC 800A2BFC 3BE00000 */  li        r31, 0x0
/* 09FC00 800A2C00 3C80CC00 */  lis       r4, 0xcc00
/* 09FC04 800A2C04 93E46800 */  stw       r31, 0x6800(r4)
/* 09FC08 800A2C08 93E46814 */  stw       r31, 0x6814(r4)
/* 09FC0C 800A2C0C 93E46828 */  stw       r31, 0x6828(r4)
/* 09FC10 800A2C10 38002000 */  li        r0, 0x2000
/* 09FC14 800A2C14 90046800 */  stw       r0, 0x6800(r4)
/* 09FC18 800A2C18 38600009 */  li        r3, 0x9
/* 09FC1C 800A2C1C 3C80800A */  lis       r4, EXIIntrruptHandler@ha
/* 09FC20 800A2C20 3B84281C */  addi      r28, r4, EXIIntrruptHandler@l
/* 09FC24 800A2C24 389C0000 */  addi      r4, r28, 0x0
/* 09FC28 800A2C28 4BFFB66D */  bl        __OSSetInterruptHandler
/* 09FC2C 800A2C2C 3860000A */  li        r3, 0xa
/* 09FC30 800A2C30 3C80800A */  lis       r4, TCIntrruptHandler@ha
/* 09FC34 800A2C34 3BA428E4 */  addi      r29, r4, TCIntrruptHandler@l
/* 09FC38 800A2C38 389D0000 */  addi      r4, r29, 0x0
/* 09FC3C 800A2C3C 4BFFB659 */  bl        __OSSetInterruptHandler
/* 09FC40 800A2C40 3860000B */  li        r3, 0xb
/* 09FC44 800A2C44 3C80800A */  lis       r4, EXTIntrruptHandler@ha
/* 09FC48 800A2C48 3BC42AFC */  addi      r30, r4, EXTIntrruptHandler@l
/* 09FC4C 800A2C4C 389E0000 */  addi      r4, r30, 0x0
/* 09FC50 800A2C50 4BFFB645 */  bl        __OSSetInterruptHandler
/* 09FC54 800A2C54 3860000C */  li        r3, 0xc
/* 09FC58 800A2C58 389C0000 */  addi      r4, r28, 0x0
/* 09FC5C 800A2C5C 4BFFB639 */  bl        __OSSetInterruptHandler
/* 09FC60 800A2C60 3860000D */  li        r3, 0xd
/* 09FC64 800A2C64 389D0000 */  addi      r4, r29, 0x0
/* 09FC68 800A2C68 4BFFB62D */  bl        __OSSetInterruptHandler
/* 09FC6C 800A2C6C 3860000E */  li        r3, 0xe
/* 09FC70 800A2C70 389E0000 */  addi      r4, r30, 0x0
/* 09FC74 800A2C74 4BFFB621 */  bl        __OSSetInterruptHandler
/* 09FC78 800A2C78 3860000F */  li        r3, 0xf
/* 09FC7C 800A2C7C 389C0000 */  addi      r4, r28, 0x0
/* 09FC80 800A2C80 4BFFB615 */  bl        __OSSetInterruptHandler
/* 09FC84 800A2C84 38600010 */  li        r3, 0x10
/* 09FC88 800A2C88 389D0000 */  addi      r4, r29, 0x0
/* 09FC8C 800A2C8C 4BFFB609 */  bl        __OSSetInterruptHandler
/* 09FC90 800A2C90 4BFF86D9 */  bl        OSGetConsoleType
/* 09FC94 800A2C94 546000C7 */  rlwinm.   r0, r3, 0, 3, 3
/* 09FC98 800A2C98 41820030 */  beq       lbl_800A2CC8
/* 09FC9C 800A2C9C 3C808000 */  lis       r4, 0x8000
/* 09FCA0 800A2CA0 93E430C4 */  stw       r31, 0x30c4(r4)
/* 09FCA4 800A2CA4 93E430C0 */  stw       r31, 0x30c0(r4)
/* 09FCA8 800A2CA8 3C608018 */  lis       r3, Ecb@ha
/* 09FCAC 800A2CAC 38637D90 */  addi      r3, r3, Ecb@l
/* 09FCB0 800A2CB0 93E30060 */  stw       r31, 0x60(r3)
/* 09FCB4 800A2CB4 93E30020 */  stw       r31, 0x20(r3)
/* 09FCB8 800A2CB8 38600000 */  li        r3, 0x0
/* 09FCBC 800A2CBC 4BFFF4B5 */  bl        __EXIProbe
/* 09FCC0 800A2CC0 38600001 */  li        r3, 0x1
/* 09FCC4 800A2CC4 4BFFF4AD */  bl        __EXIProbe
lbl_800A2CC8:
/* 09FCC8 800A2CC8 8001001C */  lwz       r0, 0x1c(r1)
/* 09FCCC 800A2CCC 83E10014 */  lwz       r31, 0x14(r1)
/* 09FCD0 800A2CD0 83C10010 */  lwz       r30, 0x10(r1)
/* 09FCD4 800A2CD4 83A1000C */  lwz       r29, 0xc(r1)
/* 09FCD8 800A2CD8 83810008 */  lwz       r28, 0x8(r1)
/* 09FCDC 800A2CDC 38210018 */  addi      r1, r1, 0x18
/* 09FCE0 800A2CE0 7C0803A6 */  mtlr      r0
/* 09FCE4 800A2CE4 4E800020 */  blr

glabel EXILock
/* 09FCE8 800A2CE8 7C0802A6 */  mflr      r0
/* 09FCEC 800A2CEC 90010004 */  stw       r0, 0x4(r1)
/* 09FCF0 800A2CF0 9421FFD0 */  stwu      r1, -0x30(r1)
/* 09FCF4 800A2CF4 BF61001C */  stmw      r27, 0x1c(r1)
/* 09FCF8 800A2CF8 3B630000 */  addi      r27, r3, 0x0
/* 09FCFC 800A2CFC 3BE40000 */  addi      r31, r4, 0x0
/* 09FD00 800A2D00 3B850000 */  addi      r28, r5, 0x0
/* 09FD04 800A2D04 54643032 */  slwi      r4, r3, 6
/* 09FD08 800A2D08 3C608018 */  lis       r3, Ecb@ha
/* 09FD0C 800A2D0C 38037D90 */  addi      r0, r3, Ecb@l
/* 09FD10 800A2D10 7FC02214 */  add       r30, r0, r4
/* 09FD14 800A2D14 4BFFB535 */  bl        OSDisableInterrupts
/* 09FD18 800A2D18 7C7D1B78 */  mr        r29, r3
/* 09FD1C 800A2D1C 801E000C */  lwz       r0, 0xc(r30)
/* 09FD20 800A2D20 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 09FD24 800A2D24 4182007C */  beq       lbl_800A2DA0
/* 09FD28 800A2D28 281C0000 */  cmplwi    r28, 0x0
/* 09FD2C 800A2D2C 41820064 */  beq       lbl_800A2D90
/* 09FD30 800A2D30 7FC3F378 */  mr        r3, r30
/* 09FD34 800A2D34 809E0024 */  lwz       r4, 0x24(r30)
/* 09FD38 800A2D38 7C8903A6 */  mtctr     r4
/* 09FD3C 800A2D3C 2C040000 */  cmpwi     r4, 0x0
/* 09FD40 800A2D40 40810028 */  ble       lbl_800A2D68
lbl_800A2D44:
/* 09FD44 800A2D44 80030028 */  lwz       r0, 0x28(r3)
/* 09FD48 800A2D48 7C00F840 */  cmplw     r0, r31
/* 09FD4C 800A2D4C 40820014 */  bne       lbl_800A2D60
/* 09FD50 800A2D50 7FA3EB78 */  mr        r3, r29
/* 09FD54 800A2D54 4BFFB51D */  bl        OSRestoreInterrupts
/* 09FD58 800A2D58 38600000 */  li        r3, 0x0
/* 09FD5C 800A2D5C 4800006C */  b         lbl_800A2DC8
lbl_800A2D60:
/* 09FD60 800A2D60 38630008 */  addi      r3, r3, 0x8
/* 09FD64 800A2D64 4200FFE0 */  bdnz      lbl_800A2D44
lbl_800A2D68:
/* 09FD68 800A2D68 54801838 */  slwi      r0, r4, 3
/* 09FD6C 800A2D6C 7C7E0214 */  add       r3, r30, r0
/* 09FD70 800A2D70 9383002C */  stw       r28, 0x2c(r3)
/* 09FD74 800A2D74 801E0024 */  lwz       r0, 0x24(r30)
/* 09FD78 800A2D78 54001838 */  slwi      r0, r0, 3
/* 09FD7C 800A2D7C 7C7E0214 */  add       r3, r30, r0
/* 09FD80 800A2D80 93E30028 */  stw       r31, 0x28(r3)
/* 09FD84 800A2D84 807E0024 */  lwz       r3, 0x24(r30)
/* 09FD88 800A2D88 38030001 */  addi      r0, r3, 0x1
/* 09FD8C 800A2D8C 901E0024 */  stw       r0, 0x24(r30)
lbl_800A2D90:
/* 09FD90 800A2D90 7FA3EB78 */  mr        r3, r29
/* 09FD94 800A2D94 4BFFB4DD */  bl        OSRestoreInterrupts
/* 09FD98 800A2D98 38600000 */  li        r3, 0x0
/* 09FD9C 800A2D9C 4800002C */  b         lbl_800A2DC8
lbl_800A2DA0:
/* 09FDA0 800A2DA0 801E000C */  lwz       r0, 0xc(r30)
/* 09FDA4 800A2DA4 60000010 */  ori       r0, r0, 0x10
/* 09FDA8 800A2DA8 901E000C */  stw       r0, 0xc(r30)
/* 09FDAC 800A2DAC 93FE0018 */  stw       r31, 0x18(r30)
/* 09FDB0 800A2DB0 387B0000 */  addi      r3, r27, 0x0
/* 09FDB4 800A2DB4 389E0000 */  addi      r4, r30, 0x0
/* 09FDB8 800A2DB8 4BFFEBE1 */  bl        SetExiInterruptMask
/* 09FDBC 800A2DBC 7FA3EB78 */  mr        r3, r29
/* 09FDC0 800A2DC0 4BFFB4B1 */  bl        OSRestoreInterrupts
/* 09FDC4 800A2DC4 38600001 */  li        r3, 0x1
lbl_800A2DC8:
/* 09FDC8 800A2DC8 80010034 */  lwz       r0, 0x34(r1)
/* 09FDCC 800A2DCC BB61001C */  lmw       r27, 0x1c(r1)
/* 09FDD0 800A2DD0 38210030 */  addi      r1, r1, 0x30
/* 09FDD4 800A2DD4 7C0803A6 */  mtlr      r0
/* 09FDD8 800A2DD8 4E800020 */  blr

glabel EXIUnlock
/* 09FDDC 800A2DDC 7C0802A6 */  mflr      r0
/* 09FDE0 800A2DE0 90010004 */  stw       r0, 0x4(r1)
/* 09FDE4 800A2DE4 9421FFE0 */  stwu      r1, -0x20(r1)
/* 09FDE8 800A2DE8 93E1001C */  stw       r31, 0x1c(r1)
/* 09FDEC 800A2DEC 93C10018 */  stw       r30, 0x18(r1)
/* 09FDF0 800A2DF0 93A10014 */  stw       r29, 0x14(r1)
/* 09FDF4 800A2DF4 93810010 */  stw       r28, 0x10(r1)
/* 09FDF8 800A2DF8 3B830000 */  addi      r28, r3, 0x0
/* 09FDFC 800A2DFC 54643032 */  slwi      r4, r3, 6
/* 09FE00 800A2E00 3C608018 */  lis       r3, Ecb@ha
/* 09FE04 800A2E04 38037D90 */  addi      r0, r3, Ecb@l
/* 09FE08 800A2E08 7FE02214 */  add       r31, r0, r4
/* 09FE0C 800A2E0C 4BFFB43D */  bl        OSDisableInterrupts
/* 09FE10 800A2E10 7C7E1B78 */  mr        r30, r3
/* 09FE14 800A2E14 801F000C */  lwz       r0, 0xc(r31)
/* 09FE18 800A2E18 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 09FE1C 800A2E1C 40820014 */  bne       lbl_800A2E30
/* 09FE20 800A2E20 7FC3F378 */  mr        r3, r30
/* 09FE24 800A2E24 4BFFB44D */  bl        OSRestoreInterrupts
/* 09FE28 800A2E28 38600000 */  li        r3, 0x0
/* 09FE2C 800A2E2C 4800006C */  b         lbl_800A2E98
lbl_800A2E30:
/* 09FE30 800A2E30 801F000C */  lwz       r0, 0xc(r31)
/* 09FE34 800A2E34 54000734 */  rlwinm    r0, r0, 0, 28, 26
/* 09FE38 800A2E38 901F000C */  stw       r0, 0xc(r31)
/* 09FE3C 800A2E3C 387C0000 */  addi      r3, r28, 0x0
/* 09FE40 800A2E40 389F0000 */  addi      r4, r31, 0x0
/* 09FE44 800A2E44 4BFFEB55 */  bl        SetExiInterruptMask
/* 09FE48 800A2E48 807F0024 */  lwz       r3, 0x24(r31)
/* 09FE4C 800A2E4C 2C030000 */  cmpwi     r3, 0x0
/* 09FE50 800A2E50 4081003C */  ble       lbl_800A2E8C
/* 09FE54 800A2E54 83BF002C */  lwz       r29, 0x2c(r31)
/* 09FE58 800A2E58 3403FFFF */  subic.    r0, r3, 0x1
/* 09FE5C 800A2E5C 901F0024 */  stw       r0, 0x24(r31)
/* 09FE60 800A2E60 40810018 */  ble       lbl_800A2E78
/* 09FE64 800A2E64 387F0028 */  addi      r3, r31, 0x28
/* 09FE68 800A2E68 389F0030 */  addi      r4, r31, 0x30
/* 09FE6C 800A2E6C 801F0024 */  lwz       r0, 0x24(r31)
/* 09FE70 800A2E70 54051838 */  slwi      r5, r0, 3
/* 09FE74 800A2E74 4802A6E5 */  bl        memmove
lbl_800A2E78:
/* 09FE78 800A2E78 387C0000 */  addi      r3, r28, 0x0
/* 09FE7C 800A2E7C 38800000 */  li        r4, 0x0
/* 09FE80 800A2E80 399D0000 */  addi      r12, r29, 0x0
/* 09FE84 800A2E84 7D8803A6 */  mtlr      r12
/* 09FE88 800A2E88 4E800021 */  blrl
lbl_800A2E8C:
/* 09FE8C 800A2E8C 7FC3F378 */  mr        r3, r30
/* 09FE90 800A2E90 4BFFB3E1 */  bl        OSRestoreInterrupts
/* 09FE94 800A2E94 38600001 */  li        r3, 0x1
lbl_800A2E98:
/* 09FE98 800A2E98 80010024 */  lwz       r0, 0x24(r1)
/* 09FE9C 800A2E9C 83E1001C */  lwz       r31, 0x1c(r1)
/* 09FEA0 800A2EA0 83C10018 */  lwz       r30, 0x18(r1)
/* 09FEA4 800A2EA4 83A10014 */  lwz       r29, 0x14(r1)
/* 09FEA8 800A2EA8 83810010 */  lwz       r28, 0x10(r1)
/* 09FEAC 800A2EAC 38210020 */  addi      r1, r1, 0x20
/* 09FEB0 800A2EB0 7C0803A6 */  mtlr      r0
/* 09FEB4 800A2EB4 4E800020 */  blr

glabel EXIGetState
/* 09FEB8 800A2EB8 54643032 */  slwi      r4, r3, 6
/* 09FEBC 800A2EBC 3C608018 */  lis       r3, Ecb@ha
/* 09FEC0 800A2EC0 38037D90 */  addi      r0, r3, Ecb@l
/* 09FEC4 800A2EC4 7C602214 */  add       r3, r0, r4
/* 09FEC8 800A2EC8 8063000C */  lwz       r3, 0xc(r3)
/* 09FECC 800A2ECC 4E800020 */  blr

glabel UnlockedHandler
/* 09FED0 800A2ED0 7C0802A6 */  mflr      r0
/* 09FED4 800A2ED4 90010004 */  stw       r0, 0x4(r1)
/* 09FED8 800A2ED8 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09FEDC 800A2EDC 38800000 */  li        r4, 0x0
/* 09FEE0 800A2EE0 38A10010 */  addi      r5, r1, 0x10
/* 09FEE4 800A2EE4 48000015 */  bl        EXIGetID
/* 09FEE8 800A2EE8 8001001C */  lwz       r0, 0x1c(r1)
/* 09FEEC 800A2EEC 38210018 */  addi      r1, r1, 0x18
/* 09FEF0 800A2EF0 7C0803A6 */  mtlr      r0
/* 09FEF4 800A2EF4 4E800020 */  blr

glabel EXIGetID
/* 09FEF8 800A2EF8 7C0802A6 */  mflr      r0
/* 09FEFC 800A2EFC 90010004 */  stw       r0, 0x4(r1)
/* 09FF00 800A2F00 9421FFC0 */  stwu      r1, -0x40(r1)
/* 09FF04 800A2F04 BF010020 */  stmw      r24, 0x20(r1)
/* 09FF08 800A2F08 3B430000 */  addi      r26, r3, 0x0
/* 09FF0C 800A2F0C 3B640000 */  addi      r27, r4, 0x0
/* 09FF10 800A2F10 3B850000 */  addi      r28, r5, 0x0
/* 09FF14 800A2F14 54643032 */  slwi      r4, r3, 6
/* 09FF18 800A2F18 3C608018 */  lis       r3, Ecb@ha
/* 09FF1C 800A2F1C 38037D90 */  addi      r0, r3, Ecb@l
/* 09FF20 800A2F20 7FE02214 */  add       r31, r0, r4
/* 09FF24 800A2F24 2C1A0002 */  cmpwi     r26, 0x2
/* 09FF28 800A2F28 408000E0 */  bge       lbl_800A3008
/* 09FF2C 800A2F2C 281B0000 */  cmplwi    r27, 0x0
/* 09FF30 800A2F30 408200D8 */  bne       lbl_800A3008
/* 09FF34 800A2F34 7F43D378 */  mr        r3, r26
/* 09FF38 800A2F38 4BFFF239 */  bl        __EXIProbe
/* 09FF3C 800A2F3C 2C030000 */  cmpwi     r3, 0x0
/* 09FF40 800A2F40 4082000C */  bne       lbl_800A2F4C
/* 09FF44 800A2F44 38600000 */  li        r3, 0x0
/* 09FF48 800A2F48 48000318 */  b         lbl_800A3260
lbl_800A2F4C:
/* 09FF4C 800A2F4C 809F0020 */  lwz       r4, 0x20(r31)
/* 09FF50 800A2F50 5740103A */  slwi      r0, r26, 2
/* 09FF54 800A2F54 3C608000 */  lis       r3, 0x8000
/* 09FF58 800A2F58 3BC330C0 */  addi      r30, r3, 0x30c0
/* 09FF5C 800A2F5C 7FDE0214 */  add       r30, r30, r0
/* 09FF60 800A2F60 801E0000 */  lwz       r0, 0x0(r30)
/* 09FF64 800A2F64 7C040000 */  cmpw      r4, r0
/* 09FF68 800A2F68 40820014 */  bne       lbl_800A2F7C
/* 09FF6C 800A2F6C 801F001C */  lwz       r0, 0x1c(r31)
/* 09FF70 800A2F70 901C0000 */  stw       r0, 0x0(r28)
/* 09FF74 800A2F74 807F0020 */  lwz       r3, 0x20(r31)
/* 09FF78 800A2F78 480002E8 */  b         lbl_800A3260
lbl_800A2F7C:
/* 09FF7C 800A2F7C 4BFFB2CD */  bl        OSDisableInterrupts
/* 09FF80 800A2F80 7C7D1B78 */  mr        r29, r3
/* 09FF84 800A2F84 801F000C */  lwz       r0, 0xc(r31)
/* 09FF88 800A2F88 54000739 */  rlwinm.   r0, r0, 0, 28, 28
/* 09FF8C 800A2F8C 40820014 */  bne       lbl_800A2FA0
/* 09FF90 800A2F90 7F43D378 */  mr        r3, r26
/* 09FF94 800A2F94 4BFFF1DD */  bl        __EXIProbe
/* 09FF98 800A2F98 2C030000 */  cmpwi     r3, 0x0
/* 09FF9C 800A2F9C 40820014 */  bne       lbl_800A2FB0
lbl_800A2FA0:
/* 09FFA0 800A2FA0 7FA3EB78 */  mr        r3, r29
/* 09FFA4 800A2FA4 4BFFB2CD */  bl        OSRestoreInterrupts
/* 09FFA8 800A2FA8 38000000 */  li        r0, 0x0
/* 09FFAC 800A2FAC 48000048 */  b         lbl_800A2FF4
lbl_800A2FB0:
/* 09FFB0 800A2FB0 387A0000 */  addi      r3, r26, 0x0
/* 09FFB4 800A2FB4 38800001 */  li        r4, 0x1
/* 09FFB8 800A2FB8 38A00000 */  li        r5, 0x0
/* 09FFBC 800A2FBC 38C00000 */  li        r6, 0x0
/* 09FFC0 800A2FC0 4BFFF0ED */  bl        EXIClearInterrupts
/* 09FFC4 800A2FC4 38000000 */  li        r0, 0x0
/* 09FFC8 800A2FC8 901F0008 */  stw       r0, 0x8(r31)
/* 09FFCC 800A2FCC 3C600010 */  lis       r3, 0x10
/* 09FFD0 800A2FD0 1C1A0003 */  mulli     r0, r26, 0x3
/* 09FFD4 800A2FD4 7C630430 */  srw       r3, r3, r0
/* 09FFD8 800A2FD8 4BFFB6C1 */  bl        __OSUnmaskInterrupts
/* 09FFDC 800A2FDC 801F000C */  lwz       r0, 0xc(r31)
/* 09FFE0 800A2FE0 60000008 */  ori       r0, r0, 0x8
/* 09FFE4 800A2FE4 901F000C */  stw       r0, 0xc(r31)
/* 09FFE8 800A2FE8 7FA3EB78 */  mr        r3, r29
/* 09FFEC 800A2FEC 4BFFB285 */  bl        OSRestoreInterrupts
/* 09FFF0 800A2FF0 38000001 */  li        r0, 0x1
lbl_800A2FF4:
/* 09FFF4 800A2FF4 2C000000 */  cmpwi     r0, 0x0
/* 09FFF8 800A2FF8 4082000C */  bne       lbl_800A3004
/* 09FFFC 800A2FFC 38600000 */  li        r3, 0x0
/* 0A0000 800A3000 48000260 */  b         lbl_800A3260
lbl_800A3004:
/* 0A0004 800A3004 83BE0000 */  lwz       r29, 0x0(r30)
lbl_800A3008:
/* 0A0008 800A3008 38000000 */  li        r0, 0x0
/* 0A000C 800A300C 2C1A0002 */  cmpwi     r26, 0x2
/* 0A0010 800A3010 40800010 */  bge       lbl_800A3020
/* 0A0014 800A3014 281B0000 */  cmplwi    r27, 0x0
/* 0A0018 800A3018 40820008 */  bne       lbl_800A3020
/* 0A001C 800A301C 38000001 */  li        r0, 0x1
lbl_800A3020:
/* 0A0020 800A3020 2C000000 */  cmpwi     r0, 0x0
/* 0A0024 800A3024 41820010 */  beq       lbl_800A3034
/* 0A0028 800A3028 3C60800A */  lis       r3, UnlockedHandler@ha
/* 0A002C 800A302C 38A32ED0 */  addi      r5, r3, UnlockedHandler@l
/* 0A0030 800A3030 48000008 */  b         lbl_800A3038
lbl_800A3034:
/* 0A0034 800A3034 38A00000 */  li        r5, 0x0
lbl_800A3038:
/* 0A0038 800A3038 387A0000 */  addi      r3, r26, 0x0
/* 0A003C 800A303C 389B0000 */  addi      r4, r27, 0x0
/* 0A0040 800A3040 4BFFFCA9 */  bl        EXILock
/* 0A0044 800A3044 7C600034 */  cntlzw    r0, r3
/* 0A0048 800A3048 5400D97E */  srwi      r0, r0, 5
/* 0A004C 800A304C 7C1E0379 */  mr.       r30, r0
/* 0A0050 800A3050 40820134 */  bne       lbl_800A3184
/* 0A0054 800A3054 387A0000 */  addi      r3, r26, 0x0
/* 0A0058 800A3058 389B0000 */  addi      r4, r27, 0x0
/* 0A005C 800A305C 38A00000 */  li        r5, 0x0
/* 0A0060 800A3060 4BFFF581 */  bl        EXISelect
/* 0A0064 800A3064 7C600034 */  cntlzw    r0, r3
/* 0A0068 800A3068 5400D97E */  srwi      r0, r0, 5
/* 0A006C 800A306C 7C1E0379 */  mr.       r30, r0
/* 0A0070 800A3070 40820090 */  bne       lbl_800A3100
/* 0A0074 800A3074 38000000 */  li        r0, 0x0
/* 0A0078 800A3078 9001001C */  stw       r0, 0x1c(r1)
/* 0A007C 800A307C 387A0000 */  addi      r3, r26, 0x0
/* 0A0080 800A3080 3881001C */  addi      r4, r1, 0x1c
/* 0A0084 800A3084 38A00002 */  li        r5, 0x2
/* 0A0088 800A3088 38C00001 */  li        r6, 0x1
/* 0A008C 800A308C 38E00000 */  li        r7, 0x0
/* 0A0090 800A3090 4BFFE9FD */  bl        EXIImm
/* 0A0094 800A3094 7C600034 */  cntlzw    r0, r3
/* 0A0098 800A3098 5400D97E */  srwi      r0, r0, 5
/* 0A009C 800A309C 7FDE0378 */  or        r30, r30, r0
/* 0A00A0 800A30A0 387A0000 */  addi      r3, r26, 0x0
/* 0A00A4 800A30A4 4BFFEDD1 */  bl        EXISync
/* 0A00A8 800A30A8 7C600034 */  cntlzw    r0, r3
/* 0A00AC 800A30AC 5400D97E */  srwi      r0, r0, 5
/* 0A00B0 800A30B0 7FDE0378 */  or        r30, r30, r0
/* 0A00B4 800A30B4 387A0000 */  addi      r3, r26, 0x0
/* 0A00B8 800A30B8 389C0000 */  addi      r4, r28, 0x0
/* 0A00BC 800A30BC 38A00004 */  li        r5, 0x4
/* 0A00C0 800A30C0 38C00000 */  li        r6, 0x0
/* 0A00C4 800A30C4 38E00000 */  li        r7, 0x0
/* 0A00C8 800A30C8 4BFFE9C5 */  bl        EXIImm
/* 0A00CC 800A30CC 7C600034 */  cntlzw    r0, r3
/* 0A00D0 800A30D0 5400D97E */  srwi      r0, r0, 5
/* 0A00D4 800A30D4 7FDE0378 */  or        r30, r30, r0
/* 0A00D8 800A30D8 387A0000 */  addi      r3, r26, 0x0
/* 0A00DC 800A30DC 4BFFED99 */  bl        EXISync
/* 0A00E0 800A30E0 7C600034 */  cntlzw    r0, r3
/* 0A00E4 800A30E4 5400D97E */  srwi      r0, r0, 5
/* 0A00E8 800A30E8 7FDE0378 */  or        r30, r30, r0
/* 0A00EC 800A30EC 387A0000 */  addi      r3, r26, 0x0
/* 0A00F0 800A30F0 4BFFF61D */  bl        EXIDeselect
/* 0A00F4 800A30F4 7C600034 */  cntlzw    r0, r3
/* 0A00F8 800A30F8 5400D97E */  srwi      r0, r0, 5
/* 0A00FC 800A30FC 7FDE0378 */  or        r30, r30, r0
lbl_800A3100:
/* 0A0100 800A3100 4BFFB149 */  bl        OSDisableInterrupts
/* 0A0104 800A3104 7C781B78 */  mr        r24, r3
/* 0A0108 800A3108 801F000C */  lwz       r0, 0xc(r31)
/* 0A010C 800A310C 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 0A0110 800A3110 40820010 */  bne       lbl_800A3120
/* 0A0114 800A3114 7F03C378 */  mr        r3, r24
/* 0A0118 800A3118 4BFFB159 */  bl        OSRestoreInterrupts
/* 0A011C 800A311C 48000068 */  b         lbl_800A3184
lbl_800A3120:
/* 0A0120 800A3120 801F000C */  lwz       r0, 0xc(r31)
/* 0A0124 800A3124 54000734 */  rlwinm    r0, r0, 0, 28, 26
/* 0A0128 800A3128 901F000C */  stw       r0, 0xc(r31)
/* 0A012C 800A312C 387A0000 */  addi      r3, r26, 0x0
/* 0A0130 800A3130 389F0000 */  addi      r4, r31, 0x0
/* 0A0134 800A3134 4BFFE865 */  bl        SetExiInterruptMask
/* 0A0138 800A3138 807F0024 */  lwz       r3, 0x24(r31)
/* 0A013C 800A313C 2C030000 */  cmpwi     r3, 0x0
/* 0A0140 800A3140 4081003C */  ble       lbl_800A317C
/* 0A0144 800A3144 833F002C */  lwz       r25, 0x2c(r31)
/* 0A0148 800A3148 3403FFFF */  subic.    r0, r3, 0x1
/* 0A014C 800A314C 901F0024 */  stw       r0, 0x24(r31)
/* 0A0150 800A3150 40810018 */  ble       lbl_800A3168
/* 0A0154 800A3154 387F0028 */  addi      r3, r31, 0x28
/* 0A0158 800A3158 389F0030 */  addi      r4, r31, 0x30
/* 0A015C 800A315C 801F0024 */  lwz       r0, 0x24(r31)
/* 0A0160 800A3160 54051838 */  slwi      r5, r0, 3
/* 0A0164 800A3164 4802A3F5 */  bl        memmove
lbl_800A3168:
/* 0A0168 800A3168 387A0000 */  addi      r3, r26, 0x0
/* 0A016C 800A316C 38800000 */  li        r4, 0x0
/* 0A0170 800A3170 39990000 */  addi      r12, r25, 0x0
/* 0A0174 800A3174 7D8803A6 */  mtlr      r12
/* 0A0178 800A3178 4E800021 */  blrl
lbl_800A317C:
/* 0A017C 800A317C 7F03C378 */  mr        r3, r24
/* 0A0180 800A3180 4BFFB0F1 */  bl        OSRestoreInterrupts
lbl_800A3184:
/* 0A0184 800A3184 2C1A0002 */  cmpwi     r26, 0x2
/* 0A0188 800A3188 408000C4 */  bge       lbl_800A324C
/* 0A018C 800A318C 281B0000 */  cmplwi    r27, 0x0
/* 0A0190 800A3190 408200BC */  bne       lbl_800A324C
/* 0A0194 800A3194 4BFFB0B5 */  bl        OSDisableInterrupts
/* 0A0198 800A3198 7C781B78 */  mr        r24, r3
/* 0A019C 800A319C 801F000C */  lwz       r0, 0xc(r31)
/* 0A01A0 800A31A0 54000739 */  rlwinm.   r0, r0, 0, 28, 28
/* 0A01A4 800A31A4 40820010 */  bne       lbl_800A31B4
/* 0A01A8 800A31A8 7F03C378 */  mr        r3, r24
/* 0A01AC 800A31AC 4BFFB0C5 */  bl        OSRestoreInterrupts
/* 0A01B0 800A31B0 4800004C */  b         lbl_800A31FC
lbl_800A31B4:
/* 0A01B4 800A31B4 801F000C */  lwz       r0, 0xc(r31)
/* 0A01B8 800A31B8 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 0A01BC 800A31BC 4182001C */  beq       lbl_800A31D8
/* 0A01C0 800A31C0 801F0018 */  lwz       r0, 0x18(r31)
/* 0A01C4 800A31C4 28000000 */  cmplwi    r0, 0x0
/* 0A01C8 800A31C8 40820010 */  bne       lbl_800A31D8
/* 0A01CC 800A31CC 7F03C378 */  mr        r3, r24
/* 0A01D0 800A31D0 4BFFB0A1 */  bl        OSRestoreInterrupts
/* 0A01D4 800A31D4 48000028 */  b         lbl_800A31FC
lbl_800A31D8:
/* 0A01D8 800A31D8 801F000C */  lwz       r0, 0xc(r31)
/* 0A01DC 800A31DC 54000776 */  rlwinm    r0, r0, 0, 29, 27
/* 0A01E0 800A31E0 901F000C */  stw       r0, 0xc(r31)
/* 0A01E4 800A31E4 3C600050 */  lis       r3, 0x50
/* 0A01E8 800A31E8 1C1A0003 */  mulli     r0, r26, 0x3
/* 0A01EC 800A31EC 7C630430 */  srw       r3, r3, r0
/* 0A01F0 800A31F0 4BFFB421 */  bl        __OSMaskInterrupts
/* 0A01F4 800A31F4 7F03C378 */  mr        r3, r24
/* 0A01F8 800A31F8 4BFFB079 */  bl        OSRestoreInterrupts
lbl_800A31FC:
/* 0A01FC 800A31FC 4BFFB04D */  bl        OSDisableInterrupts
/* 0A0200 800A3200 5740103A */  slwi      r0, r26, 2
/* 0A0204 800A3204 3C808000 */  lis       r4, 0x8000
/* 0A0208 800A3208 388430C0 */  addi      r4, r4, 0x30c0
/* 0A020C 800A320C 7C04002E */  lwzx      r0, r4, r0
/* 0A0210 800A3210 7C9D0050 */  subf      r4, r29, r0
/* 0A0214 800A3214 3004FFFF */  subic     r0, r4, 0x1
/* 0A0218 800A3218 7C002110 */  subfe     r0, r0, r4
/* 0A021C 800A321C 7FDE0379 */  or.       r30, r30, r0
/* 0A0220 800A3220 40820010 */  bne       lbl_800A3230
/* 0A0224 800A3224 801C0000 */  lwz       r0, 0x0(r28)
/* 0A0228 800A3228 901F001C */  stw       r0, 0x1c(r31)
/* 0A022C 800A322C 93BF0020 */  stw       r29, 0x20(r31)
lbl_800A3230:
/* 0A0230 800A3230 4BFFB041 */  bl        OSRestoreInterrupts
/* 0A0234 800A3234 2C1E0000 */  cmpwi     r30, 0x0
/* 0A0238 800A3238 4182000C */  beq       lbl_800A3244
/* 0A023C 800A323C 38600000 */  li        r3, 0x0
/* 0A0240 800A3240 48000020 */  b         lbl_800A3260
lbl_800A3244:
/* 0A0244 800A3244 807F0020 */  lwz       r3, 0x20(r31)
/* 0A0248 800A3248 48000018 */  b         lbl_800A3260
lbl_800A324C:
/* 0A024C 800A324C 2C1E0000 */  cmpwi     r30, 0x0
/* 0A0250 800A3250 4182000C */  beq       lbl_800A325C
/* 0A0254 800A3254 38600000 */  li        r3, 0x0
/* 0A0258 800A3258 48000008 */  b         lbl_800A3260
lbl_800A325C:
/* 0A025C 800A325C 38600001 */  li        r3, 0x1
lbl_800A3260:
/* 0A0260 800A3260 80010044 */  lwz       r0, 0x44(r1)
/* 0A0264 800A3264 BB010020 */  lmw       r24, 0x20(r1)
/* 0A0268 800A3268 38210040 */  addi      r1, r1, 0x40
/* 0A026C 800A326C 7C0803A6 */  mtlr      r0
/* 0A0270 800A3270 4E800020 */  blr

# 0x800F28D0 - 0x800F29A0
.section .data, "wa"

.balign 8

glabel D_800F28D0
	.string "<< Dolphin SDK - EXI\trelease build: Sep  5 2002 05:33:04 (0x2301) >>"

glabel gap_05_800F2915_data
.hidden gap_05_800F2915_data
	.byte 0x00, 0x00, 0x00

glabel D_800F2918
	.string "Memory Card 59"

glabel gap_05_800F2927_data
.hidden gap_05_800F2927_data
	.byte 0x00

glabel D_800F2928
	.string "Memory Card 123"

glabel D_800F2938
	.string "Memory Card 251"

glabel D_800F2948
	.string "Memory Card 507"

glabel D_800F2958
	.string "USB Adapter"

glabel D_800F2964
	.string "Net Card"

glabel gap_05_800F296D_data
.hidden gap_05_800F296D_data
	.byte 0x00, 0x00, 0x00

glabel D_800F2970
	.string "Artist Ether"

glabel gap_05_800F297D_data
.hidden gap_05_800F297D_data
	.byte 0x00, 0x00, 0x00

glabel D_800F2980
	.string "Stream Hanger"

glabel gap_05_800F298E_data
.hidden gap_05_800F298E_data
	.2byte 0x0000

glabel D_800F2990
	.string "IS Viewer"

glabel gap_05_800F299A_data
.hidden gap_05_800F299A_data
	.2byte 0x0000

glabel D_800F299C
	.string ""

glabel gap_05_800F299D_data
.hidden gap_05_800F299D_data
	.byte 0x00, 0x00, 0x00

# 0x80187D90 - 0x80187E50
.section .bss, "wa"

Ecb:
	.skip 0xC0

# 0x8018B6D0 - 0x8018B6D8
.section .sdata, "wa"

glabel __EXIVersion
	.long D_800F28D0

glabel gap_07_8018B6D4_sdata
.hidden gap_07_8018B6D4_sdata
	.long 0x00000000
