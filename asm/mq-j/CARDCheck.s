# CARDCheck.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800BC8F4 - 0x800BD85C

glabel __CARDCheckSum
/* 0B98F4 800BC8F4 38000000 */  li        r0, 0x0
/* 0B98F8 800BC8F8 7C840E70 */  srawi     r4, r4, 1
/* 0B98FC 800BC8FC B0060000 */  sth       r0, 0x0(r6)
/* 0B9900 800BC900 7C840195 */  addze.    r4, r4
/* 0B9904 800BC904 B0050000 */  sth       r0, 0x0(r5)
/* 0B9908 800BC908 40810170 */  ble       lbl_800BCA78
/* 0B990C 800BC90C 5480E8FF */  srwi.     r0, r4, 3
/* 0B9910 800BC910 7C0903A6 */  mtctr     r0
/* 0B9914 800BC914 41820134 */  beq       lbl_800BCA48
lbl_800BC918:
/* 0B9918 800BC918 A0E50000 */  lhz       r7, 0x0(r5)
/* 0B991C 800BC91C A0030000 */  lhz       r0, 0x0(r3)
/* 0B9920 800BC920 7C070214 */  add       r0, r7, r0
/* 0B9924 800BC924 B0050000 */  sth       r0, 0x0(r5)
/* 0B9928 800BC928 A0030000 */  lhz       r0, 0x0(r3)
/* 0B992C 800BC92C A0E60000 */  lhz       r7, 0x0(r6)
/* 0B9930 800BC930 7C0000F8 */  nor       r0, r0, r0
/* 0B9934 800BC934 7C070214 */  add       r0, r7, r0
/* 0B9938 800BC938 B0060000 */  sth       r0, 0x0(r6)
/* 0B993C 800BC93C A0E50000 */  lhz       r7, 0x0(r5)
/* 0B9940 800BC940 A0030002 */  lhz       r0, 0x2(r3)
/* 0B9944 800BC944 7C070214 */  add       r0, r7, r0
/* 0B9948 800BC948 B0050000 */  sth       r0, 0x0(r5)
/* 0B994C 800BC94C A0030002 */  lhz       r0, 0x2(r3)
/* 0B9950 800BC950 A0E60000 */  lhz       r7, 0x0(r6)
/* 0B9954 800BC954 7C0000F8 */  nor       r0, r0, r0
/* 0B9958 800BC958 7C070214 */  add       r0, r7, r0
/* 0B995C 800BC95C B0060000 */  sth       r0, 0x0(r6)
/* 0B9960 800BC960 A0E50000 */  lhz       r7, 0x0(r5)
/* 0B9964 800BC964 A0030004 */  lhz       r0, 0x4(r3)
/* 0B9968 800BC968 7C070214 */  add       r0, r7, r0
/* 0B996C 800BC96C B0050000 */  sth       r0, 0x0(r5)
/* 0B9970 800BC970 A0030004 */  lhz       r0, 0x4(r3)
/* 0B9974 800BC974 A0E60000 */  lhz       r7, 0x0(r6)
/* 0B9978 800BC978 7C0000F8 */  nor       r0, r0, r0
/* 0B997C 800BC97C 7C070214 */  add       r0, r7, r0
/* 0B9980 800BC980 B0060000 */  sth       r0, 0x0(r6)
/* 0B9984 800BC984 A0E50000 */  lhz       r7, 0x0(r5)
/* 0B9988 800BC988 A0030006 */  lhz       r0, 0x6(r3)
/* 0B998C 800BC98C 7C070214 */  add       r0, r7, r0
/* 0B9990 800BC990 B0050000 */  sth       r0, 0x0(r5)
/* 0B9994 800BC994 A0030006 */  lhz       r0, 0x6(r3)
/* 0B9998 800BC998 A0E60000 */  lhz       r7, 0x0(r6)
/* 0B999C 800BC99C 7C0000F8 */  nor       r0, r0, r0
/* 0B99A0 800BC9A0 7C070214 */  add       r0, r7, r0
/* 0B99A4 800BC9A4 B0060000 */  sth       r0, 0x0(r6)
/* 0B99A8 800BC9A8 A0E50000 */  lhz       r7, 0x0(r5)
/* 0B99AC 800BC9AC A0030008 */  lhz       r0, 0x8(r3)
/* 0B99B0 800BC9B0 7C070214 */  add       r0, r7, r0
/* 0B99B4 800BC9B4 B0050000 */  sth       r0, 0x0(r5)
/* 0B99B8 800BC9B8 A0030008 */  lhz       r0, 0x8(r3)
/* 0B99BC 800BC9BC A0E60000 */  lhz       r7, 0x0(r6)
/* 0B99C0 800BC9C0 7C0000F8 */  nor       r0, r0, r0
/* 0B99C4 800BC9C4 7C070214 */  add       r0, r7, r0
/* 0B99C8 800BC9C8 B0060000 */  sth       r0, 0x0(r6)
/* 0B99CC 800BC9CC A0E50000 */  lhz       r7, 0x0(r5)
/* 0B99D0 800BC9D0 A003000A */  lhz       r0, 0xa(r3)
/* 0B99D4 800BC9D4 7C070214 */  add       r0, r7, r0
/* 0B99D8 800BC9D8 B0050000 */  sth       r0, 0x0(r5)
/* 0B99DC 800BC9DC A003000A */  lhz       r0, 0xa(r3)
/* 0B99E0 800BC9E0 A0E60000 */  lhz       r7, 0x0(r6)
/* 0B99E4 800BC9E4 7C0000F8 */  nor       r0, r0, r0
/* 0B99E8 800BC9E8 7C070214 */  add       r0, r7, r0
/* 0B99EC 800BC9EC B0060000 */  sth       r0, 0x0(r6)
/* 0B99F0 800BC9F0 A0E50000 */  lhz       r7, 0x0(r5)
/* 0B99F4 800BC9F4 A003000C */  lhz       r0, 0xc(r3)
/* 0B99F8 800BC9F8 7C070214 */  add       r0, r7, r0
/* 0B99FC 800BC9FC B0050000 */  sth       r0, 0x0(r5)
/* 0B9A00 800BCA00 A003000C */  lhz       r0, 0xc(r3)
/* 0B9A04 800BCA04 A0E60000 */  lhz       r7, 0x0(r6)
/* 0B9A08 800BCA08 7C0000F8 */  nor       r0, r0, r0
/* 0B9A0C 800BCA0C 7C070214 */  add       r0, r7, r0
/* 0B9A10 800BCA10 B0060000 */  sth       r0, 0x0(r6)
/* 0B9A14 800BCA14 A0E50000 */  lhz       r7, 0x0(r5)
/* 0B9A18 800BCA18 A003000E */  lhz       r0, 0xe(r3)
/* 0B9A1C 800BCA1C 7C070214 */  add       r0, r7, r0
/* 0B9A20 800BCA20 B0050000 */  sth       r0, 0x0(r5)
/* 0B9A24 800BCA24 A003000E */  lhz       r0, 0xe(r3)
/* 0B9A28 800BCA28 38630010 */  addi      r3, r3, 0x10
/* 0B9A2C 800BCA2C A0E60000 */  lhz       r7, 0x0(r6)
/* 0B9A30 800BCA30 7C0000F8 */  nor       r0, r0, r0
/* 0B9A34 800BCA34 7C070214 */  add       r0, r7, r0
/* 0B9A38 800BCA38 B0060000 */  sth       r0, 0x0(r6)
/* 0B9A3C 800BCA3C 4200FEDC */  bdnz      lbl_800BC918
/* 0B9A40 800BCA40 70840007 */  andi.     r4, r4, 0x7
/* 0B9A44 800BCA44 41820034 */  beq       lbl_800BCA78
lbl_800BCA48:
/* 0B9A48 800BCA48 7C8903A6 */  mtctr     r4
lbl_800BCA4C:
/* 0B9A4C 800BCA4C A0E50000 */  lhz       r7, 0x0(r5)
/* 0B9A50 800BCA50 A0030000 */  lhz       r0, 0x0(r3)
/* 0B9A54 800BCA54 7C070214 */  add       r0, r7, r0
/* 0B9A58 800BCA58 B0050000 */  sth       r0, 0x0(r5)
/* 0B9A5C 800BCA5C A0030000 */  lhz       r0, 0x0(r3)
/* 0B9A60 800BCA60 38630002 */  addi      r3, r3, 0x2
/* 0B9A64 800BCA64 A0E60000 */  lhz       r7, 0x0(r6)
/* 0B9A68 800BCA68 7C0000F8 */  nor       r0, r0, r0
/* 0B9A6C 800BCA6C 7C070214 */  add       r0, r7, r0
/* 0B9A70 800BCA70 B0060000 */  sth       r0, 0x0(r6)
/* 0B9A74 800BCA74 4200FFD8 */  bdnz      lbl_800BCA4C
lbl_800BCA78:
/* 0B9A78 800BCA78 A0050000 */  lhz       r0, 0x0(r5)
/* 0B9A7C 800BCA7C 2800FFFF */  cmplwi    r0, 0xffff
/* 0B9A80 800BCA80 4082000C */  bne       lbl_800BCA8C
/* 0B9A84 800BCA84 38000000 */  li        r0, 0x0
/* 0B9A88 800BCA88 B0050000 */  sth       r0, 0x0(r5)
lbl_800BCA8C:
/* 0B9A8C 800BCA8C A0060000 */  lhz       r0, 0x0(r6)
/* 0B9A90 800BCA90 2800FFFF */  cmplwi    r0, 0xffff
/* 0B9A94 800BCA94 4C820020 */  bnelr
/* 0B9A98 800BCA98 38000000 */  li        r0, 0x0
/* 0B9A9C 800BCA9C B0060000 */  sth       r0, 0x0(r6)
/* 0B9AA0 800BCAA0 4E800020 */  blr

