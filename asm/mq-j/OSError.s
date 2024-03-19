# OSError.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009DBC4 - 0x8009E1F0

glabel OSPanic
/* 09ABC4 8009DBC4 7C0802A6 */  mflr      r0
/* 09ABC8 8009DBC8 90010004 */  stw       r0, 0x4(r1)
/* 09ABCC 8009DBCC 9421FF70 */  stwu      r1, -0x90(r1)
/* 09ABD0 8009DBD0 93E1008C */  stw       r31, 0x8c(r1)
/* 09ABD4 8009DBD4 93C10088 */  stw       r30, 0x88(r1)
/* 09ABD8 8009DBD8 93A10084 */  stw       r29, 0x84(r1)
/* 09ABDC 8009DBDC 93810080 */  stw       r28, 0x80(r1)
/* 09ABE0 8009DBE0 40860024 */  bne       cr1, lbl_8009DC04
/* 09ABE4 8009DBE4 D8210028 */  stfd      f1, 0x28(r1)
/* 09ABE8 8009DBE8 D8410030 */  stfd      f2, 0x30(r1)
/* 09ABEC 8009DBEC D8610038 */  stfd      f3, 0x38(r1)
/* 09ABF0 8009DBF0 D8810040 */  stfd      f4, 0x40(r1)
/* 09ABF4 8009DBF4 D8A10048 */  stfd      f5, 0x48(r1)
/* 09ABF8 8009DBF8 D8C10050 */  stfd      f6, 0x50(r1)
/* 09ABFC 8009DBFC D8E10058 */  stfd      f7, 0x58(r1)
/* 09AC00 8009DC00 D9010060 */  stfd      f8, 0x60(r1)
lbl_8009DC04:
/* 09AC04 8009DC04 90610008 */  stw       r3, 0x8(r1)
/* 09AC08 8009DC08 3B830000 */  addi      r28, r3, 0x0
/* 09AC0C 8009DC0C 3BC40000 */  addi      r30, r4, 0x0
/* 09AC10 8009DC10 9081000C */  stw       r4, 0xc(r1)
/* 09AC14 8009DC14 3BA50000 */  addi      r29, r5, 0x0
/* 09AC18 8009DC18 90A10010 */  stw       r5, 0x10(r1)
/* 09AC1C 8009DC1C 90C10014 */  stw       r6, 0x14(r1)
/* 09AC20 8009DC20 3CC0800F */  lis       r6, "@13"@ha
/* 09AC24 8009DC24 3BE62510 */  addi      r31, r6, "@13"@l
/* 09AC28 8009DC28 90E10018 */  stw       r7, 0x18(r1)
/* 09AC2C 8009DC2C 9101001C */  stw       r8, 0x1c(r1)
/* 09AC30 8009DC30 91210020 */  stw       r9, 0x20(r1)
/* 09AC34 8009DC34 91410024 */  stw       r10, 0x24(r1)
/* 09AC38 8009DC38 48000611 */  bl        OSDisableInterrupts
/* 09AC3C 8009DC3C 3C000300 */  lis       r0, 0x300
/* 09AC40 8009DC40 90010074 */  stw       r0, 0x74(r1)
/* 09AC44 8009DC44 38010098 */  addi      r0, r1, 0x98
/* 09AC48 8009DC48 38810074 */  addi      r4, r1, 0x74
/* 09AC4C 8009DC4C 90010078 */  stw       r0, 0x78(r1)
/* 09AC50 8009DC50 38010008 */  addi      r0, r1, 0x8
/* 09AC54 8009DC54 387D0000 */  addi      r3, r29, 0x0
/* 09AC58 8009DC58 9001007C */  stw       r0, 0x7c(r1)
/* 09AC5C 8009DC5C 4802FE05 */  bl        vprintf
/* 09AC60 8009DC60 387F0000 */  addi      r3, r31, 0x0
/* 09AC64 8009DC64 4CC63182 */  crclr     cr1eq
/* 09AC68 8009DC68 389C0000 */  addi      r4, r28, 0x0
/* 09AC6C 8009DC6C 38BE0000 */  addi      r5, r30, 0x0
/* 09AC70 8009DC70 4BFFFED5 */  bl        OSReport
/* 09AC74 8009DC74 387F0018 */  addi      r3, r31, 0x18
/* 09AC78 8009DC78 4CC63182 */  crclr     cr1eq
/* 09AC7C 8009DC7C 4BFFFEC9 */  bl        OSReport
/* 09AC80 8009DC80 3BC00000 */  li        r30, 0x0
/* 09AC84 8009DC84 4BFFFA65 */  bl        OSGetStackPointer
/* 09AC88 8009DC88 7C7D1B78 */  mr        r29, r3
/* 09AC8C 8009DC8C 48000020 */  b         lbl_8009DCAC
lbl_8009DC90:
/* 09AC90 8009DC90 80BD0000 */  lwz       r5, 0x0(r29)
/* 09AC94 8009DC94 7FA4EB78 */  mr        r4, r29
/* 09AC98 8009DC98 80DD0004 */  lwz       r6, 0x4(r29)
/* 09AC9C 8009DC9C 387F0040 */  addi      r3, r31, 0x40
/* 09ACA0 8009DCA0 4CC63182 */  crclr     cr1eq
/* 09ACA4 8009DCA4 4BFFFEA1 */  bl        OSReport
/* 09ACA8 8009DCA8 83BD0000 */  lwz       r29, 0x0(r29)
lbl_8009DCAC:
/* 09ACAC 8009DCAC 281D0000 */  cmplwi    r29, 0x0
/* 09ACB0 8009DCB0 4182001C */  beq       lbl_8009DCCC
/* 09ACB4 8009DCB4 3C1D0001 */  addis     r0, r29, 0x1
/* 09ACB8 8009DCB8 2800FFFF */  cmplwi    r0, 0xffff
/* 09ACBC 8009DCBC 41820010 */  beq       lbl_8009DCCC
/* 09ACC0 8009DCC0 281E0010 */  cmplwi    r30, 0x10
/* 09ACC4 8009DCC4 3BDE0001 */  addi      r30, r30, 0x1
/* 09ACC8 8009DCC8 4180FFC8 */  blt       lbl_8009DC90
lbl_8009DCCC:
/* 09ACCC 8009DCCC 4BFFD5F9 */  bl        PPCHalt
/* 09ACD0 8009DCD0 80010094 */  lwz       r0, 0x94(r1)
/* 09ACD4 8009DCD4 83E1008C */  lwz       r31, 0x8c(r1)
/* 09ACD8 8009DCD8 83C10088 */  lwz       r30, 0x88(r1)
/* 09ACDC 8009DCDC 83A10084 */  lwz       r29, 0x84(r1)
/* 09ACE0 8009DCE0 83810080 */  lwz       r28, 0x80(r1)
/* 09ACE4 8009DCE4 38210090 */  addi      r1, r1, 0x90
/* 09ACE8 8009DCE8 7C0803A6 */  mtlr      r0
/* 09ACEC 8009DCEC 4E800020 */  blr

