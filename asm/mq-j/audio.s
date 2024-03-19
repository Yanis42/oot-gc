# audio.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8008DC44 - 0x8008DFD8

glabel audioEvent
/* 08AC44 8008DC44 7C0802A6 */  mflr      r0
/* 08AC48 8008DC48 2C040003 */  cmpwi     r4, 0x3
/* 08AC4C 8008DC4C 90010004 */  stw       r0, 0x4(r1)
/* 08AC50 8008DC50 9421FFE0 */  stwu      r1, -0x20(r1)
/* 08AC54 8008DC54 93E1001C */  stw       r31, 0x1c(r1)
/* 08AC58 8008DC58 3BE50000 */  addi      r31, r5, 0x0
/* 08AC5C 8008DC5C 93C10018 */  stw       r30, 0x18(r1)
/* 08AC60 8008DC60 3BC30000 */  addi      r30, r3, 0x0
/* 08AC64 8008DC64 418200D8 */  beq       lbl_8008DD3C
/* 08AC68 8008DC68 40800018 */  bge       lbl_8008DC80
/* 08AC6C 8008DC6C 2C040002 */  cmpwi     r4, 0x2
/* 08AC70 8008DC70 4080001C */  bge       lbl_8008DC8C
/* 08AC74 8008DC74 2C040000 */  cmpwi     r4, 0x0
/* 08AC78 8008DC78 408000C4 */  bge       lbl_8008DD3C
/* 08AC7C 8008DC7C 480000B8 */  b         lbl_8008DD34
lbl_8008DC80:
/* 08AC80 8008DC80 2C041002 */  cmpwi     r4, 0x1002
/* 08AC84 8008DC84 41820030 */  beq       lbl_8008DCB4
/* 08AC88 8008DC88 480000AC */  b         lbl_8008DD34
lbl_8008DC8C:
/* 08AC8C 8008DC8C 38600000 */  li        r3, 0x0
/* 08AC90 8008DC90 907E0000 */  stw       r3, 0x0(r30)
/* 08AC94 8008DC94 38000001 */  li        r0, 0x1
/* 08AC98 8008DC98 901E000C */  stw       r0, 0xc(r30)
/* 08AC9C 8008DC9C 907E0010 */  stw       r3, 0x10(r30)
/* 08ACA0 8008DCA0 907E0014 */  stw       r3, 0x14(r30)
/* 08ACA4 8008DCA4 907E0018 */  stw       r3, 0x18(r30)
/* 08ACA8 8008DCA8 93FE0008 */  stw       r31, 0x8(r30)
/* 08ACAC 8008DCAC 901E0004 */  stw       r0, 0x4(r30)
/* 08ACB0 8008DCB0 4800008C */  b         lbl_8008DD3C
lbl_8008DCB4:
/* 08ACB4 8008DCB4 807E0008 */  lwz       r3, 0x8(r30)
/* 08ACB8 8008DCB8 3CA08009 */  lis       r5, audioPut8@ha
/* 08ACBC 8008DCBC 3CC08009 */  lis       r6, audioPut16@ha
/* 08ACC0 8008DCC0 3CE08009 */  lis       r7, audioPut32@ha
/* 08ACC4 8008DCC4 80630024 */  lwz       r3, 0x24(r3)
/* 08ACC8 8008DCC8 3C808009 */  lis       r4, audioPut64@ha
/* 08ACCC 8008DCCC 3904DE78 */  addi      r8, r4, audioPut64@l
/* 08ACD0 8008DCD0 38A5DFD0 */  addi      r5, r5, audioPut8@l
/* 08ACD4 8008DCD4 38C6DFC8 */  addi      r6, r6, audioPut16@l
/* 08ACD8 8008DCD8 38E7DE80 */  addi      r7, r7, audioPut32@l
/* 08ACDC 8008DCDC 389F0000 */  addi      r4, r31, 0x0
/* 08ACE0 8008DCE0 4BFA6C05 */  bl        cpuSetDevicePut
/* 08ACE4 8008DCE4 2C030000 */  cmpwi     r3, 0x0
/* 08ACE8 8008DCE8 4082000C */  bne       lbl_8008DCF4
/* 08ACEC 8008DCEC 38600000 */  li        r3, 0x0
/* 08ACF0 8008DCF0 48000050 */  b         lbl_8008DD40
lbl_8008DCF4:
/* 08ACF4 8008DCF4 807E0008 */  lwz       r3, 0x8(r30)
/* 08ACF8 8008DCF8 3CA08009 */  lis       r5, audioGet8@ha
/* 08ACFC 8008DCFC 3CC08009 */  lis       r6, audioGet16@ha
/* 08AD00 8008DD00 3CE08009 */  lis       r7, audioGet32@ha
/* 08AD04 8008DD04 80630024 */  lwz       r3, 0x24(r3)
/* 08AD08 8008DD08 3C808009 */  lis       r4, audioGet64@ha
/* 08AD0C 8008DD0C 3904DD58 */  addi      r8, r4, audioGet64@l
/* 08AD10 8008DD10 38A5DE70 */  addi      r5, r5, audioGet8@l
/* 08AD14 8008DD14 38C6DE68 */  addi      r6, r6, audioGet16@l
/* 08AD18 8008DD18 38E7DD60 */  addi      r7, r7, audioGet32@l
/* 08AD1C 8008DD1C 389F0000 */  addi      r4, r31, 0x0
/* 08AD20 8008DD20 4BFA6BDD */  bl        cpuSetDeviceGet
/* 08AD24 8008DD24 2C030000 */  cmpwi     r3, 0x0
/* 08AD28 8008DD28 40820014 */  bne       lbl_8008DD3C
/* 08AD2C 8008DD2C 38600000 */  li        r3, 0x0
/* 08AD30 8008DD30 48000010 */  b         lbl_8008DD40
lbl_8008DD34:
/* 08AD34 8008DD34 38600000 */  li        r3, 0x0
/* 08AD38 8008DD38 48000008 */  b         lbl_8008DD40
lbl_8008DD3C:
/* 08AD3C 8008DD3C 38600001 */  li        r3, 0x1
lbl_8008DD40:
/* 08AD40 8008DD40 80010024 */  lwz       r0, 0x24(r1)
/* 08AD44 8008DD44 83E1001C */  lwz       r31, 0x1c(r1)
/* 08AD48 8008DD48 83C10018 */  lwz       r30, 0x18(r1)
/* 08AD4C 8008DD4C 7C0803A6 */  mtlr      r0
/* 08AD50 8008DD50 38210020 */  addi      r1, r1, 0x20
/* 08AD54 8008DD54 4E800020 */  blr

