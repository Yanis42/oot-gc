# CARDMount.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800BD85C - 0x800BE31C

glabel IsCard
/* 0BA85C 800BD85C 5460001F */  clrrwi.   r0, r3, 16
/* 0BA860 800BD860 41820024 */  beq       lbl_800BD884
/* 0BA864 800BD864 3C038000 */  addis     r0, r3, 0x8000
/* 0BA868 800BD868 28000004 */  cmplwi    r0, 0x4
/* 0BA86C 800BD86C 40820010 */  bne       lbl_800BD87C
/* 0BA870 800BD870 A00D8860 */  lhz       r0, D_8018B7E0@sda21(r0)
/* 0BA874 800BD874 2800FFFF */  cmplwi    r0, 0xffff
/* 0BA878 800BD878 4082000C */  bne       lbl_800BD884
lbl_800BD87C:
/* 0BA87C 800BD87C 38600000 */  li        r3, 0x0
/* 0BA880 800BD880 4E800020 */  blr
lbl_800BD884:
/* 0BA884 800BD884 546007BF */  clrlwi.   r0, r3, 30
/* 0BA888 800BD888 4182000C */  beq       lbl_800BD894
/* 0BA88C 800BD88C 38600000 */  li        r3, 0x0
/* 0BA890 800BD890 4E800020 */  blr
lbl_800BD894:
/* 0BA894 800BD894 5465063A */  rlwinm    r5, r3, 0, 24, 29
/* 0BA898 800BD898 2C050020 */  cmpwi     r5, 0x20
/* 0BA89C 800BD89C 41820048 */  beq       lbl_800BD8E4
/* 0BA8A0 800BD8A0 40800028 */  bge       lbl_800BD8C8
/* 0BA8A4 800BD8A4 2C050008 */  cmpwi     r5, 0x8
/* 0BA8A8 800BD8A8 4182003C */  beq       lbl_800BD8E4
/* 0BA8AC 800BD8AC 40800010 */  bge       lbl_800BD8BC
/* 0BA8B0 800BD8B0 2C050004 */  cmpwi     r5, 0x4
/* 0BA8B4 800BD8B4 41820030 */  beq       lbl_800BD8E4
/* 0BA8B8 800BD8B8 48000024 */  b         lbl_800BD8DC
lbl_800BD8BC:
/* 0BA8BC 800BD8BC 2C050010 */  cmpwi     r5, 0x10
/* 0BA8C0 800BD8C0 41820024 */  beq       lbl_800BD8E4
/* 0BA8C4 800BD8C4 48000018 */  b         lbl_800BD8DC
lbl_800BD8C8:
/* 0BA8C8 800BD8C8 2C050080 */  cmpwi     r5, 0x80
/* 0BA8CC 800BD8CC 41820018 */  beq       lbl_800BD8E4
/* 0BA8D0 800BD8D0 4080000C */  bge       lbl_800BD8DC
/* 0BA8D4 800BD8D4 2C050040 */  cmpwi     r5, 0x40
/* 0BA8D8 800BD8D8 4182000C */  beq       lbl_800BD8E4
lbl_800BD8DC:
/* 0BA8DC 800BD8DC 38600000 */  li        r3, 0x0
/* 0BA8E0 800BD8E0 4E800020 */  blr
lbl_800BD8E4:
/* 0BA8E4 800BD8E4 3C80800F */  lis       r4, D_800F4D00@ha
/* 0BA8E8 800BD8E8 5463BEFA */  rlwinm    r3, r3, 23, 27, 29
/* 0BA8EC 800BD8EC 38044D00 */  addi      r0, r4, D_800F4D00@l
/* 0BA8F0 800BD8F0 7C601A14 */  add       r3, r0, r3
/* 0BA8F4 800BD8F4 80630000 */  lwz       r3, 0x0(r3)
/* 0BA8F8 800BD8F8 2C030000 */  cmpwi     r3, 0x0
/* 0BA8FC 800BD8FC 4082000C */  bne       lbl_800BD908
/* 0BA900 800BD900 38600000 */  li        r3, 0x0
/* 0BA904 800BD904 4E800020 */  blr
lbl_800BD908:
/* 0BA908 800BD908 54A088DC */  clrlslwi  r0, r5, 20, 17
/* 0BA90C 800BD90C 7C001B96 */  divwu     r0, r0, r3
/* 0BA910 800BD910 28000008 */  cmplwi    r0, 0x8
/* 0BA914 800BD914 4080000C */  bge       lbl_800BD920
/* 0BA918 800BD918 38600000 */  li        r3, 0x0
/* 0BA91C 800BD91C 4E800020 */  blr
lbl_800BD920:
/* 0BA920 800BD920 38600001 */  li        r3, 0x1
/* 0BA924 800BD924 4E800020 */  blr