glabel VerifyID
/* 0B9AA4 800BCAA4 7C0802A6 */  mflr      r0
/* 0B9AA8 800BCAA8 90010004 */  stw       r0, 0x4(r1)
/* 0B9AAC 800BCAAC 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0B9AB0 800BCAB0 BF210014 */  stmw      r25, 0x14(r1)
/* 0B9AB4 800BCAB4 7C7A1B78 */  mr        r26, r3
/* 0B9AB8 800BCAB8 80630080 */  lwz       r3, 0x80(r3)
/* 0B9ABC 800BCABC A0030020 */  lhz       r0, 0x20(r3)
/* 0B9AC0 800BCAC0 3B630000 */  addi      r27, r3, 0x0
/* 0B9AC4 800BCAC4 28000000 */  cmplwi    r0, 0x0
/* 0B9AC8 800BCAC8 40820014 */  bne       lbl_800BCADC
/* 0B9ACC 800BCACC A07B0022 */  lhz       r3, 0x22(r27)
/* 0B9AD0 800BCAD0 A01A0008 */  lhz       r0, 0x8(r26)
/* 0B9AD4 800BCAD4 7C030040 */  cmplw     r3, r0
/* 0B9AD8 800BCAD8 4182000C */  beq       lbl_800BCAE4
lbl_800BCADC:
/* 0B9ADC 800BCADC 3860FFFA */  li        r3, -0x6
/* 0B9AE0 800BCAE0 48000234 */  b         lbl_800BCD14
lbl_800BCAE4:
/* 0B9AE4 800BCAE4 380001FC */  li        r0, 0x1fc
/* 0B9AE8 800BCAE8 7C000E70 */  srawi     r0, r0, 1
/* 0B9AEC 800BCAEC 7C000195 */  addze.    r0, r0
/* 0B9AF0 800BCAF0 389B0000 */  addi      r4, r27, 0x0
/* 0B9AF4 800BCAF4 38E00000 */  li        r7, 0x0
/* 0B9AF8 800BCAF8 7C030378 */  mr        r3, r0
/* 0B9AFC 800BCAFC 38C00000 */  li        r6, 0x0
/* 0B9B00 800BCB00 408100BC */  ble       lbl_800BCBBC
/* 0B9B04 800BCB04 5460E8FF */  srwi.     r0, r3, 3
/* 0B9B08 800BCB08 7C0903A6 */  mtctr     r0
/* 0B9B0C 800BCB0C 41820094 */  beq       lbl_800BCBA0
lbl_800BCB10:
/* 0B9B10 800BCB10 A0A40000 */  lhz       r5, 0x0(r4)
/* 0B9B14 800BCB14 7CA028F8 */  nor       r0, r5, r5
/* 0B9B18 800BCB18 7CC62A14 */  add       r6, r6, r5
/* 0B9B1C 800BCB1C A0A40002 */  lhz       r5, 0x2(r4)
/* 0B9B20 800BCB20 7CE70214 */  add       r7, r7, r0
/* 0B9B24 800BCB24 7CA028F8 */  nor       r0, r5, r5
/* 0B9B28 800BCB28 7CC62A14 */  add       r6, r6, r5
/* 0B9B2C 800BCB2C A0A40004 */  lhz       r5, 0x4(r4)
/* 0B9B30 800BCB30 7CE70214 */  add       r7, r7, r0
/* 0B9B34 800BCB34 7CA028F8 */  nor       r0, r5, r5
/* 0B9B38 800BCB38 7CC62A14 */  add       r6, r6, r5
/* 0B9B3C 800BCB3C A0A40006 */  lhz       r5, 0x6(r4)
/* 0B9B40 800BCB40 7CE70214 */  add       r7, r7, r0
/* 0B9B44 800BCB44 7CA028F8 */  nor       r0, r5, r5
/* 0B9B48 800BCB48 7CC62A14 */  add       r6, r6, r5
/* 0B9B4C 800BCB4C A0A40008 */  lhz       r5, 0x8(r4)
/* 0B9B50 800BCB50 7CE70214 */  add       r7, r7, r0
/* 0B9B54 800BCB54 7CA028F8 */  nor       r0, r5, r5
/* 0B9B58 800BCB58 7CC62A14 */  add       r6, r6, r5
/* 0B9B5C 800BCB5C A0A4000A */  lhz       r5, 0xa(r4)
/* 0B9B60 800BCB60 7CE70214 */  add       r7, r7, r0
/* 0B9B64 800BCB64 7CA028F8 */  nor       r0, r5, r5
/* 0B9B68 800BCB68 7CC62A14 */  add       r6, r6, r5
/* 0B9B6C 800BCB6C A0A4000C */  lhz       r5, 0xc(r4)
/* 0B9B70 800BCB70 7CE70214 */  add       r7, r7, r0
/* 0B9B74 800BCB74 7CA028F8 */  nor       r0, r5, r5
/* 0B9B78 800BCB78 7CC62A14 */  add       r6, r6, r5
/* 0B9B7C 800BCB7C A0A4000E */  lhz       r5, 0xe(r4)
/* 0B9B80 800BCB80 7CE70214 */  add       r7, r7, r0
/* 0B9B84 800BCB84 7CA028F8 */  nor       r0, r5, r5
/* 0B9B88 800BCB88 7CC62A14 */  add       r6, r6, r5
/* 0B9B8C 800BCB8C 7CE70214 */  add       r7, r7, r0
/* 0B9B90 800BCB90 38840010 */  addi      r4, r4, 0x10
/* 0B9B94 800BCB94 4200FF7C */  bdnz      lbl_800BCB10
/* 0B9B98 800BCB98 70630007 */  andi.     r3, r3, 0x7
/* 0B9B9C 800BCB9C 41820020 */  beq       lbl_800BCBBC
lbl_800BCBA0:
/* 0B9BA0 800BCBA0 7C6903A6 */  mtctr     r3
lbl_800BCBA4:
/* 0B9BA4 800BCBA4 A0A40000 */  lhz       r5, 0x0(r4)
/* 0B9BA8 800BCBA8 38840002 */  addi      r4, r4, 0x2
/* 0B9BAC 800BCBAC 7CA028F8 */  nor       r0, r5, r5
/* 0B9BB0 800BCBB0 7CC62A14 */  add       r6, r6, r5
/* 0B9BB4 800BCBB4 7CE70214 */  add       r7, r7, r0
/* 0B9BB8 800BCBB8 4200FFEC */  bdnz      lbl_800BCBA4
lbl_800BCBBC:
/* 0B9BBC 800BCBBC 54C0043E */  clrlwi    r0, r6, 16
/* 0B9BC0 800BCBC0 2800FFFF */  cmplwi    r0, 0xffff
/* 0B9BC4 800BCBC4 40820008 */  bne       lbl_800BCBCC
/* 0B9BC8 800BCBC8 38C00000 */  li        r6, 0x0
lbl_800BCBCC:
/* 0B9BCC 800BCBCC 54E0043E */  clrlwi    r0, r7, 16
/* 0B9BD0 800BCBD0 2800FFFF */  cmplwi    r0, 0xffff
/* 0B9BD4 800BCBD4 40820008 */  bne       lbl_800BCBDC
/* 0B9BD8 800BCBD8 38E00000 */  li        r7, 0x0
lbl_800BCBDC:
/* 0B9BDC 800BCBDC A07B01FC */  lhz       r3, 0x1fc(r27)
/* 0B9BE0 800BCBE0 54C0043E */  clrlwi    r0, r6, 16
/* 0B9BE4 800BCBE4 7C030040 */  cmplw     r3, r0
/* 0B9BE8 800BCBE8 40820014 */  bne       lbl_800BCBFC
/* 0B9BEC 800BCBEC A07B01FE */  lhz       r3, 0x1fe(r27)
/* 0B9BF0 800BCBF0 54E0043E */  clrlwi    r0, r7, 16
/* 0B9BF4 800BCBF4 7C030040 */  cmplw     r3, r0
/* 0B9BF8 800BCBF8 4182000C */  beq       lbl_800BCC04
lbl_800BCBFC:
/* 0B9BFC 800BCBFC 3860FFFA */  li        r3, -0x6
/* 0B9C00 800BCC00 48000114 */  b         lbl_800BCD14
lbl_800BCC04:
/* 0B9C04 800BCC04 83FB000C */  lwz       r31, 0xc(r27)
/* 0B9C08 800BCC08 839B0010 */  lwz       r28, 0x10(r27)
/* 0B9C0C 800BCC0C 4BFE3071 */  bl        __OSLockSramEx
/* 0B9C10 800BCC10 3C808019 */  lis       r4, D_80188A70@ha
/* 0B9C14 800BCC14 38048A70 */  addi      r0, r4, D_80188A70@l
/* 0B9C18 800BCC18 3C807878 */  lis       r4, 0x7878
/* 0B9C1C 800BCC1C 7C00D050 */  subf      r0, r0, r26
/* 0B9C20 800BCC20 38847879 */  addi      r4, r4, 0x7879
/* 0B9C24 800BCC24 7C040096 */  mulhw     r0, r4, r0
/* 0B9C28 800BCC28 7C003E70 */  srawi     r0, r0, 7
/* 0B9C2C 800BCC2C 54040FFE */  srwi      r4, r0, 31
/* 0B9C30 800BCC30 7C002214 */  add       r0, r0, r4
/* 0B9C34 800BCC34 1C00000C */  mulli     r0, r0, 0xc
/* 0B9C38 800BCC38 3C8041C6 */  lis       r4, 0x41c6
/* 0B9C3C 800BCC3C 3B3B0000 */  addi      r25, r27, 0x0
/* 0B9C40 800BCC40 7FA30214 */  add       r29, r3, r0
/* 0B9C44 800BCC44 3BC44E6D */  addi      r30, r4, 0x4e6d
/* 0B9C48 800BCC48 3B400000 */  li        r26, 0x0
lbl_800BCC4C:
/* 0B9C4C 800BCC4C 7CBFF1D6 */  mullw     r5, r31, r30
/* 0B9C50 800BCC50 7C7CF016 */  mulhwu    r3, r28, r30
/* 0B9C54 800BCC54 3BE00000 */  li        r31, 0x0
/* 0B9C58 800BCC58 7CA51A14 */  add       r5, r5, r3
/* 0B9C5C 800BCC5C 7C7CF9D6 */  mullw     r3, r28, r31
/* 0B9C60 800BCC60 7C1CF1D6 */  mullw     r0, r28, r30
/* 0B9C64 800BCC64 3B803039 */  li        r28, 0x3039
/* 0B9C68 800BCC68 7C80E014 */  addc      r4, r0, r28
/* 0B9C6C 800BCC6C 7C051A14 */  add       r0, r5, r3
/* 0B9C70 800BCC70 7C60F914 */  adde      r3, r0, r31
/* 0B9C74 800BCC74 38A00010 */  li        r5, 0x10
/* 0B9C78 800BCC78 4800FCED */  bl        __shr2i
/* 0B9C7C 800BCC7C 881D0000 */  lbz       r0, 0x0(r29)
/* 0B9C80 800BCC80 88D90000 */  lbz       r6, 0x0(r25)
/* 0B9C84 800BCC84 7C040014 */  addc      r0, r4, r0
/* 0B9C88 800BCC88 5400063E */  clrlwi    r0, r0, 24
/* 0B9C8C 800BCC8C 7C060040 */  cmplw     r6, r0
/* 0B9C90 800BCC90 41820014 */  beq       lbl_800BCCA4
/* 0B9C94 800BCC94 38600000 */  li        r3, 0x0
/* 0B9C98 800BCC98 4BFE336D */  bl        __OSUnlockSramEx
/* 0B9C9C 800BCC9C 3860FFFA */  li        r3, -0x6
/* 0B9CA0 800BCCA0 48000074 */  b         lbl_800BCD14
lbl_800BCCA4:
/* 0B9CA4 800BCCA4 7CA3F1D6 */  mullw     r5, r3, r30
/* 0B9CA8 800BCCA8 7C64F016 */  mulhwu    r3, r4, r30
/* 0B9CAC 800BCCAC 7CA51A14 */  add       r5, r5, r3
/* 0B9CB0 800BCCB0 7C64F9D6 */  mullw     r3, r4, r31
/* 0B9CB4 800BCCB4 7C04F1D6 */  mullw     r0, r4, r30
/* 0B9CB8 800BCCB8 7C80E014 */  addc      r4, r0, r28
/* 0B9CBC 800BCCBC 7C051A14 */  add       r0, r5, r3
/* 0B9CC0 800BCCC0 7C60F914 */  adde      r3, r0, r31
/* 0B9CC4 800BCCC4 38A00010 */  li        r5, 0x10
/* 0B9CC8 800BCCC8 4800FC9D */  bl        __shr2i
/* 0B9CCC 800BCCCC 3B5A0001 */  addi      r26, r26, 0x1
/* 0B9CD0 800BCCD0 2C1A000C */  cmpwi     r26, 0xc
/* 0B9CD4 800BCCD4 38007FFF */  li        r0, 0x7fff
/* 0B9CD8 800BCCD8 7C9C0038 */  and       r28, r4, r0
/* 0B9CDC 800BCCDC 7C7FF838 */  and       r31, r3, r31
/* 0B9CE0 800BCCE0 3BBD0001 */  addi      r29, r29, 0x1
/* 0B9CE4 800BCCE4 3B390001 */  addi      r25, r25, 0x1
/* 0B9CE8 800BCCE8 4180FF64 */  blt       lbl_800BCC4C
/* 0B9CEC 800BCCEC 38600000 */  li        r3, 0x0
/* 0B9CF0 800BCCF0 4BFE3315 */  bl        __OSUnlockSramEx
/* 0B9CF4 800BCCF4 4BFFDCDD */  bl        __CARDGetFontEncode
/* 0B9CF8 800BCCF8 A01B0024 */  lhz       r0, 0x24(r27)
/* 0B9CFC 800BCCFC 5463043E */  clrlwi    r3, r3, 16
/* 0B9D00 800BCD00 7C001840 */  cmplw     r0, r3
/* 0B9D04 800BCD04 4182000C */  beq       lbl_800BCD10
/* 0B9D08 800BCD08 3860FFF3 */  li        r3, -0xd
/* 0B9D0C 800BCD0C 48000008 */  b         lbl_800BCD14
lbl_800BCD10:
/* 0B9D10 800BCD10 38600000 */  li        r3, 0x0
lbl_800BCD14:
/* 0B9D14 800BCD14 BB210014 */  lmw       r25, 0x14(r1)
/* 0B9D18 800BCD18 80010034 */  lwz       r0, 0x34(r1)
/* 0B9D1C 800BCD1C 38210030 */  addi      r1, r1, 0x30
/* 0B9D20 800BCD20 7C0803A6 */  mtlr      r0
/* 0B9D24 800BCD24 4E800020 */  blr