glabel OSSetErrorHandler
/* 09ACF0 8009DCF0 7C0802A6 */  mflr      r0
/* 09ACF4 8009DCF4 90010004 */  stw       r0, 0x4(r1)
/* 09ACF8 8009DCF8 9421FFD0 */  stwu      r1, -0x30(r1)
/* 09ACFC 8009DCFC 93E1002C */  stw       r31, 0x2c(r1)
/* 09AD00 8009DD00 93C10028 */  stw       r30, 0x28(r1)
/* 09AD04 8009DD04 93A10024 */  stw       r29, 0x24(r1)
/* 09AD08 8009DD08 3BA30000 */  addi      r29, r3, 0x0
/* 09AD0C 8009DD0C 93810020 */  stw       r28, 0x20(r1)
/* 09AD10 8009DD10 3B840000 */  addi      r28, r4, 0x0
/* 09AD14 8009DD14 48000535 */  bl        OSDisableInterrupts
/* 09AD18 8009DD18 3C808018 */  lis       r4, __OSErrorTable@ha
/* 09AD1C 8009DD1C 57A513BA */  clrlslwi  r5, r29, 16, 2
/* 09AD20 8009DD20 380472D0 */  addi      r0, r4, __OSErrorTable@l
/* 09AD24 8009DD24 57A6043E */  clrlwi    r6, r29, 16
/* 09AD28 8009DD28 7C802A14 */  add       r4, r0, r5
/* 09AD2C 8009DD2C 83C40000 */  lwz       r30, 0x0(r4)
/* 09AD30 8009DD30 28060010 */  cmplwi    r6, 0x10
/* 09AD34 8009DD34 7C7D1B78 */  mr        r29, r3
/* 09AD38 8009DD38 93840000 */  stw       r28, 0x0(r4)
/* 09AD3C 8009DD3C 408201A0 */  bne       lbl_8009DEDC
/* 09AD40 8009DD40 4BFFD545 */  bl        PPCMfmsr
/* 09AD44 8009DD44 3BE30000 */  addi      r31, r3, 0x0
/* 09AD48 8009DD48 63E32000 */  ori       r3, r31, 0x2000
/* 09AD4C 8009DD4C 4BFFD541 */  bl        PPCMtmsr
/* 09AD50 8009DD50 4BFFD589 */  bl        PPCMffpscr
/* 09AD54 8009DD54 281C0000 */  cmplwi    r28, 0x0
/* 09AD58 8009DD58 41820118 */  beq       lbl_8009DE70
/* 09AD5C 8009DD5C 3CA08000 */  lis       r5, 0x8000
/* 09AD60 8009DD60 3C806006 */  lis       r4, 0x6006
/* 09AD64 8009DD64 80C500DC */  lwz       r6, 0xdc(r5)
/* 09AD68 8009DD68 3884F8FF */  subi      r4, r4, 0x701
/* 09AD6C 8009DD6C 480000E8 */  b         lbl_8009DE54
lbl_8009DD70:
/* 09AD70 8009DD70 8006019C */  lwz       r0, 0x19c(r6)
/* 09AD74 8009DD74 60000900 */  ori       r0, r0, 0x900
/* 09AD78 8009DD78 9006019C */  stw       r0, 0x19c(r6)
/* 09AD7C 8009DD7C A0A601A2 */  lhz       r5, 0x1a2(r6)
/* 09AD80 8009DD80 54A007FF */  clrlwi.   r0, r5, 31
/* 09AD84 8009DD84 408200AC */  bne       lbl_8009DE30
/* 09AD88 8009DD88 60A50001 */  ori       r5, r5, 0x1
/* 09AD8C 8009DD8C 38000004 */  li        r0, 0x4
/* 09AD90 8009DD90 B0A601A2 */  sth       r5, 0x1a2(r6)
/* 09AD94 8009DD94 7C0903A6 */  mtctr     r0
/* 09AD98 8009DD98 38A60000 */  addi      r5, r6, 0x0
lbl_8009DD9C:
/* 09AD9C 8009DD9C 3800FFFF */  li        r0, -0x1
/* 09ADA0 8009DDA0 90050094 */  stw       r0, 0x94(r5)
/* 09ADA4 8009DDA4 90050090 */  stw       r0, 0x90(r5)
/* 09ADA8 8009DDA8 900501CC */  stw       r0, 0x1cc(r5)
/* 09ADAC 8009DDAC 900501C8 */  stw       r0, 0x1c8(r5)
/* 09ADB0 8009DDB0 9005009C */  stw       r0, 0x9c(r5)
/* 09ADB4 8009DDB4 90050098 */  stw       r0, 0x98(r5)
/* 09ADB8 8009DDB8 900501D4 */  stw       r0, 0x1d4(r5)
/* 09ADBC 8009DDBC 900501D0 */  stw       r0, 0x1d0(r5)
/* 09ADC0 8009DDC0 900500A4 */  stw       r0, 0xa4(r5)
/* 09ADC4 8009DDC4 900500A0 */  stw       r0, 0xa0(r5)
/* 09ADC8 8009DDC8 900501DC */  stw       r0, 0x1dc(r5)
/* 09ADCC 8009DDCC 900501D8 */  stw       r0, 0x1d8(r5)
/* 09ADD0 8009DDD0 900500AC */  stw       r0, 0xac(r5)
/* 09ADD4 8009DDD4 900500A8 */  stw       r0, 0xa8(r5)
/* 09ADD8 8009DDD8 900501E4 */  stw       r0, 0x1e4(r5)
/* 09ADDC 8009DDDC 900501E0 */  stw       r0, 0x1e0(r5)
/* 09ADE0 8009DDE0 900500B4 */  stw       r0, 0xb4(r5)
/* 09ADE4 8009DDE4 900500B0 */  stw       r0, 0xb0(r5)
/* 09ADE8 8009DDE8 900501EC */  stw       r0, 0x1ec(r5)
/* 09ADEC 8009DDEC 900501E8 */  stw       r0, 0x1e8(r5)
/* 09ADF0 8009DDF0 900500BC */  stw       r0, 0xbc(r5)
/* 09ADF4 8009DDF4 900500B8 */  stw       r0, 0xb8(r5)
/* 09ADF8 8009DDF8 900501F4 */  stw       r0, 0x1f4(r5)
/* 09ADFC 8009DDFC 900501F0 */  stw       r0, 0x1f0(r5)
/* 09AE00 8009DE00 900500C4 */  stw       r0, 0xc4(r5)
/* 09AE04 8009DE04 900500C0 */  stw       r0, 0xc0(r5)
/* 09AE08 8009DE08 900501FC */  stw       r0, 0x1fc(r5)
/* 09AE0C 8009DE0C 900501F8 */  stw       r0, 0x1f8(r5)
/* 09AE10 8009DE10 900500CC */  stw       r0, 0xcc(r5)
/* 09AE14 8009DE14 900500C8 */  stw       r0, 0xc8(r5)
/* 09AE18 8009DE18 90050204 */  stw       r0, 0x204(r5)
/* 09AE1C 8009DE1C 90050200 */  stw       r0, 0x200(r5)
/* 09AE20 8009DE20 38A50040 */  addi      r5, r5, 0x40
/* 09AE24 8009DE24 4200FF78 */  bdnz      lbl_8009DD9C
/* 09AE28 8009DE28 38000004 */  li        r0, 0x4
/* 09AE2C 8009DE2C 90060194 */  stw       r0, 0x194(r6)
lbl_8009DE30:
/* 09AE30 8009DE30 800D8738 */  lwz       r0, D_8018B6B8@sda21(r0)
/* 09AE34 8009DE34 80A60194 */  lwz       r5, 0x194(r6)
/* 09AE38 8009DE38 54000638 */  rlwinm    r0, r0, 0, 24, 28
/* 09AE3C 8009DE3C 7CA00378 */  or        r0, r5, r0
/* 09AE40 8009DE40 90060194 */  stw       r0, 0x194(r6)
/* 09AE44 8009DE44 80060194 */  lwz       r0, 0x194(r6)
/* 09AE48 8009DE48 7C002038 */  and       r0, r0, r4
/* 09AE4C 8009DE4C 90060194 */  stw       r0, 0x194(r6)
/* 09AE50 8009DE50 80C602FC */  lwz       r6, 0x2fc(r6)
lbl_8009DE54:
/* 09AE54 8009DE54 28060000 */  cmplwi    r6, 0x0
/* 09AE58 8009DE58 4082FF18 */  bne       lbl_8009DD70
/* 09AE5C 8009DE5C 800D8738 */  lwz       r0, D_8018B6B8@sda21(r0)
/* 09AE60 8009DE60 63FF0900 */  ori       r31, r31, 0x900
/* 09AE64 8009DE64 54000638 */  rlwinm    r0, r0, 0, 24, 28
/* 09AE68 8009DE68 7C630378 */  or        r3, r3, r0
/* 09AE6C 8009DE6C 48000058 */  b         lbl_8009DEC4
lbl_8009DE70:
/* 09AE70 8009DE70 3CA08000 */  lis       r5, 0x8000
/* 09AE74 8009DE74 3C806006 */  lis       r4, 0x6006
/* 09AE78 8009DE78 80C500DC */  lwz       r6, 0xdc(r5)
/* 09AE7C 8009DE7C 3884F8FF */  subi      r4, r4, 0x701
/* 09AE80 8009DE80 38A0F6FF */  li        r5, -0x901
/* 09AE84 8009DE84 4800002C */  b         lbl_8009DEB0
lbl_8009DE88:
/* 09AE88 8009DE88 8006019C */  lwz       r0, 0x19c(r6)
/* 09AE8C 8009DE8C 7C002838 */  and       r0, r0, r5
/* 09AE90 8009DE90 9006019C */  stw       r0, 0x19c(r6)
/* 09AE94 8009DE94 80060194 */  lwz       r0, 0x194(r6)
/* 09AE98 8009DE98 5400076E */  rlwinm    r0, r0, 0, 29, 23
/* 09AE9C 8009DE9C 90060194 */  stw       r0, 0x194(r6)
/* 09AEA0 8009DEA0 80060194 */  lwz       r0, 0x194(r6)
/* 09AEA4 8009DEA4 7C002038 */  and       r0, r0, r4
/* 09AEA8 8009DEA8 90060194 */  stw       r0, 0x194(r6)
/* 09AEAC 8009DEAC 80C602FC */  lwz       r6, 0x2fc(r6)
lbl_8009DEB0:
/* 09AEB0 8009DEB0 28060000 */  cmplwi    r6, 0x0
/* 09AEB4 8009DEB4 4082FFD4 */  bne       lbl_8009DE88
/* 09AEB8 8009DEB8 3800F6FF */  li        r0, -0x901
/* 09AEBC 8009DEBC 5463076E */  rlwinm    r3, r3, 0, 29, 23
/* 09AEC0 8009DEC0 7FFF0038 */  and       r31, r31, r0
lbl_8009DEC4:
/* 09AEC4 8009DEC4 3C806006 */  lis       r4, 0x6006
/* 09AEC8 8009DEC8 3804F8FF */  subi      r0, r4, 0x701
/* 09AECC 8009DECC 7C630038 */  and       r3, r3, r0
/* 09AED0 8009DED0 4BFFD429 */  bl        PPCMtfpscr
/* 09AED4 8009DED4 7FE3FB78 */  mr        r3, r31
/* 09AED8 8009DED8 4BFFD3B5 */  bl        PPCMtmsr
lbl_8009DEDC:
/* 09AEDC 8009DEDC 7FA3EB78 */  mr        r3, r29
/* 09AEE0 8009DEE0 48000391 */  bl        OSRestoreInterrupts
/* 09AEE4 8009DEE4 7FC3F378 */  mr        r3, r30
/* 09AEE8 8009DEE8 80010034 */  lwz       r0, 0x34(r1)
/* 09AEEC 8009DEEC 83E1002C */  lwz       r31, 0x2c(r1)
/* 09AEF0 8009DEF0 83C10028 */  lwz       r30, 0x28(r1)
/* 09AEF4 8009DEF4 83A10024 */  lwz       r29, 0x24(r1)
/* 09AEF8 8009DEF8 83810020 */  lwz       r28, 0x20(r1)
/* 09AEFC 8009DEFC 38210030 */  addi      r1, r1, 0x30
/* 09AF00 8009DF00 7C0803A6 */  mtlr      r0
/* 09AF04 8009DF04 4E800020 */  blr