glabel CARDProbeEx
/* 0BA928 800BD928 7C0802A6 */  mflr      r0
/* 0BA92C 800BD92C 90010004 */  stw       r0, 0x4(r1)
/* 0BA930 800BD930 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0BA934 800BD934 BF61001C */  stmw      r27, 0x1c(r1)
/* 0BA938 800BD938 7C7B1B79 */  mr.       r27, r3
/* 0BA93C 800BD93C 3B840000 */  addi      r28, r4, 0x0
/* 0BA940 800BD940 3BE50000 */  addi      r31, r5, 0x0
/* 0BA944 800BD944 4180000C */  blt       lbl_800BD950
/* 0BA948 800BD948 2C1B0002 */  cmpwi     r27, 0x2
/* 0BA94C 800BD94C 4180000C */  blt       lbl_800BD958
lbl_800BD950:
/* 0BA950 800BD950 3860FF80 */  li        r3, -0x80
/* 0BA954 800BD954 4800013C */  b         lbl_800BDA90
lbl_800BD958:
/* 0BA958 800BD958 3C608000 */  lis       r3, 0x8000
/* 0BA95C 800BD95C 880330E3 */  lbz       r0, 0x30e3(r3)
/* 0BA960 800BD960 54000631 */  rlwinm.   r0, r0, 0, 24, 24
/* 0BA964 800BD964 4182000C */  beq       lbl_800BD970
/* 0BA968 800BD968 3860FFFD */  li        r3, -0x3
/* 0BA96C 800BD96C 48000124 */  b         lbl_800BDA90
lbl_800BD970:
/* 0BA970 800BD970 1C9B0110 */  mulli     r4, r27, 0x110
/* 0BA974 800BD974 3C608019 */  lis       r3, D_80188A70@ha
/* 0BA978 800BD978 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0BA97C 800BD97C 7FC02214 */  add       r30, r0, r4
/* 0BA980 800BD980 4BFE08C9 */  bl        OSDisableInterrupts
/* 0BA984 800BD984 3BA30000 */  addi      r29, r3, 0x0
/* 0BA988 800BD988 387B0000 */  addi      r3, r27, 0x0
/* 0BA98C 800BD98C 4BFE49D9 */  bl        EXIProbeEx
/* 0BA990 800BD990 2C03FFFF */  cmpwi     r3, -0x1
/* 0BA994 800BD994 4082000C */  bne       lbl_800BD9A0
/* 0BA998 800BD998 3BC0FFFD */  li        r30, -0x3
/* 0BA99C 800BD99C 480000E8 */  b         lbl_800BDA84
lbl_800BD9A0:
/* 0BA9A0 800BD9A0 2C030000 */  cmpwi     r3, 0x0
/* 0BA9A4 800BD9A4 4082000C */  bne       lbl_800BD9B0
/* 0BA9A8 800BD9A8 3BC0FFFF */  li        r30, -0x1
/* 0BA9AC 800BD9AC 480000D8 */  b         lbl_800BDA84
lbl_800BD9B0:
/* 0BA9B0 800BD9B0 801E0000 */  lwz       r0, 0x0(r30)
/* 0BA9B4 800BD9B4 2C000000 */  cmpwi     r0, 0x0
/* 0BA9B8 800BD9B8 41820040 */  beq       lbl_800BD9F8
/* 0BA9BC 800BD9BC 801E0024 */  lwz       r0, 0x24(r30)
/* 0BA9C0 800BD9C0 2C000001 */  cmpwi     r0, 0x1
/* 0BA9C4 800BD9C4 4080000C */  bge       lbl_800BD9D0
/* 0BA9C8 800BD9C8 3BC0FFFF */  li        r30, -0x1
/* 0BA9CC 800BD9CC 480000B8 */  b         lbl_800BDA84
lbl_800BD9D0:
/* 0BA9D0 800BD9D0 281C0000 */  cmplwi    r28, 0x0
/* 0BA9D4 800BD9D4 4182000C */  beq       lbl_800BD9E0
/* 0BA9D8 800BD9D8 A01E0008 */  lhz       r0, 0x8(r30)
/* 0BA9DC 800BD9DC 901C0000 */  stw       r0, 0x0(r28)
lbl_800BD9E0:
/* 0BA9E0 800BD9E0 281F0000 */  cmplwi    r31, 0x0
/* 0BA9E4 800BD9E4 4182000C */  beq       lbl_800BD9F0
/* 0BA9E8 800BD9E8 801E000C */  lwz       r0, 0xc(r30)
/* 0BA9EC 800BD9EC 901F0000 */  stw       r0, 0x0(r31)
lbl_800BD9F0:
/* 0BA9F0 800BD9F0 3BC00000 */  li        r30, 0x0
/* 0BA9F4 800BD9F4 48000090 */  b         lbl_800BDA84
lbl_800BD9F8:
/* 0BA9F8 800BD9F8 7F63DB78 */  mr        r3, r27
/* 0BA9FC 800BD9FC 4BFE54BD */  bl        EXIGetState
/* 0BAA00 800BDA00 54600739 */  rlwinm.   r0, r3, 0, 28, 28
/* 0BAA04 800BDA04 4182000C */  beq       lbl_800BDA10
/* 0BAA08 800BDA08 3BC0FFFE */  li        r30, -0x2
/* 0BAA0C 800BDA0C 48000078 */  b         lbl_800BDA84
lbl_800BDA10:
/* 0BAA10 800BDA10 387B0000 */  addi      r3, r27, 0x0
/* 0BAA14 800BDA14 38A10014 */  addi      r5, r1, 0x14
/* 0BAA18 800BDA18 38800000 */  li        r4, 0x0
/* 0BAA1C 800BDA1C 4BFE54DD */  bl        EXIGetID
/* 0BAA20 800BDA20 2C030000 */  cmpwi     r3, 0x0
/* 0BAA24 800BDA24 4082000C */  bne       lbl_800BDA30
/* 0BAA28 800BDA28 3BC0FFFF */  li        r30, -0x1
/* 0BAA2C 800BDA2C 48000058 */  b         lbl_800BDA84
lbl_800BDA30:
/* 0BAA30 800BDA30 80610014 */  lwz       r3, 0x14(r1)
/* 0BAA34 800BDA34 4BFFFE29 */  bl        IsCard
/* 0BAA38 800BDA38 2C030000 */  cmpwi     r3, 0x0
/* 0BAA3C 800BDA3C 41820044 */  beq       lbl_800BDA80
/* 0BAA40 800BDA40 281C0000 */  cmplwi    r28, 0x0
/* 0BAA44 800BDA44 41820010 */  beq       lbl_800BDA54
/* 0BAA48 800BDA48 80010014 */  lwz       r0, 0x14(r1)
/* 0BAA4C 800BDA4C 5400063A */  rlwinm    r0, r0, 0, 24, 29
/* 0BAA50 800BDA50 901C0000 */  stw       r0, 0x0(r28)
lbl_800BDA54:
/* 0BAA54 800BDA54 281F0000 */  cmplwi    r31, 0x0
/* 0BAA58 800BDA58 41820020 */  beq       lbl_800BDA78
/* 0BAA5C 800BDA5C 80810014 */  lwz       r4, 0x14(r1)
/* 0BAA60 800BDA60 3C60800F */  lis       r3, D_800F4D00@ha
/* 0BAA64 800BDA64 38034D00 */  addi      r0, r3, D_800F4D00@l
/* 0BAA68 800BDA68 5483BEFA */  rlwinm    r3, r4, 23, 27, 29
/* 0BAA6C 800BDA6C 7C601A14 */  add       r3, r0, r3
/* 0BAA70 800BDA70 80030000 */  lwz       r0, 0x0(r3)
/* 0BAA74 800BDA74 901F0000 */  stw       r0, 0x0(r31)
lbl_800BDA78:
/* 0BAA78 800BDA78 3BC00000 */  li        r30, 0x0
/* 0BAA7C 800BDA7C 48000008 */  b         lbl_800BDA84
lbl_800BDA80:
/* 0BAA80 800BDA80 3BC0FFFE */  li        r30, -0x2
lbl_800BDA84:
/* 0BAA84 800BDA84 7FA3EB78 */  mr        r3, r29
/* 0BAA88 800BDA88 4BFE07E9 */  bl        OSRestoreInterrupts
/* 0BAA8C 800BDA8C 7FC3F378 */  mr        r3, r30
lbl_800BDA90:
/* 0BAA90 800BDA90 BB61001C */  lmw       r27, 0x1c(r1)
/* 0BAA94 800BDA94 80010034 */  lwz       r0, 0x34(r1)
/* 0BAA98 800BDA98 38210030 */  addi      r1, r1, 0x30
/* 0BAA9C 800BDA9C 7C0803A6 */  mtlr      r0
/* 0BAAA0 800BDAA0 4E800020 */  blr