glabel VerifyDir
/* 0B9D28 800BCD28 7C0802A6 */  mflr      r0
/* 0B9D2C 800BCD2C 90010004 */  stw       r0, 0x4(r1)
/* 0B9D30 800BCD30 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0B9D34 800BCD34 93E10034 */  stw       r31, 0x34(r1)
/* 0B9D38 800BCD38 38E1001C */  addi      r7, r1, 0x1c
/* 0B9D3C 800BCD3C 39010014 */  addi      r8, r1, 0x14
/* 0B9D40 800BCD40 93C10030 */  stw       r30, 0x30(r1)
/* 0B9D44 800BCD44 3BE00000 */  li        r31, 0x0
/* 0B9D48 800BCD48 3BC00000 */  li        r30, 0x0
/* 0B9D4C 800BCD4C 93A1002C */  stw       r29, 0x2c(r1)
/* 0B9D50 800BCD50 3BA40000 */  addi      r29, r4, 0x0
/* 0B9D54 800BCD54 38800000 */  li        r4, 0x0
lbl_800BCD58:
/* 0B9D58 800BCD58 38040001 */  addi      r0, r4, 0x1
/* 0B9D5C 800BCD5C 80A30080 */  lwz       r5, 0x80(r3)
/* 0B9D60 800BCD60 54006824 */  slwi      r0, r0, 13
/* 0B9D64 800BCD64 7C050214 */  add       r0, r5, r0
/* 0B9D68 800BCD68 90070000 */  stw       r0, 0x0(r7)
/* 0B9D6C 800BCD6C 38C01FFC */  li        r6, 0x1ffc
/* 0B9D70 800BCD70 7CC60E70 */  srawi     r6, r6, 1
/* 0B9D74 800BCD74 80A70000 */  lwz       r5, 0x0(r7)
/* 0B9D78 800BCD78 7CC60195 */  addze.    r6, r6
/* 0B9D7C 800BCD7C 39600000 */  li        r11, 0x0
/* 0B9D80 800BCD80 38051FC0 */  addi      r0, r5, 0x1fc0
/* 0B9D84 800BCD84 90080000 */  stw       r0, 0x0(r8)
/* 0B9D88 800BCD88 39400000 */  li        r10, 0x0
/* 0B9D8C 800BCD8C 80A70000 */  lwz       r5, 0x0(r7)
/* 0B9D90 800BCD90 408100BC */  ble       lbl_800BCE4C
/* 0B9D94 800BCD94 54C0E8FF */  srwi.     r0, r6, 3
/* 0B9D98 800BCD98 7C0903A6 */  mtctr     r0
/* 0B9D9C 800BCD9C 41820094 */  beq       lbl_800BCE30
lbl_800BCDA0:
/* 0B9DA0 800BCDA0 A1250000 */  lhz       r9, 0x0(r5)
/* 0B9DA4 800BCDA4 7D2048F8 */  nor       r0, r9, r9
/* 0B9DA8 800BCDA8 7D4A4A14 */  add       r10, r10, r9
/* 0B9DAC 800BCDAC A1250002 */  lhz       r9, 0x2(r5)
/* 0B9DB0 800BCDB0 7D6B0214 */  add       r11, r11, r0
/* 0B9DB4 800BCDB4 7D2048F8 */  nor       r0, r9, r9
/* 0B9DB8 800BCDB8 7D4A4A14 */  add       r10, r10, r9
/* 0B9DBC 800BCDBC A1250004 */  lhz       r9, 0x4(r5)
/* 0B9DC0 800BCDC0 7D6B0214 */  add       r11, r11, r0
/* 0B9DC4 800BCDC4 7D2048F8 */  nor       r0, r9, r9
/* 0B9DC8 800BCDC8 7D4A4A14 */  add       r10, r10, r9
/* 0B9DCC 800BCDCC A1250006 */  lhz       r9, 0x6(r5)
/* 0B9DD0 800BCDD0 7D6B0214 */  add       r11, r11, r0
/* 0B9DD4 800BCDD4 7D2048F8 */  nor       r0, r9, r9
/* 0B9DD8 800BCDD8 7D4A4A14 */  add       r10, r10, r9
/* 0B9DDC 800BCDDC A1250008 */  lhz       r9, 0x8(r5)
/* 0B9DE0 800BCDE0 7D6B0214 */  add       r11, r11, r0
/* 0B9DE4 800BCDE4 7D2048F8 */  nor       r0, r9, r9
/* 0B9DE8 800BCDE8 7D4A4A14 */  add       r10, r10, r9
/* 0B9DEC 800BCDEC A125000A */  lhz       r9, 0xa(r5)
/* 0B9DF0 800BCDF0 7D6B0214 */  add       r11, r11, r0
/* 0B9DF4 800BCDF4 7D2048F8 */  nor       r0, r9, r9
/* 0B9DF8 800BCDF8 7D4A4A14 */  add       r10, r10, r9
/* 0B9DFC 800BCDFC A125000C */  lhz       r9, 0xc(r5)
/* 0B9E00 800BCE00 7D6B0214 */  add       r11, r11, r0
/* 0B9E04 800BCE04 7D2048F8 */  nor       r0, r9, r9
/* 0B9E08 800BCE08 7D4A4A14 */  add       r10, r10, r9
/* 0B9E0C 800BCE0C A125000E */  lhz       r9, 0xe(r5)
/* 0B9E10 800BCE10 7D6B0214 */  add       r11, r11, r0
/* 0B9E14 800BCE14 7D2048F8 */  nor       r0, r9, r9
/* 0B9E18 800BCE18 7D4A4A14 */  add       r10, r10, r9
/* 0B9E1C 800BCE1C 7D6B0214 */  add       r11, r11, r0
/* 0B9E20 800BCE20 38A50010 */  addi      r5, r5, 0x10
/* 0B9E24 800BCE24 4200FF7C */  bdnz      lbl_800BCDA0
/* 0B9E28 800BCE28 70C60007 */  andi.     r6, r6, 0x7
/* 0B9E2C 800BCE2C 41820020 */  beq       lbl_800BCE4C
lbl_800BCE30:
/* 0B9E30 800BCE30 7CC903A6 */  mtctr     r6
lbl_800BCE34:
/* 0B9E34 800BCE34 A1250000 */  lhz       r9, 0x0(r5)
/* 0B9E38 800BCE38 38A50002 */  addi      r5, r5, 0x2
/* 0B9E3C 800BCE3C 7D2048F8 */  nor       r0, r9, r9
/* 0B9E40 800BCE40 7D4A4A14 */  add       r10, r10, r9
/* 0B9E44 800BCE44 7D6B0214 */  add       r11, r11, r0
/* 0B9E48 800BCE48 4200FFEC */  bdnz      lbl_800BCE34
lbl_800BCE4C:
/* 0B9E4C 800BCE4C 5540043E */  clrlwi    r0, r10, 16
/* 0B9E50 800BCE50 2800FFFF */  cmplwi    r0, 0xffff
/* 0B9E54 800BCE54 40820008 */  bne       lbl_800BCE5C
/* 0B9E58 800BCE58 39400000 */  li        r10, 0x0
lbl_800BCE5C:
/* 0B9E5C 800BCE5C 5560043E */  clrlwi    r0, r11, 16
/* 0B9E60 800BCE60 2800FFFF */  cmplwi    r0, 0xffff
/* 0B9E64 800BCE64 40820008 */  bne       lbl_800BCE6C
/* 0B9E68 800BCE68 39600000 */  li        r11, 0x0
lbl_800BCE6C:
/* 0B9E6C 800BCE6C 80C80000 */  lwz       r6, 0x0(r8)
/* 0B9E70 800BCE70 5545043E */  clrlwi    r5, r10, 16
/* 0B9E74 800BCE74 A006003C */  lhz       r0, 0x3c(r6)
/* 0B9E78 800BCE78 7C050040 */  cmplw     r5, r0
/* 0B9E7C 800BCE7C 40820014 */  bne       lbl_800BCE90
/* 0B9E80 800BCE80 A006003E */  lhz       r0, 0x3e(r6)
/* 0B9E84 800BCE84 5565043E */  clrlwi    r5, r11, 16
/* 0B9E88 800BCE88 7C050040 */  cmplw     r5, r0
/* 0B9E8C 800BCE8C 41820014 */  beq       lbl_800BCEA0
lbl_800BCE90:
/* 0B9E90 800BCE90 38000000 */  li        r0, 0x0
/* 0B9E94 800BCE94 90030084 */  stw       r0, 0x84(r3)
/* 0B9E98 800BCE98 3BC40000 */  addi      r30, r4, 0x0
/* 0B9E9C 800BCE9C 3BFF0001 */  addi      r31, r31, 0x1
lbl_800BCEA0:
/* 0B9EA0 800BCEA0 38840001 */  addi      r4, r4, 0x1
/* 0B9EA4 800BCEA4 2C040002 */  cmpwi     r4, 0x2
/* 0B9EA8 800BCEA8 38E70004 */  addi      r7, r7, 0x4
/* 0B9EAC 800BCEAC 39080004 */  addi      r8, r8, 0x4
/* 0B9EB0 800BCEB0 4180FEA8 */  blt       lbl_800BCD58
/* 0B9EB4 800BCEB4 2C1F0000 */  cmpwi     r31, 0x0
/* 0B9EB8 800BCEB8 40820084 */  bne       lbl_800BCF3C
/* 0B9EBC 800BCEBC 80830084 */  lwz       r4, 0x84(r3)
/* 0B9EC0 800BCEC0 28040000 */  cmplwi    r4, 0x0
/* 0B9EC4 800BCEC4 4082005C */  bne       lbl_800BCF20
/* 0B9EC8 800BCEC8 80A10018 */  lwz       r5, 0x18(r1)
/* 0B9ECC 800BCECC 80810014 */  lwz       r4, 0x14(r1)
/* 0B9ED0 800BCED0 A8A5003A */  lha       r5, 0x3a(r5)
/* 0B9ED4 800BCED4 A804003A */  lha       r0, 0x3a(r4)
/* 0B9ED8 800BCED8 7C050051 */  subf.     r0, r5, r0
/* 0B9EDC 800BCEDC 4080000C */  bge       lbl_800BCEE8
/* 0B9EE0 800BCEE0 3BC00000 */  li        r30, 0x0
/* 0B9EE4 800BCEE4 48000008 */  b         lbl_800BCEEC
lbl_800BCEE8:
/* 0B9EE8 800BCEE8 3BC00001 */  li        r30, 0x1
lbl_800BCEEC:
/* 0B9EEC 800BCEEC 57C0103A */  slwi      r0, r30, 2
/* 0B9EF0 800BCEF0 38C1001C */  addi      r6, r1, 0x1c
/* 0B9EF4 800BCEF4 7CC60214 */  add       r6, r6, r0
/* 0B9EF8 800BCEF8 80860000 */  lwz       r4, 0x0(r6)
/* 0B9EFC 800BCEFC 6BC00001 */  xori      r0, r30, 0x1
/* 0B9F00 800BCF00 5400103A */  slwi      r0, r0, 2
/* 0B9F04 800BCF04 90830084 */  stw       r4, 0x84(r3)
/* 0B9F08 800BCF08 3881001C */  addi      r4, r1, 0x1c
/* 0B9F0C 800BCF0C 38A02000 */  li        r5, 0x2000
/* 0B9F10 800BCF10 80660000 */  lwz       r3, 0x0(r6)
/* 0B9F14 800BCF14 7C84002E */  lwzx      r4, r4, r0
/* 0B9F18 800BCF18 4BF484FD */  bl        memcpy
/* 0B9F1C 800BCF1C 48000020 */  b         lbl_800BCF3C
lbl_800BCF20:
/* 0B9F20 800BCF20 8001001C */  lwz       r0, 0x1c(r1)
/* 0B9F24 800BCF24 7C040040 */  cmplw     r4, r0
/* 0B9F28 800BCF28 4082000C */  bne       lbl_800BCF34
/* 0B9F2C 800BCF2C 38000000 */  li        r0, 0x0
/* 0B9F30 800BCF30 48000008 */  b         lbl_800BCF38
lbl_800BCF34:
/* 0B9F34 800BCF34 38000001 */  li        r0, 0x1
lbl_800BCF38:
/* 0B9F38 800BCF38 7C1E0378 */  mr        r30, r0
lbl_800BCF3C:
/* 0B9F3C 800BCF3C 281D0000 */  cmplwi    r29, 0x0
/* 0B9F40 800BCF40 41820008 */  beq       lbl_800BCF48
/* 0B9F44 800BCF44 93DD0000 */  stw       r30, 0x0(r29)
lbl_800BCF48:
/* 0B9F48 800BCF48 7FE3FB78 */  mr        r3, r31
/* 0B9F4C 800BCF4C 8001003C */  lwz       r0, 0x3c(r1)
/* 0B9F50 800BCF50 83E10034 */  lwz       r31, 0x34(r1)
/* 0B9F54 800BCF54 83C10030 */  lwz       r30, 0x30(r1)
/* 0B9F58 800BCF58 83A1002C */  lwz       r29, 0x2c(r1)
/* 0B9F5C 800BCF5C 38210038 */  addi      r1, r1, 0x38
/* 0B9F60 800BCF60 7C0803A6 */  mtlr      r0
/* 0B9F64 800BCF64 4E800020 */  blr