glabel __OSUnhandledException
/* 09AF08 8009DF08 7C0802A6 */  mflr      r0
/* 09AF0C 8009DF0C 3D008018 */  lis       r8, __OSErrorTable@ha
/* 09AF10 8009DF10 90010004 */  stw       r0, 0x4(r1)
/* 09AF14 8009DF14 3CE0800F */  lis       r7, "@13"@ha
/* 09AF18 8009DF18 9421FFC0 */  stwu      r1, -0x40(r1)
/* 09AF1C 8009DF1C BEC10018 */  stmw      r22, 0x18(r1)
/* 09AF20 8009DF20 3B030000 */  addi      r24, r3, 0x0
/* 09AF24 8009DF24 3B240000 */  addi      r25, r4, 0x0
/* 09AF28 8009DF28 3B450000 */  addi      r26, r5, 0x0
/* 09AF2C 8009DF2C 3B660000 */  addi      r27, r6, 0x0
/* 09AF30 8009DF30 3BC872D0 */  addi      r30, r8, __OSErrorTable@l
/* 09AF34 8009DF34 3BE72510 */  addi      r31, r7, "@13"@l
/* 09AF38 8009DF38 480035A9 */  bl        OSGetTime
/* 09AF3C 8009DF3C 80B9019C */  lwz       r5, 0x19c(r25)
/* 09AF40 8009DF40 3B840000 */  addi      r28, r4, 0x0
/* 09AF44 8009DF44 3BA30000 */  addi      r29, r3, 0x0
/* 09AF48 8009DF48 54A007BD */  rlwinm.   r0, r5, 0, 30, 30
/* 09AF4C 8009DF4C 40820018 */  bne       lbl_8009DF64
/* 09AF50 8009DF50 387F005C */  addi      r3, r31, 0x5c
/* 09AF54 8009DF54 4CC63182 */  crclr     cr1eq
/* 09AF58 8009DF58 5704063E */  clrlwi    r4, r24, 24
/* 09AF5C 8009DF5C 4BFFFBE9 */  bl        OSReport
/* 09AF60 8009DF60 48000154 */  b         lbl_8009E0B4
lbl_8009DF64:
/* 09AF64 8009DF64 5700063E */  clrlwi    r0, r24, 24
/* 09AF68 8009DF68 28000006 */  cmplwi    r0, 0x6
/* 09AF6C 8009DF6C 408200D8 */  bne       lbl_8009E044
/* 09AF70 8009DF70 54A002D7 */  rlwinm.   r0, r5, 0, 11, 11
/* 09AF74 8009DF74 418200D0 */  beq       lbl_8009E044
/* 09AF78 8009DF78 801E0040 */  lwz       r0, 0x40(r30)
/* 09AF7C 8009DF7C 28000000 */  cmplwi    r0, 0x0
/* 09AF80 8009DF80 418200C4 */  beq       lbl_8009E044
/* 09AF84 8009DF84 3B000010 */  li        r24, 0x10
/* 09AF88 8009DF88 4BFFD2FD */  bl        PPCMfmsr
/* 09AF8C 8009DF8C 3AE30000 */  addi      r23, r3, 0x0
/* 09AF90 8009DF90 62E32000 */  ori       r3, r23, 0x2000
/* 09AF94 8009DF94 4BFFD2F9 */  bl        PPCMtmsr
/* 09AF98 8009DF98 3C608000 */  lis       r3, 0x8000
/* 09AF9C 8009DF9C 806300D8 */  lwz       r3, 0xd8(r3)
/* 09AFA0 8009DFA0 28030000 */  cmplwi    r3, 0x0
/* 09AFA4 8009DFA4 41820008 */  beq       lbl_8009DFAC
/* 09AFA8 8009DFA8 4BFFF579 */  bl        OSSaveFPUContext
lbl_8009DFAC:
/* 09AFAC 8009DFAC 4BFFD32D */  bl        PPCMffpscr
/* 09AFB0 8009DFB0 3C806006 */  lis       r4, 0x6006
/* 09AFB4 8009DFB4 3AC4F8FF */  subi      r22, r4, 0x701
/* 09AFB8 8009DFB8 7C63B038 */  and       r3, r3, r22
/* 09AFBC 8009DFBC 4BFFD33D */  bl        PPCMtfpscr
/* 09AFC0 8009DFC0 7EE3BB78 */  mr        r3, r23
/* 09AFC4 8009DFC4 4BFFD2C9 */  bl        PPCMtmsr
/* 09AFC8 8009DFC8 3EE08000 */  lis       r23, 0x8000
/* 09AFCC 8009DFCC 801700D8 */  lwz       r0, 0xd8(r23)
/* 09AFD0 8009DFD0 7C00C840 */  cmplw     r0, r25
/* 09AFD4 8009DFD4 40820054 */  bne       lbl_8009E028
/* 09AFD8 8009DFD8 480024B1 */  bl        OSDisableScheduler
/* 09AFDC 8009DFDC 819E0040 */  lwz       r12, 0x40(r30)
/* 09AFE0 8009DFE0 38990000 */  addi      r4, r25, 0x0
/* 09AFE4 8009DFE4 38BA0000 */  addi      r5, r26, 0x0
/* 09AFE8 8009DFE8 4CC63182 */  crclr     cr1eq
/* 09AFEC 8009DFEC 7D8803A6 */  mtlr      r12
/* 09AFF0 8009DFF0 38DB0000 */  addi      r6, r27, 0x0
/* 09AFF4 8009DFF4 38600010 */  li        r3, 0x10
/* 09AFF8 8009DFF8 4E800021 */  blrl
/* 09AFFC 8009DFFC 8079019C */  lwz       r3, 0x19c(r25)
/* 09B000 8009E000 38000000 */  li        r0, 0x0
/* 09B004 8009E004 546304E2 */  rlwinm    r3, r3, 0, 19, 17
/* 09B008 8009E008 9079019C */  stw       r3, 0x19c(r25)
/* 09B00C 8009E00C 901700D8 */  stw       r0, 0xd8(r23)
/* 09B010 8009E010 80190194 */  lwz       r0, 0x194(r25)
/* 09B014 8009E014 7C00B038 */  and       r0, r0, r22
/* 09B018 8009E018 90190194 */  stw       r0, 0x194(r25)
/* 09B01C 8009E01C 480024AD */  bl        OSEnableScheduler
/* 09B020 8009E020 48002975 */  bl        __OSReschedule
/* 09B024 8009E024 48000018 */  b         lbl_8009E03C
lbl_8009E028:
/* 09B028 8009E028 8079019C */  lwz       r3, 0x19c(r25)
/* 09B02C 8009E02C 38000000 */  li        r0, 0x0
/* 09B030 8009E030 546304E2 */  rlwinm    r3, r3, 0, 19, 17
/* 09B034 8009E034 9079019C */  stw       r3, 0x19c(r25)
/* 09B038 8009E038 901700D8 */  stw       r0, 0xd8(r23)
lbl_8009E03C:
/* 09B03C 8009E03C 7F23CB78 */  mr        r3, r25
/* 09B040 8009E040 4BFFF5D1 */  bl        OSLoadContext
lbl_8009E044:
/* 09B044 8009E044 5717063E */  clrlwi    r23, r24, 24
/* 09B048 8009E048 570015BA */  clrlslwi  r0, r24, 24, 2
/* 09B04C 8009E04C 7EDE0214 */  add       r22, r30, r0
/* 09B050 8009E050 80160000 */  lwz       r0, 0x0(r22)
/* 09B054 8009E054 28000000 */  cmplwi    r0, 0x0
/* 09B058 8009E058 41820038 */  beq       lbl_8009E090
/* 09B05C 8009E05C 4800242D */  bl        OSDisableScheduler
/* 09B060 8009E060 81960000 */  lwz       r12, 0x0(r22)
/* 09B064 8009E064 38770000 */  addi      r3, r23, 0x0
/* 09B068 8009E068 38990000 */  addi      r4, r25, 0x0
/* 09B06C 8009E06C 4CC63182 */  crclr     cr1eq
/* 09B070 8009E070 7D8803A6 */  mtlr      r12
/* 09B074 8009E074 38BA0000 */  addi      r5, r26, 0x0
/* 09B078 8009E078 38DB0000 */  addi      r6, r27, 0x0
/* 09B07C 8009E07C 4E800021 */  blrl
/* 09B080 8009E080 48002449 */  bl        OSEnableScheduler
/* 09B084 8009E084 48002911 */  bl        __OSReschedule
/* 09B088 8009E088 7F23CB78 */  mr        r3, r25
/* 09B08C 8009E08C 4BFFF585 */  bl        OSLoadContext
lbl_8009E090:
/* 09B090 8009E090 5700063E */  clrlwi    r0, r24, 24
/* 09B094 8009E094 28000008 */  cmplwi    r0, 0x8
/* 09B098 8009E098 4082000C */  bne       lbl_8009E0A4
/* 09B09C 8009E09C 7F23CB78 */  mr        r3, r25
/* 09B0A0 8009E0A0 4BFFF571 */  bl        OSLoadContext
lbl_8009E0A4:
/* 09B0A4 8009E0A4 387F007C */  addi      r3, r31, 0x7c
/* 09B0A8 8009E0A8 4CC63182 */  crclr     cr1eq
/* 09B0AC 8009E0AC 5704063E */  clrlwi    r4, r24, 24
/* 09B0B0 8009E0B0 4BFFFA95 */  bl        OSReport
lbl_8009E0B4:
/* 09B0B4 8009E0B4 386D873C */  li        r3, "@76"@sda21
/* 09B0B8 8009E0B8 4CC63182 */  crclr     cr1eq
/* 09B0BC 8009E0BC 4BFFFA89 */  bl        OSReport
/* 09B0C0 8009E0C0 7F23CB78 */  mr        r3, r25
/* 09B0C4 8009E0C4 4BFFF70D */  bl        OSDumpContext
/* 09B0C8 8009E0C8 389A0000 */  addi      r4, r26, 0x0
/* 09B0CC 8009E0CC 4CC63182 */  crclr     cr1eq
/* 09B0D0 8009E0D0 38BB0000 */  addi      r5, r27, 0x0
/* 09B0D4 8009E0D4 387F0094 */  addi      r3, r31, 0x94
/* 09B0D8 8009E0D8 4BFFFA6D */  bl        OSReport
/* 09B0DC 8009E0DC 38DC0000 */  addi      r6, r28, 0x0
/* 09B0E0 8009E0E0 4CC63182 */  crclr     cr1eq
/* 09B0E4 8009E0E4 38BD0000 */  addi      r5, r29, 0x0
/* 09B0E8 8009E0E8 387F00C8 */  addi      r3, r31, 0xc8
/* 09B0EC 8009E0EC 4BFFFA59 */  bl        OSReport
/* 09B0F0 8009E0F0 5700063E */  clrlwi    r0, r24, 24
/* 09B0F4 8009E0F4 2800000F */  cmplwi    r0, 0xf
/* 09B0F8 8009E0F8 418100C4 */  bgt       lbl_8009E1BC
/* 09B0FC 8009E0FC 3C60800F */  lis       r3, "@87"@ha
/* 09B100 8009E100 386327EC */  addi      r3, r3, "@87"@l
/* 09B104 8009E104 5400103A */  slwi      r0, r0, 2
/* 09B108 8009E108 7C03002E */  lwzx      r0, r3, r0
/* 09B10C 8009E10C 7C0903A6 */  mtctr     r0
/* 09B110 8009E110 4E800420 */  bctr
lbl_8009E114:
/* 09B114 8009E114 80990198 */  lwz       r4, 0x198(r25)
/* 09B118 8009E118 38BB0000 */  addi      r5, r27, 0x0
/* 09B11C 8009E11C 387F00D8 */  addi      r3, r31, 0xd8
/* 09B120 8009E120 4CC63182 */  crclr     cr1eq
/* 09B124 8009E124 4BFFFA21 */  bl        OSReport
/* 09B128 8009E128 48000094 */  b         lbl_8009E1BC
lbl_8009E12C:
/* 09B12C 8009E12C 80990198 */  lwz       r4, 0x198(r25)
/* 09B130 8009E130 387F0138 */  addi      r3, r31, 0x138
/* 09B134 8009E134 4CC63182 */  crclr     cr1eq
/* 09B138 8009E138 4BFFFA0D */  bl        OSReport
/* 09B13C 8009E13C 48000080 */  b         lbl_8009E1BC
lbl_8009E140:
/* 09B140 8009E140 80990198 */  lwz       r4, 0x198(r25)
/* 09B144 8009E144 38BB0000 */  addi      r5, r27, 0x0
/* 09B148 8009E148 387F0184 */  addi      r3, r31, 0x184
/* 09B14C 8009E14C 4CC63182 */  crclr     cr1eq
/* 09B150 8009E150 4BFFF9F5 */  bl        OSReport
/* 09B154 8009E154 48000068 */  b         lbl_8009E1BC
lbl_8009E158:
/* 09B158 8009E158 80990198 */  lwz       r4, 0x198(r25)
/* 09B15C 8009E15C 38BB0000 */  addi      r5, r27, 0x0
/* 09B160 8009E160 387F01E8 */  addi      r3, r31, 0x1e8
/* 09B164 8009E164 4CC63182 */  crclr     cr1eq
/* 09B168 8009E168 4BFFF9DD */  bl        OSReport
/* 09B16C 8009E16C 48000050 */  b         lbl_8009E1BC
lbl_8009E170:
/* 09B170 8009E170 386D873C */  li        r3, "@76"@sda21
/* 09B174 8009E174 4CC63182 */  crclr     cr1eq
/* 09B178 8009E178 4BFFF9CD */  bl        OSReport
/* 09B17C 8009E17C 3F20CC00 */  lis       r25, 0xcc00
/* 09B180 8009E180 4CC63182 */  crclr     cr1eq
/* 09B184 8009E184 3B195000 */  addi      r24, r25, 0x5000
/* 09B188 8009E188 A0995030 */  lhz       r4, 0x5030(r25)
/* 09B18C 8009E18C 387F0248 */  addi      r3, r31, 0x248
/* 09B190 8009E190 A0B95032 */  lhz       r5, 0x5032(r25)
/* 09B194 8009E194 4BFFF9B1 */  bl        OSReport
/* 09B198 8009E198 A0980020 */  lhz       r4, 0x20(r24)
/* 09B19C 8009E19C 387F0268 */  addi      r3, r31, 0x268
/* 09B1A0 8009E1A0 A0B80022 */  lhz       r5, 0x22(r24)
/* 09B1A4 8009E1A4 4CC63182 */  crclr     cr1eq
/* 09B1A8 8009E1A8 4BFFF99D */  bl        OSReport
/* 09B1AC 8009E1AC 80996014 */  lwz       r4, 0x6014(r25)
/* 09B1B0 8009E1B0 4CC63182 */  crclr     cr1eq
/* 09B1B4 8009E1B4 387F0288 */  addi      r3, r31, 0x288
/* 09B1B8 8009E1B8 4BFFF98D */  bl        OSReport
lbl_8009E1BC:
/* 09B1BC 8009E1BC A88D8B18 */  lha       r4, __OSLastInterrupt@sda21(r0)
/* 09B1C0 8009E1C0 387F02A4 */  addi      r3, r31, 0x2a4
/* 09B1C4 8009E1C4 4CC63182 */  crclr     cr1eq
/* 09B1C8 8009E1C8 80AD8B14 */  lwz       r5, __OSLastInterruptSrr0@sda21(r0)
/* 09B1CC 8009E1CC 80ED8B20 */  lwz       r7, __OSLastInterruptTime@sda21(r0)
/* 09B1D0 8009E1D0 810D8B24 */  lwz       r8, __OSLastInterruptTime+0x4@sda21(r0)
/* 09B1D4 8009E1D4 4BFFF971 */  bl        OSReport
/* 09B1D8 8009E1D8 4BFFD0ED */  bl        PPCHalt
/* 09B1DC 8009E1DC BAC10018 */  lmw       r22, 0x18(r1)
/* 09B1E0 8009E1E0 80010044 */  lwz       r0, 0x44(r1)
/* 09B1E4 8009E1E4 38210040 */  addi      r1, r1, 0x40
/* 09B1E8 8009E1E8 7C0803A6 */  mtlr      r0
/* 09B1EC 8009E1EC 4E800020 */  blr