glabel DoMount
/* 0BAAA4 800BDAA4 7C0802A6 */  mflr      r0
/* 0BAAA8 800BDAA8 90010004 */  stw       r0, 0x4(r1)
/* 0BAAAC 800BDAAC 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0BAAB0 800BDAB0 93E1002C */  stw       r31, 0x2c(r1)
/* 0BAAB4 800BDAB4 93C10028 */  stw       r30, 0x28(r1)
/* 0BAAB8 800BDAB8 93A10024 */  stw       r29, 0x24(r1)
/* 0BAABC 800BDABC 3BA30000 */  addi      r29, r3, 0x0
/* 0BAAC0 800BDAC0 1C9D0110 */  mulli     r4, r29, 0x110
/* 0BAAC4 800BDAC4 93810020 */  stw       r28, 0x20(r1)
/* 0BAAC8 800BDAC8 3C608019 */  lis       r3, D_80188A70@ha
/* 0BAACC 800BDACC 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0BAAD0 800BDAD0 7C602214 */  add       r3, r0, r4
/* 0BAAD4 800BDAD4 80030024 */  lwz       r0, 0x24(r3)
/* 0BAAD8 800BDAD8 3BE30000 */  addi      r31, r3, 0x0
/* 0BAADC 800BDADC 2C000000 */  cmpwi     r0, 0x0
/* 0BAAE0 800BDAE0 408202AC */  bne       lbl_800BDD8C
/* 0BAAE4 800BDAE4 387D0000 */  addi      r3, r29, 0x0
/* 0BAAE8 800BDAE8 38A10018 */  addi      r5, r1, 0x18
/* 0BAAEC 800BDAEC 38800000 */  li        r4, 0x0
/* 0BAAF0 800BDAF0 4BFE5409 */  bl        EXIGetID
/* 0BAAF4 800BDAF4 2C030000 */  cmpwi     r3, 0x0
/* 0BAAF8 800BDAF8 4082000C */  bne       lbl_800BDB04
/* 0BAAFC 800BDAFC 3BC0FFFD */  li        r30, -0x3
/* 0BAB00 800BDB00 48000020 */  b         lbl_800BDB20
lbl_800BDB04:
/* 0BAB04 800BDB04 80610018 */  lwz       r3, 0x18(r1)
/* 0BAB08 800BDB08 4BFFFD55 */  bl        IsCard
/* 0BAB0C 800BDB0C 2C030000 */  cmpwi     r3, 0x0
/* 0BAB10 800BDB10 4182000C */  beq       lbl_800BDB1C
/* 0BAB14 800BDB14 3BC00000 */  li        r30, 0x0
/* 0BAB18 800BDB18 48000008 */  b         lbl_800BDB20
lbl_800BDB1C:
/* 0BAB1C 800BDB1C 3BC0FFFE */  li        r30, -0x2
lbl_800BDB20:
/* 0BAB20 800BDB20 2C1E0000 */  cmpwi     r30, 0x0
/* 0BAB24 800BDB24 41800344 */  blt       lbl_800BDE68
/* 0BAB28 800BDB28 80010018 */  lwz       r0, 0x18(r1)
/* 0BAB2C 800BDB2C 3C80800F */  lis       r4, D_800F4D00@ha
/* 0BAB30 800BDB30 38844D00 */  addi      r4, r4, D_800F4D00@l
/* 0BAB34 800BDB34 901F0108 */  stw       r0, 0x108(r31)
/* 0BAB38 800BDB38 3C60800F */  lis       r3, D_800F4D20@ha
/* 0BAB3C 800BDB3C 38034D20 */  addi      r0, r3, D_800F4D20@l
/* 0BAB40 800BDB40 80A10018 */  lwz       r5, 0x18(r1)
/* 0BAB44 800BDB44 387D0000 */  addi      r3, r29, 0x0
/* 0BAB48 800BDB48 54A5063A */  rlwinm    r5, r5, 0, 24, 29
/* 0BAB4C 800BDB4C B0BF0008 */  sth       r5, 0x8(r31)
/* 0BAB50 800BDB50 80A10018 */  lwz       r5, 0x18(r1)
/* 0BAB54 800BDB54 54A5BEFA */  rlwinm    r5, r5, 23, 27, 29
/* 0BAB58 800BDB58 7C842A14 */  add       r4, r4, r5
/* 0BAB5C 800BDB5C 80840000 */  lwz       r4, 0x0(r4)
/* 0BAB60 800BDB60 909F000C */  stw       r4, 0xc(r31)
/* 0BAB64 800BDB64 A0BF0008 */  lhz       r5, 0x8(r31)
/* 0BAB68 800BDB68 809F000C */  lwz       r4, 0xc(r31)
/* 0BAB6C 800BDB6C 54A5A016 */  slwi      r5, r5, 20
/* 0BAB70 800BDB70 7CA51E70 */  srawi     r5, r5, 3
/* 0BAB74 800BDB74 7CA50194 */  addze     r5, r5
/* 0BAB78 800BDB78 7C8523D6 */  divw      r4, r5, r4
/* 0BAB7C 800BDB7C B09F0010 */  sth       r4, 0x10(r31)
/* 0BAB80 800BDB80 80810018 */  lwz       r4, 0x18(r1)
/* 0BAB84 800BDB84 5484D6FA */  rlwinm    r4, r4, 26, 27, 29
/* 0BAB88 800BDB88 7C802214 */  add       r4, r0, r4
/* 0BAB8C 800BDB8C 80040000 */  lwz       r0, 0x0(r4)
/* 0BAB90 800BDB90 901F0014 */  stw       r0, 0x14(r31)
/* 0BAB94 800BDB94 4BFFC421 */  bl        __CARDClearStatus
/* 0BAB98 800BDB98 7C7E1B79 */  mr.       r30, r3
/* 0BAB9C 800BDB9C 418002CC */  blt       lbl_800BDE68
/* 0BABA0 800BDBA0 387D0000 */  addi      r3, r29, 0x0
/* 0BABA4 800BDBA4 38810014 */  addi      r4, r1, 0x14
/* 0BABA8 800BDBA8 4BFFC31D */  bl        __CARDReadStatus
/* 0BABAC 800BDBAC 7C7E1B79 */  mr.       r30, r3
/* 0BABB0 800BDBB0 418002B8 */  blt       lbl_800BDE68
/* 0BABB4 800BDBB4 7FA3EB78 */  mr        r3, r29
/* 0BABB8 800BDBB8 4BFE472D */  bl        EXIProbe
/* 0BABBC 800BDBBC 2C030000 */  cmpwi     r3, 0x0
/* 0BABC0 800BDBC0 4082000C */  bne       lbl_800BDBCC
/* 0BABC4 800BDBC4 3BC0FFFD */  li        r30, -0x3
/* 0BABC8 800BDBC8 480002A0 */  b         lbl_800BDE68
lbl_800BDBCC:
/* 0BABCC 800BDBCC 88010014 */  lbz       r0, 0x14(r1)
/* 0BABD0 800BDBD0 54000673 */  rlwinm.   r0, r0, 0, 25, 25
/* 0BABD4 800BDBD4 40820114 */  bne       lbl_800BDCE8
/* 0BABD8 800BDBD8 387D0000 */  addi      r3, r29, 0x0
/* 0BABDC 800BDBDC 389F0018 */  addi      r4, r31, 0x18
/* 0BABE0 800BDBE0 4BFFD529 */  bl        __CARDUnlock
/* 0BABE4 800BDBE4 7C7E1B79 */  mr.       r30, r3
/* 0BABE8 800BDBE8 41800280 */  blt       lbl_800BDE68
/* 0BABEC 800BDBEC 4BFE2091 */  bl        __OSLockSramEx
/* 0BABF0 800BDBF0 1C1D000C */  mulli     r0, r29, 0xc
/* 0BABF4 800BDBF4 7C830214 */  add       r4, r3, r0
/* 0BABF8 800BDBF8 881F0018 */  lbz       r0, 0x18(r31)
/* 0BABFC 800BDBFC 38BF0018 */  addi      r5, r31, 0x18
/* 0BAC00 800BDC00 98040000 */  stb       r0, 0x0(r4)
/* 0BAC04 800BDC04 39050002 */  addi      r8, r5, 0x2
/* 0BAC08 800BDC08 39250003 */  addi      r9, r5, 0x3
/* 0BAC0C 800BDC0C 88FF0018 */  lbz       r7, 0x18(r31)
/* 0BAC10 800BDC10 39450004 */  addi      r10, r5, 0x4
/* 0BAC14 800BDC14 881F0019 */  lbz       r0, 0x19(r31)
/* 0BAC18 800BDC18 39650005 */  addi      r11, r5, 0x5
/* 0BAC1C 800BDC1C 39850006 */  addi      r12, r5, 0x6
/* 0BAC20 800BDC20 98040001 */  stb       r0, 0x1(r4)
/* 0BAC24 800BDC24 3B850007 */  addi      r28, r5, 0x7
/* 0BAC28 800BDC28 38A00008 */  li        r5, 0x8
/* 0BAC2C 800BDC2C 881F0019 */  lbz       r0, 0x19(r31)
/* 0BAC30 800BDC30 88C80000 */  lbz       r6, 0x0(r8)
/* 0BAC34 800BDC34 7C070214 */  add       r0, r7, r0
/* 0BAC38 800BDC38 98C40002 */  stb       r6, 0x2(r4)
/* 0BAC3C 800BDC3C 88E80000 */  lbz       r7, 0x0(r8)
/* 0BAC40 800BDC40 88C90000 */  lbz       r6, 0x0(r9)
/* 0BAC44 800BDC44 7C003A14 */  add       r0, r0, r7
/* 0BAC48 800BDC48 98C40003 */  stb       r6, 0x3(r4)
/* 0BAC4C 800BDC4C 88E90000 */  lbz       r7, 0x0(r9)
/* 0BAC50 800BDC50 88CA0000 */  lbz       r6, 0x0(r10)
/* 0BAC54 800BDC54 7C003A14 */  add       r0, r0, r7
/* 0BAC58 800BDC58 98C40004 */  stb       r6, 0x4(r4)
/* 0BAC5C 800BDC5C 88EA0000 */  lbz       r7, 0x0(r10)
/* 0BAC60 800BDC60 88CB0000 */  lbz       r6, 0x0(r11)
/* 0BAC64 800BDC64 7C003A14 */  add       r0, r0, r7
/* 0BAC68 800BDC68 98C40005 */  stb       r6, 0x5(r4)
/* 0BAC6C 800BDC6C 88EB0000 */  lbz       r7, 0x0(r11)
/* 0BAC70 800BDC70 88CC0000 */  lbz       r6, 0x0(r12)
/* 0BAC74 800BDC74 7C003A14 */  add       r0, r0, r7
/* 0BAC78 800BDC78 98C40006 */  stb       r6, 0x6(r4)
/* 0BAC7C 800BDC7C 88EC0000 */  lbz       r7, 0x0(r12)
/* 0BAC80 800BDC80 88DC0000 */  lbz       r6, 0x0(r28)
/* 0BAC84 800BDC84 7C003A14 */  add       r0, r0, r7
/* 0BAC88 800BDC88 98C40007 */  stb       r6, 0x7(r4)
/* 0BAC8C 800BDC8C 88DC0000 */  lbz       r6, 0x0(r28)
/* 0BAC90 800BDC90 7C003214 */  add       r0, r0, r6
/* 0BAC94 800BDC94 480001F0 */  b         lbl_800BDE84
lbl_800BDC98:
/* 0BAC98 800BDC98 2085000C */  subfic    r4, r5, 0xc
/* 0BAC9C 800BDC9C 2C05000C */  cmpwi     r5, 0xc
/* 0BACA0 800BDCA0 7C8903A6 */  mtctr     r4
/* 0BACA4 800BDCA4 40800028 */  bge       lbl_800BDCCC
lbl_800BDCA8:
/* 0BACA8 800BDCA8 38E50018 */  addi      r7, r5, 0x18
/* 0BACAC 800BDCAC 7CFF3A14 */  add       r7, r31, r7
/* 0BACB0 800BDCB0 88870000 */  lbz       r4, 0x0(r7)
/* 0BACB4 800BDCB4 38A50001 */  addi      r5, r5, 0x1
/* 0BACB8 800BDCB8 98860000 */  stb       r4, 0x0(r6)
/* 0BACBC 800BDCBC 38C60001 */  addi      r6, r6, 0x1
/* 0BACC0 800BDCC0 88870000 */  lbz       r4, 0x0(r7)
/* 0BACC4 800BDCC4 7C002214 */  add       r0, r0, r4
/* 0BACC8 800BDCC8 4200FFE0 */  bdnz      lbl_800BDCA8
lbl_800BDCCC:
/* 0BACCC 800BDCCC 7C63EA14 */  add       r3, r3, r29
/* 0BACD0 800BDCD0 7C0000F8 */  nor       r0, r0, r0
/* 0BACD4 800BDCD4 98030026 */  stb       r0, 0x26(r3)
/* 0BACD8 800BDCD8 38600001 */  li        r3, 0x1
/* 0BACDC 800BDCDC 4BFE2329 */  bl        __OSUnlockSramEx
/* 0BACE0 800BDCE0 7FC3F378 */  mr        r3, r30
/* 0BACE4 800BDCE4 480001B0 */  b         lbl_800BDE94
lbl_800BDCE8:
/* 0BACE8 800BDCE8 38000001 */  li        r0, 0x1
/* 0BACEC 800BDCEC 901F0024 */  stw       r0, 0x24(r31)
/* 0BACF0 800BDCF0 4BFE1F8D */  bl        __OSLockSramEx
/* 0BACF4 800BDCF4 1C1D000C */  mulli     r0, r29, 0xc
/* 0BACF8 800BDCF8 3BC30000 */  addi      r30, r3, 0x0
/* 0BACFC 800BDCFC 7CBE0214 */  add       r5, r30, r0
/* 0BAD00 800BDD00 88850000 */  lbz       r4, 0x0(r5)
/* 0BAD04 800BDD04 38C00008 */  li        r6, 0x8
/* 0BAD08 800BDD08 88050001 */  lbz       r0, 0x1(r5)
/* 0BAD0C 800BDD0C 88650002 */  lbz       r3, 0x2(r5)
/* 0BAD10 800BDD10 7F840214 */  add       r28, r4, r0
/* 0BAD14 800BDD14 88050003 */  lbz       r0, 0x3(r5)
/* 0BAD18 800BDD18 7F9C1A14 */  add       r28, r28, r3
/* 0BAD1C 800BDD1C 88650004 */  lbz       r3, 0x4(r5)
/* 0BAD20 800BDD20 7F9C0214 */  add       r28, r28, r0
/* 0BAD24 800BDD24 88050005 */  lbz       r0, 0x5(r5)
/* 0BAD28 800BDD28 7F9C1A14 */  add       r28, r28, r3
/* 0BAD2C 800BDD2C 88650006 */  lbz       r3, 0x6(r5)
/* 0BAD30 800BDD30 7F9C0214 */  add       r28, r28, r0
/* 0BAD34 800BDD34 88050007 */  lbz       r0, 0x7(r5)
/* 0BAD38 800BDD38 7F9C1A14 */  add       r28, r28, r3
/* 0BAD3C 800BDD3C 7F9C0214 */  add       r28, r28, r0
/* 0BAD40 800BDD40 4800014C */  b         lbl_800BDE8C
lbl_800BDD44:
/* 0BAD44 800BDD44 2006000C */  subfic    r0, r6, 0xc
/* 0BAD48 800BDD48 2C06000C */  cmpwi     r6, 0xc
/* 0BAD4C 800BDD4C 7C0903A6 */  mtctr     r0
/* 0BAD50 800BDD50 40800014 */  bge       lbl_800BDD64
lbl_800BDD54:
/* 0BAD54 800BDD54 88030000 */  lbz       r0, 0x0(r3)
/* 0BAD58 800BDD58 38630001 */  addi      r3, r3, 0x1
/* 0BAD5C 800BDD5C 7F9C0214 */  add       r28, r28, r0
/* 0BAD60 800BDD60 4200FFF4 */  bdnz      lbl_800BDD54
lbl_800BDD64:
/* 0BAD64 800BDD64 38600000 */  li        r3, 0x0
/* 0BAD68 800BDD68 4BFE229D */  bl        __OSUnlockSramEx
/* 0BAD6C 800BDD6C 7C7EEA14 */  add       r3, r30, r29
/* 0BAD70 800BDD70 7F80E0F8 */  nor       r0, r28, r28
/* 0BAD74 800BDD74 88630026 */  lbz       r3, 0x26(r3)
/* 0BAD78 800BDD78 5400063E */  clrlwi    r0, r0, 24
/* 0BAD7C 800BDD7C 7C030040 */  cmplw     r3, r0
/* 0BAD80 800BDD80 4182000C */  beq       lbl_800BDD8C
/* 0BAD84 800BDD84 3BC0FFFB */  li        r30, -0x5
/* 0BAD88 800BDD88 480000E0 */  b         lbl_800BDE68
lbl_800BDD8C:
/* 0BAD8C 800BDD8C 801F0024 */  lwz       r0, 0x24(r31)
/* 0BAD90 800BDD90 2C000001 */  cmpwi     r0, 0x1
/* 0BAD94 800BDD94 40820088 */  bne       lbl_800BDE1C
/* 0BAD98 800BDD98 807F0108 */  lwz       r3, 0x108(r31)
/* 0BAD9C 800BDD9C 3C038000 */  addis     r0, r3, 0x8000
/* 0BADA0 800BDDA0 28000004 */  cmplwi    r0, 0x4
/* 0BADA4 800BDDA4 40820034 */  bne       lbl_800BDDD8
/* 0BADA8 800BDDA8 4BFE1ED5 */  bl        __OSLockSramEx
/* 0BADAC 800BDDAC 1C1D000C */  mulli     r0, r29, 0xc
/* 0BADB0 800BDDB0 7F83022E */  lhzx      r28, r3, r0
/* 0BADB4 800BDDB4 38600000 */  li        r3, 0x0
/* 0BADB8 800BDDB8 4BFE224D */  bl        __OSUnlockSramEx
/* 0BADBC 800BDDBC A00D8860 */  lhz       r0, D_8018B7E0@sda21(r0)
/* 0BADC0 800BDDC0 2800FFFF */  cmplwi    r0, 0xffff
/* 0BADC4 800BDDC4 4182000C */  beq       lbl_800BDDD0
/* 0BADC8 800BDDC8 7C1C0040 */  cmplw     r28, r0
/* 0BADCC 800BDDCC 4182000C */  beq       lbl_800BDDD8
lbl_800BDDD0:
/* 0BADD0 800BDDD0 3BC0FFFE */  li        r30, -0x2
/* 0BADD4 800BDDD4 48000094 */  b         lbl_800BDE68
lbl_800BDDD8:
/* 0BADD8 800BDDD8 38000002 */  li        r0, 0x2
/* 0BADDC 800BDDDC 901F0024 */  stw       r0, 0x24(r31)
/* 0BADE0 800BDDE0 387D0000 */  addi      r3, r29, 0x0
/* 0BADE4 800BDDE4 38800001 */  li        r4, 0x1
/* 0BADE8 800BDDE8 4BFFC01D */  bl        __CARDEnableInterrupt
/* 0BADEC 800BDDEC 7C7E1B79 */  mr.       r30, r3
/* 0BADF0 800BDDF0 41800078 */  blt       lbl_800BDE68
/* 0BADF4 800BDDF4 3C60800C */  lis       r3, __CARDExiHandler@ha
/* 0BADF8 800BDDF8 38839BC0 */  addi      r4, r3, __CARDExiHandler@l
/* 0BADFC 800BDDFC 387D0000 */  addi      r3, r29, 0x0
/* 0BAE00 800BDE00 4BFE42F5 */  bl        EXISetExiCallback
/* 0BAE04 800BDE04 7FA3EB78 */  mr        r3, r29
/* 0BAE08 800BDE08 4BFE4FD5 */  bl        EXIUnlock
/* 0BAE0C 800BDE0C 3C800001 */  lis       r4, 0x1
/* 0BAE10 800BDE10 807F0080 */  lwz       r3, 0x80(r31)
/* 0BAE14 800BDE14 3884A000 */  subi      r4, r4, 0x6000
/* 0BAE18 800BDE18 4BFDEE81 */  bl        DCInvalidateRange
lbl_800BDE1C:
/* 0BAE1C 800BDE1C 809F0024 */  lwz       r4, 0x24(r31)
/* 0BAE20 800BDE20 3C60800C */  lis       r3, __CARDMountCallback@ha
/* 0BAE24 800BDE24 801F000C */  lwz       r0, 0xc(r31)
/* 0BAE28 800BDE28 38E3DEB4 */  addi      r7, r3, __CARDMountCallback@l
/* 0BAE2C 800BDE2C 3864FFFE */  subi      r3, r4, 0x2
/* 0BAE30 800BDE30 7C8019D6 */  mullw     r4, r0, r3
/* 0BAE34 800BDE34 80BF0080 */  lwz       r5, 0x80(r31)
/* 0BAE38 800BDE38 54606824 */  slwi      r0, r3, 13
/* 0BAE3C 800BDE3C 7CC50214 */  add       r6, r5, r0
/* 0BAE40 800BDE40 387D0000 */  addi      r3, r29, 0x0
/* 0BAE44 800BDE44 38A02000 */  li        r5, 0x2000
/* 0BAE48 800BDE48 4BFFE289 */  bl        __CARDRead
/* 0BAE4C 800BDE4C 7C7C1B79 */  mr.       r28, r3
/* 0BAE50 800BDE50 40800010 */  bge       lbl_800BDE60
/* 0BAE54 800BDE54 387F0000 */  addi      r3, r31, 0x0
/* 0BAE58 800BDE58 389C0000 */  addi      r4, r28, 0x0
/* 0BAE5C 800BDE5C 4BFFCC6D */  bl        __CARDPutControlBlock
lbl_800BDE60:
/* 0BAE60 800BDE60 7F83E378 */  mr        r3, r28
/* 0BAE64 800BDE64 48000030 */  b         lbl_800BDE94
lbl_800BDE68:
/* 0BAE68 800BDE68 7FA3EB78 */  mr        r3, r29
/* 0BAE6C 800BDE6C 4BFE4F71 */  bl        EXIUnlock
/* 0BAE70 800BDE70 387D0000 */  addi      r3, r29, 0x0
/* 0BAE74 800BDE74 389E0000 */  addi      r4, r30, 0x0
/* 0BAE78 800BDE78 4800035D */  bl        DoUnmount
/* 0BAE7C 800BDE7C 7FC3F378 */  mr        r3, r30
/* 0BAE80 800BDE80 48000014 */  b         lbl_800BDE94
lbl_800BDE84:
/* 0BAE84 800BDE84 38C40008 */  addi      r6, r4, 0x8
/* 0BAE88 800BDE88 4BFFFE10 */  b         lbl_800BDC98
lbl_800BDE8C:
/* 0BAE8C 800BDE8C 38650008 */  addi      r3, r5, 0x8
/* 0BAE90 800BDE90 4BFFFEB4 */  b         lbl_800BDD44
lbl_800BDE94:
/* 0BAE94 800BDE94 80010034 */  lwz       r0, 0x34(r1)
/* 0BAE98 800BDE98 83E1002C */  lwz       r31, 0x2c(r1)
/* 0BAE9C 800BDE9C 83C10028 */  lwz       r30, 0x28(r1)
/* 0BAEA0 800BDEA0 83A10024 */  lwz       r29, 0x24(r1)
/* 0BAEA4 800BDEA4 83810020 */  lwz       r28, 0x20(r1)
/* 0BAEA8 800BDEA8 38210030 */  addi      r1, r1, 0x30
/* 0BAEAC 800BDEAC 7C0803A6 */  mtlr      r0
/* 0BAEB0 800BDEB0 4E800020 */  blr