glabel VerifyFAT
/* 0B9F68 800BCF68 7C0802A6 */  mflr      r0
/* 0B9F6C 800BCF6C 38A00000 */  li        r5, 0x0
/* 0B9F70 800BCF70 90010004 */  stw       r0, 0x4(r1)
/* 0B9F74 800BCF74 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B9F78 800BCF78 93E10024 */  stw       r31, 0x24(r1)
/* 0B9F7C 800BCF7C 3BE00000 */  li        r31, 0x0
/* 0B9F80 800BCF80 93C10020 */  stw       r30, 0x20(r1)
/* 0B9F84 800BCF84 3BC00000 */  li        r30, 0x0
/* 0B9F88 800BCF88 93A1001C */  stw       r29, 0x1c(r1)
/* 0B9F8C 800BCF8C 3BA40000 */  addi      r29, r4, 0x0
/* 0B9F90 800BCF90 38810010 */  addi      r4, r1, 0x10
lbl_800BCF94:
/* 0B9F94 800BCF94 39001FFC */  li        r8, 0x1ffc
/* 0B9F98 800BCF98 80C30080 */  lwz       r6, 0x80(r3)
/* 0B9F9C 800BCF9C 38050003 */  addi      r0, r5, 0x3
/* 0B9FA0 800BCFA0 7D080E70 */  srawi     r8, r8, 1
/* 0B9FA4 800BCFA4 54006824 */  slwi      r0, r0, 13
/* 0B9FA8 800BCFA8 7CE60214 */  add       r7, r6, r0
/* 0B9FAC 800BCFAC 7D080195 */  addze.    r8, r8
/* 0B9FB0 800BCFB0 90E40000 */  stw       r7, 0x0(r4)
/* 0B9FB4 800BCFB4 38C70004 */  addi      r6, r7, 0x4
/* 0B9FB8 800BCFB8 39600000 */  li        r11, 0x0
/* 0B9FBC 800BCFBC 39400000 */  li        r10, 0x0
/* 0B9FC0 800BCFC0 408100BC */  ble       lbl_800BD07C
/* 0B9FC4 800BCFC4 5500E8FF */  srwi.     r0, r8, 3
/* 0B9FC8 800BCFC8 7C0903A6 */  mtctr     r0
/* 0B9FCC 800BCFCC 41820094 */  beq       lbl_800BD060
lbl_800BCFD0:
/* 0B9FD0 800BCFD0 A1260000 */  lhz       r9, 0x0(r6)
/* 0B9FD4 800BCFD4 7D2048F8 */  nor       r0, r9, r9
/* 0B9FD8 800BCFD8 7D4A4A14 */  add       r10, r10, r9
/* 0B9FDC 800BCFDC A1260002 */  lhz       r9, 0x2(r6)
/* 0B9FE0 800BCFE0 7D6B0214 */  add       r11, r11, r0
/* 0B9FE4 800BCFE4 7D2048F8 */  nor       r0, r9, r9
/* 0B9FE8 800BCFE8 7D4A4A14 */  add       r10, r10, r9
/* 0B9FEC 800BCFEC A1260004 */  lhz       r9, 0x4(r6)
/* 0B9FF0 800BCFF0 7D6B0214 */  add       r11, r11, r0
/* 0B9FF4 800BCFF4 7D2048F8 */  nor       r0, r9, r9
/* 0B9FF8 800BCFF8 7D4A4A14 */  add       r10, r10, r9
/* 0B9FFC 800BCFFC A1260006 */  lhz       r9, 0x6(r6)
/* 0BA000 800BD000 7D6B0214 */  add       r11, r11, r0
/* 0BA004 800BD004 7D2048F8 */  nor       r0, r9, r9
/* 0BA008 800BD008 7D4A4A14 */  add       r10, r10, r9
/* 0BA00C 800BD00C A1260008 */  lhz       r9, 0x8(r6)
/* 0BA010 800BD010 7D6B0214 */  add       r11, r11, r0
/* 0BA014 800BD014 7D2048F8 */  nor       r0, r9, r9
/* 0BA018 800BD018 7D4A4A14 */  add       r10, r10, r9
/* 0BA01C 800BD01C A126000A */  lhz       r9, 0xa(r6)
/* 0BA020 800BD020 7D6B0214 */  add       r11, r11, r0
/* 0BA024 800BD024 7D2048F8 */  nor       r0, r9, r9
/* 0BA028 800BD028 7D4A4A14 */  add       r10, r10, r9
/* 0BA02C 800BD02C A126000C */  lhz       r9, 0xc(r6)
/* 0BA030 800BD030 7D6B0214 */  add       r11, r11, r0
/* 0BA034 800BD034 7D2048F8 */  nor       r0, r9, r9
/* 0BA038 800BD038 7D4A4A14 */  add       r10, r10, r9
/* 0BA03C 800BD03C A126000E */  lhz       r9, 0xe(r6)
/* 0BA040 800BD040 7D6B0214 */  add       r11, r11, r0
/* 0BA044 800BD044 7D2048F8 */  nor       r0, r9, r9
/* 0BA048 800BD048 7D4A4A14 */  add       r10, r10, r9
/* 0BA04C 800BD04C 7D6B0214 */  add       r11, r11, r0
/* 0BA050 800BD050 38C60010 */  addi      r6, r6, 0x10
/* 0BA054 800BD054 4200FF7C */  bdnz      lbl_800BCFD0
/* 0BA058 800BD058 71080007 */  andi.     r8, r8, 0x7
/* 0BA05C 800BD05C 41820020 */  beq       lbl_800BD07C
lbl_800BD060:
/* 0BA060 800BD060 7D0903A6 */  mtctr     r8
lbl_800BD064:
/* 0BA064 800BD064 A1260000 */  lhz       r9, 0x0(r6)
/* 0BA068 800BD068 38C60002 */  addi      r6, r6, 0x2
/* 0BA06C 800BD06C 7D2048F8 */  nor       r0, r9, r9
/* 0BA070 800BD070 7D4A4A14 */  add       r10, r10, r9
/* 0BA074 800BD074 7D6B0214 */  add       r11, r11, r0
/* 0BA078 800BD078 4200FFEC */  bdnz      lbl_800BD064
lbl_800BD07C:
/* 0BA07C 800BD07C 5540043E */  clrlwi    r0, r10, 16
/* 0BA080 800BD080 2800FFFF */  cmplwi    r0, 0xffff
/* 0BA084 800BD084 40820008 */  bne       lbl_800BD08C
/* 0BA088 800BD088 39400000 */  li        r10, 0x0
lbl_800BD08C:
/* 0BA08C 800BD08C 5560043E */  clrlwi    r0, r11, 16
/* 0BA090 800BD090 2800FFFF */  cmplwi    r0, 0xffff
/* 0BA094 800BD094 40820008 */  bne       lbl_800BD09C
/* 0BA098 800BD098 39600000 */  li        r11, 0x0
lbl_800BD09C:
/* 0BA09C 800BD09C A0C70000 */  lhz       r6, 0x0(r7)
/* 0BA0A0 800BD0A0 5540043E */  clrlwi    r0, r10, 16
/* 0BA0A4 800BD0A4 7C060040 */  cmplw     r6, r0
/* 0BA0A8 800BD0A8 40820014 */  bne       lbl_800BD0BC
/* 0BA0AC 800BD0AC A0C70002 */  lhz       r6, 0x2(r7)
/* 0BA0B0 800BD0B0 5560043E */  clrlwi    r0, r11, 16
/* 0BA0B4 800BD0B4 7C060040 */  cmplw     r6, r0
/* 0BA0B8 800BD0B8 41820018 */  beq       lbl_800BD0D0
lbl_800BD0BC:
/* 0BA0BC 800BD0BC 38000000 */  li        r0, 0x0
/* 0BA0C0 800BD0C0 90030088 */  stw       r0, 0x88(r3)
/* 0BA0C4 800BD0C4 3BC50000 */  addi      r30, r5, 0x0
/* 0BA0C8 800BD0C8 3BFF0001 */  addi      r31, r31, 0x1
/* 0BA0CC 800BD0CC 4800005C */  b         lbl_800BD128
lbl_800BD0D0:
/* 0BA0D0 800BD0D0 A1030010 */  lhz       r8, 0x10(r3)
/* 0BA0D4 800BD0D4 38C7000A */  addi      r6, r7, 0xa
/* 0BA0D8 800BD0D8 39400000 */  li        r10, 0x0
/* 0BA0DC 800BD0DC 39200005 */  li        r9, 0x5
/* 0BA0E0 800BD0E0 4800001C */  b         lbl_800BD0FC
lbl_800BD0E4:
/* 0BA0E4 800BD0E4 A0060000 */  lhz       r0, 0x0(r6)
/* 0BA0E8 800BD0E8 28000000 */  cmplwi    r0, 0x0
/* 0BA0EC 800BD0EC 40820008 */  bne       lbl_800BD0F4
/* 0BA0F0 800BD0F0 394A0001 */  addi      r10, r10, 0x1
lbl_800BD0F4:
/* 0BA0F4 800BD0F4 38C60002 */  addi      r6, r6, 0x2
/* 0BA0F8 800BD0F8 39290001 */  addi      r9, r9, 0x1
lbl_800BD0FC:
/* 0BA0FC 800BD0FC 5520043E */  clrlwi    r0, r9, 16
/* 0BA100 800BD100 7C004040 */  cmplw     r0, r8
/* 0BA104 800BD104 4180FFE0 */  blt       lbl_800BD0E4
/* 0BA108 800BD108 A0070006 */  lhz       r0, 0x6(r7)
/* 0BA10C 800BD10C 5546043E */  clrlwi    r6, r10, 16
/* 0BA110 800BD110 7C060040 */  cmplw     r6, r0
/* 0BA114 800BD114 41820014 */  beq       lbl_800BD128
/* 0BA118 800BD118 38000000 */  li        r0, 0x0
/* 0BA11C 800BD11C 90030088 */  stw       r0, 0x88(r3)
/* 0BA120 800BD120 3BC50000 */  addi      r30, r5, 0x0
/* 0BA124 800BD124 3BFF0001 */  addi      r31, r31, 0x1
lbl_800BD128:
/* 0BA128 800BD128 38A50001 */  addi      r5, r5, 0x1
/* 0BA12C 800BD12C 2C050002 */  cmpwi     r5, 0x2
/* 0BA130 800BD130 38840004 */  addi      r4, r4, 0x4
/* 0BA134 800BD134 4180FE60 */  blt       lbl_800BCF94
/* 0BA138 800BD138 2C1F0000 */  cmpwi     r31, 0x0
/* 0BA13C 800BD13C 40820084 */  bne       lbl_800BD1C0
/* 0BA140 800BD140 80830088 */  lwz       r4, 0x88(r3)
/* 0BA144 800BD144 28040000 */  cmplwi    r4, 0x0
/* 0BA148 800BD148 4082005C */  bne       lbl_800BD1A4
/* 0BA14C 800BD14C 80A10014 */  lwz       r5, 0x14(r1)
/* 0BA150 800BD150 80810010 */  lwz       r4, 0x10(r1)
/* 0BA154 800BD154 A8A50004 */  lha       r5, 0x4(r5)
/* 0BA158 800BD158 A8040004 */  lha       r0, 0x4(r4)
/* 0BA15C 800BD15C 7C050051 */  subf.     r0, r5, r0
/* 0BA160 800BD160 4080000C */  bge       lbl_800BD16C
/* 0BA164 800BD164 3BC00000 */  li        r30, 0x0
/* 0BA168 800BD168 48000008 */  b         lbl_800BD170
lbl_800BD16C:
/* 0BA16C 800BD16C 3BC00001 */  li        r30, 0x1
lbl_800BD170:
/* 0BA170 800BD170 57C0103A */  slwi      r0, r30, 2
/* 0BA174 800BD174 38C10010 */  addi      r6, r1, 0x10
/* 0BA178 800BD178 7CC60214 */  add       r6, r6, r0
/* 0BA17C 800BD17C 80860000 */  lwz       r4, 0x0(r6)
/* 0BA180 800BD180 6BC00001 */  xori      r0, r30, 0x1
/* 0BA184 800BD184 5400103A */  slwi      r0, r0, 2
/* 0BA188 800BD188 90830088 */  stw       r4, 0x88(r3)
/* 0BA18C 800BD18C 38810010 */  addi      r4, r1, 0x10
/* 0BA190 800BD190 38A02000 */  li        r5, 0x2000
/* 0BA194 800BD194 80660000 */  lwz       r3, 0x0(r6)
/* 0BA198 800BD198 7C84002E */  lwzx      r4, r4, r0
/* 0BA19C 800BD19C 4BF48279 */  bl        memcpy
/* 0BA1A0 800BD1A0 48000020 */  b         lbl_800BD1C0
lbl_800BD1A4:
/* 0BA1A4 800BD1A4 80010010 */  lwz       r0, 0x10(r1)
/* 0BA1A8 800BD1A8 7C040040 */  cmplw     r4, r0
/* 0BA1AC 800BD1AC 4082000C */  bne       lbl_800BD1B8
/* 0BA1B0 800BD1B0 38000000 */  li        r0, 0x0
/* 0BA1B4 800BD1B4 48000008 */  b         lbl_800BD1BC
lbl_800BD1B8:
/* 0BA1B8 800BD1B8 38000001 */  li        r0, 0x1
lbl_800BD1BC:
/* 0BA1BC 800BD1BC 7C1E0378 */  mr        r30, r0
lbl_800BD1C0:
/* 0BA1C0 800BD1C0 281D0000 */  cmplwi    r29, 0x0
/* 0BA1C4 800BD1C4 41820008 */  beq       lbl_800BD1CC
/* 0BA1C8 800BD1C8 93DD0000 */  stw       r30, 0x0(r29)
lbl_800BD1CC:
/* 0BA1CC 800BD1CC 7FE3FB78 */  mr        r3, r31
/* 0BA1D0 800BD1D0 8001002C */  lwz       r0, 0x2c(r1)
/* 0BA1D4 800BD1D4 83E10024 */  lwz       r31, 0x24(r1)
/* 0BA1D8 800BD1D8 83C10020 */  lwz       r30, 0x20(r1)
/* 0BA1DC 800BD1DC 83A1001C */  lwz       r29, 0x1c(r1)
/* 0BA1E0 800BD1E0 38210028 */  addi      r1, r1, 0x28
/* 0BA1E4 800BD1E4 7C0803A6 */  mtlr      r0
/* 0BA1E8 800BD1E8 4E800020 */  blr