# 0x800F2510 - 0x800F2830
.section .data, "wa"

.balign 8

"@13":
	.string " in \"%s\" on line %d.\n"

glabel gap_05_800F2526_data
.hidden gap_05_800F2526_data
	.2byte 0x0000

glabel D_800F2528
	.string "\nAddress:      Back Chain    LR Save\n"

glabel gap_05_800F254E_data
.hidden gap_05_800F254E_data
	.2byte 0x0000

glabel D_800F2550
	.string "0x%08x:   0x%08x    0x%08x\n"

glabel D_800F256C
	.string "Non-recoverable Exception %d"

glabel gap_05_800F2589_data
.hidden gap_05_800F2589_data
	.byte 0x00, 0x00, 0x00

glabel D_800F258C
	.string "Unhandled Exception %d"

glabel gap_05_800F25A3_data
.hidden gap_05_800F25A3_data
	.byte 0x00

glabel D_800F25A4
	.string "\nDSISR = 0x%08x                   DAR  = 0x%08x\n"

glabel gap_05_800F25D5_data
.hidden gap_05_800F25D5_data
	.byte 0x00, 0x00, 0x00

glabel D_800F25D8
	.string "TB = 0x%016llx\n"

glabel D_800F25E8
	.string "\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n"

glabel D_800F2648
	.string "\nAttempted to fetch instruction from invalid address 0x%x (read from SRR0)\n"