glabel __CARDMountCallback
/* 0BAEB4 800BDEB4 7C0802A6 */  mflr      r0
/* 0BAEB8 800BDEB8 90010004 */  stw       r0, 0x4(r1)
/* 0BAEBC 800BDEBC 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0BAEC0 800BDEC0 93E1001C */  stw       r31, 0x1c(r1)
/* 0BAEC4 800BDEC4 93C10018 */  stw       r30, 0x18(r1)
/* 0BAEC8 800BDEC8 93A10014 */  stw       r29, 0x14(r1)
/* 0BAECC 800BDECC 3BA40000 */  addi      r29, r4, 0x0
/* 0BAED0 800BDED0 2C1DFFFD */  cmpwi     r29, -0x3
/* 0BAED4 800BDED4 93810010 */  stw       r28, 0x10(r1)
/* 0BAED8 800BDED8 3B830000 */  addi      r28, r3, 0x0
/* 0BAEDC 800BDEDC 1CBC0110 */  mulli     r5, r28, 0x110
/* 0BAEE0 800BDEE0 3C608019 */  lis       r3, D_80188A70@ha
/* 0BAEE4 800BDEE4 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0BAEE8 800BDEE8 7FE02A14 */  add       r31, r0, r5
/* 0BAEEC 800BDEEC 418200A8 */  beq       lbl_800BDF94
/* 0BAEF0 800BDEF0 40800010 */  bge       lbl_800BDF00
/* 0BAEF4 800BDEF4 2C1DFFFB */  cmpwi     r29, -0x5
/* 0BAEF8 800BDEF8 4182009C */  beq       lbl_800BDF94
/* 0BAEFC 800BDEFC 480000A4 */  b         lbl_800BDFA0
lbl_800BDF00:
/* 0BAF00 800BDF00 2C1D0001 */  cmpwi     r29, 0x1
/* 0BAF04 800BDF04 4182004C */  beq       lbl_800BDF50
/* 0BAF08 800BDF08 40800098 */  bge       lbl_800BDFA0
/* 0BAF0C 800BDF0C 2C1D0000 */  cmpwi     r29, 0x0
/* 0BAF10 800BDF10 40800008 */  bge       lbl_800BDF18
/* 0BAF14 800BDF14 4800008C */  b         lbl_800BDFA0
lbl_800BDF18:
/* 0BAF18 800BDF18 807F0024 */  lwz       r3, 0x24(r31)
/* 0BAF1C 800BDF1C 38030001 */  addi      r0, r3, 0x1
/* 0BAF20 800BDF20 2C000007 */  cmpwi     r0, 0x7
/* 0BAF24 800BDF24 901F0024 */  stw       r0, 0x24(r31)
/* 0BAF28 800BDF28 40800018 */  bge       lbl_800BDF40
/* 0BAF2C 800BDF2C 7F83E378 */  mr        r3, r28
/* 0BAF30 800BDF30 4BFFFB75 */  bl        DoMount
/* 0BAF34 800BDF34 7C7D1B79 */  mr.       r29, r3
/* 0BAF38 800BDF38 41800068 */  blt       lbl_800BDFA0
/* 0BAF3C 800BDF3C 48000090 */  b         lbl_800BDFCC
lbl_800BDF40:
/* 0BAF40 800BDF40 7FE3FB78 */  mr        r3, r31
/* 0BAF44 800BDF44 4BFFF2A9 */  bl        __CARDVerify
/* 0BAF48 800BDF48 7C7D1B78 */  mr        r29, r3
/* 0BAF4C 800BDF4C 48000054 */  b         lbl_800BDFA0
lbl_800BDF50:
/* 0BAF50 800BDF50 3C60800C */  lis       r3, __CARDMountCallback@ha
/* 0BAF54 800BDF54 3803DEB4 */  addi      r0, r3, __CARDMountCallback@l
/* 0BAF58 800BDF58 3C60800C */  lis       r3, __CARDUnlockedHandler@ha
/* 0BAF5C 800BDF5C 901F00DC */  stw       r0, 0xdc(r31)
/* 0BAF60 800BDF60 38A39D80 */  addi      r5, r3, __CARDUnlockedHandler@l
/* 0BAF64 800BDF64 387C0000 */  addi      r3, r28, 0x0
/* 0BAF68 800BDF68 38800000 */  li        r4, 0x0
/* 0BAF6C 800BDF6C 4BFE4D7D */  bl        EXILock
/* 0BAF70 800BDF70 2C030000 */  cmpwi     r3, 0x0
/* 0BAF74 800BDF74 41820058 */  beq       lbl_800BDFCC
/* 0BAF78 800BDF78 38000000 */  li        r0, 0x0
/* 0BAF7C 800BDF7C 901F00DC */  stw       r0, 0xdc(r31)
/* 0BAF80 800BDF80 7F83E378 */  mr        r3, r28
/* 0BAF84 800BDF84 4BFFFB21 */  bl        DoMount
/* 0BAF88 800BDF88 7C7D1B79 */  mr.       r29, r3
/* 0BAF8C 800BDF8C 41800014 */  blt       lbl_800BDFA0
/* 0BAF90 800BDF90 4800003C */  b         lbl_800BDFCC
lbl_800BDF94:
/* 0BAF94 800BDF94 387C0000 */  addi      r3, r28, 0x0
/* 0BAF98 800BDF98 389D0000 */  addi      r4, r29, 0x0
/* 0BAF9C 800BDF9C 48000239 */  bl        DoUnmount
lbl_800BDFA0:
/* 0BAFA0 800BDFA0 83DF00D0 */  lwz       r30, 0xd0(r31)
/* 0BAFA4 800BDFA4 38000000 */  li        r0, 0x0
/* 0BAFA8 800BDFA8 387F0000 */  addi      r3, r31, 0x0
/* 0BAFAC 800BDFAC 901F00D0 */  stw       r0, 0xd0(r31)
/* 0BAFB0 800BDFB0 7FA4EB78 */  mr        r4, r29
/* 0BAFB4 800BDFB4 4BFFCB15 */  bl        __CARDPutControlBlock
/* 0BAFB8 800BDFB8 399E0000 */  addi      r12, r30, 0x0
/* 0BAFBC 800BDFBC 7D8803A6 */  mtlr      r12
/* 0BAFC0 800BDFC0 387C0000 */  addi      r3, r28, 0x0
/* 0BAFC4 800BDFC4 389D0000 */  addi      r4, r29, 0x0
/* 0BAFC8 800BDFC8 4E800021 */  blrl
lbl_800BDFCC:
/* 0BAFCC 800BDFCC 80010024 */  lwz       r0, 0x24(r1)
/* 0BAFD0 800BDFD0 83E1001C */  lwz       r31, 0x1c(r1)
/* 0BAFD4 800BDFD4 83C10018 */  lwz       r30, 0x18(r1)
/* 0BAFD8 800BDFD8 83A10014 */  lwz       r29, 0x14(r1)
/* 0BAFDC 800BDFDC 83810010 */  lwz       r28, 0x10(r1)
/* 0BAFE0 800BDFE0 38210020 */  addi      r1, r1, 0x20
/* 0BAFE4 800BDFE4 7C0803A6 */  mtlr      r0
/* 0BAFE8 800BDFE8 4E800020 */  blr