glabel audioGet64
/* 08AD58 8008DD58 38600000 */  li        r3, 0x0
/* 08AD5C 8008DD5C 4E800020 */  blr

glabel audioGet32
/* 08AD60 8008DD60 7C0802A6 */  mflr      r0
/* 08AD64 8008DD64 90010004 */  stw       r0, 0x4(r1)
/* 08AD68 8008DD68 548006FE */  clrlwi    r0, r4, 27
/* 08AD6C 8008DD6C 28000014 */  cmplwi    r0, 0x14
/* 08AD70 8008DD70 9421FFE0 */  stwu      r1, -0x20(r1)
/* 08AD74 8008DD74 93E1001C */  stw       r31, 0x1c(r1)
/* 08AD78 8008DD78 3BE50000 */  addi      r31, r5, 0x0
/* 08AD7C 8008DD7C 93C10018 */  stw       r30, 0x18(r1)
/* 08AD80 8008DD80 3BC30000 */  addi      r30, r3, 0x0
/* 08AD84 8008DD84 418100C0 */  bgt       lbl_8008DE44
/* 08AD88 8008DD88 3C60800F */  lis       r3, jtbl_800EFC84@ha
/* 08AD8C 8008DD8C 3863FC84 */  addi      r3, r3, jtbl_800EFC84@l
/* 08AD90 8008DD90 5400103A */  slwi      r0, r0, 2
/* 08AD94 8008DD94 7C03002E */  lwzx      r0, r3, r0
/* 08AD98 8008DD98 7C0903A6 */  mtctr     r0
/* 08AD9C 8008DD9C 4E800420 */  bctr
lbl_8008DDA0:
/* 08ADA0 8008DDA0 801E0010 */  lwz       r0, 0x10(r30)
/* 08ADA4 8008DDA4 3C60800F */  lis       r3, D_800EFC48@ha
/* 08ADA8 8008DDA8 3863FC48 */  addi      r3, r3, D_800EFC48@l
/* 08ADAC 8008DDAC 4CC63182 */  crclr     cr1eq
/* 08ADB0 8008DDB0 901F0000 */  stw       r0, 0x0(r31)
/* 08ADB4 8008DDB4 388D8620 */  li        r4, D_8018B5A0@sda21
/* 08ADB8 8008DDB8 38A000DA */  li        r5, 0xda
/* 08ADBC 8008DDBC 4BF77FB9 */  bl        xlPostText
/* 08ADC0 8008DDC0 4800008C */  b         lbl_8008DE4C
lbl_8008DDC4:
/* 08ADC4 8008DDC4 807E0008 */  lwz       r3, 0x8(r30)
/* 08ADC8 8008DDC8 7FE4FB78 */  mr        r4, r31
/* 08ADCC 8008DDCC 80630004 */  lwz       r3, 0x4(r3)
/* 08ADD0 8008DDD0 4BF8EA01 */  bl        soundGetDMABuffer
/* 08ADD4 8008DDD4 2C030000 */  cmpwi     r3, 0x0
/* 08ADD8 8008DDD8 40820074 */  bne       lbl_8008DE4C
/* 08ADDC 8008DDDC 801E0000 */  lwz       r0, 0x0(r30)
/* 08ADE0 8008DDE0 901F0000 */  stw       r0, 0x0(r31)
/* 08ADE4 8008DDE4 48000068 */  b         lbl_8008DE4C
lbl_8008DDE8:
/* 08ADE8 8008DDE8 801E000C */  lwz       r0, 0xc(r30)
/* 08ADEC 8008DDEC 3C60800F */  lis       r3, D_800EFC68@ha
/* 08ADF0 8008DDF0 3863FC68 */  addi      r3, r3, D_800EFC68@l
/* 08ADF4 8008DDF4 4CC63182 */  crclr     cr1eq
/* 08ADF8 8008DDF8 901F0000 */  stw       r0, 0x0(r31)
/* 08ADFC 8008DDFC 388D8620 */  li        r4, D_8018B5A0@sda21
/* 08AE00 8008DE00 38A000E4 */  li        r5, 0xe4
/* 08AE04 8008DE04 4BF77F71 */  bl        xlPostText
/* 08AE08 8008DE08 48000044 */  b         lbl_8008DE4C
lbl_8008DE0C:
/* 08AE0C 8008DE0C 48028FD9 */  bl        AIGetDMABytesLeft
/* 08AE10 8008DE10 28030000 */  cmplwi    r3, 0x0
/* 08AE14 8008DE14 4182000C */  beq       lbl_8008DE20
/* 08AE18 8008DE18 3C004000 */  lis       r0, 0x4000
/* 08AE1C 8008DE1C 48000008 */  b         lbl_8008DE24
lbl_8008DE20:
/* 08AE20 8008DE20 38000000 */  li        r0, 0x0
lbl_8008DE24:
/* 08AE24 8008DE24 901F0000 */  stw       r0, 0x0(r31)
/* 08AE28 8008DE28 48000024 */  b         lbl_8008DE4C
lbl_8008DE2C:
/* 08AE2C 8008DE2C 801E0018 */  lwz       r0, 0x18(r30)
/* 08AE30 8008DE30 901F0000 */  stw       r0, 0x0(r31)
/* 08AE34 8008DE34 48000018 */  b         lbl_8008DE4C
lbl_8008DE38:
/* 08AE38 8008DE38 801E0014 */  lwz       r0, 0x14(r30)
/* 08AE3C 8008DE3C 901F0000 */  stw       r0, 0x0(r31)
/* 08AE40 8008DE40 4800000C */  b         lbl_8008DE4C
lbl_8008DE44:
/* 08AE44 8008DE44 38600000 */  li        r3, 0x0
/* 08AE48 8008DE48 48000008 */  b         lbl_8008DE50
lbl_8008DE4C:
/* 08AE4C 8008DE4C 38600001 */  li        r3, 0x1
lbl_8008DE50:
/* 08AE50 8008DE50 80010024 */  lwz       r0, 0x24(r1)
/* 08AE54 8008DE54 83E1001C */  lwz       r31, 0x1c(r1)
/* 08AE58 8008DE58 83C10018 */  lwz       r30, 0x18(r1)
/* 08AE5C 8008DE5C 7C0803A6 */  mtlr      r0
/* 08AE60 8008DE60 38210020 */  addi      r1, r1, 0x20
/* 08AE64 8008DE64 4E800020 */  blr