glabel __CARDVerify
/* 0BA1EC 800BD1EC 7C0802A6 */  mflr      r0
/* 0BA1F0 800BD1F0 90010004 */  stw       r0, 0x4(r1)
/* 0BA1F4 800BD1F4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0BA1F8 800BD1F8 93E10014 */  stw       r31, 0x14(r1)
/* 0BA1FC 800BD1FC 93C10010 */  stw       r30, 0x10(r1)
/* 0BA200 800BD200 7C7E1B78 */  mr        r30, r3
/* 0BA204 800BD204 4BFFF8A1 */  bl        VerifyID
/* 0BA208 800BD208 2C030000 */  cmpwi     r3, 0x0
/* 0BA20C 800BD20C 40800008 */  bge       lbl_800BD214
/* 0BA210 800BD210 48000050 */  b         lbl_800BD260
lbl_800BD214:
/* 0BA214 800BD214 387E0000 */  addi      r3, r30, 0x0
/* 0BA218 800BD218 38800000 */  li        r4, 0x0
/* 0BA21C 800BD21C 4BFFFB0D */  bl        VerifyDir
/* 0BA220 800BD220 3BE30000 */  addi      r31, r3, 0x0
/* 0BA224 800BD224 387E0000 */  addi      r3, r30, 0x0
/* 0BA228 800BD228 38800000 */  li        r4, 0x0
/* 0BA22C 800BD22C 4BFFFD3D */  bl        VerifyFAT
/* 0BA230 800BD230 7C1F1A14 */  add       r0, r31, r3
/* 0BA234 800BD234 2C000001 */  cmpwi     r0, 0x1
/* 0BA238 800BD238 4182001C */  beq       lbl_800BD254
/* 0BA23C 800BD23C 40800020 */  bge       lbl_800BD25C
/* 0BA240 800BD240 2C000000 */  cmpwi     r0, 0x0
/* 0BA244 800BD244 40800008 */  bge       lbl_800BD24C
/* 0BA248 800BD248 48000014 */  b         lbl_800BD25C
lbl_800BD24C:
/* 0BA24C 800BD24C 38600000 */  li        r3, 0x0
/* 0BA250 800BD250 48000010 */  b         lbl_800BD260
lbl_800BD254:
/* 0BA254 800BD254 3860FFFA */  li        r3, -0x6
/* 0BA258 800BD258 48000008 */  b         lbl_800BD260
lbl_800BD25C:
/* 0BA25C 800BD25C 3860FFFA */  li        r3, -0x6
lbl_800BD260:
/* 0BA260 800BD260 8001001C */  lwz       r0, 0x1c(r1)
/* 0BA264 800BD264 83E10014 */  lwz       r31, 0x14(r1)
/* 0BA268 800BD268 83C10010 */  lwz       r30, 0x10(r1)
/* 0BA26C 800BD26C 38210018 */  addi      r1, r1, 0x18
/* 0BA270 800BD270 7C0803A6 */  mtlr      r0
/* 0BA274 800BD274 4E800020 */  blr