glabel CARDMountAsync
/* 0BAFEC 800BDFEC 7C0802A6 */  mflr      r0
/* 0BAFF0 800BDFF0 90010004 */  stw       r0, 0x4(r1)
/* 0BAFF4 800BDFF4 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0BAFF8 800BDFF8 BF410018 */  stmw      r26, 0x18(r1)
/* 0BAFFC 800BDFFC 7C7E1B79 */  mr.       r30, r3
/* 0BB000 800BE000 3B440000 */  addi      r26, r4, 0x0
/* 0BB004 800BE004 3B650000 */  addi      r27, r5, 0x0
/* 0BB008 800BE008 3BA60000 */  addi      r29, r6, 0x0
/* 0BB00C 800BE00C 4180000C */  blt       lbl_800BE018
/* 0BB010 800BE010 2C1E0002 */  cmpwi     r30, 0x2
/* 0BB014 800BE014 4180000C */  blt       lbl_800BE020
lbl_800BE018:
/* 0BB018 800BE018 3860FF80 */  li        r3, -0x80
/* 0BB01C 800BE01C 4800015C */  b         lbl_800BE178
lbl_800BE020:
/* 0BB020 800BE020 3C608000 */  lis       r3, 0x8000
/* 0BB024 800BE024 880330E3 */  lbz       r0, 0x30e3(r3)
/* 0BB028 800BE028 54000631 */  rlwinm.   r0, r0, 0, 24, 24
/* 0BB02C 800BE02C 4182000C */  beq       lbl_800BE038
/* 0BB030 800BE030 3860FFFD */  li        r3, -0x3
/* 0BB034 800BE034 48000144 */  b         lbl_800BE178
lbl_800BE038:
/* 0BB038 800BE038 1C9E0110 */  mulli     r4, r30, 0x110
/* 0BB03C 800BE03C 3C608019 */  lis       r3, D_80188A70@ha
/* 0BB040 800BE040 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0BB044 800BE044 7FE02214 */  add       r31, r0, r4
/* 0BB048 800BE048 4BFE0201 */  bl        OSDisableInterrupts
/* 0BB04C 800BE04C 801F0004 */  lwz       r0, 0x4(r31)
/* 0BB050 800BE050 3B830000 */  addi      r28, r3, 0x0
/* 0BB054 800BE054 2C00FFFF */  cmpwi     r0, -0x1
/* 0BB058 800BE058 40820014 */  bne       lbl_800BE06C
/* 0BB05C 800BE05C 7F83E378 */  mr        r3, r28
/* 0BB060 800BE060 4BFE0211 */  bl        OSRestoreInterrupts
/* 0BB064 800BE064 3860FFFF */  li        r3, -0x1
/* 0BB068 800BE068 48000110 */  b         lbl_800BE178
lbl_800BE06C:
/* 0BB06C 800BE06C 801F0000 */  lwz       r0, 0x0(r31)
/* 0BB070 800BE070 2C000000 */  cmpwi     r0, 0x0
/* 0BB074 800BE074 40820024 */  bne       lbl_800BE098
/* 0BB078 800BE078 7FC3F378 */  mr        r3, r30
/* 0BB07C 800BE07C 4BFE4E3D */  bl        EXIGetState
/* 0BB080 800BE080 54600739 */  rlwinm.   r0, r3, 0, 28, 28
/* 0BB084 800BE084 41820014 */  beq       lbl_800BE098
/* 0BB088 800BE088 7F83E378 */  mr        r3, r28
/* 0BB08C 800BE08C 4BFE01E5 */  bl        OSRestoreInterrupts
/* 0BB090 800BE090 3860FFFE */  li        r3, -0x2
/* 0BB094 800BE094 480000E4 */  b         lbl_800BE178
lbl_800BE098:
/* 0BB098 800BE098 3800FFFF */  li        r0, -0x1
/* 0BB09C 800BE09C 901F0004 */  stw       r0, 0x4(r31)
/* 0BB0A0 800BE0A0 281D0000 */  cmplwi    r29, 0x0
/* 0BB0A4 800BE0A4 935F0080 */  stw       r26, 0x80(r31)
/* 0BB0A8 800BE0A8 937F00C4 */  stw       r27, 0xc4(r31)
/* 0BB0AC 800BE0AC 4182000C */  beq       lbl_800BE0B8
/* 0BB0B0 800BE0B0 7FA0EB78 */  mr        r0, r29
/* 0BB0B4 800BE0B4 4800000C */  b         lbl_800BE0C0
lbl_800BE0B8:
/* 0BB0B8 800BE0B8 3C60800C */  lis       r3, __CARDDefaultApiCallback@ha
/* 0BB0BC 800BE0BC 38039AB0 */  addi      r0, r3, __CARDDefaultApiCallback@l
lbl_800BE0C0:
/* 0BB0C0 800BE0C0 901F00D0 */  stw       r0, 0xd0(r31)
/* 0BB0C4 800BE0C4 38000000 */  li        r0, 0x0
/* 0BB0C8 800BE0C8 901F00CC */  stw       r0, 0xcc(r31)
/* 0BB0CC 800BE0CC 801F0000 */  lwz       r0, 0x0(r31)
/* 0BB0D0 800BE0D0 2C000000 */  cmpwi     r0, 0x0
/* 0BB0D4 800BE0D4 40820034 */  bne       lbl_800BE108
/* 0BB0D8 800BE0D8 3C60800C */  lis       r3, __CARDExtHandler@ha
/* 0BB0DC 800BE0DC 38839AE8 */  addi      r4, r3, __CARDExtHandler@l
/* 0BB0E0 800BE0E0 387E0000 */  addi      r3, r30, 0x0
/* 0BB0E4 800BE0E4 4BFE4335 */  bl        EXIAttach
/* 0BB0E8 800BE0E8 2C030000 */  cmpwi     r3, 0x0
/* 0BB0EC 800BE0EC 4082001C */  bne       lbl_800BE108
/* 0BB0F0 800BE0F0 3800FFFD */  li        r0, -0x3
/* 0BB0F4 800BE0F4 901F0004 */  stw       r0, 0x4(r31)
/* 0BB0F8 800BE0F8 7F83E378 */  mr        r3, r28
/* 0BB0FC 800BE0FC 4BFE0175 */  bl        OSRestoreInterrupts
/* 0BB100 800BE100 3860FFFD */  li        r3, -0x3
/* 0BB104 800BE104 48000074 */  b         lbl_800BE178
lbl_800BE108:
/* 0BB108 800BE108 3BA00000 */  li        r29, 0x0
/* 0BB10C 800BE10C 93BF0024 */  stw       r29, 0x24(r31)
/* 0BB110 800BE110 38000001 */  li        r0, 0x1
/* 0BB114 800BE114 387E0000 */  addi      r3, r30, 0x0
/* 0BB118 800BE118 901F0000 */  stw       r0, 0x0(r31)
/* 0BB11C 800BE11C 38800000 */  li        r4, 0x0
/* 0BB120 800BE120 4BFE3FD5 */  bl        EXISetExiCallback
/* 0BB124 800BE124 387F00E0 */  addi      r3, r31, 0xe0
/* 0BB128 800BE128 4BFDDE9D */  bl        OSCancelAlarm
/* 0BB12C 800BE12C 93BF0084 */  stw       r29, 0x84(r31)
/* 0BB130 800BE130 7F83E378 */  mr        r3, r28
/* 0BB134 800BE134 93BF0088 */  stw       r29, 0x88(r31)
/* 0BB138 800BE138 4BFE0139 */  bl        OSRestoreInterrupts
/* 0BB13C 800BE13C 3C60800C */  lis       r3, __CARDMountCallback@ha
/* 0BB140 800BE140 3803DEB4 */  addi      r0, r3, __CARDMountCallback@l
/* 0BB144 800BE144 3C60800C */  lis       r3, __CARDUnlockedHandler@ha
/* 0BB148 800BE148 901F00DC */  stw       r0, 0xdc(r31)
/* 0BB14C 800BE14C 38A39D80 */  addi      r5, r3, __CARDUnlockedHandler@l
/* 0BB150 800BE150 387E0000 */  addi      r3, r30, 0x0
/* 0BB154 800BE154 38800000 */  li        r4, 0x0
/* 0BB158 800BE158 4BFE4B91 */  bl        EXILock
/* 0BB15C 800BE15C 2C030000 */  cmpwi     r3, 0x0
/* 0BB160 800BE160 4082000C */  bne       lbl_800BE16C
/* 0BB164 800BE164 38600000 */  li        r3, 0x0
/* 0BB168 800BE168 48000010 */  b         lbl_800BE178
lbl_800BE16C:
/* 0BB16C 800BE16C 93BF00DC */  stw       r29, 0xdc(r31)
/* 0BB170 800BE170 7FC3F378 */  mr        r3, r30
/* 0BB174 800BE174 4BFFF931 */  bl        DoMount
lbl_800BE178:
/* 0BB178 800BE178 BB410018 */  lmw       r26, 0x18(r1)
/* 0BB17C 800BE17C 80010034 */  lwz       r0, 0x34(r1)
/* 0BB180 800BE180 38210030 */  addi      r1, r1, 0x30
/* 0BB184 800BE184 7C0803A6 */  mtlr      r0
/* 0BB188 800BE188 4E800020 */  blr