glabel audioGet16
/* 08AE68 8008DE68 38600000 */  li        r3, 0x0
/* 08AE6C 8008DE6C 4E800020 */  blr

glabel audioGet8
/* 08AE70 8008DE70 38600000 */  li        r3, 0x0
/* 08AE74 8008DE74 4E800020 */  blr

glabel audioPut64
/* 08AE78 8008DE78 38600000 */  li        r3, 0x0
/* 08AE7C 8008DE7C 4E800020 */  blr

glabel audioPut32
/* 08AE80 8008DE80 7C0802A6 */  mflr      r0
/* 08AE84 8008DE84 90010004 */  stw       r0, 0x4(r1)
/* 08AE88 8008DE88 548006FE */  clrlwi    r0, r4, 27
/* 08AE8C 8008DE8C 28000014 */  cmplwi    r0, 0x14
/* 08AE90 8008DE90 9421FFE0 */  stwu      r1, -0x20(r1)
/* 08AE94 8008DE94 93E1001C */  stw       r31, 0x1c(r1)
/* 08AE98 8008DE98 3BE30000 */  addi      r31, r3, 0x0
/* 08AE9C 8008DE9C 4181010C */  bgt       lbl_8008DFA8
/* 08AEA0 8008DEA0 3C60800F */  lis       r3, jtbl_800EFCD8@ha
/* 08AEA4 8008DEA4 3863FCD8 */  addi      r3, r3, jtbl_800EFCD8@l
/* 08AEA8 8008DEA8 5400103A */  slwi      r0, r0, 2
/* 08AEAC 8008DEAC 7C03002E */  lwzx      r0, r3, r0
/* 08AEB0 8008DEB0 7C0903A6 */  mtctr     r0
/* 08AEB4 8008DEB4 4E800420 */  bctr
lbl_8008DEB8:
/* 08AEB8 8008DEB8 80050000 */  lwz       r0, 0x0(r5)
/* 08AEBC 8008DEBC 5400023F */  clrlwi.   r0, r0, 8
/* 08AEC0 8008DEC0 901F0010 */  stw       r0, 0x10(r31)
/* 08AEC4 8008DEC4 418200EC */  beq       lbl_8008DFB0
/* 08AEC8 8008DEC8 807F0008 */  lwz       r3, 0x8(r31)
/* 08AECC 8008DECC 38810014 */  addi      r4, r1, 0x14
/* 08AED0 8008DED0 80BF0010 */  lwz       r5, 0x10(r31)
/* 08AED4 8008DED4 38C00000 */  li        r6, 0x0
/* 08AED8 8008DED8 8063002C */  lwz       r3, 0x2c(r3)
/* 08AEDC 8008DEDC 4BFDEA35 */  bl        ramGetBuffer
/* 08AEE0 8008DEE0 2C030000 */  cmpwi     r3, 0x0
/* 08AEE4 8008DEE4 4082000C */  bne       lbl_8008DEF0
/* 08AEE8 8008DEE8 38600000 */  li        r3, 0x0
/* 08AEEC 8008DEEC 480000C8 */  b         lbl_8008DFB4
lbl_8008DEF0:
/* 08AEF0 8008DEF0 801F0004 */  lwz       r0, 0x4(r31)
/* 08AEF4 8008DEF4 2C000000 */  cmpwi     r0, 0x0
/* 08AEF8 8008DEF8 418200B8 */  beq       lbl_8008DFB0
/* 08AEFC 8008DEFC 807F0008 */  lwz       r3, 0x8(r31)
/* 08AF00 8008DF00 80810014 */  lwz       r4, 0x14(r1)
/* 08AF04 8008DF04 80630004 */  lwz       r3, 0x4(r3)
/* 08AF08 8008DF08 4BF8E8FD */  bl        soundSetAddress
/* 08AF0C 8008DF0C 480000A4 */  b         lbl_8008DFB0
lbl_8008DF10:
/* 08AF10 8008DF10 80050000 */  lwz       r0, 0x0(r5)
/* 08AF14 8008DF14 540003B8 */  rlwinm    r0, r0, 0, 14, 28
/* 08AF18 8008DF18 901F0000 */  stw       r0, 0x0(r31)
/* 08AF1C 8008DF1C 801F000C */  lwz       r0, 0xc(r31)
/* 08AF20 8008DF20 2C000000 */  cmpwi     r0, 0x0
/* 08AF24 8008DF24 4182008C */  beq       lbl_8008DFB0
/* 08AF28 8008DF28 801F0004 */  lwz       r0, 0x4(r31)
/* 08AF2C 8008DF2C 2C000000 */  cmpwi     r0, 0x0
/* 08AF30 8008DF30 41820080 */  beq       lbl_8008DFB0
/* 08AF34 8008DF34 807F0008 */  lwz       r3, 0x8(r31)
/* 08AF38 8008DF38 809F0000 */  lwz       r4, 0x0(r31)
/* 08AF3C 8008DF3C 80630004 */  lwz       r3, 0x4(r3)
/* 08AF40 8008DF40 4BF8E8F1 */  bl        soundSetLength
/* 08AF44 8008DF44 4800006C */  b         lbl_8008DFB0
lbl_8008DF48:
/* 08AF48 8008DF48 80050000 */  lwz       r0, 0x0(r5)
/* 08AF4C 8008DF4C 540007FE */  clrlwi    r0, r0, 31
/* 08AF50 8008DF50 901F000C */  stw       r0, 0xc(r31)
/* 08AF54 8008DF54 4800005C */  b         lbl_8008DFB0
lbl_8008DF58:
/* 08AF58 8008DF58 807F0008 */  lwz       r3, 0x8(r31)
/* 08AF5C 8008DF5C 38801001 */  li        r4, 0x1001
/* 08AF60 8008DF60 38A00007 */  li        r5, 0x7
/* 08AF64 8008DF64 4BF79C69 */  bl        xlObjectEvent
/* 08AF68 8008DF68 48000048 */  b         lbl_8008DFB0
lbl_8008DF6C:
/* 08AF6C 8008DF6C 80050000 */  lwz       r0, 0x0(r5)
/* 08AF70 8008DF70 540004BE */  clrlwi    r0, r0, 18
/* 08AF74 8008DF74 901F0018 */  stw       r0, 0x18(r31)
/* 08AF78 8008DF78 801F0004 */  lwz       r0, 0x4(r31)
/* 08AF7C 8008DF7C 2C000000 */  cmpwi     r0, 0x0
/* 08AF80 8008DF80 41820030 */  beq       lbl_8008DFB0
/* 08AF84 8008DF84 807F0008 */  lwz       r3, 0x8(r31)
/* 08AF88 8008DF88 809F0018 */  lwz       r4, 0x18(r31)
/* 08AF8C 8008DF8C 80630004 */  lwz       r3, 0x4(r3)
/* 08AF90 8008DF90 4BF8E881 */  bl        soundSetDACRate
/* 08AF94 8008DF94 4800001C */  b         lbl_8008DFB0
lbl_8008DF98:
/* 08AF98 8008DF98 80050000 */  lwz       r0, 0x0(r5)
/* 08AF9C 8008DF9C 5400073E */  clrlwi    r0, r0, 28
/* 08AFA0 8008DFA0 901F0014 */  stw       r0, 0x14(r31)
/* 08AFA4 8008DFA4 4800000C */  b         lbl_8008DFB0
lbl_8008DFA8:
/* 08AFA8 8008DFA8 38600000 */  li        r3, 0x0
/* 08AFAC 8008DFAC 48000008 */  b         lbl_8008DFB4
lbl_8008DFB0:
/* 08AFB0 8008DFB0 38600001 */  li        r3, 0x1
lbl_8008DFB4:
/* 08AFB4 8008DFB4 80010024 */  lwz       r0, 0x24(r1)
/* 08AFB8 8008DFB8 83E1001C */  lwz       r31, 0x1c(r1)
/* 08AFBC 8008DFBC 38210020 */  addi      r1, r1, 0x20
/* 08AFC0 8008DFC0 7C0803A6 */  mtlr      r0
/* 08AFC4 8008DFC4 4E800020 */  blr