glabel CARDCheckExAsync
/* 0BA278 800BD278 7C0802A6 */  mflr      r0
/* 0BA27C 800BD27C 90010004 */  stw       r0, 0x4(r1)
/* 0BA280 800BD280 9421FFA8 */  stwu      r1, -0x58(r1)
/* 0BA284 800BD284 BF21003C */  stmw      r25, 0x3c(r1)
/* 0BA288 800BD288 7C9A2379 */  mr.       r26, r4
/* 0BA28C 800BD28C 3B230000 */  addi      r25, r3, 0x0
/* 0BA290 800BD290 3B650000 */  addi      r27, r5, 0x0
/* 0BA294 800BD294 3BC00000 */  li        r30, 0x0
/* 0BA298 800BD298 3BA00000 */  li        r29, 0x0
/* 0BA29C 800BD29C 3B800000 */  li        r28, 0x0
/* 0BA2A0 800BD2A0 4182000C */  beq       lbl_800BD2AC
/* 0BA2A4 800BD2A4 38000000 */  li        r0, 0x0
/* 0BA2A8 800BD2A8 901A0000 */  stw       r0, 0x0(r26)
lbl_800BD2AC:
/* 0BA2AC 800BD2AC 38790000 */  addi      r3, r25, 0x0
/* 0BA2B0 800BD2B0 38810030 */  addi      r4, r1, 0x30
/* 0BA2B4 800BD2B4 4BFFD75D */  bl        __CARDGetControlBlock
/* 0BA2B8 800BD2B8 2C030000 */  cmpwi     r3, 0x0
/* 0BA2BC 800BD2BC 40800008 */  bge       lbl_800BD2C4
/* 0BA2C0 800BD2C0 48000534 */  b         lbl_800BD7F4
lbl_800BD2C4:
/* 0BA2C4 800BD2C4 80610030 */  lwz       r3, 0x30(r1)
/* 0BA2C8 800BD2C8 4BFFF7DD */  bl        VerifyID
/* 0BA2CC 800BD2CC 7C641B79 */  mr.       r4, r3
/* 0BA2D0 800BD2D0 40800010 */  bge       lbl_800BD2E0
/* 0BA2D4 800BD2D4 80610030 */  lwz       r3, 0x30(r1)
/* 0BA2D8 800BD2D8 4BFFD7F1 */  bl        __CARDPutControlBlock
/* 0BA2DC 800BD2DC 48000518 */  b         lbl_800BD7F4
lbl_800BD2E0:
/* 0BA2E0 800BD2E0 80610030 */  lwz       r3, 0x30(r1)
/* 0BA2E4 800BD2E4 38810018 */  addi      r4, r1, 0x18
/* 0BA2E8 800BD2E8 4BFFFA41 */  bl        VerifyDir
/* 0BA2EC 800BD2EC 7C7F1B78 */  mr        r31, r3
/* 0BA2F0 800BD2F0 80610030 */  lwz       r3, 0x30(r1)
/* 0BA2F4 800BD2F4 3881001C */  addi      r4, r1, 0x1c
/* 0BA2F8 800BD2F8 4BFFFC71 */  bl        VerifyFAT
/* 0BA2FC 800BD2FC 7CBF1A14 */  add       r5, r31, r3
/* 0BA300 800BD300 2C050001 */  cmpwi     r5, 0x1
/* 0BA304 800BD304 40810014 */  ble       lbl_800BD318
/* 0BA308 800BD308 80610030 */  lwz       r3, 0x30(r1)
/* 0BA30C 800BD30C 3880FFFA */  li        r4, -0x6
/* 0BA310 800BD310 4BFFD7B9 */  bl        __CARDPutControlBlock
/* 0BA314 800BD314 480004E0 */  b         lbl_800BD7F4
lbl_800BD318:
/* 0BA318 800BD318 80C10030 */  lwz       r6, 0x30(r1)
/* 0BA31C 800BD31C 80860080 */  lwz       r4, 0x80(r6)
/* 0BA320 800BD320 38642000 */  addi      r3, r4, 0x2000
/* 0BA324 800BD324 38046000 */  addi      r0, r4, 0x6000
/* 0BA328 800BD328 90610028 */  stw       r3, 0x28(r1)
/* 0BA32C 800BD32C 3C640001 */  addis     r3, r4, 0x1
/* 0BA330 800BD330 38844000 */  addi      r4, r4, 0x4000
/* 0BA334 800BD334 90010020 */  stw       r0, 0x20(r1)
/* 0BA338 800BD338 38038000 */  addi      r0, r3, -0x8000
/* 0BA33C 800BD33C 9081002C */  stw       r4, 0x2c(r1)
/* 0BA340 800BD340 90010024 */  stw       r0, 0x24(r1)
/* 0BA344 800BD344 4182000C */  beq       lbl_800BD350
/* 0BA348 800BD348 4080008C */  bge       lbl_800BD3D4
/* 0BA34C 800BD34C 48000088 */  b         lbl_800BD3D4
lbl_800BD350:
/* 0BA350 800BD350 38660084 */  addi      r3, r6, 0x84
/* 0BA354 800BD354 80060084 */  lwz       r0, 0x84(r6)
/* 0BA358 800BD358 28000000 */  cmplwi    r0, 0x0
/* 0BA35C 800BD35C 40820040 */  bne       lbl_800BD39C
/* 0BA360 800BD360 80010018 */  lwz       r0, 0x18(r1)
/* 0BA364 800BD364 38810028 */  addi      r4, r1, 0x28
/* 0BA368 800BD368 38A02000 */  li        r5, 0x2000
/* 0BA36C 800BD36C 5400103A */  slwi      r0, r0, 2
/* 0BA370 800BD370 7C04002E */  lwzx      r0, r4, r0
/* 0BA374 800BD374 90030000 */  stw       r0, 0x0(r3)
/* 0BA378 800BD378 80610018 */  lwz       r3, 0x18(r1)
/* 0BA37C 800BD37C 68600001 */  xori      r0, r3, 0x1
/* 0BA380 800BD380 5463103A */  slwi      r3, r3, 2
/* 0BA384 800BD384 5400103A */  slwi      r0, r0, 2
/* 0BA388 800BD388 7C64182E */  lwzx      r3, r4, r3
/* 0BA38C 800BD38C 7C84002E */  lwzx      r4, r4, r0
/* 0BA390 800BD390 4BF48085 */  bl        memcpy
/* 0BA394 800BD394 3BA00001 */  li        r29, 0x1
/* 0BA398 800BD398 4800003C */  b         lbl_800BD3D4
lbl_800BD39C:
/* 0BA39C 800BD39C 8001001C */  lwz       r0, 0x1c(r1)
/* 0BA3A0 800BD3A0 38810020 */  addi      r4, r1, 0x20
/* 0BA3A4 800BD3A4 38A02000 */  li        r5, 0x2000
/* 0BA3A8 800BD3A8 5400103A */  slwi      r0, r0, 2
/* 0BA3AC 800BD3AC 7C04002E */  lwzx      r0, r4, r0
/* 0BA3B0 800BD3B0 90060088 */  stw       r0, 0x88(r6)
/* 0BA3B4 800BD3B4 8061001C */  lwz       r3, 0x1c(r1)
/* 0BA3B8 800BD3B8 68600001 */  xori      r0, r3, 0x1
/* 0BA3BC 800BD3BC 5463103A */  slwi      r3, r3, 2
/* 0BA3C0 800BD3C0 5400103A */  slwi      r0, r0, 2
/* 0BA3C4 800BD3C4 7C64182E */  lwzx      r3, r4, r3
/* 0BA3C8 800BD3C8 7C84002E */  lwzx      r4, r4, r0
/* 0BA3CC 800BD3CC 4BF48049 */  bl        memcpy
/* 0BA3D0 800BD3D0 3BC00001 */  li        r30, 0x1
lbl_800BD3D4:
/* 0BA3D4 800BD3D4 8001001C */  lwz       r0, 0x1c(r1)
/* 0BA3D8 800BD3D8 38610020 */  addi      r3, r1, 0x20
/* 0BA3DC 800BD3DC 38800000 */  li        r4, 0x0
/* 0BA3E0 800BD3E0 68000001 */  xori      r0, r0, 0x1
/* 0BA3E4 800BD3E4 5400103A */  slwi      r0, r0, 2
/* 0BA3E8 800BD3E8 7FE3002E */  lwzx      r31, r3, r0
/* 0BA3EC 800BD3EC 38A02000 */  li        r5, 0x2000
/* 0BA3F0 800BD3F0 387F0000 */  addi      r3, r31, 0x0
/* 0BA3F4 800BD3F4 4BF47F2D */  bl        memset
/* 0BA3F8 800BD3F8 3800007F */  li        r0, 0x7f
/* 0BA3FC 800BD3FC 80A10030 */  lwz       r5, 0x30(r1)
/* 0BA400 800BD400 7C0903A6 */  mtctr     r0
/* 0BA404 800BD404 38C00000 */  li        r6, 0x0
lbl_800BD408:
/* 0BA408 800BD408 80050084 */  lwz       r0, 0x84(r5)
/* 0BA40C 800BD40C 7CE03214 */  add       r7, r0, r6
/* 0BA410 800BD410 88070000 */  lbz       r0, 0x0(r7)
/* 0BA414 800BD414 280000FF */  cmplwi    r0, 0xff
/* 0BA418 800BD418 418200A8 */  beq       lbl_800BD4C0
/* 0BA41C 800BD41C A0870036 */  lhz       r4, 0x36(r7)
/* 0BA420 800BD420 39000000 */  li        r8, 0x0
/* 0BA424 800BD424 48000054 */  b         lbl_800BD478
lbl_800BD428:
/* 0BA428 800BD428 5483043E */  clrlwi    r3, r4, 16
/* 0BA42C 800BD42C 28030005 */  cmplwi    r3, 0x5
/* 0BA430 800BD430 4180002C */  blt       lbl_800BD45C
/* 0BA434 800BD434 A0050010 */  lhz       r0, 0x10(r5)
/* 0BA438 800BD438 7C030040 */  cmplw     r3, r0
/* 0BA43C 800BD43C 40800020 */  bge       lbl_800BD45C
/* 0BA440 800BD440 5464083C */  slwi      r4, r3, 1
/* 0BA444 800BD444 7C7F222E */  lhzx      r3, r31, r4
/* 0BA448 800BD448 38630001 */  addi      r3, r3, 0x1
/* 0BA44C 800BD44C 5460043E */  clrlwi    r0, r3, 16
/* 0BA450 800BD450 7C7F232E */  sthx      r3, r31, r4
/* 0BA454 800BD454 28000001 */  cmplwi    r0, 0x1
/* 0BA458 800BD458 40810014 */  ble       lbl_800BD46C
lbl_800BD45C:
/* 0BA45C 800BD45C 80610030 */  lwz       r3, 0x30(r1)
/* 0BA460 800BD460 3880FFFA */  li        r4, -0x6
/* 0BA464 800BD464 4BFFD665 */  bl        __CARDPutControlBlock
/* 0BA468 800BD468 4800038C */  b         lbl_800BD7F4
lbl_800BD46C:
/* 0BA46C 800BD46C 80650088 */  lwz       r3, 0x88(r5)
/* 0BA470 800BD470 39080001 */  addi      r8, r8, 0x1
/* 0BA474 800BD474 7C83222E */  lhzx      r4, r3, r4
lbl_800BD478:
/* 0BA478 800BD478 5480043E */  clrlwi    r0, r4, 16
/* 0BA47C 800BD47C 2800FFFF */  cmplwi    r0, 0xffff
/* 0BA480 800BD480 41820014 */  beq       lbl_800BD494
/* 0BA484 800BD484 A0070038 */  lhz       r0, 0x38(r7)
/* 0BA488 800BD488 5503043E */  clrlwi    r3, r8, 16
/* 0BA48C 800BD48C 7C030040 */  cmplw     r3, r0
/* 0BA490 800BD490 4180FF98 */  blt       lbl_800BD428
lbl_800BD494:
/* 0BA494 800BD494 A0070038 */  lhz       r0, 0x38(r7)
/* 0BA498 800BD498 5503043E */  clrlwi    r3, r8, 16
/* 0BA49C 800BD49C 7C030040 */  cmplw     r3, r0
/* 0BA4A0 800BD4A0 40820010 */  bne       lbl_800BD4B0
/* 0BA4A4 800BD4A4 5480043E */  clrlwi    r0, r4, 16
/* 0BA4A8 800BD4A8 2800FFFF */  cmplwi    r0, 0xffff
/* 0BA4AC 800BD4AC 41820014 */  beq       lbl_800BD4C0
lbl_800BD4B0:
/* 0BA4B0 800BD4B0 80610030 */  lwz       r3, 0x30(r1)
/* 0BA4B4 800BD4B4 3880FFFA */  li        r4, -0x6
/* 0BA4B8 800BD4B8 4BFFD611 */  bl        __CARDPutControlBlock
/* 0BA4BC 800BD4BC 48000338 */  b         lbl_800BD7F4
lbl_800BD4C0:
/* 0BA4C0 800BD4C0 38C60040 */  addi      r6, r6, 0x40
/* 0BA4C4 800BD4C4 4200FF44 */  bdnz      lbl_800BD408
/* 0BA4C8 800BD4C8 80610030 */  lwz       r3, 0x30(r1)
/* 0BA4CC 800BD4CC 38DF000A */  addi      r6, r31, 0xa
/* 0BA4D0 800BD4D0 39200000 */  li        r9, 0x0
/* 0BA4D4 800BD4D4 39000005 */  li        r8, 0x5
/* 0BA4D8 800BD4D8 38A0000A */  li        r5, 0xa
/* 0BA4DC 800BD4DC 48000068 */  b         lbl_800BD544
lbl_800BD4E0:
/* 0BA4E0 800BD4E0 80830088 */  lwz       r4, 0x88(r3)
/* 0BA4E4 800BD4E4 A0060000 */  lhz       r0, 0x0(r6)
/* 0BA4E8 800BD4E8 7C842A14 */  add       r4, r4, r5
/* 0BA4EC 800BD4EC 28000000 */  cmplwi    r0, 0x0
/* 0BA4F0 800BD4F0 A0040000 */  lhz       r0, 0x0(r4)
/* 0BA4F4 800BD4F4 40820020 */  bne       lbl_800BD514
/* 0BA4F8 800BD4F8 28000000 */  cmplwi    r0, 0x0
/* 0BA4FC 800BD4FC 41820010 */  beq       lbl_800BD50C
/* 0BA500 800BD500 38000000 */  li        r0, 0x0
/* 0BA504 800BD504 B0040000 */  sth       r0, 0x0(r4)
/* 0BA508 800BD508 3B800001 */  li        r28, 0x1
lbl_800BD50C:
/* 0BA50C 800BD50C 39290001 */  addi      r9, r9, 0x1
/* 0BA510 800BD510 48000028 */  b         lbl_800BD538
lbl_800BD514:
/* 0BA514 800BD514 28000005 */  cmplwi    r0, 0x5
/* 0BA518 800BD518 4180000C */  blt       lbl_800BD524
/* 0BA51C 800BD51C 7C003840 */  cmplw     r0, r7
/* 0BA520 800BD520 41800018 */  blt       lbl_800BD538
lbl_800BD524:
/* 0BA524 800BD524 2800FFFF */  cmplwi    r0, 0xffff
/* 0BA528 800BD528 41820010 */  beq       lbl_800BD538
/* 0BA52C 800BD52C 3880FFFA */  li        r4, -0x6
/* 0BA530 800BD530 4BFFD599 */  bl        __CARDPutControlBlock
/* 0BA534 800BD534 480002C0 */  b         lbl_800BD7F4
lbl_800BD538:
/* 0BA538 800BD538 38A50002 */  addi      r5, r5, 0x2
/* 0BA53C 800BD53C 38C60002 */  addi      r6, r6, 0x2
/* 0BA540 800BD540 39080001 */  addi      r8, r8, 0x1
lbl_800BD544:
/* 0BA544 800BD544 A0E30010 */  lhz       r7, 0x10(r3)
/* 0BA548 800BD548 5500043E */  clrlwi    r0, r8, 16
/* 0BA54C 800BD54C 7C003840 */  cmplw     r0, r7
/* 0BA550 800BD550 4180FF90 */  blt       lbl_800BD4E0
/* 0BA554 800BD554 80630088 */  lwz       r3, 0x88(r3)
/* 0BA558 800BD558 5524043E */  clrlwi    r4, r9, 16
/* 0BA55C 800BD55C A4030006 */  lhzu      r0, 0x6(r3)
/* 0BA560 800BD560 7C040040 */  cmplw     r4, r0
/* 0BA564 800BD564 4182000C */  beq       lbl_800BD570
/* 0BA568 800BD568 B1230000 */  sth       r9, 0x0(r3)
/* 0BA56C 800BD56C 3B800001 */  li        r28, 0x1
lbl_800BD570:
/* 0BA570 800BD570 2C1C0000 */  cmpwi     r28, 0x0
/* 0BA574 800BD574 418201C8 */  beq       lbl_800BD73C
/* 0BA578 800BD578 80610030 */  lwz       r3, 0x30(r1)
/* 0BA57C 800BD57C 38801FFC */  li        r4, 0x1ffc
/* 0BA580 800BD580 7C840E70 */  srawi     r4, r4, 1
/* 0BA584 800BD584 80C30088 */  lwz       r6, 0x88(r3)
/* 0BA588 800BD588 38000000 */  li        r0, 0x0
/* 0BA58C 800BD58C 7C840195 */  addze.    r4, r4
/* 0BA590 800BD590 B0060002 */  sth       r0, 0x2(r6)
/* 0BA594 800BD594 38E60002 */  addi      r7, r6, 0x2
/* 0BA598 800BD598 38A60004 */  addi      r5, r6, 0x4
/* 0BA59C 800BD59C B0060000 */  sth       r0, 0x0(r6)
/* 0BA5A0 800BD5A0 38640000 */  addi      r3, r4, 0x0
/* 0BA5A4 800BD5A4 40810170 */  ble       lbl_800BD714
/* 0BA5A8 800BD5A8 5460E8FF */  srwi.     r0, r3, 3
/* 0BA5AC 800BD5AC 7C0903A6 */  mtctr     r0
/* 0BA5B0 800BD5B0 41820134 */  beq       lbl_800BD6E4
lbl_800BD5B4:
/* 0BA5B4 800BD5B4 A0860000 */  lhz       r4, 0x0(r6)
/* 0BA5B8 800BD5B8 A0050000 */  lhz       r0, 0x0(r5)
/* 0BA5BC 800BD5BC 7C040214 */  add       r0, r4, r0
/* 0BA5C0 800BD5C0 B0060000 */  sth       r0, 0x0(r6)
/* 0BA5C4 800BD5C4 A0050000 */  lhz       r0, 0x0(r5)
/* 0BA5C8 800BD5C8 A0870000 */  lhz       r4, 0x0(r7)
/* 0BA5CC 800BD5CC 7C0000F8 */  nor       r0, r0, r0
/* 0BA5D0 800BD5D0 7C040214 */  add       r0, r4, r0
/* 0BA5D4 800BD5D4 B0070000 */  sth       r0, 0x0(r7)
/* 0BA5D8 800BD5D8 A0860000 */  lhz       r4, 0x0(r6)
/* 0BA5DC 800BD5DC A0050002 */  lhz       r0, 0x2(r5)
/* 0BA5E0 800BD5E0 7C040214 */  add       r0, r4, r0
/* 0BA5E4 800BD5E4 B0060000 */  sth       r0, 0x0(r6)
/* 0BA5E8 800BD5E8 A0050002 */  lhz       r0, 0x2(r5)
/* 0BA5EC 800BD5EC A0870000 */  lhz       r4, 0x0(r7)
/* 0BA5F0 800BD5F0 7C0000F8 */  nor       r0, r0, r0
/* 0BA5F4 800BD5F4 7C040214 */  add       r0, r4, r0
/* 0BA5F8 800BD5F8 B0070000 */  sth       r0, 0x0(r7)
/* 0BA5FC 800BD5FC A0860000 */  lhz       r4, 0x0(r6)
/* 0BA600 800BD600 A0050004 */  lhz       r0, 0x4(r5)
/* 0BA604 800BD604 7C040214 */  add       r0, r4, r0
/* 0BA608 800BD608 B0060000 */  sth       r0, 0x0(r6)
/* 0BA60C 800BD60C A0050004 */  lhz       r0, 0x4(r5)
/* 0BA610 800BD610 A0870000 */  lhz       r4, 0x0(r7)
/* 0BA614 800BD614 7C0000F8 */  nor       r0, r0, r0
/* 0BA618 800BD618 7C040214 */  add       r0, r4, r0
/* 0BA61C 800BD61C B0070000 */  sth       r0, 0x0(r7)
/* 0BA620 800BD620 A0860000 */  lhz       r4, 0x0(r6)
/* 0BA624 800BD624 A0050006 */  lhz       r0, 0x6(r5)
/* 0BA628 800BD628 7C040214 */  add       r0, r4, r0
/* 0BA62C 800BD62C B0060000 */  sth       r0, 0x0(r6)
/* 0BA630 800BD630 A0050006 */  lhz       r0, 0x6(r5)
/* 0BA634 800BD634 A0870000 */  lhz       r4, 0x0(r7)
/* 0BA638 800BD638 7C0000F8 */  nor       r0, r0, r0
/* 0BA63C 800BD63C 7C040214 */  add       r0, r4, r0
/* 0BA640 800BD640 B0070000 */  sth       r0, 0x0(r7)
/* 0BA644 800BD644 A0860000 */  lhz       r4, 0x0(r6)
/* 0BA648 800BD648 A0050008 */  lhz       r0, 0x8(r5)
/* 0BA64C 800BD64C 7C040214 */  add       r0, r4, r0
/* 0BA650 800BD650 B0060000 */  sth       r0, 0x0(r6)
/* 0BA654 800BD654 A0050008 */  lhz       r0, 0x8(r5)
/* 0BA658 800BD658 A0870000 */  lhz       r4, 0x0(r7)
/* 0BA65C 800BD65C 7C0000F8 */  nor       r0, r0, r0
/* 0BA660 800BD660 7C040214 */  add       r0, r4, r0
/* 0BA664 800BD664 B0070000 */  sth       r0, 0x0(r7)
/* 0BA668 800BD668 A0860000 */  lhz       r4, 0x0(r6)
/* 0BA66C 800BD66C A005000A */  lhz       r0, 0xa(r5)
/* 0BA670 800BD670 7C040214 */  add       r0, r4, r0
/* 0BA674 800BD674 B0060000 */  sth       r0, 0x0(r6)
/* 0BA678 800BD678 A005000A */  lhz       r0, 0xa(r5)
/* 0BA67C 800BD67C A0870000 */  lhz       r4, 0x0(r7)
/* 0BA680 800BD680 7C0000F8 */  nor       r0, r0, r0
/* 0BA684 800BD684 7C040214 */  add       r0, r4, r0
/* 0BA688 800BD688 B0070000 */  sth       r0, 0x0(r7)
/* 0BA68C 800BD68C A0860000 */  lhz       r4, 0x0(r6)
/* 0BA690 800BD690 A005000C */  lhz       r0, 0xc(r5)
/* 0BA694 800BD694 7C040214 */  add       r0, r4, r0
/* 0BA698 800BD698 B0060000 */  sth       r0, 0x0(r6)
/* 0BA69C 800BD69C A005000C */  lhz       r0, 0xc(r5)
/* 0BA6A0 800BD6A0 A0870000 */  lhz       r4, 0x0(r7)
/* 0BA6A4 800BD6A4 7C0000F8 */  nor       r0, r0, r0
/* 0BA6A8 800BD6A8 7C040214 */  add       r0, r4, r0
/* 0BA6AC 800BD6AC B0070000 */  sth       r0, 0x0(r7)
/* 0BA6B0 800BD6B0 A0860000 */  lhz       r4, 0x0(r6)
/* 0BA6B4 800BD6B4 A005000E */  lhz       r0, 0xe(r5)
/* 0BA6B8 800BD6B8 7C040214 */  add       r0, r4, r0
/* 0BA6BC 800BD6BC B0060000 */  sth       r0, 0x0(r6)
/* 0BA6C0 800BD6C0 A005000E */  lhz       r0, 0xe(r5)
/* 0BA6C4 800BD6C4 38A50010 */  addi      r5, r5, 0x10
/* 0BA6C8 800BD6C8 A0870000 */  lhz       r4, 0x0(r7)
/* 0BA6CC 800BD6CC 7C0000F8 */  nor       r0, r0, r0
/* 0BA6D0 800BD6D0 7C040214 */  add       r0, r4, r0
/* 0BA6D4 800BD6D4 B0070000 */  sth       r0, 0x0(r7)
/* 0BA6D8 800BD6D8 4200FEDC */  bdnz      lbl_800BD5B4
/* 0BA6DC 800BD6DC 70630007 */  andi.     r3, r3, 0x7
/* 0BA6E0 800BD6E0 41820034 */  beq       lbl_800BD714
lbl_800BD6E4:
/* 0BA6E4 800BD6E4 7C6903A6 */  mtctr     r3
lbl_800BD6E8:
/* 0BA6E8 800BD6E8 A0860000 */  lhz       r4, 0x0(r6)
/* 0BA6EC 800BD6EC A0050000 */  lhz       r0, 0x0(r5)
/* 0BA6F0 800BD6F0 7C040214 */  add       r0, r4, r0
/* 0BA6F4 800BD6F4 B0060000 */  sth       r0, 0x0(r6)
/* 0BA6F8 800BD6F8 A0050000 */  lhz       r0, 0x0(r5)
/* 0BA6FC 800BD6FC 38A50002 */  addi      r5, r5, 0x2
/* 0BA700 800BD700 A0870000 */  lhz       r4, 0x0(r7)
/* 0BA704 800BD704 7C0000F8 */  nor       r0, r0, r0
/* 0BA708 800BD708 7C040214 */  add       r0, r4, r0
/* 0BA70C 800BD70C B0070000 */  sth       r0, 0x0(r7)
/* 0BA710 800BD710 4200FFD8 */  bdnz      lbl_800BD6E8
lbl_800BD714:
/* 0BA714 800BD714 A0060000 */  lhz       r0, 0x0(r6)
/* 0BA718 800BD718 2800FFFF */  cmplwi    r0, 0xffff
/* 0BA71C 800BD71C 4082000C */  bne       lbl_800BD728
/* 0BA720 800BD720 38000000 */  li        r0, 0x0
/* 0BA724 800BD724 B0060000 */  sth       r0, 0x0(r6)
lbl_800BD728:
/* 0BA728 800BD728 A0070000 */  lhz       r0, 0x0(r7)
/* 0BA72C 800BD72C 2800FFFF */  cmplwi    r0, 0xffff
/* 0BA730 800BD730 4082000C */  bne       lbl_800BD73C
/* 0BA734 800BD734 38000000 */  li        r0, 0x0
/* 0BA738 800BD738 B0070000 */  sth       r0, 0x0(r7)
lbl_800BD73C:
/* 0BA73C 800BD73C 80C1001C */  lwz       r6, 0x1c(r1)
/* 0BA740 800BD740 38810020 */  addi      r4, r1, 0x20
/* 0BA744 800BD744 38A02000 */  li        r5, 0x2000
/* 0BA748 800BD748 68C00001 */  xori      r0, r6, 0x1
/* 0BA74C 800BD74C 5403103A */  slwi      r3, r0, 2
/* 0BA750 800BD750 54C0103A */  slwi      r0, r6, 2
/* 0BA754 800BD754 7C64182E */  lwzx      r3, r4, r3
/* 0BA758 800BD758 7C84002E */  lwzx      r4, r4, r0
/* 0BA75C 800BD75C 4BF47CB9 */  bl        memcpy
/* 0BA760 800BD760 2C1D0000 */  cmpwi     r29, 0x0
/* 0BA764 800BD764 41820024 */  beq       lbl_800BD788
/* 0BA768 800BD768 281A0000 */  cmplwi    r26, 0x0
/* 0BA76C 800BD76C 4182000C */  beq       lbl_800BD778
/* 0BA770 800BD770 38002000 */  li        r0, 0x2000
/* 0BA774 800BD774 901A0000 */  stw       r0, 0x0(r26)
lbl_800BD778:
/* 0BA778 800BD778 38790000 */  addi      r3, r25, 0x0
/* 0BA77C 800BD77C 389B0000 */  addi      r4, r27, 0x0
/* 0BA780 800BD780 4BFFF0B1 */  bl        __CARDUpdateDir
/* 0BA784 800BD784 48000070 */  b         lbl_800BD7F4
lbl_800BD788:
/* 0BA788 800BD788 7FC0E379 */  or.       r0, r30, r28
/* 0BA78C 800BD78C 4182002C */  beq       lbl_800BD7B8
/* 0BA790 800BD790 281A0000 */  cmplwi    r26, 0x0
/* 0BA794 800BD794 4182000C */  beq       lbl_800BD7A0
/* 0BA798 800BD798 38002000 */  li        r0, 0x2000
/* 0BA79C 800BD79C 901A0000 */  stw       r0, 0x0(r26)
lbl_800BD7A0:
/* 0BA7A0 800BD7A0 80810030 */  lwz       r4, 0x30(r1)
/* 0BA7A4 800BD7A4 38790000 */  addi      r3, r25, 0x0
/* 0BA7A8 800BD7A8 38BB0000 */  addi      r5, r27, 0x0
/* 0BA7AC 800BD7AC 80840088 */  lwz       r4, 0x88(r4)
/* 0BA7B0 800BD7B0 4BFFEE35 */  bl        __CARDUpdateFatBlock
/* 0BA7B4 800BD7B4 48000040 */  b         lbl_800BD7F4
lbl_800BD7B8:
/* 0BA7B8 800BD7B8 80610030 */  lwz       r3, 0x30(r1)
/* 0BA7BC 800BD7BC 38800000 */  li        r4, 0x0
/* 0BA7C0 800BD7C0 4BFFD309 */  bl        __CARDPutControlBlock
/* 0BA7C4 800BD7C4 281B0000 */  cmplwi    r27, 0x0
/* 0BA7C8 800BD7C8 41820028 */  beq       lbl_800BD7F0
/* 0BA7CC 800BD7CC 4BFE0A7D */  bl        OSDisableInterrupts
/* 0BA7D0 800BD7D0 399B0000 */  addi      r12, r27, 0x0
/* 0BA7D4 800BD7D4 7D8803A6 */  mtlr      r12
/* 0BA7D8 800BD7D8 3B430000 */  addi      r26, r3, 0x0
/* 0BA7DC 800BD7DC 38790000 */  addi      r3, r25, 0x0
/* 0BA7E0 800BD7E0 38800000 */  li        r4, 0x0
/* 0BA7E4 800BD7E4 4E800021 */  blrl
/* 0BA7E8 800BD7E8 7F43D378 */  mr        r3, r26
/* 0BA7EC 800BD7EC 4BFE0A85 */  bl        OSRestoreInterrupts
lbl_800BD7F0:
/* 0BA7F0 800BD7F0 38600000 */  li        r3, 0x0
lbl_800BD7F4:
/* 0BA7F4 800BD7F4 BB21003C */  lmw       r25, 0x3c(r1)
/* 0BA7F8 800BD7F8 8001005C */  lwz       r0, 0x5c(r1)
/* 0BA7FC 800BD7FC 38210058 */  addi      r1, r1, 0x58
/* 0BA800 800BD800 7C0803A6 */  mtlr      r0
/* 0BA804 800BD804 4E800020 */  blr