glabel D_800F2694
	.string "\nInstruction at 0x%x (read from SRR0) attempted to access unaligned address 0x%x (read from DAR)\n"

glabel gap_05_800F26F6_data
.hidden gap_05_800F26F6_data
	.2byte 0x0000

glabel D_800F26F8
	.string "\nProgram exception : Possible illegal instruction/operation at or around 0x%x (read from SRR0)\n"

glabel D_800F2758
	.string "AI DMA Address =   0x%04x%04x\n"

glabel gap_05_800F2777_data
.hidden gap_05_800F2777_data
	.byte 0x00

glabel D_800F2778
	.string "ARAM DMA Address = 0x%04x%04x\n"

glabel gap_05_800F2797_data
.hidden gap_05_800F2797_data
	.byte 0x00

glabel D_800F2798
	.string "DI DMA Address =   0x%08x\n"

glabel gap_05_800F27B3_data
.hidden gap_05_800F27B3_data
	.byte 0x00

glabel D_800F27B4
	.string "\nLast interrupt (%d): SRR0 = 0x%08x  TB = 0x%016llx\n"

glabel gap_05_800F27E9_data
.hidden gap_05_800F27E9_data
	.byte 0x00, 0x00, 0x00

"@87":
	.long __OSUnhandledException, lbl_8009E1BC
	.long __OSUnhandledException, lbl_8009E1BC
	.long __OSUnhandledException, lbl_8009E114
	.long __OSUnhandledException, lbl_8009E12C
	.long __OSUnhandledException, lbl_8009E1BC
	.long __OSUnhandledException, lbl_8009E140
	.long __OSUnhandledException, lbl_8009E158
	.long __OSUnhandledException, lbl_8009E1BC
	.long __OSUnhandledException, lbl_8009E1BC
	.long __OSUnhandledException, lbl_8009E1BC
	.long __OSUnhandledException, lbl_8009E1BC
	.long __OSUnhandledException, lbl_8009E1BC
	.long __OSUnhandledException, lbl_8009E1BC
	.long __OSUnhandledException, lbl_8009E1BC
	.long __OSUnhandledException, lbl_8009E1BC
	.long __OSUnhandledException, lbl_8009E170

glabel gap_05_800F282C_data
.hidden gap_05_800F282C_data
	.long 0x00000000

# 0x801872D0 - 0x80187320
.section .bss, "wa"

glabel __OSErrorTable
	.skip 0x44

glabel gap_06_80187314_bss
.hidden gap_06_80187314_bss
	.skip 0xC

# 0x8018B6B8 - 0x8018B6C0
.section .sdata, "wa"

glabel D_8018B6B8
	.long 0x000000F8

"@76":
	.string "\n"

glabel gap_07_8018B6BE_sdata
.hidden gap_07_8018B6BE_sdata
	.2byte 0x0000