glabel audioPut16
/* 08AFC8 8008DFC8 38600000 */  li        r3, 0x0
/* 08AFCC 8008DFCC 4E800020 */  blr

glabel audioPut8
/* 08AFD0 8008DFD0 38600000 */  li        r3, 0x0
/* 08AFD4 8008DFD4 4E800020 */  blr

# 0x800EFC38 - 0x800EFD30
.section .data, "wa"

.balign 8

glabel gClassAudio
	.long D_8018B598
	.long 0x00000020
	.long 0x00000000
	.long audioEvent

glabel D_800EFC48
	.long 0x4765743A
	.long 0x20445241
	.long 0x4D204164
	.long 0x64726573
	.long 0x733A2057
	.long 0x52495445
	.long 0x2D4F4E4C
	.long 0x593F0000

glabel D_800EFC68
	.long 0x4765743A
	.long 0x20434F4E
	.long 0x54524F4C
	.long 0x3A205752
	.long 0x4954452D
	.long 0x4F4E4C59
	.long 0x3F000000

jtbl_800EFC84:
	.long audioGet32, lbl_8008DDA0
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DDC4
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DDE8
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE0C
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE2C
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE44
	.long audioGet32, lbl_8008DE38

jtbl_800EFCD8:
	.long audioPut32, lbl_8008DEB8
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DF10
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DF48
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DF58
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DF6C
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DFA8
	.long audioPut32, lbl_8008DF98

glabel gap_05_800EFD2C_data
.hidden gap_05_800EFD2C_data
	.long 0x00000000

# 0x8018B598 - 0x8018B5A8
.section .sdata, "wa"

glabel D_8018B598
	.long 0x41554449
	.long 0x4F000000

glabel D_8018B5A0
	.string "audio.c"