glabel CARDCheck
/* 0BA808 800BD808 7C0802A6 */  mflr      r0
/* 0BA80C 800BD80C 3C80800C */  lis       r4, __CARDSyncCallback@ha
/* 0BA810 800BD810 90010004 */  stw       r0, 0x4(r1)
/* 0BA814 800BD814 38A49AB4 */  addi      r5, r4, __CARDSyncCallback@l
/* 0BA818 800BD818 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0BA81C 800BD81C 93E10014 */  stw       r31, 0x14(r1)
/* 0BA820 800BD820 3BE30000 */  addi      r31, r3, 0x0
/* 0BA824 800BD824 3881000C */  addi      r4, r1, 0xc
/* 0BA828 800BD828 4BFFFA51 */  bl        CARDCheckExAsync
/* 0BA82C 800BD82C 2C030000 */  cmpwi     r3, 0x0
/* 0BA830 800BD830 41800018 */  blt       lbl_800BD848
/* 0BA834 800BD834 3401000C */  addic.    r0, r1, 0xc
/* 0BA838 800BD838 40820008 */  bne       lbl_800BD840
/* 0BA83C 800BD83C 4800000C */  b         lbl_800BD848
lbl_800BD840:
/* 0BA840 800BD840 7FE3FB78 */  mr        r3, r31
/* 0BA844 800BD844 4BFFD469 */  bl        __CARDSync
lbl_800BD848:
/* 0BA848 800BD848 8001001C */  lwz       r0, 0x1c(r1)
/* 0BA84C 800BD84C 83E10014 */  lwz       r31, 0x14(r1)
/* 0BA850 800BD850 38210018 */  addi      r1, r1, 0x18
/* 0BA854 800BD854 7C0803A6 */  mtlr      r0
/* 0BA858 800BD858 4E800020 */  blr