glabel CARDMount
/* 0BB18C 800BE18C 7C0802A6 */  mflr      r0
/* 0BB190 800BE190 3CC0800C */  lis       r6, __CARDSyncCallback@ha
/* 0BB194 800BE194 90010004 */  stw       r0, 0x4(r1)
/* 0BB198 800BE198 38C69AB4 */  addi      r6, r6, __CARDSyncCallback@l
/* 0BB19C 800BE19C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0BB1A0 800BE1A0 93E1001C */  stw       r31, 0x1c(r1)
/* 0BB1A4 800BE1A4 3BE30000 */  addi      r31, r3, 0x0
/* 0BB1A8 800BE1A8 4BFFFE45 */  bl        CARDMountAsync
/* 0BB1AC 800BE1AC 2C030000 */  cmpwi     r3, 0x0
/* 0BB1B0 800BE1B0 40800008 */  bge       lbl_800BE1B8
/* 0BB1B4 800BE1B4 4800000C */  b         lbl_800BE1C0
lbl_800BE1B8:
/* 0BB1B8 800BE1B8 7FE3FB78 */  mr        r3, r31
/* 0BB1BC 800BE1BC 4BFFCAF1 */  bl        __CARDSync
lbl_800BE1C0:
/* 0BB1C0 800BE1C0 80010024 */  lwz       r0, 0x24(r1)
/* 0BB1C4 800BE1C4 83E1001C */  lwz       r31, 0x1c(r1)
/* 0BB1C8 800BE1C8 38210020 */  addi      r1, r1, 0x20
/* 0BB1CC 800BE1CC 7C0803A6 */  mtlr      r0
/* 0BB1D0 800BE1D0 4E800020 */  blr

glabel DoUnmount
/* 0BB1D4 800BE1D4 7C0802A6 */  mflr      r0
/* 0BB1D8 800BE1D8 90010004 */  stw       r0, 0x4(r1)
/* 0BB1DC 800BE1DC 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0BB1E0 800BE1E0 93E1001C */  stw       r31, 0x1c(r1)
/* 0BB1E4 800BE1E4 93C10018 */  stw       r30, 0x18(r1)
/* 0BB1E8 800BE1E8 93A10014 */  stw       r29, 0x14(r1)
/* 0BB1EC 800BE1EC 3BA40000 */  addi      r29, r4, 0x0
/* 0BB1F0 800BE1F0 93810010 */  stw       r28, 0x10(r1)
/* 0BB1F4 800BE1F4 3B830000 */  addi      r28, r3, 0x0
/* 0BB1F8 800BE1F8 1CBC0110 */  mulli     r5, r28, 0x110
/* 0BB1FC 800BE1FC 3C608019 */  lis       r3, D_80188A70@ha
/* 0BB200 800BE200 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0BB204 800BE204 7FE02A14 */  add       r31, r0, r5
/* 0BB208 800BE208 4BFE0041 */  bl        OSDisableInterrupts
/* 0BB20C 800BE20C 801F0000 */  lwz       r0, 0x0(r31)
/* 0BB210 800BE210 3BC30000 */  addi      r30, r3, 0x0
/* 0BB214 800BE214 2C000000 */  cmpwi     r0, 0x0
/* 0BB218 800BE218 41820030 */  beq       lbl_800BE248
/* 0BB21C 800BE21C 387C0000 */  addi      r3, r28, 0x0
/* 0BB220 800BE220 38800000 */  li        r4, 0x0
/* 0BB224 800BE224 4BFE3ED1 */  bl        EXISetExiCallback
/* 0BB228 800BE228 7F83E378 */  mr        r3, r28
/* 0BB22C 800BE22C 4BFE42F9 */  bl        EXIDetach
/* 0BB230 800BE230 387F00E0 */  addi      r3, r31, 0xe0
/* 0BB234 800BE234 4BFDDD91 */  bl        OSCancelAlarm
/* 0BB238 800BE238 38000000 */  li        r0, 0x0
/* 0BB23C 800BE23C 901F0000 */  stw       r0, 0x0(r31)
/* 0BB240 800BE240 93BF0004 */  stw       r29, 0x4(r31)
/* 0BB244 800BE244 901F0024 */  stw       r0, 0x24(r31)
lbl_800BE248:
/* 0BB248 800BE248 7FC3F378 */  mr        r3, r30
/* 0BB24C 800BE24C 4BFE0025 */  bl        OSRestoreInterrupts
/* 0BB250 800BE250 80010024 */  lwz       r0, 0x24(r1)
/* 0BB254 800BE254 83E1001C */  lwz       r31, 0x1c(r1)
/* 0BB258 800BE258 83C10018 */  lwz       r30, 0x18(r1)
/* 0BB25C 800BE25C 83A10014 */  lwz       r29, 0x14(r1)
/* 0BB260 800BE260 83810010 */  lwz       r28, 0x10(r1)
/* 0BB264 800BE264 38210020 */  addi      r1, r1, 0x20
/* 0BB268 800BE268 7C0803A6 */  mtlr      r0
/* 0BB26C 800BE26C 4E800020 */  blr

glabel CARDUnmount
/* 0BB270 800BE270 7C0802A6 */  mflr      r0
/* 0BB274 800BE274 90010004 */  stw       r0, 0x4(r1)
/* 0BB278 800BE278 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0BB27C 800BE27C 93E1001C */  stw       r31, 0x1c(r1)
/* 0BB280 800BE280 3881000C */  addi      r4, r1, 0xc
/* 0BB284 800BE284 93C10018 */  stw       r30, 0x18(r1)
/* 0BB288 800BE288 93A10014 */  stw       r29, 0x14(r1)
/* 0BB28C 800BE28C 3BA30000 */  addi      r29, r3, 0x0
/* 0BB290 800BE290 4BFFC781 */  bl        __CARDGetControlBlock
/* 0BB294 800BE294 2C030000 */  cmpwi     r3, 0x0
/* 0BB298 800BE298 40800008 */  bge       lbl_800BE2A0
/* 0BB29C 800BE29C 48000064 */  b         lbl_800BE300
lbl_800BE2A0:
/* 0BB2A0 800BE2A0 1C9D0110 */  mulli     r4, r29, 0x110
/* 0BB2A4 800BE2A4 3C608019 */  lis       r3, D_80188A70@ha
/* 0BB2A8 800BE2A8 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0BB2AC 800BE2AC 7FC02214 */  add       r30, r0, r4
/* 0BB2B0 800BE2B0 4BFDFF99 */  bl        OSDisableInterrupts
/* 0BB2B4 800BE2B4 801E0000 */  lwz       r0, 0x0(r30)
/* 0BB2B8 800BE2B8 3BE30000 */  addi      r31, r3, 0x0
/* 0BB2BC 800BE2BC 2C000000 */  cmpwi     r0, 0x0
/* 0BB2C0 800BE2C0 41820034 */  beq       lbl_800BE2F4
/* 0BB2C4 800BE2C4 387D0000 */  addi      r3, r29, 0x0
/* 0BB2C8 800BE2C8 38800000 */  li        r4, 0x0
/* 0BB2CC 800BE2CC 4BFE3E29 */  bl        EXISetExiCallback
/* 0BB2D0 800BE2D0 7FA3EB78 */  mr        r3, r29
/* 0BB2D4 800BE2D4 4BFE4251 */  bl        EXIDetach
/* 0BB2D8 800BE2D8 387E00E0 */  addi      r3, r30, 0xe0
/* 0BB2DC 800BE2DC 4BFDDCE9 */  bl        OSCancelAlarm
/* 0BB2E0 800BE2E0 38600000 */  li        r3, 0x0
/* 0BB2E4 800BE2E4 907E0000 */  stw       r3, 0x0(r30)
/* 0BB2E8 800BE2E8 3800FFFD */  li        r0, -0x3
/* 0BB2EC 800BE2EC 901E0004 */  stw       r0, 0x4(r30)
/* 0BB2F0 800BE2F0 907E0024 */  stw       r3, 0x24(r30)
lbl_800BE2F4:
/* 0BB2F4 800BE2F4 7FE3FB78 */  mr        r3, r31
/* 0BB2F8 800BE2F8 4BFDFF79 */  bl        OSRestoreInterrupts
/* 0BB2FC 800BE2FC 38600000 */  li        r3, 0x0
lbl_800BE300:
/* 0BB300 800BE300 80010024 */  lwz       r0, 0x24(r1)
/* 0BB304 800BE304 83E1001C */  lwz       r31, 0x1c(r1)
/* 0BB308 800BE308 83C10018 */  lwz       r30, 0x18(r1)
/* 0BB30C 800BE30C 83A10014 */  lwz       r29, 0x14(r1)
/* 0BB310 800BE310 38210020 */  addi      r1, r1, 0x20
/* 0BB314 800BE314 7C0803A6 */  mtlr      r0
/* 0BB318 800BE318 4E800020 */  blr

# 0x800F4D00 - 0x800F4D40
.section .data, "wa"

.balign 8

glabel D_800F4D00
	.long 0x00002000
	.long 0x00004000
	.long 0x00008000
	.long 0x00010000
	.long 0x00020000
	.long 0x00040000
	.long 0x00000000
	.long 0x00000000

glabel D_800F4D20
	.long 0x00000004
	.long 0x00000008
	.long 0x00000010
	.long 0x00000020
	.long 0x00000040
	.long 0x00000080
	.long 0x00000100
	.long 0x00000200
