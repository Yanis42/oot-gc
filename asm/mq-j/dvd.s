# dvd.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B1DB4 - 0x800B4430

glabel defaultOptionalCommandChecker
/* 0AEDB4 800B1DB4 4E800020 */  blr

glabel DVDInit
/* 0AEDB8 800B1DB8 7C0802A6 */  mflr      r0
/* 0AEDBC 800B1DBC 90010004 */  stw       r0, 0x4(r1)
/* 0AEDC0 800B1DC0 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0AEDC4 800B1DC4 93E1000C */  stw       r31, 0xc(r1)
/* 0AEDC8 800B1DC8 800D8D10 */  lwz       r0, DVDInitialized@sda21(r0)
/* 0AEDCC 800B1DCC 2C000000 */  cmpwi     r0, 0x0
/* 0AEDD0 800B1DD0 408200A0 */  bne       lbl_800B1E70
/* 0AEDD4 800B1DD4 806D8800 */  lwz       r3, __DVDVersion@sda21(r0)
/* 0AEDD8 800B1DD8 4BFE9EAD */  bl        OSRegisterVersion
/* 0AEDDC 800B1DDC 3BE00001 */  li        r31, 0x1
/* 0AEDE0 800B1DE0 93ED8D10 */  stw       r31, DVDInitialized@sda21(r0)
/* 0AEDE4 800B1DE4 4BFFF769 */  bl        __DVDFSInit
/* 0AEDE8 800B1DE8 48002649 */  bl        __DVDClearWaitingQueue
/* 0AEDEC 800B1DEC 4BFFE921 */  bl        __DVDInitWA
/* 0AEDF0 800B1DF0 3C008000 */  lis       r0, 0x8000
/* 0AEDF4 800B1DF4 3C60800B */  lis       r3, __DVDInterruptHandler@ha
/* 0AEDF8 800B1DF8 900D8CD8 */  stw       r0, bootInfo@sda21(r0)
/* 0AEDFC 800B1DFC 3883074C */  addi      r4, r3, __DVDInterruptHandler@l
/* 0AEE00 800B1E00 900D8CD4 */  stw       r0, IDShouldBe@sda21(r0)
/* 0AEE04 800B1E04 38600015 */  li        r3, 0x15
/* 0AEE08 800B1E08 4BFEC48D */  bl        __OSSetInterruptHandler
/* 0AEE0C 800B1E0C 38600400 */  li        r3, 0x400
/* 0AEE10 800B1E10 4BFEC889 */  bl        __OSUnmaskInterrupts
/* 0AEE14 800B1E14 386D8CC8 */  li        r3, __DVDThreadQueue@sda21
/* 0AEE18 800B1E18 4BFEE655 */  bl        OSInitThreadQueue
/* 0AEE1C 800B1E1C 3C60CC00 */  lis       r3, 0xcc00
/* 0AEE20 800B1E20 3800002A */  li        r0, 0x2a
/* 0AEE24 800B1E24 90036000 */  stw       r0, 0x6000(r3)
/* 0AEE28 800B1E28 38000000 */  li        r0, 0x0
/* 0AEE2C 800B1E2C 90036004 */  stw       r0, 0x6004(r3)
/* 0AEE30 800B1E30 806D8CD8 */  lwz       r3, bootInfo@sda21(r0)
/* 0AEE34 800B1E34 38630020 */  addi      r3, r3, 0x20
/* 0AEE38 800B1E38 80630000 */  lwz       r3, 0x0(r3)
/* 0AEE3C 800B1E3C 3C031AE0 */  addis     r0, r3, 0x1ae0
/* 0AEE40 800B1E40 28007C22 */  cmplwi    r0, 0x7c22
/* 0AEE44 800B1E44 4082001C */  bne       lbl_800B1E60
/* 0AEE48 800B1E48 3C60800F */  lis       r3, "@18"@ha
/* 0AEE4C 800B1E4C 4CC63182 */  crclr     cr1eq
/* 0AEE50 800B1E50 38633810 */  addi      r3, r3, "@18"@l
/* 0AEE54 800B1E54 4BFEBCF1 */  bl        OSReport
/* 0AEE58 800B1E58 48002B69 */  bl        __fstLoad
/* 0AEE5C 800B1E5C 48000014 */  b         lbl_800B1E70
lbl_800B1E60:
/* 0AEE60 800B1E60 3C03F2EB */  subis     r0, r3, 0xd15
/* 0AEE64 800B1E64 2800EA5E */  cmplwi    r0, 0xea5e
/* 0AEE68 800B1E68 41820008 */  beq       lbl_800B1E70
/* 0AEE6C 800B1E6C 93ED8D0C */  stw       r31, FirstTimeInBootrom@sda21(r0)
lbl_800B1E70:
/* 0AEE70 800B1E70 80010014 */  lwz       r0, 0x14(r1)
/* 0AEE74 800B1E74 83E1000C */  lwz       r31, 0xc(r1)
/* 0AEE78 800B1E78 38210010 */  addi      r1, r1, 0x10
/* 0AEE7C 800B1E7C 7C0803A6 */  mtlr      r0
/* 0AEE80 800B1E80 4E800020 */  blr

glabel fn_800B1E84
/* 0AEE84 800B1E84 7C0802A6 */  mflr      r0
/* 0AEE88 800B1E88 3C60800B */  lis       r3, fn_800B1E84@ha
/* 0AEE8C 800B1E8C 90010004 */  stw       r0, 0x4(r1)
/* 0AEE90 800B1E90 38031E84 */  addi      r0, r3, fn_800B1E84@l
/* 0AEE94 800B1E94 3C608019 */  lis       r3, BB2@ha
/* 0AEE98 800B1E98 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0AEE9C 800B1E9C 38638840 */  addi      r3, r3, BB2@l
/* 0AEEA0 800B1EA0 93E1000C */  stw       r31, 0xc(r1)
/* 0AEEA4 800B1EA4 3BE30008 */  addi      r31, r3, 0x8
/* 0AEEA8 800B1EA8 900D8D14 */  stw       r0, D_8018BC94@sda21(r0)
/* 0AEEAC 800B1EAC 808D8CD8 */  lwz       r4, bootInfo@sda21(r0)
/* 0AEEB0 800B1EB0 801F0000 */  lwz       r0, 0x0(r31)
/* 0AEEB4 800B1EB4 8064003C */  lwz       r3, 0x3c(r4)
/* 0AEEB8 800B1EB8 7C030040 */  cmplw     r3, r0
/* 0AEEBC 800B1EBC 4080001C */  bge       lbl_800B1ED8
/* 0AEEC0 800B1EC0 3C60800F */  lis       r3, D_800F381C@ha
/* 0AEEC4 800B1EC4 4CC63182 */  crclr     cr1eq
/* 0AEEC8 800B1EC8 38A3381C */  addi      r5, r3, D_800F381C@l
/* 0AEECC 800B1ECC 386D880C */  li        r3, D_8018B78C@sda21
/* 0AEED0 800B1ED0 38800276 */  li        r4, 0x276
/* 0AEED4 800B1ED4 4BFEBCF1 */  bl        OSPanic
lbl_800B1ED8:
/* 0AEED8 800B1ED8 3C608019 */  lis       r3, BB2@ha
/* 0AEEDC 800B1EDC 80DF0000 */  lwz       r6, 0x0(r31)
/* 0AEEE0 800B1EE0 38A38840 */  addi      r5, r3, BB2@l
/* 0AEEE4 800B1EE4 80ED8CD8 */  lwz       r7, bootInfo@sda21(r0)
/* 0AEEE8 800B1EE8 3C80800B */  lis       r4, fn_800B1F18@ha
/* 0AEEEC 800B1EEC 80A50004 */  lwz       r5, 0x4(r5)
/* 0AEEF0 800B1EF0 3806001F */  addi      r0, r6, 0x1f
/* 0AEEF4 800B1EF4 80670038 */  lwz       r3, 0x38(r7)
/* 0AEEF8 800B1EF8 38C41F18 */  addi      r6, r4, fn_800B1F18@l
/* 0AEEFC 800B1EFC 54040034 */  clrrwi    r4, r0, 5
/* 0AEF00 800B1F00 4BFFEDB1 */  bl        fn_800B0CB0
/* 0AEF04 800B1F04 80010014 */  lwz       r0, 0x14(r1)
/* 0AEF08 800B1F08 83E1000C */  lwz       r31, 0xc(r1)
/* 0AEF0C 800B1F0C 38210010 */  addi      r1, r1, 0x10
/* 0AEF10 800B1F10 7C0803A6 */  mtlr      r0
/* 0AEF14 800B1F14 4E800020 */  blr

glabel fn_800B1F18
/* 0AEF18 800B1F18 7C0802A6 */  mflr      r0
/* 0AEF1C 800B1F1C 28030010 */  cmplwi    r3, 0x10
/* 0AEF20 800B1F20 90010004 */  stw       r0, 0x4(r1)
/* 0AEF24 800B1F24 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AEF28 800B1F28 93E10014 */  stw       r31, 0x14(r1)
/* 0AEF2C 800B1F2C 40820018 */  bne       lbl_800B1F44
/* 0AEF30 800B1F30 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AEF34 800B1F34 3800FFFF */  li        r0, -0x1
/* 0AEF38 800B1F38 9003000C */  stw       r0, 0xc(r3)
/* 0AEF3C 800B1F3C 48000115 */  bl        fn_800B2050
/* 0AEF40 800B1F40 48000050 */  b         lbl_800B1F90
lbl_800B1F44:
/* 0AEF44 800B1F44 546007FF */  clrlwi.   r0, r3, 31
/* 0AEF48 800B1F48 41820044 */  beq       lbl_800B1F8C
/* 0AEF4C 800B1F4C 3BE00000 */  li        r31, 0x0
/* 0AEF50 800B1F50 93ED8D04 */  stw       r31, D_8018BC84@sda21(r0)
/* 0AEF54 800B1F54 4BFFF5F9 */  bl        __DVDFSInit
/* 0AEF58 800B1F58 3C608019 */  lis       r3, DummyCommandBlock@ha
/* 0AEF5C 800B1F5C 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AEF60 800B1F60 38038880 */  addi      r0, r3, DummyCommandBlock@l
/* 0AEF64 800B1F64 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0AEF68 800B1F68 93E4000C */  stw       r31, 0xc(r4)
/* 0AEF6C 800B1F6C 81840028 */  lwz       r12, 0x28(r4)
/* 0AEF70 800B1F70 280C0000 */  cmplwi    r12, 0x0
/* 0AEF74 800B1F74 41820010 */  beq       lbl_800B1F84
/* 0AEF78 800B1F78 7D8803A6 */  mtlr      r12
/* 0AEF7C 800B1F7C 38600000 */  li        r3, 0x0
/* 0AEF80 800B1F80 4E800021 */  blrl
lbl_800B1F84:
/* 0AEF84 800B1F84 48000E95 */  bl        stateReady
/* 0AEF88 800B1F88 48000008 */  b         lbl_800B1F90
lbl_800B1F8C:
/* 0AEF8C 800B1F8C 480000F9 */  bl        fn_800B2084
lbl_800B1F90:
/* 0AEF90 800B1F90 8001001C */  lwz       r0, 0x1c(r1)
/* 0AEF94 800B1F94 83E10014 */  lwz       r31, 0x14(r1)
/* 0AEF98 800B1F98 38210018 */  addi      r1, r1, 0x18
/* 0AEF9C 800B1F9C 7C0803A6 */  mtlr      r0
/* 0AEFA0 800B1FA0 4E800020 */  blr

cbForStateError:
/* 0AEFA4 800B1FA4 7C0802A6 */  mflr      r0
/* 0AEFA8 800B1FA8 28030010 */  cmplwi    r3, 0x10
/* 0AEFAC 800B1FAC 90010004 */  stw       r0, 0x4(r1)
/* 0AEFB0 800B1FB0 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AEFB4 800B1FB4 93E10014 */  stw       r31, 0x14(r1)
/* 0AEFB8 800B1FB8 40820018 */  bne       lbl_800B1FD0
/* 0AEFBC 800B1FBC 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AEFC0 800B1FC0 3800FFFF */  li        r0, -0x1
/* 0AEFC4 800B1FC4 9003000C */  stw       r0, 0xc(r3)
/* 0AEFC8 800B1FC8 48000089 */  bl        fn_800B2050
/* 0AEFCC 800B1FCC 48000070 */  b         lbl_800B203C
lbl_800B1FD0:
/* 0AEFD0 800B1FD0 480028E9 */  bl        __DVDPrintFatalMessage
/* 0AEFD4 800B1FD4 3C608019 */  lis       r3, DummyCommandBlock@ha
/* 0AEFD8 800B1FD8 83ED8CD0 */  lwz       r31, executing@sda21(r0)
/* 0AEFDC 800B1FDC 38038880 */  addi      r0, r3, DummyCommandBlock@l
/* 0AEFE0 800B1FE0 38600001 */  li        r3, 0x1
/* 0AEFE4 800B1FE4 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0AEFE8 800B1FE8 906D8CE8 */  stw       r3, FatalErrorFlag@sda21(r0)
/* 0AEFEC 800B1FEC 819F0028 */  lwz       r12, 0x28(r31)
/* 0AEFF0 800B1FF0 280C0000 */  cmplwi    r12, 0x0
/* 0AEFF4 800B1FF4 41820014 */  beq       lbl_800B2008
/* 0AEFF8 800B1FF8 7D8803A6 */  mtlr      r12
/* 0AEFFC 800B1FFC 389F0000 */  addi      r4, r31, 0x0
/* 0AF000 800B2000 3860FFFF */  li        r3, -0x1
/* 0AF004 800B2004 4E800021 */  blrl
lbl_800B2008:
/* 0AF008 800B2008 800D8CF0 */  lwz       r0, D_8018BC70@sda21(r0)
/* 0AF00C 800B200C 28000000 */  cmplwi    r0, 0x0
/* 0AF010 800B2010 41820028 */  beq       lbl_800B2038
/* 0AF014 800B2014 818D8CF4 */  lwz       r12, D_8018BC74@sda21(r0)
/* 0AF018 800B2018 38000000 */  li        r0, 0x0
/* 0AF01C 800B201C 900D8CF0 */  stw       r0, D_8018BC70@sda21(r0)
/* 0AF020 800B2020 280C0000 */  cmplwi    r12, 0x0
/* 0AF024 800B2024 41820014 */  beq       lbl_800B2038
/* 0AF028 800B2028 7D8803A6 */  mtlr      r12
/* 0AF02C 800B202C 389F0000 */  addi      r4, r31, 0x0
/* 0AF030 800B2030 38600000 */  li        r3, 0x0
/* 0AF034 800B2034 4E800021 */  blrl
lbl_800B2038:
/* 0AF038 800B2038 48000DE1 */  bl        stateReady
lbl_800B203C:
/* 0AF03C 800B203C 8001001C */  lwz       r0, 0x1c(r1)
/* 0AF040 800B2040 83E10014 */  lwz       r31, 0x14(r1)
/* 0AF044 800B2044 38210018 */  addi      r1, r1, 0x18
/* 0AF048 800B2048 7C0803A6 */  mtlr      r0
/* 0AF04C 800B204C 4E800020 */  blr

glabel fn_800B2050
/* 0AF050 800B2050 7C0802A6 */  mflr      r0
/* 0AF054 800B2054 3C600123 */  lis       r3, 0x123
/* 0AF058 800B2058 90010004 */  stw       r0, 0x4(r1)
/* 0AF05C 800B205C 38634568 */  addi      r3, r3, 0x4568
/* 0AF060 800B2060 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AF064 800B2064 480026E1 */  bl        __DVDStoreErrorCode
/* 0AF068 800B2068 48001D35 */  bl        DVDReset
/* 0AF06C 800B206C 38600000 */  li        r3, 0x0
/* 0AF070 800B2070 4BFFFF35 */  bl        cbForStateError
/* 0AF074 800B2074 8001000C */  lwz       r0, 0xc(r1)
/* 0AF078 800B2078 38210008 */  addi      r1, r1, 0x8
/* 0AF07C 800B207C 7C0803A6 */  mtlr      r0
/* 0AF080 800B2080 4E800020 */  blr

glabel fn_800B2084
/* 0AF084 800B2084 7C0802A6 */  mflr      r0
/* 0AF088 800B2088 3C60800B */  lis       r3, fn_800B2160@ha
/* 0AF08C 800B208C 90010004 */  stw       r0, 0x4(r1)
/* 0AF090 800B2090 38632160 */  addi      r3, r3, fn_800B2160@l
/* 0AF094 800B2094 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AF098 800B2098 4BFFF0A1 */  bl        fn_800B1138
/* 0AF09C 800B209C 8001000C */  lwz       r0, 0xc(r1)
/* 0AF0A0 800B20A0 38210008 */  addi      r1, r1, 0x8
/* 0AF0A4 800B20A4 7C0803A6 */  mtlr      r0
/* 0AF0A8 800B20A8 4E800020 */  blr

glabel fn_800B20AC
/* 0AF0AC 800B20AC 3C03FFFE */  subis     r0, r3, 0x2
/* 0AF0B0 800B20B0 28000400 */  cmplwi    r0, 0x400
/* 0AF0B4 800B20B4 40820010 */  bne       lbl_800B20C4
/* 0AF0B8 800B20B8 906D8D00 */  stw       r3, D_8018BC80@sda21(r0)
/* 0AF0BC 800B20BC 38600001 */  li        r3, 0x1
/* 0AF0C0 800B20C0 4E800020 */  blr
lbl_800B20C4:
/* 0AF0C4 800B20C4 5464023E */  clrlwi    r4, r3, 8
/* 0AF0C8 800B20C8 3C04FFFA */  subis     r0, r4, 0x6
/* 0AF0CC 800B20CC 28002800 */  cmplwi    r0, 0x2800
/* 0AF0D0 800B20D0 4182001C */  beq       lbl_800B20EC
/* 0AF0D4 800B20D4 3C04FFFE */  subis     r0, r4, 0x2
/* 0AF0D8 800B20D8 28003A00 */  cmplwi    r0, 0x3a00
/* 0AF0DC 800B20DC 41820010 */  beq       lbl_800B20EC
/* 0AF0E0 800B20E0 3C04FFF5 */  subis     r0, r4, 0xb
/* 0AF0E4 800B20E4 28005A01 */  cmplwi    r0, 0x5a01
/* 0AF0E8 800B20E8 4082000C */  bne       lbl_800B20F4
lbl_800B20EC:
/* 0AF0EC 800B20EC 38600000 */  li        r3, 0x0
/* 0AF0F0 800B20F0 4E800020 */  blr
lbl_800B20F4:
/* 0AF0F4 800B20F4 806D8D04 */  lwz       r3, D_8018BC84@sda21(r0)
/* 0AF0F8 800B20F8 38030001 */  addi      r0, r3, 0x1
/* 0AF0FC 800B20FC 900D8D04 */  stw       r0, D_8018BC84@sda21(r0)
/* 0AF100 800B2100 800D8D04 */  lwz       r0, D_8018BC84@sda21(r0)
/* 0AF104 800B2104 2C000002 */  cmpwi     r0, 0x2
/* 0AF108 800B2108 40820028 */  bne       lbl_800B2130
/* 0AF10C 800B210C 800D8D00 */  lwz       r0, D_8018BC80@sda21(r0)
/* 0AF110 800B2110 7C040040 */  cmplw     r4, r0
/* 0AF114 800B2114 40820010 */  bne       lbl_800B2124
/* 0AF118 800B2118 908D8D00 */  stw       r4, D_8018BC80@sda21(r0)
/* 0AF11C 800B211C 38600001 */  li        r3, 0x1
/* 0AF120 800B2120 4E800020 */  blr
lbl_800B2124:
/* 0AF124 800B2124 908D8D00 */  stw       r4, D_8018BC80@sda21(r0)
/* 0AF128 800B2128 38600002 */  li        r3, 0x2
/* 0AF12C 800B212C 4E800020 */  blr
lbl_800B2130:
/* 0AF130 800B2130 3C04FFFD */  subis     r0, r4, 0x3
/* 0AF134 800B2134 908D8D00 */  stw       r4, D_8018BC80@sda21(r0)
/* 0AF138 800B2138 28001100 */  cmplwi    r0, 0x1100
/* 0AF13C 800B213C 41820014 */  beq       lbl_800B2150
/* 0AF140 800B2140 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AF144 800B2144 80030008 */  lwz       r0, 0x8(r3)
/* 0AF148 800B2148 28000005 */  cmplwi    r0, 0x5
/* 0AF14C 800B214C 4082000C */  bne       lbl_800B2158
lbl_800B2150:
/* 0AF150 800B2150 38600002 */  li        r3, 0x2
/* 0AF154 800B2154 4E800020 */  blr
lbl_800B2158:
/* 0AF158 800B2158 38600003 */  li        r3, 0x3
/* 0AF15C 800B215C 4E800020 */  blr

glabel fn_800B2160
/* 0AF160 800B2160 7C0802A6 */  mflr      r0
/* 0AF164 800B2164 28030010 */  cmplwi    r3, 0x10
/* 0AF168 800B2168 90010004 */  stw       r0, 0x4(r1)
/* 0AF16C 800B216C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0AF170 800B2170 93E1001C */  stw       r31, 0x1c(r1)
/* 0AF174 800B2174 93C10018 */  stw       r30, 0x18(r1)
/* 0AF178 800B2178 93A10014 */  stw       r29, 0x14(r1)
/* 0AF17C 800B217C 93810010 */  stw       r28, 0x10(r1)
/* 0AF180 800B2180 4082002C */  bne       lbl_800B21AC
/* 0AF184 800B2184 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF188 800B2188 3800FFFF */  li        r0, -0x1
/* 0AF18C 800B218C 3C600123 */  lis       r3, 0x123
/* 0AF190 800B2190 9004000C */  stw       r0, 0xc(r4)
/* 0AF194 800B2194 38634568 */  addi      r3, r3, 0x4568
/* 0AF198 800B2198 480025AD */  bl        __DVDStoreErrorCode
/* 0AF19C 800B219C 48001C01 */  bl        DVDReset
/* 0AF1A0 800B21A0 38600000 */  li        r3, 0x0
/* 0AF1A4 800B21A4 4BFFFE01 */  bl        cbForStateError
/* 0AF1A8 800B21A8 4800022C */  b         lbl_800B23D4
lbl_800B21AC:
/* 0AF1AC 800B21AC 546007BD */  rlwinm.   r0, r3, 0, 30, 30
/* 0AF1B0 800B21B0 4182002C */  beq       lbl_800B21DC
/* 0AF1B4 800B21B4 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF1B8 800B21B8 3800FFFF */  li        r0, -0x1
/* 0AF1BC 800B21BC 3C600123 */  lis       r3, 0x123
/* 0AF1C0 800B21C0 9004000C */  stw       r0, 0xc(r4)
/* 0AF1C4 800B21C4 38634567 */  addi      r3, r3, 0x4567
/* 0AF1C8 800B21C8 4800257D */  bl        __DVDStoreErrorCode
/* 0AF1CC 800B21CC 3C60800B */  lis       r3, cbForStateError@ha
/* 0AF1D0 800B21D0 38631FA4 */  addi      r3, r3, cbForStateError@l
/* 0AF1D4 800B21D4 4BFFEED9 */  bl        DVDLowStopMotor
/* 0AF1D8 800B21D8 480001FC */  b         lbl_800B23D4
lbl_800B21DC:
/* 0AF1DC 800B21DC 3C60CC00 */  lis       r3, 0xcc00
/* 0AF1E0 800B21E0 83A36020 */  lwz       r29, 0x6020(r3)
/* 0AF1E4 800B21E4 387D0000 */  addi      r3, r29, 0x0
/* 0AF1E8 800B21E8 57BC000E */  clrrwi    r28, r29, 24
/* 0AF1EC 800B21EC 4BFFFEC1 */  bl        fn_800B20AC
/* 0AF1F0 800B21F0 3BE30000 */  addi      r31, r3, 0x0
/* 0AF1F4 800B21F4 281F0001 */  cmplwi    r31, 0x1
/* 0AF1F8 800B21F8 40820028 */  bne       lbl_800B2220
/* 0AF1FC 800B21FC 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF200 800B2200 3800FFFF */  li        r0, -0x1
/* 0AF204 800B2204 387D0000 */  addi      r3, r29, 0x0
/* 0AF208 800B2208 9004000C */  stw       r0, 0xc(r4)
/* 0AF20C 800B220C 48002539 */  bl        __DVDStoreErrorCode
/* 0AF210 800B2210 3C60800B */  lis       r3, cbForStateError@ha
/* 0AF214 800B2214 38631FA4 */  addi      r3, r3, cbForStateError@l
/* 0AF218 800B2218 4BFFEE95 */  bl        DVDLowStopMotor
/* 0AF21C 800B221C 480001B8 */  b         lbl_800B23D4
lbl_800B2220:
/* 0AF220 800B2220 381FFFFE */  subi      r0, r31, 0x2
/* 0AF224 800B2224 28000001 */  cmplwi    r0, 0x1
/* 0AF228 800B2228 4181000C */  bgt       lbl_800B2234
/* 0AF22C 800B222C 38800000 */  li        r4, 0x0
/* 0AF230 800B2230 48000044 */  b         lbl_800B2274
lbl_800B2234:
/* 0AF234 800B2234 3C1CFF00 */  subis     r0, r28, 0x100
/* 0AF238 800B2238 28000000 */  cmplwi    r0, 0x0
/* 0AF23C 800B223C 4082000C */  bne       lbl_800B2248
/* 0AF240 800B2240 38800004 */  li        r4, 0x4
/* 0AF244 800B2244 48000030 */  b         lbl_800B2274
lbl_800B2248:
/* 0AF248 800B2248 3C1CFE00 */  subis     r0, r28, 0x200
/* 0AF24C 800B224C 28000000 */  cmplwi    r0, 0x0
/* 0AF250 800B2250 4082000C */  bne       lbl_800B225C
/* 0AF254 800B2254 38800006 */  li        r4, 0x6
/* 0AF258 800B2258 4800001C */  b         lbl_800B2274
lbl_800B225C:
/* 0AF25C 800B225C 3C1CFD00 */  subis     r0, r28, 0x300
/* 0AF260 800B2260 28000000 */  cmplwi    r0, 0x0
/* 0AF264 800B2264 4082000C */  bne       lbl_800B2270
/* 0AF268 800B2268 38800003 */  li        r4, 0x3
/* 0AF26C 800B226C 48000008 */  b         lbl_800B2274
lbl_800B2270:
/* 0AF270 800B2270 38800005 */  li        r4, 0x5
lbl_800B2274:
/* 0AF274 800B2274 800D8CF0 */  lwz       r0, D_8018BC70@sda21(r0)
/* 0AF278 800B2278 28000000 */  cmplwi    r0, 0x0
/* 0AF27C 800B227C 4182006C */  beq       lbl_800B22E8
/* 0AF280 800B2280 3C608019 */  lis       r3, DummyCommandBlock@ha
/* 0AF284 800B2284 908D8CF8 */  stw       r4, ResumeFromHere@sda21(r0)
/* 0AF288 800B2288 38000000 */  li        r0, 0x0
/* 0AF28C 800B228C 83CD8CD0 */  lwz       r30, executing@sda21(r0)
/* 0AF290 800B2290 38638880 */  addi      r3, r3, DummyCommandBlock@l
/* 0AF294 800B2294 900D8CF0 */  stw       r0, D_8018BC70@sda21(r0)
/* 0AF298 800B2298 3800000A */  li        r0, 0xa
/* 0AF29C 800B229C 906D8CD0 */  stw       r3, executing@sda21(r0)
/* 0AF2A0 800B22A0 901E000C */  stw       r0, 0xc(r30)
/* 0AF2A4 800B22A4 819E0028 */  lwz       r12, 0x28(r30)
/* 0AF2A8 800B22A8 280C0000 */  cmplwi    r12, 0x0
/* 0AF2AC 800B22AC 41820014 */  beq       lbl_800B22C0
/* 0AF2B0 800B22B0 7D8803A6 */  mtlr      r12
/* 0AF2B4 800B22B4 389E0000 */  addi      r4, r30, 0x0
/* 0AF2B8 800B22B8 3860FFFD */  li        r3, -0x3
/* 0AF2BC 800B22BC 4E800021 */  blrl
lbl_800B22C0:
/* 0AF2C0 800B22C0 818D8CF4 */  lwz       r12, D_8018BC74@sda21(r0)
/* 0AF2C4 800B22C4 280C0000 */  cmplwi    r12, 0x0
/* 0AF2C8 800B22C8 41820014 */  beq       lbl_800B22DC
/* 0AF2CC 800B22CC 7D8803A6 */  mtlr      r12
/* 0AF2D0 800B22D0 389E0000 */  addi      r4, r30, 0x0
/* 0AF2D4 800B22D4 38600000 */  li        r3, 0x0
/* 0AF2D8 800B22D8 4E800021 */  blrl
lbl_800B22DC:
/* 0AF2DC 800B22DC 48000B3D */  bl        stateReady
/* 0AF2E0 800B22E0 38000001 */  li        r0, 0x1
/* 0AF2E4 800B22E4 48000008 */  b         lbl_800B22EC
lbl_800B22E8:
/* 0AF2E8 800B22E8 38000000 */  li        r0, 0x0
lbl_800B22EC:
/* 0AF2EC 800B22EC 2C000000 */  cmpwi     r0, 0x0
/* 0AF2F0 800B22F0 408200E4 */  bne       lbl_800B23D4
/* 0AF2F4 800B22F4 281F0002 */  cmplwi    r31, 0x2
/* 0AF2F8 800B22F8 40820014 */  bne       lbl_800B230C
/* 0AF2FC 800B22FC 7FA3EB78 */  mr        r3, r29
/* 0AF300 800B2300 48002445 */  bl        __DVDStoreErrorCode
/* 0AF304 800B2304 480001F1 */  bl        fn_800B24F4
/* 0AF308 800B2308 480000CC */  b         lbl_800B23D4
lbl_800B230C:
/* 0AF30C 800B230C 281F0003 */  cmplwi    r31, 0x3
/* 0AF310 800B2310 40820040 */  bne       lbl_800B2350
/* 0AF314 800B2314 57A3023E */  clrlwi    r3, r29, 8
/* 0AF318 800B2318 3C03FFFD */  subis     r0, r3, 0x3
/* 0AF31C 800B231C 28001100 */  cmplwi    r0, 0x1100
/* 0AF320 800B2320 4082001C */  bne       lbl_800B233C
/* 0AF324 800B2324 80AD8CD0 */  lwz       r5, executing@sda21(r0)
/* 0AF328 800B2328 3C60800B */  lis       r3, fn_800B23F4@ha
/* 0AF32C 800B232C 388323F4 */  addi      r4, r3, fn_800B23F4@l
/* 0AF330 800B2330 80650010 */  lwz       r3, 0x10(r5)
/* 0AF334 800B2334 4BFFEC15 */  bl        fn_800B0F48
/* 0AF338 800B2338 4800009C */  b         lbl_800B23D4
lbl_800B233C:
/* 0AF33C 800B233C 818D8D14 */  lwz       r12, D_8018BC94@sda21(r0)
/* 0AF340 800B2340 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AF344 800B2344 7D8803A6 */  mtlr      r12
/* 0AF348 800B2348 4E800021 */  blrl
/* 0AF34C 800B234C 48000088 */  b         lbl_800B23D4
lbl_800B2350:
/* 0AF350 800B2350 3C1CFF00 */  subis     r0, r28, 0x100
/* 0AF354 800B2354 28000000 */  cmplwi    r0, 0x0
/* 0AF358 800B2358 40820018 */  bne       lbl_800B2370
/* 0AF35C 800B235C 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AF360 800B2360 38000005 */  li        r0, 0x5
/* 0AF364 800B2364 9003000C */  stw       r0, 0xc(r3)
/* 0AF368 800B2368 480009A5 */  bl        fn_800B2D0C
/* 0AF36C 800B236C 48000068 */  b         lbl_800B23D4
lbl_800B2370:
/* 0AF370 800B2370 3C1CFE00 */  subis     r0, r28, 0x200
/* 0AF374 800B2374 28000000 */  cmplwi    r0, 0x0
/* 0AF378 800B2378 40820018 */  bne       lbl_800B2390
/* 0AF37C 800B237C 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AF380 800B2380 38000003 */  li        r0, 0x3
/* 0AF384 800B2384 9003000C */  stw       r0, 0xc(r3)
/* 0AF388 800B2388 48000819 */  bl        fn_800B2BA0
/* 0AF38C 800B238C 48000048 */  b         lbl_800B23D4
lbl_800B2390:
/* 0AF390 800B2390 3C1CFD00 */  subis     r0, r28, 0x300
/* 0AF394 800B2394 28000000 */  cmplwi    r0, 0x0
/* 0AF398 800B2398 40820018 */  bne       lbl_800B23B0
/* 0AF39C 800B239C 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AF3A0 800B23A0 38000004 */  li        r0, 0x4
/* 0AF3A4 800B23A4 9003000C */  stw       r0, 0xc(r3)
/* 0AF3A8 800B23A8 48000965 */  bl        fn_800B2D0C
/* 0AF3AC 800B23AC 48000028 */  b         lbl_800B23D4
lbl_800B23B0:
/* 0AF3B0 800B23B0 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF3B4 800B23B4 3800FFFF */  li        r0, -0x1
/* 0AF3B8 800B23B8 3C600123 */  lis       r3, 0x123
/* 0AF3BC 800B23BC 9004000C */  stw       r0, 0xc(r4)
/* 0AF3C0 800B23C0 38634567 */  addi      r3, r3, 0x4567
/* 0AF3C4 800B23C4 48002381 */  bl        __DVDStoreErrorCode
/* 0AF3C8 800B23C8 3C60800B */  lis       r3, cbForStateError@ha
/* 0AF3CC 800B23CC 38631FA4 */  addi      r3, r3, cbForStateError@l
/* 0AF3D0 800B23D0 4BFFECDD */  bl        DVDLowStopMotor
lbl_800B23D4:
/* 0AF3D4 800B23D4 80010024 */  lwz       r0, 0x24(r1)
/* 0AF3D8 800B23D8 83E1001C */  lwz       r31, 0x1c(r1)
/* 0AF3DC 800B23DC 83C10018 */  lwz       r30, 0x18(r1)
/* 0AF3E0 800B23E0 83A10014 */  lwz       r29, 0x14(r1)
/* 0AF3E4 800B23E4 83810010 */  lwz       r28, 0x10(r1)
/* 0AF3E8 800B23E8 38210020 */  addi      r1, r1, 0x20
/* 0AF3EC 800B23EC 7C0803A6 */  mtlr      r0
/* 0AF3F0 800B23F0 4E800020 */  blr

glabel fn_800B23F4
/* 0AF3F4 800B23F4 7C0802A6 */  mflr      r0
/* 0AF3F8 800B23F8 28030010 */  cmplwi    r3, 0x10
/* 0AF3FC 800B23FC 90010004 */  stw       r0, 0x4(r1)
/* 0AF400 800B2400 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AF404 800B2404 4082002C */  bne       lbl_800B2430
/* 0AF408 800B2408 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF40C 800B240C 3800FFFF */  li        r0, -0x1
/* 0AF410 800B2410 3C600123 */  lis       r3, 0x123
/* 0AF414 800B2414 9004000C */  stw       r0, 0xc(r4)
/* 0AF418 800B2418 38634568 */  addi      r3, r3, 0x4568
/* 0AF41C 800B241C 48002329 */  bl        __DVDStoreErrorCode
/* 0AF420 800B2420 4800197D */  bl        DVDReset
/* 0AF424 800B2424 38600000 */  li        r3, 0x0
/* 0AF428 800B2428 4BFFFB7D */  bl        cbForStateError
/* 0AF42C 800B242C 48000020 */  b         lbl_800B244C
lbl_800B2430:
/* 0AF430 800B2430 546007FF */  clrlwi.   r0, r3, 31
/* 0AF434 800B2434 4182000C */  beq       lbl_800B2440
/* 0AF438 800B2438 480000BD */  bl        fn_800B24F4
/* 0AF43C 800B243C 48000010 */  b         lbl_800B244C
lbl_800B2440:
/* 0AF440 800B2440 3C60800B */  lis       r3, fn_800B245C@ha
/* 0AF444 800B2444 3863245C */  addi      r3, r3, fn_800B245C@l
/* 0AF448 800B2448 4BFFECF1 */  bl        fn_800B1138
lbl_800B244C:
/* 0AF44C 800B244C 8001000C */  lwz       r0, 0xc(r1)
/* 0AF450 800B2450 38210008 */  addi      r1, r1, 0x8
/* 0AF454 800B2454 7C0803A6 */  mtlr      r0
/* 0AF458 800B2458 4E800020 */  blr

glabel fn_800B245C
/* 0AF45C 800B245C 7C0802A6 */  mflr      r0
/* 0AF460 800B2460 28030010 */  cmplwi    r3, 0x10
/* 0AF464 800B2464 90010004 */  stw       r0, 0x4(r1)
/* 0AF468 800B2468 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AF46C 800B246C 4082002C */  bne       lbl_800B2498
/* 0AF470 800B2470 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF474 800B2474 3800FFFF */  li        r0, -0x1
/* 0AF478 800B2478 3C600123 */  lis       r3, 0x123
/* 0AF47C 800B247C 9004000C */  stw       r0, 0xc(r4)
/* 0AF480 800B2480 38634568 */  addi      r3, r3, 0x4568
/* 0AF484 800B2484 480022C1 */  bl        __DVDStoreErrorCode
/* 0AF488 800B2488 48001915 */  bl        DVDReset
/* 0AF48C 800B248C 38600000 */  li        r3, 0x0
/* 0AF490 800B2490 4BFFFB15 */  bl        cbForStateError
/* 0AF494 800B2494 48000050 */  b         lbl_800B24E4
lbl_800B2498:
/* 0AF498 800B2498 546007BD */  rlwinm.   r0, r3, 0, 30, 30
/* 0AF49C 800B249C 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AF4A0 800B24A0 3880FFFF */  li        r4, -0x1
/* 0AF4A4 800B24A4 9083000C */  stw       r4, 0xc(r3)
/* 0AF4A8 800B24A8 41820020 */  beq       lbl_800B24C8
/* 0AF4AC 800B24AC 3C600123 */  lis       r3, 0x123
/* 0AF4B0 800B24B0 38634567 */  addi      r3, r3, 0x4567
/* 0AF4B4 800B24B4 48002291 */  bl        __DVDStoreErrorCode
/* 0AF4B8 800B24B8 3C60800B */  lis       r3, cbForStateError@ha
/* 0AF4BC 800B24BC 38631FA4 */  addi      r3, r3, cbForStateError@l
/* 0AF4C0 800B24C0 4BFFEBED */  bl        DVDLowStopMotor
/* 0AF4C4 800B24C4 48000020 */  b         lbl_800B24E4
lbl_800B24C8:
/* 0AF4C8 800B24C8 3C60CC00 */  lis       r3, 0xcc00
/* 0AF4CC 800B24CC 38636000 */  addi      r3, r3, 0x6000
/* 0AF4D0 800B24D0 80630020 */  lwz       r3, 0x20(r3)
/* 0AF4D4 800B24D4 48002271 */  bl        __DVDStoreErrorCode
/* 0AF4D8 800B24D8 3C60800B */  lis       r3, cbForStateError@ha
/* 0AF4DC 800B24DC 38631FA4 */  addi      r3, r3, cbForStateError@l
/* 0AF4E0 800B24E0 4BFFEBCD */  bl        DVDLowStopMotor
lbl_800B24E4:
/* 0AF4E4 800B24E4 8001000C */  lwz       r0, 0xc(r1)
/* 0AF4E8 800B24E8 38210008 */  addi      r1, r1, 0x8
/* 0AF4EC 800B24EC 7C0803A6 */  mtlr      r0
/* 0AF4F0 800B24F0 4E800020 */  blr

glabel fn_800B24F4
/* 0AF4F4 800B24F4 7C0802A6 */  mflr      r0
/* 0AF4F8 800B24F8 3C60800B */  lis       r3, fn_800B251C@ha
/* 0AF4FC 800B24FC 90010004 */  stw       r0, 0x4(r1)
/* 0AF500 800B2500 3863251C */  addi      r3, r3, fn_800B251C@l
/* 0AF504 800B2504 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AF508 800B2508 4BFFEBA5 */  bl        DVDLowStopMotor
/* 0AF50C 800B250C 8001000C */  lwz       r0, 0xc(r1)
/* 0AF510 800B2510 38210008 */  addi      r1, r1, 0x8
/* 0AF514 800B2514 7C0803A6 */  mtlr      r0
/* 0AF518 800B2518 4E800020 */  blr

glabel fn_800B251C
/* 0AF51C 800B251C 7C0802A6 */  mflr      r0
/* 0AF520 800B2520 28030010 */  cmplwi    r3, 0x10
/* 0AF524 800B2524 90010004 */  stw       r0, 0x4(r1)
/* 0AF528 800B2528 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AF52C 800B252C 93E10014 */  stw       r31, 0x14(r1)
/* 0AF530 800B2530 4082002C */  bne       lbl_800B255C
/* 0AF534 800B2534 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF538 800B2538 3800FFFF */  li        r0, -0x1
/* 0AF53C 800B253C 3C600123 */  lis       r3, 0x123
/* 0AF540 800B2540 9004000C */  stw       r0, 0xc(r4)
/* 0AF544 800B2544 38634568 */  addi      r3, r3, 0x4568
/* 0AF548 800B2548 480021FD */  bl        __DVDStoreErrorCode
/* 0AF54C 800B254C 48001851 */  bl        DVDReset
/* 0AF550 800B2550 38600000 */  li        r3, 0x0
/* 0AF554 800B2554 4BFFFA51 */  bl        cbForStateError
/* 0AF558 800B2558 48000108 */  b         lbl_800B2660
lbl_800B255C:
/* 0AF55C 800B255C 546007BD */  rlwinm.   r0, r3, 0, 30, 30
/* 0AF560 800B2560 4182002C */  beq       lbl_800B258C
/* 0AF564 800B2564 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF568 800B2568 3800FFFF */  li        r0, -0x1
/* 0AF56C 800B256C 3C600123 */  lis       r3, 0x123
/* 0AF570 800B2570 9004000C */  stw       r0, 0xc(r4)
/* 0AF574 800B2574 38634567 */  addi      r3, r3, 0x4567
/* 0AF578 800B2578 480021CD */  bl        __DVDStoreErrorCode
/* 0AF57C 800B257C 3C60800B */  lis       r3, cbForStateError@ha
/* 0AF580 800B2580 38631FA4 */  addi      r3, r3, cbForStateError@l
/* 0AF584 800B2584 4BFFEB29 */  bl        DVDLowStopMotor
/* 0AF588 800B2588 480000D8 */  b         lbl_800B2660
lbl_800B258C:
/* 0AF58C 800B258C 38000000 */  li        r0, 0x0
/* 0AF590 800B2590 900D8D04 */  stw       r0, D_8018BC84@sda21(r0)
/* 0AF594 800B2594 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0AF598 800B2598 28000004 */  cmplwi    r0, 0x4
/* 0AF59C 800B259C 41820028 */  beq       lbl_800B25C4
/* 0AF5A0 800B25A0 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0AF5A4 800B25A4 28000005 */  cmplwi    r0, 0x5
/* 0AF5A8 800B25A8 4182001C */  beq       lbl_800B25C4
/* 0AF5AC 800B25AC 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0AF5B0 800B25B0 2800000D */  cmplwi    r0, 0xd
/* 0AF5B4 800B25B4 41820010 */  beq       lbl_800B25C4
/* 0AF5B8 800B25B8 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0AF5BC 800B25BC 2800000F */  cmplwi    r0, 0xf
/* 0AF5C0 800B25C0 4082000C */  bne       lbl_800B25CC
lbl_800B25C4:
/* 0AF5C4 800B25C4 38000001 */  li        r0, 0x1
/* 0AF5C8 800B25C8 900D8D08 */  stw       r0, ResetRequired@sda21(r0)
lbl_800B25CC:
/* 0AF5CC 800B25CC 800D8CF0 */  lwz       r0, D_8018BC70@sda21(r0)
/* 0AF5D0 800B25D0 28000000 */  cmplwi    r0, 0x0
/* 0AF5D4 800B25D4 41820070 */  beq       lbl_800B2644
/* 0AF5D8 800B25D8 38000002 */  li        r0, 0x2
/* 0AF5DC 800B25DC 83ED8CD0 */  lwz       r31, executing@sda21(r0)
/* 0AF5E0 800B25E0 3C608019 */  lis       r3, DummyCommandBlock@ha
/* 0AF5E4 800B25E4 900D8CF8 */  stw       r0, ResumeFromHere@sda21(r0)
/* 0AF5E8 800B25E8 38038880 */  addi      r0, r3, DummyCommandBlock@l
/* 0AF5EC 800B25EC 38600000 */  li        r3, 0x0
/* 0AF5F0 800B25F0 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0AF5F4 800B25F4 3800000A */  li        r0, 0xa
/* 0AF5F8 800B25F8 906D8CF0 */  stw       r3, D_8018BC70@sda21(r0)
/* 0AF5FC 800B25FC 901F000C */  stw       r0, 0xc(r31)
/* 0AF600 800B2600 819F0028 */  lwz       r12, 0x28(r31)
/* 0AF604 800B2604 280C0000 */  cmplwi    r12, 0x0
/* 0AF608 800B2608 41820014 */  beq       lbl_800B261C
/* 0AF60C 800B260C 7D8803A6 */  mtlr      r12
/* 0AF610 800B2610 389F0000 */  addi      r4, r31, 0x0
/* 0AF614 800B2614 3860FFFD */  li        r3, -0x3
/* 0AF618 800B2618 4E800021 */  blrl
lbl_800B261C:
/* 0AF61C 800B261C 818D8CF4 */  lwz       r12, D_8018BC74@sda21(r0)
/* 0AF620 800B2620 280C0000 */  cmplwi    r12, 0x0
/* 0AF624 800B2624 41820014 */  beq       lbl_800B2638
/* 0AF628 800B2628 7D8803A6 */  mtlr      r12
/* 0AF62C 800B262C 389F0000 */  addi      r4, r31, 0x0
/* 0AF630 800B2630 38600000 */  li        r3, 0x0
/* 0AF634 800B2634 4E800021 */  blrl
lbl_800B2638:
/* 0AF638 800B2638 480007E1 */  bl        stateReady
/* 0AF63C 800B263C 38000001 */  li        r0, 0x1
/* 0AF640 800B2640 48000008 */  b         lbl_800B2648
lbl_800B2644:
/* 0AF644 800B2644 38000000 */  li        r0, 0x0
lbl_800B2648:
/* 0AF648 800B2648 2C000000 */  cmpwi     r0, 0x0
/* 0AF64C 800B264C 40820014 */  bne       lbl_800B2660
/* 0AF650 800B2650 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AF654 800B2654 3800000B */  li        r0, 0xb
/* 0AF658 800B2658 9003000C */  stw       r0, 0xc(r3)
/* 0AF65C 800B265C 480006B1 */  bl        fn_800B2D0C
lbl_800B2660:
/* 0AF660 800B2660 8001001C */  lwz       r0, 0x1c(r1)
/* 0AF664 800B2664 83E10014 */  lwz       r31, 0x14(r1)
/* 0AF668 800B2668 38210018 */  addi      r1, r1, 0x18
/* 0AF66C 800B266C 7C0803A6 */  mtlr      r0
/* 0AF670 800B2670 4E800020 */  blr

glabel fn_800B2674
/* 0AF674 800B2674 7C0802A6 */  mflr      r0
/* 0AF678 800B2678 3C608019 */  lis       r3, BB2@ha
/* 0AF67C 800B267C 90010004 */  stw       r0, 0x4(r1)
/* 0AF680 800B2680 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0AF684 800B2684 93E1000C */  stw       r31, 0xc(r1)
/* 0AF688 800B2688 3BE38840 */  addi      r31, r3, BB2@l
/* 0AF68C 800B268C 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0AF690 800B2690 2C000003 */  cmpwi     r0, 0x3
/* 0AF694 800B2694 41820008 */  beq       lbl_800B269C
/* 0AF698 800B2698 4800006C */  b         lbl_800B2704
lbl_800B269C:
/* 0AF69C 800B269C 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF6A0 800B26A0 387F0020 */  addi      r3, r31, 0x20
/* 0AF6A4 800B26A4 80840024 */  lwz       r4, 0x24(r4)
/* 0AF6A8 800B26A8 48002119 */  bl        DVDCompareDiskID
/* 0AF6AC 800B26AC 2C030000 */  cmpwi     r3, 0x0
/* 0AF6B0 800B26B0 41820044 */  beq       lbl_800B26F4
/* 0AF6B4 800B26B4 806D8CD4 */  lwz       r3, IDShouldBe@sda21(r0)
/* 0AF6B8 800B26B8 389F0020 */  addi      r4, r31, 0x20
/* 0AF6BC 800B26BC 38A00020 */  li        r5, 0x20
/* 0AF6C0 800B26C0 4BF52D55 */  bl        memcpy
/* 0AF6C4 800B26C4 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF6C8 800B26C8 38000001 */  li        r0, 0x1
/* 0AF6CC 800B26CC 387F0000 */  addi      r3, r31, 0x0
/* 0AF6D0 800B26D0 9004000C */  stw       r0, 0xc(r4)
/* 0AF6D4 800B26D4 38800020 */  li        r4, 0x20
/* 0AF6D8 800B26D8 4BFEA5C1 */  bl        DCInvalidateRange
/* 0AF6DC 800B26DC 3C80800B */  lis       r4, fn_800B2788@ha
/* 0AF6E0 800B26E0 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AF6E4 800B26E4 38042788 */  addi      r0, r4, fn_800B2788@l
/* 0AF6E8 800B26E8 900D8D14 */  stw       r0, D_8018BC94@sda21(r0)
/* 0AF6EC 800B26EC 4800009D */  bl        fn_800B2788
/* 0AF6F0 800B26F0 48000050 */  b         lbl_800B2740
lbl_800B26F4:
/* 0AF6F4 800B26F4 3C60800B */  lis       r3, fn_800B2868@ha
/* 0AF6F8 800B26F8 38632868 */  addi      r3, r3, fn_800B2868@l
/* 0AF6FC 800B26FC 4BFFE9B1 */  bl        DVDLowStopMotor
/* 0AF700 800B2700 48000040 */  b         lbl_800B2740
lbl_800B2704:
/* 0AF704 800B2704 808D8CD4 */  lwz       r4, IDShouldBe@sda21(r0)
/* 0AF708 800B2708 387F0020 */  addi      r3, r31, 0x20
/* 0AF70C 800B270C 38A00020 */  li        r5, 0x20
/* 0AF710 800B2710 4801ADD9 */  bl        memcmp
/* 0AF714 800B2714 2C030000 */  cmpwi     r3, 0x0
/* 0AF718 800B2718 41820014 */  beq       lbl_800B272C
/* 0AF71C 800B271C 3C60800B */  lis       r3, fn_800B2868@ha
/* 0AF720 800B2720 38632868 */  addi      r3, r3, fn_800B2868@l
/* 0AF724 800B2724 4BFFE989 */  bl        DVDLowStopMotor
/* 0AF728 800B2728 48000018 */  b         lbl_800B2740
lbl_800B272C:
/* 0AF72C 800B272C 3C80800B */  lis       r4, fn_800B2754@ha
/* 0AF730 800B2730 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AF734 800B2734 38042754 */  addi      r0, r4, fn_800B2754@l
/* 0AF738 800B2738 900D8D14 */  stw       r0, D_8018BC94@sda21(r0)
/* 0AF73C 800B273C 48000019 */  bl        fn_800B2754
lbl_800B2740:
/* 0AF740 800B2740 80010014 */  lwz       r0, 0x14(r1)
/* 0AF744 800B2744 83E1000C */  lwz       r31, 0xc(r1)
/* 0AF748 800B2748 38210010 */  addi      r1, r1, 0x10
/* 0AF74C 800B274C 7C0803A6 */  mtlr      r0
/* 0AF750 800B2750 4E800020 */  blr

glabel fn_800B2754
/* 0AF754 800B2754 7C0802A6 */  mflr      r0
/* 0AF758 800B2758 3C60800B */  lis       r3, fn_800B2A60@ha
/* 0AF75C 800B275C 90010004 */  stw       r0, 0x4(r1)
/* 0AF760 800B2760 38A32A60 */  addi      r5, r3, fn_800B2A60@l
/* 0AF764 800B2764 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AF768 800B2768 808D8CD4 */  lwz       r4, IDShouldBe@sda21(r0)
/* 0AF76C 800B276C 88640008 */  lbz       r3, 0x8(r4)
/* 0AF770 800B2770 3880000A */  li        r4, 0xa
/* 0AF774 800B2774 4BFFEC11 */  bl        fn_800B1384
/* 0AF778 800B2778 8001000C */  lwz       r0, 0xc(r1)
/* 0AF77C 800B277C 38210008 */  addi      r1, r1, 0x8
/* 0AF780 800B2780 7C0803A6 */  mtlr      r0
/* 0AF784 800B2784 4E800020 */  blr

glabel fn_800B2788
/* 0AF788 800B2788 7C0802A6 */  mflr      r0
/* 0AF78C 800B278C 3C60800B */  lis       r3, fn_800B27BC@ha
/* 0AF790 800B2790 90010004 */  stw       r0, 0x4(r1)
/* 0AF794 800B2794 38A327BC */  addi      r5, r3, fn_800B27BC@l
/* 0AF798 800B2798 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AF79C 800B279C 808D8CD4 */  lwz       r4, IDShouldBe@sda21(r0)
/* 0AF7A0 800B27A0 88640008 */  lbz       r3, 0x8(r4)
/* 0AF7A4 800B27A4 3880000A */  li        r4, 0xa
/* 0AF7A8 800B27A8 4BFFEBDD */  bl        fn_800B1384
/* 0AF7AC 800B27AC 8001000C */  lwz       r0, 0xc(r1)
/* 0AF7B0 800B27B0 38210008 */  addi      r1, r1, 0x8
/* 0AF7B4 800B27B4 7C0803A6 */  mtlr      r0
/* 0AF7B8 800B27B8 4E800020 */  blr

glabel fn_800B27BC
/* 0AF7BC 800B27BC 7C0802A6 */  mflr      r0
/* 0AF7C0 800B27C0 28030010 */  cmplwi    r3, 0x10
/* 0AF7C4 800B27C4 90010004 */  stw       r0, 0x4(r1)
/* 0AF7C8 800B27C8 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AF7CC 800B27CC 4082002C */  bne       lbl_800B27F8
/* 0AF7D0 800B27D0 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF7D4 800B27D4 3800FFFF */  li        r0, -0x1
/* 0AF7D8 800B27D8 3C600123 */  lis       r3, 0x123
/* 0AF7DC 800B27DC 9004000C */  stw       r0, 0xc(r4)
/* 0AF7E0 800B27E0 38634568 */  addi      r3, r3, 0x4568
/* 0AF7E4 800B27E4 48001F61 */  bl        __DVDStoreErrorCode
/* 0AF7E8 800B27E8 480015B5 */  bl        DVDReset
/* 0AF7EC 800B27EC 38600000 */  li        r3, 0x0
/* 0AF7F0 800B27F0 4BFFF7B5 */  bl        cbForStateError
/* 0AF7F4 800B27F4 4800002C */  b         lbl_800B2820
lbl_800B27F8:
/* 0AF7F8 800B27F8 546007FF */  clrlwi.   r0, r3, 31
/* 0AF7FC 800B27FC 41820018 */  beq       lbl_800B2814
/* 0AF800 800B2800 38000000 */  li        r0, 0x0
/* 0AF804 800B2804 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AF808 800B2808 900D8D04 */  stw       r0, D_8018BC84@sda21(r0)
/* 0AF80C 800B280C 48000025 */  bl        fn_800B2830
/* 0AF810 800B2810 48000010 */  b         lbl_800B2820
lbl_800B2814:
/* 0AF814 800B2814 3C60800B */  lis       r3, fn_800B2160@ha
/* 0AF818 800B2818 38632160 */  addi      r3, r3, fn_800B2160@l
/* 0AF81C 800B281C 4BFFE91D */  bl        fn_800B1138
lbl_800B2820:
/* 0AF820 800B2820 8001000C */  lwz       r0, 0xc(r1)
/* 0AF824 800B2824 38210008 */  addi      r1, r1, 0x8
/* 0AF828 800B2828 7C0803A6 */  mtlr      r0
/* 0AF82C 800B282C 4E800020 */  blr

glabel fn_800B2830
/* 0AF830 800B2830 7C0802A6 */  mflr      r0
/* 0AF834 800B2834 3C608019 */  lis       r3, BB2@ha
/* 0AF838 800B2838 90010004 */  stw       r0, 0x4(r1)
/* 0AF83C 800B283C 3C80800B */  lis       r4, fn_800B297C@ha
/* 0AF840 800B2840 38C4297C */  addi      r6, r4, fn_800B297C@l
/* 0AF844 800B2844 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AF848 800B2848 38638840 */  addi      r3, r3, BB2@l
/* 0AF84C 800B284C 38800020 */  li        r4, 0x20
/* 0AF850 800B2850 38A00420 */  li        r5, 0x420
/* 0AF854 800B2854 4BFFE45D */  bl        fn_800B0CB0
/* 0AF858 800B2858 8001000C */  lwz       r0, 0xc(r1)
/* 0AF85C 800B285C 38210008 */  addi      r1, r1, 0x8
/* 0AF860 800B2860 7C0803A6 */  mtlr      r0
/* 0AF864 800B2864 4E800020 */  blr

glabel fn_800B2868
/* 0AF868 800B2868 7C0802A6 */  mflr      r0
/* 0AF86C 800B286C 28030010 */  cmplwi    r3, 0x10
/* 0AF870 800B2870 90010004 */  stw       r0, 0x4(r1)
/* 0AF874 800B2874 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AF878 800B2878 93E10014 */  stw       r31, 0x14(r1)
/* 0AF87C 800B287C 4082002C */  bne       lbl_800B28A8
/* 0AF880 800B2880 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF884 800B2884 3800FFFF */  li        r0, -0x1
/* 0AF888 800B2888 3C600123 */  lis       r3, 0x123
/* 0AF88C 800B288C 9004000C */  stw       r0, 0xc(r4)
/* 0AF890 800B2890 38634568 */  addi      r3, r3, 0x4568
/* 0AF894 800B2894 48001EB1 */  bl        __DVDStoreErrorCode
/* 0AF898 800B2898 48001505 */  bl        DVDReset
/* 0AF89C 800B289C 38600000 */  li        r3, 0x0
/* 0AF8A0 800B28A0 4BFFF705 */  bl        cbForStateError
/* 0AF8A4 800B28A4 480000C4 */  b         lbl_800B2968
lbl_800B28A8:
/* 0AF8A8 800B28A8 546007BD */  rlwinm.   r0, r3, 0, 30, 30
/* 0AF8AC 800B28AC 4182002C */  beq       lbl_800B28D8
/* 0AF8B0 800B28B0 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF8B4 800B28B4 3800FFFF */  li        r0, -0x1
/* 0AF8B8 800B28B8 3C600123 */  lis       r3, 0x123
/* 0AF8BC 800B28BC 9004000C */  stw       r0, 0xc(r4)
/* 0AF8C0 800B28C0 38634567 */  addi      r3, r3, 0x4567
/* 0AF8C4 800B28C4 48001E81 */  bl        __DVDStoreErrorCode
/* 0AF8C8 800B28C8 3C60800B */  lis       r3, cbForStateError@ha
/* 0AF8CC 800B28CC 38631FA4 */  addi      r3, r3, cbForStateError@l
/* 0AF8D0 800B28D0 4BFFE7DD */  bl        DVDLowStopMotor
/* 0AF8D4 800B28D4 48000094 */  b         lbl_800B2968
lbl_800B28D8:
/* 0AF8D8 800B28D8 38800000 */  li        r4, 0x0
/* 0AF8DC 800B28DC 908D8D04 */  stw       r4, D_8018BC84@sda21(r0)
/* 0AF8E0 800B28E0 800D8CF0 */  lwz       r0, D_8018BC70@sda21(r0)
/* 0AF8E4 800B28E4 28000000 */  cmplwi    r0, 0x0
/* 0AF8E8 800B28E8 41820068 */  beq       lbl_800B2950
/* 0AF8EC 800B28EC 38000001 */  li        r0, 0x1
/* 0AF8F0 800B28F0 83ED8CD0 */  lwz       r31, executing@sda21(r0)
/* 0AF8F4 800B28F4 900D8CF8 */  stw       r0, ResumeFromHere@sda21(r0)
/* 0AF8F8 800B28F8 3C608019 */  lis       r3, DummyCommandBlock@ha
/* 0AF8FC 800B28FC 38638880 */  addi      r3, r3, DummyCommandBlock@l
/* 0AF900 800B2900 908D8CF0 */  stw       r4, D_8018BC70@sda21(r0)
/* 0AF904 800B2904 3800000A */  li        r0, 0xa
/* 0AF908 800B2908 906D8CD0 */  stw       r3, executing@sda21(r0)
/* 0AF90C 800B290C 901F000C */  stw       r0, 0xc(r31)
/* 0AF910 800B2910 819F0028 */  lwz       r12, 0x28(r31)
/* 0AF914 800B2914 280C0000 */  cmplwi    r12, 0x0
/* 0AF918 800B2918 41820014 */  beq       lbl_800B292C
/* 0AF91C 800B291C 7D8803A6 */  mtlr      r12
/* 0AF920 800B2920 389F0000 */  addi      r4, r31, 0x0
/* 0AF924 800B2924 3860FFFD */  li        r3, -0x3
/* 0AF928 800B2928 4E800021 */  blrl
lbl_800B292C:
/* 0AF92C 800B292C 818D8CF4 */  lwz       r12, D_8018BC74@sda21(r0)
/* 0AF930 800B2930 280C0000 */  cmplwi    r12, 0x0
/* 0AF934 800B2934 41820014 */  beq       lbl_800B2948
/* 0AF938 800B2938 7D8803A6 */  mtlr      r12
/* 0AF93C 800B293C 389F0000 */  addi      r4, r31, 0x0
/* 0AF940 800B2940 38600000 */  li        r3, 0x0
/* 0AF944 800B2944 4E800021 */  blrl
lbl_800B2948:
/* 0AF948 800B2948 480004D1 */  bl        stateReady
/* 0AF94C 800B294C 38800001 */  li        r4, 0x1
lbl_800B2950:
/* 0AF950 800B2950 2C040000 */  cmpwi     r4, 0x0
/* 0AF954 800B2954 40820014 */  bne       lbl_800B2968
/* 0AF958 800B2958 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AF95C 800B295C 38000006 */  li        r0, 0x6
/* 0AF960 800B2960 9003000C */  stw       r0, 0xc(r3)
/* 0AF964 800B2964 480003A9 */  bl        fn_800B2D0C
lbl_800B2968:
/* 0AF968 800B2968 8001001C */  lwz       r0, 0x1c(r1)
/* 0AF96C 800B296C 83E10014 */  lwz       r31, 0x14(r1)
/* 0AF970 800B2970 38210018 */  addi      r1, r1, 0x18
/* 0AF974 800B2974 7C0803A6 */  mtlr      r0
/* 0AF978 800B2978 4E800020 */  blr

glabel fn_800B297C
/* 0AF97C 800B297C 7C0802A6 */  mflr      r0
/* 0AF980 800B2980 28030010 */  cmplwi    r3, 0x10
/* 0AF984 800B2984 90010004 */  stw       r0, 0x4(r1)
/* 0AF988 800B2988 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AF98C 800B298C 93E10014 */  stw       r31, 0x14(r1)
/* 0AF990 800B2990 4082002C */  bne       lbl_800B29BC
/* 0AF994 800B2994 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AF998 800B2998 3800FFFF */  li        r0, -0x1
/* 0AF99C 800B299C 3C600123 */  lis       r3, 0x123
/* 0AF9A0 800B29A0 9004000C */  stw       r0, 0xc(r4)
/* 0AF9A4 800B29A4 38634568 */  addi      r3, r3, 0x4568
/* 0AF9A8 800B29A8 48001D9D */  bl        __DVDStoreErrorCode
/* 0AF9AC 800B29AC 480013F1 */  bl        DVDReset
/* 0AF9B0 800B29B0 38600000 */  li        r3, 0x0
/* 0AF9B4 800B29B4 4BFFF5F1 */  bl        cbForStateError
/* 0AF9B8 800B29B8 48000094 */  b         lbl_800B2A4C
lbl_800B29BC:
/* 0AF9BC 800B29BC 546007FF */  clrlwi.   r0, r3, 31
/* 0AF9C0 800B29C0 41820080 */  beq       lbl_800B2A40
/* 0AF9C4 800B29C4 3C60800B */  lis       r3, fn_800B1E84@ha
/* 0AF9C8 800B29C8 808D8CD8 */  lwz       r4, bootInfo@sda21(r0)
/* 0AF9CC 800B29CC 38031E84 */  addi      r0, r3, fn_800B1E84@l
/* 0AF9D0 800B29D0 38A00000 */  li        r5, 0x0
/* 0AF9D4 800B29D4 900D8D14 */  stw       r0, D_8018BC94@sda21(r0)
/* 0AF9D8 800B29D8 3C608019 */  lis       r3, BB2@ha
/* 0AF9DC 800B29DC 90AD8D04 */  stw       r5, D_8018BC84@sda21(r0)
/* 0AF9E0 800B29E0 38638840 */  addi      r3, r3, BB2@l
/* 0AF9E4 800B29E4 3BE30008 */  addi      r31, r3, 0x8
/* 0AF9E8 800B29E8 8064003C */  lwz       r3, 0x3c(r4)
/* 0AF9EC 800B29EC 801F0000 */  lwz       r0, 0x0(r31)
/* 0AF9F0 800B29F0 7C030040 */  cmplw     r3, r0
/* 0AF9F4 800B29F4 4080001C */  bge       lbl_800B2A10
/* 0AF9F8 800B29F8 3C60800F */  lis       r3, D_800F381C@ha
/* 0AF9FC 800B29FC 4CC63182 */  crclr     cr1eq
/* 0AFA00 800B2A00 38A3381C */  addi      r5, r3, D_800F381C@l
/* 0AFA04 800B2A04 386D880C */  li        r3, D_8018B78C@sda21
/* 0AFA08 800B2A08 38800276 */  li        r4, 0x276
/* 0AFA0C 800B2A0C 4BFEB1B9 */  bl        OSPanic
lbl_800B2A10:
/* 0AFA10 800B2A10 3C608019 */  lis       r3, BB2@ha
/* 0AFA14 800B2A14 80DF0000 */  lwz       r6, 0x0(r31)
/* 0AFA18 800B2A18 38A38840 */  addi      r5, r3, BB2@l
/* 0AFA1C 800B2A1C 80ED8CD8 */  lwz       r7, bootInfo@sda21(r0)
/* 0AFA20 800B2A20 3C80800B */  lis       r4, fn_800B1F18@ha
/* 0AFA24 800B2A24 80A50004 */  lwz       r5, 0x4(r5)
/* 0AFA28 800B2A28 3806001F */  addi      r0, r6, 0x1f
/* 0AFA2C 800B2A2C 80670038 */  lwz       r3, 0x38(r7)
/* 0AFA30 800B2A30 38C41F18 */  addi      r6, r4, fn_800B1F18@l
/* 0AFA34 800B2A34 54040034 */  clrrwi    r4, r0, 5
/* 0AFA38 800B2A38 4BFFE279 */  bl        fn_800B0CB0
/* 0AFA3C 800B2A3C 48000010 */  b         lbl_800B2A4C
lbl_800B2A40:
/* 0AFA40 800B2A40 3C60800B */  lis       r3, fn_800B2160@ha
/* 0AFA44 800B2A44 38632160 */  addi      r3, r3, fn_800B2160@l
/* 0AFA48 800B2A48 4BFFE6F1 */  bl        fn_800B1138
lbl_800B2A4C:
/* 0AFA4C 800B2A4C 8001001C */  lwz       r0, 0x1c(r1)
/* 0AFA50 800B2A50 83E10014 */  lwz       r31, 0x14(r1)
/* 0AFA54 800B2A54 38210018 */  addi      r1, r1, 0x18
/* 0AFA58 800B2A58 7C0803A6 */  mtlr      r0
/* 0AFA5C 800B2A5C 4E800020 */  blr

glabel fn_800B2A60
/* 0AFA60 800B2A60 7C0802A6 */  mflr      r0
/* 0AFA64 800B2A64 28030010 */  cmplwi    r3, 0x10
/* 0AFA68 800B2A68 90010004 */  stw       r0, 0x4(r1)
/* 0AFA6C 800B2A6C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AFA70 800B2A70 93E10014 */  stw       r31, 0x14(r1)
/* 0AFA74 800B2A74 4082002C */  bne       lbl_800B2AA0
/* 0AFA78 800B2A78 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AFA7C 800B2A7C 3800FFFF */  li        r0, -0x1
/* 0AFA80 800B2A80 3C600123 */  lis       r3, 0x123
/* 0AFA84 800B2A84 9004000C */  stw       r0, 0xc(r4)
/* 0AFA88 800B2A88 38634568 */  addi      r3, r3, 0x4568
/* 0AFA8C 800B2A8C 48001CB9 */  bl        __DVDStoreErrorCode
/* 0AFA90 800B2A90 4800130D */  bl        DVDReset
/* 0AFA94 800B2A94 38600000 */  li        r3, 0x0
/* 0AFA98 800B2A98 4BFFF50D */  bl        cbForStateError
/* 0AFA9C 800B2A9C 480000AC */  b         lbl_800B2B48
lbl_800B2AA0:
/* 0AFAA0 800B2AA0 546007FF */  clrlwi.   r0, r3, 31
/* 0AFAA4 800B2AA4 41820098 */  beq       lbl_800B2B3C
/* 0AFAA8 800B2AA8 38800000 */  li        r4, 0x0
/* 0AFAAC 800B2AAC 908D8D04 */  stw       r4, D_8018BC84@sda21(r0)
/* 0AFAB0 800B2AB0 800D8CF0 */  lwz       r0, D_8018BC70@sda21(r0)
/* 0AFAB4 800B2AB4 28000000 */  cmplwi    r0, 0x0
/* 0AFAB8 800B2AB8 41820064 */  beq       lbl_800B2B1C
/* 0AFABC 800B2ABC 908D8CF8 */  stw       r4, ResumeFromHere@sda21(r0)
/* 0AFAC0 800B2AC0 3C608019 */  lis       r3, DummyCommandBlock@ha
/* 0AFAC4 800B2AC4 83ED8CD0 */  lwz       r31, executing@sda21(r0)
/* 0AFAC8 800B2AC8 38638880 */  addi      r3, r3, DummyCommandBlock@l
/* 0AFACC 800B2ACC 908D8CF0 */  stw       r4, D_8018BC70@sda21(r0)
/* 0AFAD0 800B2AD0 3800000A */  li        r0, 0xa
/* 0AFAD4 800B2AD4 906D8CD0 */  stw       r3, executing@sda21(r0)
/* 0AFAD8 800B2AD8 901F000C */  stw       r0, 0xc(r31)
/* 0AFADC 800B2ADC 819F0028 */  lwz       r12, 0x28(r31)
/* 0AFAE0 800B2AE0 280C0000 */  cmplwi    r12, 0x0
/* 0AFAE4 800B2AE4 41820014 */  beq       lbl_800B2AF8
/* 0AFAE8 800B2AE8 7D8803A6 */  mtlr      r12
/* 0AFAEC 800B2AEC 389F0000 */  addi      r4, r31, 0x0
/* 0AFAF0 800B2AF0 3860FFFD */  li        r3, -0x3
/* 0AFAF4 800B2AF4 4E800021 */  blrl
lbl_800B2AF8:
/* 0AFAF8 800B2AF8 818D8CF4 */  lwz       r12, D_8018BC74@sda21(r0)
/* 0AFAFC 800B2AFC 280C0000 */  cmplwi    r12, 0x0
/* 0AFB00 800B2B00 41820014 */  beq       lbl_800B2B14
/* 0AFB04 800B2B04 7D8803A6 */  mtlr      r12
/* 0AFB08 800B2B08 389F0000 */  addi      r4, r31, 0x0
/* 0AFB0C 800B2B0C 38600000 */  li        r3, 0x0
/* 0AFB10 800B2B10 4E800021 */  blrl
lbl_800B2B14:
/* 0AFB14 800B2B14 48000305 */  bl        stateReady
/* 0AFB18 800B2B18 38800001 */  li        r4, 0x1
lbl_800B2B1C:
/* 0AFB1C 800B2B1C 2C040000 */  cmpwi     r4, 0x0
/* 0AFB20 800B2B20 40820028 */  bne       lbl_800B2B48
/* 0AFB24 800B2B24 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AFB28 800B2B28 38000001 */  li        r0, 0x1
/* 0AFB2C 800B2B2C 9003000C */  stw       r0, 0xc(r3)
/* 0AFB30 800B2B30 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AFB34 800B2B34 480005C1 */  bl        stateBusy
/* 0AFB38 800B2B38 48000010 */  b         lbl_800B2B48
lbl_800B2B3C:
/* 0AFB3C 800B2B3C 3C60800B */  lis       r3, fn_800B2160@ha
/* 0AFB40 800B2B40 38632160 */  addi      r3, r3, fn_800B2160@l
/* 0AFB44 800B2B44 4BFFE5F5 */  bl        fn_800B1138
lbl_800B2B48:
/* 0AFB48 800B2B48 8001001C */  lwz       r0, 0x1c(r1)
/* 0AFB4C 800B2B4C 83E10014 */  lwz       r31, 0x14(r1)
/* 0AFB50 800B2B50 38210018 */  addi      r1, r1, 0x18
/* 0AFB54 800B2B54 7C0803A6 */  mtlr      r0
/* 0AFB58 800B2B58 4E800020 */  blr

AlarmHandler:
/* 0AFB5C 800B2B5C 7C0802A6 */  mflr      r0
/* 0AFB60 800B2B60 90010004 */  stw       r0, 0x4(r1)
/* 0AFB64 800B2B64 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AFB68 800B2B68 48001235 */  bl        DVDReset
/* 0AFB6C 800B2B6C 3C608019 */  lis       r3, D_80188860@ha
/* 0AFB70 800B2B70 38638860 */  addi      r3, r3, D_80188860@l
/* 0AFB74 800B2B74 38800020 */  li        r4, 0x20
/* 0AFB78 800B2B78 4BFEA121 */  bl        DCInvalidateRange
/* 0AFB7C 800B2B7C 3C80800B */  lis       r4, fn_800B2C6C@ha
/* 0AFB80 800B2B80 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AFB84 800B2B84 38042C6C */  addi      r0, r4, fn_800B2C6C@l
/* 0AFB88 800B2B88 900D8D14 */  stw       r0, D_8018BC94@sda21(r0)
/* 0AFB8C 800B2B8C 480000E1 */  bl        fn_800B2C6C
/* 0AFB90 800B2B90 8001000C */  lwz       r0, 0xc(r1)
/* 0AFB94 800B2B94 38210008 */  addi      r1, r1, 0x8
/* 0AFB98 800B2B98 7C0803A6 */  mtlr      r0
/* 0AFB9C 800B2B9C 4E800020 */  blr

glabel fn_800B2BA0
/* 0AFBA0 800B2BA0 7C0802A6 */  mflr      r0
/* 0AFBA4 800B2BA4 3C608019 */  lis       r3, BB2@ha
/* 0AFBA8 800B2BA8 90010004 */  stw       r0, 0x4(r1)
/* 0AFBAC 800B2BAC 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0AFBB0 800B2BB0 93E1000C */  stw       r31, 0xc(r1)
/* 0AFBB4 800B2BB4 3BE38840 */  addi      r31, r3, BB2@l
/* 0AFBB8 800B2BB8 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0AFBBC 800B2BBC 2C00000D */  cmpwi     r0, 0xd
/* 0AFBC0 800B2BC0 41820028 */  beq       lbl_800B2BE8
/* 0AFBC4 800B2BC4 40800018 */  bge       lbl_800B2BDC
/* 0AFBC8 800B2BC8 2C000006 */  cmpwi     r0, 0x6
/* 0AFBCC 800B2BCC 4080004C */  bge       lbl_800B2C18
/* 0AFBD0 800B2BD0 2C000004 */  cmpwi     r0, 0x4
/* 0AFBD4 800B2BD4 40800014 */  bge       lbl_800B2BE8
/* 0AFBD8 800B2BD8 48000040 */  b         lbl_800B2C18
lbl_800B2BDC:
/* 0AFBDC 800B2BDC 2C00000F */  cmpwi     r0, 0xf
/* 0AFBE0 800B2BE0 41820008 */  beq       lbl_800B2BE8
/* 0AFBE4 800B2BE4 48000034 */  b         lbl_800B2C18
lbl_800B2BE8:
/* 0AFBE8 800B2BE8 48001849 */  bl        __DVDClearWaitingQueue
/* 0AFBEC 800B2BEC 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AFBF0 800B2BF0 381F0040 */  addi      r0, r31, 0x40
/* 0AFBF4 800B2BF4 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0AFBF8 800B2BF8 81840028 */  lwz       r12, 0x28(r4)
/* 0AFBFC 800B2BFC 280C0000 */  cmplwi    r12, 0x0
/* 0AFC00 800B2C00 41820010 */  beq       lbl_800B2C10
/* 0AFC04 800B2C04 7D8803A6 */  mtlr      r12
/* 0AFC08 800B2C08 3860FFFC */  li        r3, -0x4
/* 0AFC0C 800B2C0C 4E800021 */  blrl
lbl_800B2C10:
/* 0AFC10 800B2C10 48000209 */  bl        stateReady
/* 0AFC14 800B2C14 48000044 */  b         lbl_800B2C58
lbl_800B2C18:
/* 0AFC18 800B2C18 48001185 */  bl        DVDReset
/* 0AFC1C 800B2C1C 387F0070 */  addi      r3, r31, 0x70
/* 0AFC20 800B2C20 4BFE90DD */  bl        OSCreateAlarm
/* 0AFC24 800B2C24 3C608000 */  lis       r3, 0x8000
/* 0AFC28 800B2C28 800300F8 */  lwz       r0, 0xf8(r3)
/* 0AFC2C 800B2C2C 3C801062 */  lis       r4, 0x1062
/* 0AFC30 800B2C30 3C60800B */  lis       r3, AlarmHandler@ha
/* 0AFC34 800B2C34 5400F0BE */  srwi      r0, r0, 2
/* 0AFC38 800B2C38 38844DD3 */  addi      r4, r4, 0x4dd3
/* 0AFC3C 800B2C3C 7C040016 */  mulhwu    r0, r4, r0
/* 0AFC40 800B2C40 5400D1BE */  srwi      r0, r0, 6
/* 0AFC44 800B2C44 1CC0047E */  mulli     r6, r0, 0x47e
/* 0AFC48 800B2C48 38E32B5C */  addi      r7, r3, AlarmHandler@l
/* 0AFC4C 800B2C4C 387F0070 */  addi      r3, r31, 0x70
/* 0AFC50 800B2C50 38A00000 */  li        r5, 0x0
/* 0AFC54 800B2C54 4BFE9309 */  bl        OSSetAlarm
lbl_800B2C58:
/* 0AFC58 800B2C58 80010014 */  lwz       r0, 0x14(r1)
/* 0AFC5C 800B2C5C 83E1000C */  lwz       r31, 0xc(r1)
/* 0AFC60 800B2C60 38210010 */  addi      r1, r1, 0x10
/* 0AFC64 800B2C64 7C0803A6 */  mtlr      r0
/* 0AFC68 800B2C68 4E800020 */  blr

glabel fn_800B2C6C
/* 0AFC6C 800B2C6C 7C0802A6 */  mflr      r0
/* 0AFC70 800B2C70 3C608019 */  lis       r3, D_80188860@ha
/* 0AFC74 800B2C74 90010004 */  stw       r0, 0x4(r1)
/* 0AFC78 800B2C78 3C80800B */  lis       r4, fn_800B2C9C@ha
/* 0AFC7C 800B2C7C 38638860 */  addi      r3, r3, D_80188860@l
/* 0AFC80 800B2C80 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AFC84 800B2C84 38842C9C */  addi      r4, r4, fn_800B2C9C@l
/* 0AFC88 800B2C88 4BFFE381 */  bl        fn_800B1008
/* 0AFC8C 800B2C8C 8001000C */  lwz       r0, 0xc(r1)
/* 0AFC90 800B2C90 38210008 */  addi      r1, r1, 0x8
/* 0AFC94 800B2C94 7C0803A6 */  mtlr      r0
/* 0AFC98 800B2C98 4E800020 */  blr

glabel fn_800B2C9C
/* 0AFC9C 800B2C9C 7C0802A6 */  mflr      r0
/* 0AFCA0 800B2CA0 28030010 */  cmplwi    r3, 0x10
/* 0AFCA4 800B2CA4 90010004 */  stw       r0, 0x4(r1)
/* 0AFCA8 800B2CA8 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AFCAC 800B2CAC 4082002C */  bne       lbl_800B2CD8
/* 0AFCB0 800B2CB0 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AFCB4 800B2CB4 3800FFFF */  li        r0, -0x1
/* 0AFCB8 800B2CB8 3C600123 */  lis       r3, 0x123
/* 0AFCBC 800B2CBC 9004000C */  stw       r0, 0xc(r4)
/* 0AFCC0 800B2CC0 38634568 */  addi      r3, r3, 0x4568
/* 0AFCC4 800B2CC4 48001A81 */  bl        __DVDStoreErrorCode
/* 0AFCC8 800B2CC8 480010D5 */  bl        DVDReset
/* 0AFCCC 800B2CCC 38600000 */  li        r3, 0x0
/* 0AFCD0 800B2CD0 4BFFF2D5 */  bl        cbForStateError
/* 0AFCD4 800B2CD4 48000028 */  b         lbl_800B2CFC
lbl_800B2CD8:
/* 0AFCD8 800B2CD8 546007FF */  clrlwi.   r0, r3, 31
/* 0AFCDC 800B2CDC 41820014 */  beq       lbl_800B2CF0
/* 0AFCE0 800B2CE0 38000000 */  li        r0, 0x0
/* 0AFCE4 800B2CE4 900D8D04 */  stw       r0, D_8018BC84@sda21(r0)
/* 0AFCE8 800B2CE8 4BFFF98D */  bl        fn_800B2674
/* 0AFCEC 800B2CEC 48000010 */  b         lbl_800B2CFC
lbl_800B2CF0:
/* 0AFCF0 800B2CF0 3C60800B */  lis       r3, fn_800B2160@ha
/* 0AFCF4 800B2CF4 38632160 */  addi      r3, r3, fn_800B2160@l
/* 0AFCF8 800B2CF8 4BFFE441 */  bl        fn_800B1138
lbl_800B2CFC:
/* 0AFCFC 800B2CFC 8001000C */  lwz       r0, 0xc(r1)
/* 0AFD00 800B2D00 38210008 */  addi      r1, r1, 0x8
/* 0AFD04 800B2D04 7C0803A6 */  mtlr      r0
/* 0AFD08 800B2D08 4E800020 */  blr

glabel fn_800B2D0C
/* 0AFD0C 800B2D0C 7C0802A6 */  mflr      r0
/* 0AFD10 800B2D10 3C60800B */  lis       r3, cbForStateMotorStopped@ha
/* 0AFD14 800B2D14 90010004 */  stw       r0, 0x4(r1)
/* 0AFD18 800B2D18 38632D34 */  addi      r3, r3, cbForStateMotorStopped@l
/* 0AFD1C 800B2D1C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AFD20 800B2D20 4BFFE2BD */  bl        DVDLowWaitCoverClose
/* 0AFD24 800B2D24 8001000C */  lwz       r0, 0xc(r1)
/* 0AFD28 800B2D28 38210008 */  addi      r1, r1, 0x8
/* 0AFD2C 800B2D2C 7C0803A6 */  mtlr      r0
/* 0AFD30 800B2D30 4E800020 */  blr

cbForStateMotorStopped:
/* 0AFD34 800B2D34 7C0802A6 */  mflr      r0
/* 0AFD38 800B2D38 3C60CC00 */  lis       r3, 0xcc00
/* 0AFD3C 800B2D3C 90010004 */  stw       r0, 0x4(r1)
/* 0AFD40 800B2D40 38000000 */  li        r0, 0x0
/* 0AFD44 800B2D44 3C808019 */  lis       r4, BB2@ha
/* 0AFD48 800B2D48 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AFD4C 800B2D4C 93E10014 */  stw       r31, 0x14(r1)
/* 0AFD50 800B2D50 3BE48840 */  addi      r31, r4, BB2@l
/* 0AFD54 800B2D54 90036004 */  stw       r0, 0x6004(r3)
/* 0AFD58 800B2D58 38000003 */  li        r0, 0x3
/* 0AFD5C 800B2D5C 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AFD60 800B2D60 9003000C */  stw       r0, 0xc(r3)
/* 0AFD64 800B2D64 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0AFD68 800B2D68 2C00000D */  cmpwi     r0, 0xd
/* 0AFD6C 800B2D6C 41820028 */  beq       lbl_800B2D94
/* 0AFD70 800B2D70 40800018 */  bge       lbl_800B2D88
/* 0AFD74 800B2D74 2C000006 */  cmpwi     r0, 0x6
/* 0AFD78 800B2D78 4080004C */  bge       lbl_800B2DC4
/* 0AFD7C 800B2D7C 2C000004 */  cmpwi     r0, 0x4
/* 0AFD80 800B2D80 40800014 */  bge       lbl_800B2D94
/* 0AFD84 800B2D84 48000040 */  b         lbl_800B2DC4
lbl_800B2D88:
/* 0AFD88 800B2D88 2C00000F */  cmpwi     r0, 0xf
/* 0AFD8C 800B2D8C 41820008 */  beq       lbl_800B2D94
/* 0AFD90 800B2D90 48000034 */  b         lbl_800B2DC4
lbl_800B2D94:
/* 0AFD94 800B2D94 4800169D */  bl        __DVDClearWaitingQueue
/* 0AFD98 800B2D98 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AFD9C 800B2D9C 381F0040 */  addi      r0, r31, 0x40
/* 0AFDA0 800B2DA0 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0AFDA4 800B2DA4 81840028 */  lwz       r12, 0x28(r4)
/* 0AFDA8 800B2DA8 280C0000 */  cmplwi    r12, 0x0
/* 0AFDAC 800B2DAC 41820010 */  beq       lbl_800B2DBC
/* 0AFDB0 800B2DB0 7D8803A6 */  mtlr      r12
/* 0AFDB4 800B2DB4 3860FFFC */  li        r3, -0x4
/* 0AFDB8 800B2DB8 4E800021 */  blrl
lbl_800B2DBC:
/* 0AFDBC 800B2DBC 4800005D */  bl        stateReady
/* 0AFDC0 800B2DC0 48000044 */  b         lbl_800B2E04
lbl_800B2DC4:
/* 0AFDC4 800B2DC4 48000FD9 */  bl        DVDReset
/* 0AFDC8 800B2DC8 387F0070 */  addi      r3, r31, 0x70
/* 0AFDCC 800B2DCC 4BFE8F31 */  bl        OSCreateAlarm
/* 0AFDD0 800B2DD0 3C608000 */  lis       r3, 0x8000
/* 0AFDD4 800B2DD4 800300F8 */  lwz       r0, 0xf8(r3)
/* 0AFDD8 800B2DD8 3C801062 */  lis       r4, 0x1062
/* 0AFDDC 800B2DDC 3C60800B */  lis       r3, AlarmHandler@ha
/* 0AFDE0 800B2DE0 5400F0BE */  srwi      r0, r0, 2
/* 0AFDE4 800B2DE4 38844DD3 */  addi      r4, r4, 0x4dd3
/* 0AFDE8 800B2DE8 7C040016 */  mulhwu    r0, r4, r0
/* 0AFDEC 800B2DEC 5400D1BE */  srwi      r0, r0, 6
/* 0AFDF0 800B2DF0 1CC0047E */  mulli     r6, r0, 0x47e
/* 0AFDF4 800B2DF4 38E32B5C */  addi      r7, r3, AlarmHandler@l
/* 0AFDF8 800B2DF8 387F0070 */  addi      r3, r31, 0x70
/* 0AFDFC 800B2DFC 38A00000 */  li        r5, 0x0
/* 0AFE00 800B2E00 4BFE915D */  bl        OSSetAlarm
lbl_800B2E04:
/* 0AFE04 800B2E04 8001001C */  lwz       r0, 0x1c(r1)
/* 0AFE08 800B2E08 83E10014 */  lwz       r31, 0x14(r1)
/* 0AFE0C 800B2E0C 38210018 */  addi      r1, r1, 0x18
/* 0AFE10 800B2E10 7C0803A6 */  mtlr      r0
/* 0AFE14 800B2E14 4E800020 */  blr

stateReady:
/* 0AFE18 800B2E18 7C0802A6 */  mflr      r0
/* 0AFE1C 800B2E1C 3C608019 */  lis       r3, BB2@ha
/* 0AFE20 800B2E20 90010004 */  stw       r0, 0x4(r1)
/* 0AFE24 800B2E24 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0AFE28 800B2E28 93E1000C */  stw       r31, 0xc(r1)
/* 0AFE2C 800B2E2C 3BE38840 */  addi      r31, r3, BB2@l
/* 0AFE30 800B2E30 48001741 */  bl        __DVDCheckWaitingQueue
/* 0AFE34 800B2E34 2C030000 */  cmpwi     r3, 0x0
/* 0AFE38 800B2E38 40820010 */  bne       lbl_800B2E48
/* 0AFE3C 800B2E3C 38000000 */  li        r0, 0x0
/* 0AFE40 800B2E40 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0AFE44 800B2E44 4800029C */  b         lbl_800B30E0
lbl_800B2E48:
/* 0AFE48 800B2E48 800D8CDC */  lwz       r0, PauseFlag@sda21(r0)
/* 0AFE4C 800B2E4C 2C000000 */  cmpwi     r0, 0x0
/* 0AFE50 800B2E50 41820018 */  beq       lbl_800B2E68
/* 0AFE54 800B2E54 38600001 */  li        r3, 0x1
/* 0AFE58 800B2E58 38000000 */  li        r0, 0x0
/* 0AFE5C 800B2E5C 906D8CE0 */  stw       r3, PausingFlag@sda21(r0)
/* 0AFE60 800B2E60 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0AFE64 800B2E64 4800027C */  b         lbl_800B30E0
lbl_800B2E68:
/* 0AFE68 800B2E68 48001669 */  bl        __DVDPopWaitingQueue
/* 0AFE6C 800B2E6C 800D8CE8 */  lwz       r0, FatalErrorFlag@sda21(r0)
/* 0AFE70 800B2E70 906D8CD0 */  stw       r3, executing@sda21(r0)
/* 0AFE74 800B2E74 2C000000 */  cmpwi     r0, 0x0
/* 0AFE78 800B2E78 4182003C */  beq       lbl_800B2EB4
/* 0AFE7C 800B2E7C 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0AFE80 800B2E80 3880FFFF */  li        r4, -0x1
/* 0AFE84 800B2E84 381F0040 */  addi      r0, r31, 0x40
/* 0AFE88 800B2E88 9083000C */  stw       r4, 0xc(r3)
/* 0AFE8C 800B2E8C 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AFE90 800B2E90 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0AFE94 800B2E94 81840028 */  lwz       r12, 0x28(r4)
/* 0AFE98 800B2E98 280C0000 */  cmplwi    r12, 0x0
/* 0AFE9C 800B2E9C 41820010 */  beq       lbl_800B2EAC
/* 0AFEA0 800B2EA0 7D8803A6 */  mtlr      r12
/* 0AFEA4 800B2EA4 3860FFFF */  li        r3, -0x1
/* 0AFEA8 800B2EA8 4E800021 */  blrl
lbl_800B2EAC:
/* 0AFEAC 800B2EAC 4BFFFF6D */  bl        stateReady
/* 0AFEB0 800B2EB0 48000230 */  b         lbl_800B30E0
lbl_800B2EB4:
/* 0AFEB4 800B2EB4 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AFEB8 800B2EB8 80040008 */  lwz       r0, 0x8(r4)
/* 0AFEBC 800B2EBC 900D8CEC */  stw       r0, CurrCommand@sda21(r0)
/* 0AFEC0 800B2EC0 800D8CF8 */  lwz       r0, ResumeFromHere@sda21(r0)
/* 0AFEC4 800B2EC4 28000000 */  cmplwi    r0, 0x0
/* 0AFEC8 800B2EC8 41820208 */  beq       lbl_800B30D0
/* 0AFECC 800B2ECC 800D8CF8 */  lwz       r0, ResumeFromHere@sda21(r0)
/* 0AFED0 800B2ED0 2C000004 */  cmpwi     r0, 0x4
/* 0AFED4 800B2ED4 41820110 */  beq       lbl_800B2FE4
/* 0AFED8 800B2ED8 4080001C */  bge       lbl_800B2EF4
/* 0AFEDC 800B2EDC 2C000002 */  cmpwi     r0, 0x2
/* 0AFEE0 800B2EE0 418200D4 */  beq       lbl_800B2FB4
/* 0AFEE4 800B2EE4 408000E8 */  bge       lbl_800B2FCC
/* 0AFEE8 800B2EE8 2C000001 */  cmpwi     r0, 0x1
/* 0AFEEC 800B2EEC 4080001C */  bge       lbl_800B2F08
/* 0AFEF0 800B2EF0 480001D4 */  b         lbl_800B30C4
lbl_800B2EF4:
/* 0AFEF4 800B2EF4 2C000008 */  cmpwi     r0, 0x8
/* 0AFEF8 800B2EF8 408001CC */  bge       lbl_800B30C4
/* 0AFEFC 800B2EFC 2C000006 */  cmpwi     r0, 0x6
/* 0AFF00 800B2F00 408000FC */  bge       lbl_800B2FFC
/* 0AFF04 800B2F04 480001A4 */  b         lbl_800B30A8
lbl_800B2F08:
/* 0AFF08 800B2F08 38000001 */  li        r0, 0x1
/* 0AFF0C 800B2F0C 9004000C */  stw       r0, 0xc(r4)
/* 0AFF10 800B2F10 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0AFF14 800B2F14 2C00000D */  cmpwi     r0, 0xd
/* 0AFF18 800B2F18 41820028 */  beq       lbl_800B2F40
/* 0AFF1C 800B2F1C 40800018 */  bge       lbl_800B2F34
/* 0AFF20 800B2F20 2C000006 */  cmpwi     r0, 0x6
/* 0AFF24 800B2F24 4080004C */  bge       lbl_800B2F70
/* 0AFF28 800B2F28 2C000004 */  cmpwi     r0, 0x4
/* 0AFF2C 800B2F2C 40800014 */  bge       lbl_800B2F40
/* 0AFF30 800B2F30 48000040 */  b         lbl_800B2F70
lbl_800B2F34:
/* 0AFF34 800B2F34 2C00000F */  cmpwi     r0, 0xf
/* 0AFF38 800B2F38 41820008 */  beq       lbl_800B2F40
/* 0AFF3C 800B2F3C 48000034 */  b         lbl_800B2F70
lbl_800B2F40:
/* 0AFF40 800B2F40 480014F1 */  bl        __DVDClearWaitingQueue
/* 0AFF44 800B2F44 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0AFF48 800B2F48 381F0040 */  addi      r0, r31, 0x40
/* 0AFF4C 800B2F4C 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0AFF50 800B2F50 81840028 */  lwz       r12, 0x28(r4)
/* 0AFF54 800B2F54 280C0000 */  cmplwi    r12, 0x0
/* 0AFF58 800B2F58 41820010 */  beq       lbl_800B2F68
/* 0AFF5C 800B2F5C 7D8803A6 */  mtlr      r12
/* 0AFF60 800B2F60 3860FFFC */  li        r3, -0x4
/* 0AFF64 800B2F64 4E800021 */  blrl
lbl_800B2F68:
/* 0AFF68 800B2F68 4BFFFEB1 */  bl        stateReady
/* 0AFF6C 800B2F6C 48000158 */  b         lbl_800B30C4
lbl_800B2F70:
/* 0AFF70 800B2F70 48000E2D */  bl        DVDReset
/* 0AFF74 800B2F74 387F0070 */  addi      r3, r31, 0x70
/* 0AFF78 800B2F78 4BFE8D85 */  bl        OSCreateAlarm
/* 0AFF7C 800B2F7C 3C608000 */  lis       r3, 0x8000
/* 0AFF80 800B2F80 800300F8 */  lwz       r0, 0xf8(r3)
/* 0AFF84 800B2F84 3C801062 */  lis       r4, 0x1062
/* 0AFF88 800B2F88 3C60800B */  lis       r3, AlarmHandler@ha
/* 0AFF8C 800B2F8C 5400F0BE */  srwi      r0, r0, 2
/* 0AFF90 800B2F90 38844DD3 */  addi      r4, r4, 0x4dd3
/* 0AFF94 800B2F94 7C040016 */  mulhwu    r0, r4, r0
/* 0AFF98 800B2F98 5400D1BE */  srwi      r0, r0, 6
/* 0AFF9C 800B2F9C 1CC0047E */  mulli     r6, r0, 0x47e
/* 0AFFA0 800B2FA0 38E32B5C */  addi      r7, r3, AlarmHandler@l
/* 0AFFA4 800B2FA4 387F0070 */  addi      r3, r31, 0x70
/* 0AFFA8 800B2FA8 38A00000 */  li        r5, 0x0
/* 0AFFAC 800B2FAC 4BFE8FB1 */  bl        OSSetAlarm
/* 0AFFB0 800B2FB0 48000114 */  b         lbl_800B30C4
lbl_800B2FB4:
/* 0AFFB4 800B2FB4 3800000B */  li        r0, 0xb
/* 0AFFB8 800B2FB8 3C60800B */  lis       r3, cbForStateMotorStopped@ha
/* 0AFFBC 800B2FBC 9004000C */  stw       r0, 0xc(r4)
/* 0AFFC0 800B2FC0 38632D34 */  addi      r3, r3, cbForStateMotorStopped@l
/* 0AFFC4 800B2FC4 4BFFE019 */  bl        DVDLowWaitCoverClose
/* 0AFFC8 800B2FC8 480000FC */  b         lbl_800B30C4
lbl_800B2FCC:
/* 0AFFCC 800B2FCC 38000004 */  li        r0, 0x4
/* 0AFFD0 800B2FD0 3C60800B */  lis       r3, cbForStateMotorStopped@ha
/* 0AFFD4 800B2FD4 9004000C */  stw       r0, 0xc(r4)
/* 0AFFD8 800B2FD8 38632D34 */  addi      r3, r3, cbForStateMotorStopped@l
/* 0AFFDC 800B2FDC 4BFFE001 */  bl        DVDLowWaitCoverClose
/* 0AFFE0 800B2FE0 480000E4 */  b         lbl_800B30C4
lbl_800B2FE4:
/* 0AFFE4 800B2FE4 38000005 */  li        r0, 0x5
/* 0AFFE8 800B2FE8 3C60800B */  lis       r3, cbForStateMotorStopped@ha
/* 0AFFEC 800B2FEC 9004000C */  stw       r0, 0xc(r4)
/* 0AFFF0 800B2FF0 38632D34 */  addi      r3, r3, cbForStateMotorStopped@l
/* 0AFFF4 800B2FF4 4BFFDFE9 */  bl        DVDLowWaitCoverClose
/* 0AFFF8 800B2FF8 480000CC */  b         lbl_800B30C4
lbl_800B2FFC:
/* 0AFFFC 800B2FFC 38000003 */  li        r0, 0x3
/* 0B0000 800B3000 9004000C */  stw       r0, 0xc(r4)
/* 0B0004 800B3004 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0B0008 800B3008 2C00000D */  cmpwi     r0, 0xd
/* 0B000C 800B300C 41820028 */  beq       lbl_800B3034
/* 0B0010 800B3010 40800018 */  bge       lbl_800B3028
/* 0B0014 800B3014 2C000006 */  cmpwi     r0, 0x6
/* 0B0018 800B3018 4080004C */  bge       lbl_800B3064
/* 0B001C 800B301C 2C000004 */  cmpwi     r0, 0x4
/* 0B0020 800B3020 40800014 */  bge       lbl_800B3034
/* 0B0024 800B3024 48000040 */  b         lbl_800B3064
lbl_800B3028:
/* 0B0028 800B3028 2C00000F */  cmpwi     r0, 0xf
/* 0B002C 800B302C 41820008 */  beq       lbl_800B3034
/* 0B0030 800B3030 48000034 */  b         lbl_800B3064
lbl_800B3034:
/* 0B0034 800B3034 480013FD */  bl        __DVDClearWaitingQueue
/* 0B0038 800B3038 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0B003C 800B303C 381F0040 */  addi      r0, r31, 0x40
/* 0B0040 800B3040 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0B0044 800B3044 81840028 */  lwz       r12, 0x28(r4)
/* 0B0048 800B3048 280C0000 */  cmplwi    r12, 0x0
/* 0B004C 800B304C 41820010 */  beq       lbl_800B305C
/* 0B0050 800B3050 7D8803A6 */  mtlr      r12
/* 0B0054 800B3054 3860FFFC */  li        r3, -0x4
/* 0B0058 800B3058 4E800021 */  blrl
lbl_800B305C:
/* 0B005C 800B305C 4BFFFDBD */  bl        stateReady
/* 0B0060 800B3060 48000064 */  b         lbl_800B30C4
lbl_800B3064:
/* 0B0064 800B3064 48000D39 */  bl        DVDReset
/* 0B0068 800B3068 387F0070 */  addi      r3, r31, 0x70
/* 0B006C 800B306C 4BFE8C91 */  bl        OSCreateAlarm
/* 0B0070 800B3070 3C608000 */  lis       r3, 0x8000
/* 0B0074 800B3074 800300F8 */  lwz       r0, 0xf8(r3)
/* 0B0078 800B3078 3C801062 */  lis       r4, 0x1062
/* 0B007C 800B307C 3C60800B */  lis       r3, AlarmHandler@ha
/* 0B0080 800B3080 5400F0BE */  srwi      r0, r0, 2
/* 0B0084 800B3084 38844DD3 */  addi      r4, r4, 0x4dd3
/* 0B0088 800B3088 7C040016 */  mulhwu    r0, r4, r0
/* 0B008C 800B308C 5400D1BE */  srwi      r0, r0, 6
/* 0B0090 800B3090 1CC0047E */  mulli     r6, r0, 0x47e
/* 0B0094 800B3094 38E32B5C */  addi      r7, r3, AlarmHandler@l
/* 0B0098 800B3098 387F0070 */  addi      r3, r31, 0x70
/* 0B009C 800B309C 38A00000 */  li        r5, 0x0
/* 0B00A0 800B30A0 4BFE8EBD */  bl        OSSetAlarm
/* 0B00A4 800B30A4 48000020 */  b         lbl_800B30C4
lbl_800B30A8:
/* 0B00A8 800B30A8 3800FFFF */  li        r0, -0x1
/* 0B00AC 800B30AC 9004000C */  stw       r0, 0xc(r4)
/* 0B00B0 800B30B0 806D8CFC */  lwz       r3, CancelLastError@sda21(r0)
/* 0B00B4 800B30B4 48001691 */  bl        __DVDStoreErrorCode
/* 0B00B8 800B30B8 3C60800B */  lis       r3, cbForStateError@ha
/* 0B00BC 800B30BC 38631FA4 */  addi      r3, r3, cbForStateError@l
/* 0B00C0 800B30C0 4BFFDFED */  bl        DVDLowStopMotor
lbl_800B30C4:
/* 0B00C4 800B30C4 38000000 */  li        r0, 0x0
/* 0B00C8 800B30C8 900D8CF8 */  stw       r0, ResumeFromHere@sda21(r0)
/* 0B00CC 800B30CC 48000014 */  b         lbl_800B30E0
lbl_800B30D0:
/* 0B00D0 800B30D0 38000001 */  li        r0, 0x1
/* 0B00D4 800B30D4 9004000C */  stw       r0, 0xc(r4)
/* 0B00D8 800B30D8 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0B00DC 800B30DC 48000019 */  bl        stateBusy
lbl_800B30E0:
/* 0B00E0 800B30E0 80010014 */  lwz       r0, 0x14(r1)
/* 0B00E4 800B30E4 83E1000C */  lwz       r31, 0xc(r1)
/* 0B00E8 800B30E8 38210010 */  addi      r1, r1, 0x10
/* 0B00EC 800B30EC 7C0803A6 */  mtlr      r0
/* 0B00F0 800B30F0 4E800020 */  blr

stateBusy:
/* 0B00F4 800B30F4 7C0802A6 */  mflr      r0
/* 0B00F8 800B30F8 3C80800B */  lis       r4, stateBusy@ha
/* 0B00FC 800B30FC 90010004 */  stw       r0, 0x4(r1)
/* 0B0100 800B3100 380430F4 */  addi      r0, r4, stateBusy@l
/* 0B0104 800B3104 7C671B78 */  mr        r7, r3
/* 0B0108 800B3108 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B010C 800B310C 900D8D14 */  stw       r0, D_8018BC94@sda21(r0)
/* 0B0110 800B3110 80030008 */  lwz       r0, 0x8(r3)
/* 0B0114 800B3114 2800000F */  cmplwi    r0, 0xf
/* 0B0118 800B3118 418102D4 */  bgt       lbl_800B33EC
/* 0B011C 800B311C 3C60800F */  lis       r3, jtbl_800F3850@ha
/* 0B0120 800B3120 38633850 */  addi      r3, r3, jtbl_800F3850@l
/* 0B0124 800B3124 5400103A */  slwi      r0, r0, 2
/* 0B0128 800B3128 7C03002E */  lwzx      r0, r3, r0
/* 0B012C 800B312C 7C0903A6 */  mtctr     r0
/* 0B0130 800B3130 4E800420 */  bctr
lbl_800B3134:
/* 0B0134 800B3134 3C60CC00 */  lis       r3, 0xcc00
/* 0B0138 800B3138 80036004 */  lwz       r0, 0x6004(r3)
/* 0B013C 800B313C 38A36000 */  addi      r5, r3, 0x6000
/* 0B0140 800B3140 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B0144 800B3144 90050004 */  stw       r0, 0x4(r5)
/* 0B0148 800B3148 38000020 */  li        r0, 0x20
/* 0B014C 800B314C 38833414 */  addi      r4, r3, fn_800B3414@l
/* 0B0150 800B3150 9007001C */  stw       r0, 0x1c(r7)
/* 0B0154 800B3154 80670018 */  lwz       r3, 0x18(r7)
/* 0B0158 800B3158 4BFFDEB1 */  bl        fn_800B1008
/* 0B015C 800B315C 480002A8 */  b         lbl_800B3404
lbl_800B3160:
/* 0B0160 800B3160 80070014 */  lwz       r0, 0x14(r7)
/* 0B0164 800B3164 28000000 */  cmplwi    r0, 0x0
/* 0B0168 800B3168 4082003C */  bne       lbl_800B31A4
/* 0B016C 800B316C 3C608019 */  lis       r3, DummyCommandBlock@ha
/* 0B0170 800B3170 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0B0174 800B3174 38038880 */  addi      r0, r3, DummyCommandBlock@l
/* 0B0178 800B3178 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0B017C 800B317C 38000000 */  li        r0, 0x0
/* 0B0180 800B3180 9004000C */  stw       r0, 0xc(r4)
/* 0B0184 800B3184 81840028 */  lwz       r12, 0x28(r4)
/* 0B0188 800B3188 280C0000 */  cmplwi    r12, 0x0
/* 0B018C 800B318C 41820010 */  beq       lbl_800B319C
/* 0B0190 800B3190 7D8803A6 */  mtlr      r12
/* 0B0194 800B3194 38600000 */  li        r3, 0x0
/* 0B0198 800B3198 4E800021 */  blrl
lbl_800B319C:
/* 0B019C 800B319C 4BFFFC7D */  bl        stateReady
/* 0B01A0 800B31A0 48000264 */  b         lbl_800B3404
lbl_800B31A4:
/* 0B01A4 800B31A4 3C60CC00 */  lis       r3, 0xcc00
/* 0B01A8 800B31A8 38636000 */  addi      r3, r3, 0x6000
/* 0B01AC 800B31AC 80030004 */  lwz       r0, 0x4(r3)
/* 0B01B0 800B31B0 3C800008 */  lis       r4, 0x8
/* 0B01B4 800B31B4 90030004 */  stw       r0, 0x4(r3)
/* 0B01B8 800B31B8 80670020 */  lwz       r3, 0x20(r7)
/* 0B01BC 800B31BC 80070014 */  lwz       r0, 0x14(r7)
/* 0B01C0 800B31C0 7C030050 */  subf      r0, r3, r0
/* 0B01C4 800B31C4 7C002040 */  cmplw     r0, r4
/* 0B01C8 800B31C8 40810008 */  ble       lbl_800B31D0
/* 0B01CC 800B31CC 48000008 */  b         lbl_800B31D4
lbl_800B31D0:
/* 0B01D0 800B31D0 7C040378 */  mr        r4, r0
lbl_800B31D4:
/* 0B01D4 800B31D4 9087001C */  stw       r4, 0x1c(r7)
/* 0B01D8 800B31D8 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B01DC 800B31DC 38C33414 */  addi      r6, r3, fn_800B3414@l
/* 0B01E0 800B31E0 80A70020 */  lwz       r5, 0x20(r7)
/* 0B01E4 800B31E4 80670018 */  lwz       r3, 0x18(r7)
/* 0B01E8 800B31E8 80070010 */  lwz       r0, 0x10(r7)
/* 0B01EC 800B31EC 7C632A14 */  add       r3, r3, r5
/* 0B01F0 800B31F0 8087001C */  lwz       r4, 0x1c(r7)
/* 0B01F4 800B31F4 7CA02A14 */  add       r5, r0, r5
/* 0B01F8 800B31F8 4BFFDAB9 */  bl        fn_800B0CB0
/* 0B01FC 800B31FC 48000208 */  b         lbl_800B3404
lbl_800B3200:
/* 0B0200 800B3200 3C60CC00 */  lis       r3, 0xcc00
/* 0B0204 800B3204 80036004 */  lwz       r0, 0x6004(r3)
/* 0B0208 800B3208 38A36000 */  addi      r5, r3, 0x6000
/* 0B020C 800B320C 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B0210 800B3210 90050004 */  stw       r0, 0x4(r5)
/* 0B0214 800B3214 38833414 */  addi      r4, r3, fn_800B3414@l
/* 0B0218 800B3218 80670010 */  lwz       r3, 0x10(r7)
/* 0B021C 800B321C 4BFFDD2D */  bl        fn_800B0F48
/* 0B0220 800B3220 480001E4 */  b         lbl_800B3404
lbl_800B3224:
/* 0B0224 800B3224 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B0228 800B3228 38633414 */  addi      r3, r3, fn_800B3414@l
/* 0B022C 800B322C 4BFFDE81 */  bl        DVDLowStopMotor
/* 0B0230 800B3230 480001D4 */  b         lbl_800B3404
lbl_800B3234:
/* 0B0234 800B3234 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B0238 800B3238 38633414 */  addi      r3, r3, fn_800B3414@l
/* 0B023C 800B323C 4BFFDE71 */  bl        DVDLowStopMotor
/* 0B0240 800B3240 480001C4 */  b         lbl_800B3404
lbl_800B3244:
/* 0B0244 800B3244 3C60CC00 */  lis       r3, 0xcc00
/* 0B0248 800B3248 38636000 */  addi      r3, r3, 0x6000
/* 0B024C 800B324C 80030004 */  lwz       r0, 0x4(r3)
/* 0B0250 800B3250 90030004 */  stw       r0, 0x4(r3)
/* 0B0254 800B3254 800D8CE4 */  lwz       r0, D_8018BC64@sda21(r0)
/* 0B0258 800B3258 2C000000 */  cmpwi     r0, 0x0
/* 0B025C 800B325C 41820024 */  beq       lbl_800B3280
/* 0B0260 800B3260 80AD8CD0 */  lwz       r5, executing@sda21(r0)
/* 0B0264 800B3264 38000000 */  li        r0, 0x0
/* 0B0268 800B3268 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B026C 800B326C 9005001C */  stw       r0, 0x1c(r5)
/* 0B0270 800B3270 38833414 */  addi      r4, r3, fn_800B3414@l
/* 0B0274 800B3274 38600000 */  li        r3, 0x0
/* 0B0278 800B3278 4BFFE081 */  bl        fn_800B12F8
/* 0B027C 800B327C 48000188 */  b         lbl_800B3404
lbl_800B3280:
/* 0B0280 800B3280 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0B0284 800B3284 38000001 */  li        r0, 0x1
/* 0B0288 800B3288 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B028C 800B328C 9004001C */  stw       r0, 0x1c(r4)
/* 0B0290 800B3290 38C33414 */  addi      r6, r3, fn_800B3414@l
/* 0B0294 800B3294 38600000 */  li        r3, 0x0
/* 0B0298 800B3298 80870014 */  lwz       r4, 0x14(r7)
/* 0B029C 800B329C 80A70010 */  lwz       r5, 0x10(r7)
/* 0B02A0 800B32A0 4BFFDFC1 */  bl        fn_800B1260
/* 0B02A4 800B32A4 48000160 */  b         lbl_800B3404
lbl_800B32A8:
/* 0B02A8 800B32A8 3C60CC00 */  lis       r3, 0xcc00
/* 0B02AC 800B32AC 80036004 */  lwz       r0, 0x6004(r3)
/* 0B02B0 800B32B0 38836000 */  addi      r4, r3, 0x6000
/* 0B02B4 800B32B4 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B02B8 800B32B8 90040004 */  stw       r0, 0x4(r4)
/* 0B02BC 800B32BC 38C33414 */  addi      r6, r3, fn_800B3414@l
/* 0B02C0 800B32C0 3C600001 */  lis       r3, 0x1
/* 0B02C4 800B32C4 38800000 */  li        r4, 0x0
/* 0B02C8 800B32C8 38A00000 */  li        r5, 0x0
/* 0B02CC 800B32CC 4BFFDF95 */  bl        fn_800B1260
/* 0B02D0 800B32D0 48000134 */  b         lbl_800B3404
lbl_800B32D4:
/* 0B02D4 800B32D4 3C60CC00 */  lis       r3, 0xcc00
/* 0B02D8 800B32D8 80036004 */  lwz       r0, 0x6004(r3)
/* 0B02DC 800B32DC 38836000 */  addi      r4, r3, 0x6000
/* 0B02E0 800B32E0 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B02E4 800B32E4 90040004 */  stw       r0, 0x4(r4)
/* 0B02E8 800B32E8 38000001 */  li        r0, 0x1
/* 0B02EC 800B32EC 38C33414 */  addi      r6, r3, fn_800B3414@l
/* 0B02F0 800B32F0 900D8CE4 */  stw       r0, D_8018BC64@sda21(r0)
/* 0B02F4 800B32F4 38600000 */  li        r3, 0x0
/* 0B02F8 800B32F8 38800000 */  li        r4, 0x0
/* 0B02FC 800B32FC 38A00000 */  li        r5, 0x0
/* 0B0300 800B3300 4BFFDF61 */  bl        fn_800B1260
/* 0B0304 800B3304 48000100 */  b         lbl_800B3404
lbl_800B3308:
/* 0B0308 800B3308 3C60CC00 */  lis       r3, 0xcc00
/* 0B030C 800B330C 80036004 */  lwz       r0, 0x6004(r3)
/* 0B0310 800B3310 38A36000 */  addi      r5, r3, 0x6000
/* 0B0314 800B3314 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B0318 800B3318 90050004 */  stw       r0, 0x4(r5)
/* 0B031C 800B331C 38833414 */  addi      r4, r3, fn_800B3414@l
/* 0B0320 800B3320 38600000 */  li        r3, 0x0
/* 0B0324 800B3324 4BFFDFD5 */  bl        fn_800B12F8
/* 0B0328 800B3328 480000DC */  b         lbl_800B3404
lbl_800B332C:
/* 0B032C 800B332C 3C60CC00 */  lis       r3, 0xcc00
/* 0B0330 800B3330 80036004 */  lwz       r0, 0x6004(r3)
/* 0B0334 800B3334 38A36000 */  addi      r5, r3, 0x6000
/* 0B0338 800B3338 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B033C 800B333C 90050004 */  stw       r0, 0x4(r5)
/* 0B0340 800B3340 38833414 */  addi      r4, r3, fn_800B3414@l
/* 0B0344 800B3344 3C600001 */  lis       r3, 0x1
/* 0B0348 800B3348 4BFFDFB1 */  bl        fn_800B12F8
/* 0B034C 800B334C 480000B8 */  b         lbl_800B3404
lbl_800B3350:
/* 0B0350 800B3350 3C60CC00 */  lis       r3, 0xcc00
/* 0B0354 800B3354 80036004 */  lwz       r0, 0x6004(r3)
/* 0B0358 800B3358 38A36000 */  addi      r5, r3, 0x6000
/* 0B035C 800B335C 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B0360 800B3360 90050004 */  stw       r0, 0x4(r5)
/* 0B0364 800B3364 38833414 */  addi      r4, r3, fn_800B3414@l
/* 0B0368 800B3368 3C600002 */  lis       r3, 0x2
/* 0B036C 800B336C 4BFFDF8D */  bl        fn_800B12F8
/* 0B0370 800B3370 48000094 */  b         lbl_800B3404
lbl_800B3374:
/* 0B0374 800B3374 3C60CC00 */  lis       r3, 0xcc00
/* 0B0378 800B3378 80036004 */  lwz       r0, 0x6004(r3)
/* 0B037C 800B337C 38A36000 */  addi      r5, r3, 0x6000
/* 0B0380 800B3380 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B0384 800B3384 90050004 */  stw       r0, 0x4(r5)
/* 0B0388 800B3388 38833414 */  addi      r4, r3, fn_800B3414@l
/* 0B038C 800B338C 3C600003 */  lis       r3, 0x3
/* 0B0390 800B3390 4BFFDF69 */  bl        fn_800B12F8
/* 0B0394 800B3394 48000070 */  b         lbl_800B3404
lbl_800B3398:
/* 0B0398 800B3398 3C60CC00 */  lis       r3, 0xcc00
/* 0B039C 800B339C 80036004 */  lwz       r0, 0x6004(r3)
/* 0B03A0 800B33A0 38836000 */  addi      r4, r3, 0x6000
/* 0B03A4 800B33A4 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B03A8 800B33A8 90040004 */  stw       r0, 0x4(r4)
/* 0B03AC 800B33AC 38A33414 */  addi      r5, r3, fn_800B3414@l
/* 0B03B0 800B33B0 80670010 */  lwz       r3, 0x10(r7)
/* 0B03B4 800B33B4 80870014 */  lwz       r4, 0x14(r7)
/* 0B03B8 800B33B8 4BFFDFCD */  bl        fn_800B1384
/* 0B03BC 800B33BC 48000048 */  b         lbl_800B3404
lbl_800B33C0:
/* 0B03C0 800B33C0 3C60CC00 */  lis       r3, 0xcc00
/* 0B03C4 800B33C4 80036004 */  lwz       r0, 0x6004(r3)
/* 0B03C8 800B33C8 38A36000 */  addi      r5, r3, 0x6000
/* 0B03CC 800B33CC 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B03D0 800B33D0 90050004 */  stw       r0, 0x4(r5)
/* 0B03D4 800B33D4 38000020 */  li        r0, 0x20
/* 0B03D8 800B33D8 38833414 */  addi      r4, r3, fn_800B3414@l
/* 0B03DC 800B33DC 9007001C */  stw       r0, 0x1c(r7)
/* 0B03E0 800B33E0 80670018 */  lwz       r3, 0x18(r7)
/* 0B03E4 800B33E4 4BFFDDE1 */  bl        fn_800B11C4
/* 0B03E8 800B33E8 4800001C */  b         lbl_800B3404
lbl_800B33EC:
/* 0B03EC 800B33EC 818D8808 */  lwz       r12, D_8018B788@sda21(r0)
/* 0B03F0 800B33F0 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B03F4 800B33F4 38833414 */  addi      r4, r3, fn_800B3414@l
/* 0B03F8 800B33F8 7D8803A6 */  mtlr      r12
/* 0B03FC 800B33FC 38670000 */  addi      r3, r7, 0x0
/* 0B0400 800B3400 4E800021 */  blrl
lbl_800B3404:
/* 0B0404 800B3404 8001000C */  lwz       r0, 0xc(r1)
/* 0B0408 800B3408 38210008 */  addi      r1, r1, 0x8
/* 0B040C 800B340C 7C0803A6 */  mtlr      r0
/* 0B0410 800B3410 4E800020 */  blr

glabel fn_800B3414
/* 0B0414 800B3414 7C0802A6 */  mflr      r0
/* 0B0418 800B3418 28030010 */  cmplwi    r3, 0x10
/* 0B041C 800B341C 90010004 */  stw       r0, 0x4(r1)
/* 0B0420 800B3420 3C808019 */  lis       r4, BB2@ha
/* 0B0424 800B3424 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B0428 800B3428 93E10014 */  stw       r31, 0x14(r1)
/* 0B042C 800B342C 3BE48840 */  addi      r31, r4, BB2@l
/* 0B0430 800B3430 93C10010 */  stw       r30, 0x10(r1)
/* 0B0434 800B3434 4082002C */  bne       lbl_800B3460
/* 0B0438 800B3438 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0B043C 800B343C 3800FFFF */  li        r0, -0x1
/* 0B0440 800B3440 3C600123 */  lis       r3, 0x123
/* 0B0444 800B3444 9004000C */  stw       r0, 0xc(r4)
/* 0B0448 800B3448 38634568 */  addi      r3, r3, 0x4568
/* 0B044C 800B344C 480012F9 */  bl        __DVDStoreErrorCode
/* 0B0450 800B3450 4800094D */  bl        DVDReset
/* 0B0454 800B3454 38600000 */  li        r3, 0x0
/* 0B0458 800B3458 4BFFEB4D */  bl        cbForStateError
/* 0B045C 800B345C 480005D8 */  b         lbl_800B3A34
lbl_800B3460:
/* 0B0460 800B3460 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0B0464 800B3464 28000003 */  cmplwi    r0, 0x3
/* 0B0468 800B3468 41820010 */  beq       lbl_800B3478
/* 0B046C 800B346C 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0B0470 800B3470 2800000F */  cmplwi    r0, 0xf
/* 0B0474 800B3474 408200EC */  bne       lbl_800B3560
lbl_800B3478:
/* 0B0478 800B3478 546007BD */  rlwinm.   r0, r3, 0, 30, 30
/* 0B047C 800B347C 4182002C */  beq       lbl_800B34A8
/* 0B0480 800B3480 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0B0484 800B3484 3800FFFF */  li        r0, -0x1
/* 0B0488 800B3488 3C600123 */  lis       r3, 0x123
/* 0B048C 800B348C 9004000C */  stw       r0, 0xc(r4)
/* 0B0490 800B3490 38634567 */  addi      r3, r3, 0x4567
/* 0B0494 800B3494 480012B1 */  bl        __DVDStoreErrorCode
/* 0B0498 800B3498 3C60800B */  lis       r3, cbForStateError@ha
/* 0B049C 800B349C 38631FA4 */  addi      r3, r3, cbForStateError@l
/* 0B04A0 800B34A0 4BFFDC0D */  bl        DVDLowStopMotor
/* 0B04A4 800B34A4 48000590 */  b         lbl_800B3A34
lbl_800B34A8:
/* 0B04A8 800B34A8 38000000 */  li        r0, 0x0
/* 0B04AC 800B34AC 900D8D04 */  stw       r0, D_8018BC84@sda21(r0)
/* 0B04B0 800B34B0 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0B04B4 800B34B4 2800000F */  cmplwi    r0, 0xf
/* 0B04B8 800B34B8 4082000C */  bne       lbl_800B34C4
/* 0B04BC 800B34BC 38000001 */  li        r0, 0x1
/* 0B04C0 800B34C0 900D8D08 */  stw       r0, ResetRequired@sda21(r0)
lbl_800B34C4:
/* 0B04C4 800B34C4 800D8CF0 */  lwz       r0, D_8018BC70@sda21(r0)
/* 0B04C8 800B34C8 28000000 */  cmplwi    r0, 0x0
/* 0B04CC 800B34CC 4182006C */  beq       lbl_800B3538
/* 0B04D0 800B34D0 38000007 */  li        r0, 0x7
/* 0B04D4 800B34D4 83CD8CD0 */  lwz       r30, executing@sda21(r0)
/* 0B04D8 800B34D8 900D8CF8 */  stw       r0, ResumeFromHere@sda21(r0)
/* 0B04DC 800B34DC 387F0040 */  addi      r3, r31, 0x40
/* 0B04E0 800B34E0 38000000 */  li        r0, 0x0
/* 0B04E4 800B34E4 900D8CF0 */  stw       r0, D_8018BC70@sda21(r0)
/* 0B04E8 800B34E8 3800000A */  li        r0, 0xa
/* 0B04EC 800B34EC 906D8CD0 */  stw       r3, executing@sda21(r0)
/* 0B04F0 800B34F0 901E000C */  stw       r0, 0xc(r30)
/* 0B04F4 800B34F4 819E0028 */  lwz       r12, 0x28(r30)
/* 0B04F8 800B34F8 280C0000 */  cmplwi    r12, 0x0
/* 0B04FC 800B34FC 41820014 */  beq       lbl_800B3510
/* 0B0500 800B3500 7D8803A6 */  mtlr      r12
/* 0B0504 800B3504 389E0000 */  addi      r4, r30, 0x0
/* 0B0508 800B3508 3860FFFD */  li        r3, -0x3
/* 0B050C 800B350C 4E800021 */  blrl
lbl_800B3510:
/* 0B0510 800B3510 818D8CF4 */  lwz       r12, D_8018BC74@sda21(r0)
/* 0B0514 800B3514 280C0000 */  cmplwi    r12, 0x0
/* 0B0518 800B3518 41820014 */  beq       lbl_800B352C
/* 0B051C 800B351C 7D8803A6 */  mtlr      r12
/* 0B0520 800B3520 389E0000 */  addi      r4, r30, 0x0
/* 0B0524 800B3524 38600000 */  li        r3, 0x0
/* 0B0528 800B3528 4E800021 */  blrl
lbl_800B352C:
/* 0B052C 800B352C 4BFFF8ED */  bl        stateReady
/* 0B0530 800B3530 38000001 */  li        r0, 0x1
/* 0B0534 800B3534 48000008 */  b         lbl_800B353C
lbl_800B3538:
/* 0B0538 800B3538 38000000 */  li        r0, 0x0
lbl_800B353C:
/* 0B053C 800B353C 2C000000 */  cmpwi     r0, 0x0
/* 0B0540 800B3540 408204F4 */  bne       lbl_800B3A34
/* 0B0544 800B3544 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0B0548 800B3548 38000007 */  li        r0, 0x7
/* 0B054C 800B354C 3C60800B */  lis       r3, cbForStateMotorStopped@ha
/* 0B0550 800B3550 9004000C */  stw       r0, 0xc(r4)
/* 0B0554 800B3554 38632D34 */  addi      r3, r3, cbForStateMotorStopped@l
/* 0B0558 800B3558 4BFFDA85 */  bl        DVDLowWaitCoverClose
/* 0B055C 800B355C 480004D8 */  b         lbl_800B3A34
lbl_800B3560:
/* 0B0560 800B3560 808D8CEC */  lwz       r4, CurrCommand@sda21(r0)
/* 0B0564 800B3564 28040001 */  cmplwi    r4, 0x1
/* 0B0568 800B3568 41820018 */  beq       lbl_800B3580
/* 0B056C 800B356C 3804FFFC */  subi      r0, r4, 0x4
/* 0B0570 800B3570 28000001 */  cmplwi    r0, 0x1
/* 0B0574 800B3574 4081000C */  ble       lbl_800B3580
/* 0B0578 800B3578 2804000E */  cmplwi    r4, 0xe
/* 0B057C 800B357C 4082000C */  bne       lbl_800B3588
lbl_800B3580:
/* 0B0580 800B3580 38000001 */  li        r0, 0x1
/* 0B0584 800B3584 4800001C */  b         lbl_800B35A0
lbl_800B3588:
/* 0B0588 800B3588 800D8814 */  lwz       r0, D_8018B794@sda21(r0)
/* 0B058C 800B358C 7C040040 */  cmplw     r4, r0
/* 0B0590 800B3590 4082000C */  bne       lbl_800B359C
/* 0B0594 800B3594 38000001 */  li        r0, 0x1
/* 0B0598 800B3598 48000008 */  b         lbl_800B35A0
lbl_800B359C:
/* 0B059C 800B359C 38000000 */  li        r0, 0x0
lbl_800B35A0:
/* 0B05A0 800B35A0 2C000000 */  cmpwi     r0, 0x0
/* 0B05A4 800B35A4 41820028 */  beq       lbl_800B35CC
/* 0B05A8 800B35A8 80CD8CD0 */  lwz       r6, executing@sda21(r0)
/* 0B05AC 800B35AC 3C80CC00 */  lis       r4, 0xcc00
/* 0B05B0 800B35B0 38846000 */  addi      r4, r4, 0x6000
/* 0B05B4 800B35B4 80840018 */  lwz       r4, 0x18(r4)
/* 0B05B8 800B35B8 8006001C */  lwz       r0, 0x1c(r6)
/* 0B05BC 800B35BC 80A60020 */  lwz       r5, 0x20(r6)
/* 0B05C0 800B35C0 7C040050 */  subf      r0, r4, r0
/* 0B05C4 800B35C4 7C050214 */  add       r0, r5, r0
/* 0B05C8 800B35C8 90060020 */  stw       r0, 0x20(r6)
lbl_800B35CC:
/* 0B05CC 800B35CC 54600739 */  rlwinm.   r0, r3, 0, 28, 28
/* 0B05D0 800B35D0 41820060 */  beq       lbl_800B3630
/* 0B05D4 800B35D4 83CD8CD0 */  lwz       r30, executing@sda21(r0)
/* 0B05D8 800B35D8 387F0040 */  addi      r3, r31, 0x40
/* 0B05DC 800B35DC 38000000 */  li        r0, 0x0
/* 0B05E0 800B35E0 900D8CF0 */  stw       r0, D_8018BC70@sda21(r0)
/* 0B05E4 800B35E4 3800000A */  li        r0, 0xa
/* 0B05E8 800B35E8 906D8CD0 */  stw       r3, executing@sda21(r0)
/* 0B05EC 800B35EC 901E000C */  stw       r0, 0xc(r30)
/* 0B05F0 800B35F0 819E0028 */  lwz       r12, 0x28(r30)
/* 0B05F4 800B35F4 280C0000 */  cmplwi    r12, 0x0
/* 0B05F8 800B35F8 41820014 */  beq       lbl_800B360C
/* 0B05FC 800B35FC 7D8803A6 */  mtlr      r12
/* 0B0600 800B3600 389E0000 */  addi      r4, r30, 0x0
/* 0B0604 800B3604 3860FFFD */  li        r3, -0x3
/* 0B0608 800B3608 4E800021 */  blrl
lbl_800B360C:
/* 0B060C 800B360C 818D8CF4 */  lwz       r12, D_8018BC74@sda21(r0)
/* 0B0610 800B3610 280C0000 */  cmplwi    r12, 0x0
/* 0B0614 800B3614 41820014 */  beq       lbl_800B3628
/* 0B0618 800B3618 7D8803A6 */  mtlr      r12
/* 0B061C 800B361C 389E0000 */  addi      r4, r30, 0x0
/* 0B0620 800B3620 38600000 */  li        r3, 0x0
/* 0B0624 800B3624 4E800021 */  blrl
lbl_800B3628:
/* 0B0628 800B3628 4BFFF7F1 */  bl        stateReady
/* 0B062C 800B362C 48000408 */  b         lbl_800B3A34
lbl_800B3630:
/* 0B0630 800B3630 546007FF */  clrlwi.   r0, r3, 31
/* 0B0634 800B3634 418202D0 */  beq       lbl_800B3904
/* 0B0638 800B3638 38800000 */  li        r4, 0x0
/* 0B063C 800B363C 908D8D04 */  stw       r4, D_8018BC84@sda21(r0)
/* 0B0640 800B3640 800D8CF0 */  lwz       r0, D_8018BC70@sda21(r0)
/* 0B0644 800B3644 28000000 */  cmplwi    r0, 0x0
/* 0B0648 800B3648 41820060 */  beq       lbl_800B36A8
/* 0B064C 800B364C 908D8CF8 */  stw       r4, ResumeFromHere@sda21(r0)
/* 0B0650 800B3650 387F0040 */  addi      r3, r31, 0x40
/* 0B0654 800B3654 83CD8CD0 */  lwz       r30, executing@sda21(r0)
/* 0B0658 800B3658 3800000A */  li        r0, 0xa
/* 0B065C 800B365C 908D8CF0 */  stw       r4, D_8018BC70@sda21(r0)
/* 0B0660 800B3660 906D8CD0 */  stw       r3, executing@sda21(r0)
/* 0B0664 800B3664 901E000C */  stw       r0, 0xc(r30)
/* 0B0668 800B3668 819E0028 */  lwz       r12, 0x28(r30)
/* 0B066C 800B366C 280C0000 */  cmplwi    r12, 0x0
/* 0B0670 800B3670 41820014 */  beq       lbl_800B3684
/* 0B0674 800B3674 7D8803A6 */  mtlr      r12
/* 0B0678 800B3678 389E0000 */  addi      r4, r30, 0x0
/* 0B067C 800B367C 3860FFFD */  li        r3, -0x3
/* 0B0680 800B3680 4E800021 */  blrl
lbl_800B3684:
/* 0B0684 800B3684 818D8CF4 */  lwz       r12, D_8018BC74@sda21(r0)
/* 0B0688 800B3688 280C0000 */  cmplwi    r12, 0x0
/* 0B068C 800B368C 41820014 */  beq       lbl_800B36A0
/* 0B0690 800B3690 7D8803A6 */  mtlr      r12
/* 0B0694 800B3694 389E0000 */  addi      r4, r30, 0x0
/* 0B0698 800B3698 38600000 */  li        r3, 0x0
/* 0B069C 800B369C 4E800021 */  blrl
lbl_800B36A0:
/* 0B06A0 800B36A0 4BFFF779 */  bl        stateReady
/* 0B06A4 800B36A4 38800001 */  li        r4, 0x1
lbl_800B36A8:
/* 0B06A8 800B36A8 2C040000 */  cmpwi     r4, 0x0
/* 0B06AC 800B36AC 40820388 */  bne       lbl_800B3A34
/* 0B06B0 800B36B0 806D8CEC */  lwz       r3, CurrCommand@sda21(r0)
/* 0B06B4 800B36B4 28030001 */  cmplwi    r3, 0x1
/* 0B06B8 800B36B8 41820018 */  beq       lbl_800B36D0
/* 0B06BC 800B36BC 3803FFFC */  subi      r0, r3, 0x4
/* 0B06C0 800B36C0 28000001 */  cmplwi    r0, 0x1
/* 0B06C4 800B36C4 4081000C */  ble       lbl_800B36D0
/* 0B06C8 800B36C8 2803000E */  cmplwi    r3, 0xe
/* 0B06CC 800B36CC 4082000C */  bne       lbl_800B36D8
lbl_800B36D0:
/* 0B06D0 800B36D0 38000001 */  li        r0, 0x1
/* 0B06D4 800B36D4 4800001C */  b         lbl_800B36F0
lbl_800B36D8:
/* 0B06D8 800B36D8 800D8814 */  lwz       r0, D_8018B794@sda21(r0)
/* 0B06DC 800B36DC 7C030040 */  cmplw     r3, r0
/* 0B06E0 800B36E0 4082000C */  bne       lbl_800B36EC
/* 0B06E4 800B36E4 38000001 */  li        r0, 0x1
/* 0B06E8 800B36E8 48000008 */  b         lbl_800B36F0
lbl_800B36EC:
/* 0B06EC 800B36EC 38000000 */  li        r0, 0x0
lbl_800B36F0:
/* 0B06F0 800B36F0 2C000000 */  cmpwi     r0, 0x0
/* 0B06F4 800B36F4 41820054 */  beq       lbl_800B3748
/* 0B06F8 800B36F8 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0B06FC 800B36FC 80830020 */  lwz       r4, 0x20(r3)
/* 0B0700 800B3700 80030014 */  lwz       r0, 0x14(r3)
/* 0B0704 800B3704 7C040040 */  cmplw     r4, r0
/* 0B0708 800B3708 4182000C */  beq       lbl_800B3714
/* 0B070C 800B370C 4BFFF9E9 */  bl        stateBusy
/* 0B0710 800B3710 48000324 */  b         lbl_800B3A34
lbl_800B3714:
/* 0B0714 800B3714 381F0040 */  addi      r0, r31, 0x40
/* 0B0718 800B3718 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0B071C 800B371C 38000000 */  li        r0, 0x0
/* 0B0720 800B3720 38830000 */  addi      r4, r3, 0x0
/* 0B0724 800B3724 9003000C */  stw       r0, 0xc(r3)
/* 0B0728 800B3728 81830028 */  lwz       r12, 0x28(r3)
/* 0B072C 800B372C 280C0000 */  cmplwi    r12, 0x0
/* 0B0730 800B3730 41820010 */  beq       lbl_800B3740
/* 0B0734 800B3734 80640020 */  lwz       r3, 0x20(r4)
/* 0B0738 800B3738 7D8803A6 */  mtlr      r12
/* 0B073C 800B373C 4E800021 */  blrl
lbl_800B3740:
/* 0B0740 800B3740 4BFFF6D9 */  bl        stateReady
/* 0B0744 800B3744 480002F0 */  b         lbl_800B3A34
lbl_800B3748:
/* 0B0748 800B3748 808D8CEC */  lwz       r4, CurrCommand@sda21(r0)
/* 0B074C 800B374C 3804FFF7 */  subi      r0, r4, 0x9
/* 0B0750 800B3750 28000003 */  cmplwi    r0, 0x3
/* 0B0754 800B3754 4181000C */  bgt       lbl_800B3760
/* 0B0758 800B3758 38000001 */  li        r0, 0x1
/* 0B075C 800B375C 48000048 */  b         lbl_800B37A4
lbl_800B3760:
/* 0B0760 800B3760 3C60800F */  lis       r3, D_800F3890@ha
/* 0B0764 800B3764 84033890 */  lwzu      r0, D_800F3890@l(r3)
/* 0B0768 800B3768 7C040040 */  cmplw     r4, r0
/* 0B076C 800B376C 4082000C */  bne       lbl_800B3778
/* 0B0770 800B3770 38000001 */  li        r0, 0x1
/* 0B0774 800B3774 48000030 */  b         lbl_800B37A4
lbl_800B3778:
/* 0B0778 800B3778 84030004 */  lwzu      r0, 0x4(r3)
/* 0B077C 800B377C 7C040040 */  cmplw     r4, r0
/* 0B0780 800B3780 4082000C */  bne       lbl_800B378C
/* 0B0784 800B3784 38000001 */  li        r0, 0x1
/* 0B0788 800B3788 4800001C */  b         lbl_800B37A4
lbl_800B378C:
/* 0B078C 800B378C 80030004 */  lwz       r0, 0x4(r3)
/* 0B0790 800B3790 7C040040 */  cmplw     r4, r0
/* 0B0794 800B3794 4082000C */  bne       lbl_800B37A0
/* 0B0798 800B3798 38000001 */  li        r0, 0x1
/* 0B079C 800B379C 48000008 */  b         lbl_800B37A4
lbl_800B37A0:
/* 0B07A0 800B37A0 38000000 */  li        r0, 0x0
lbl_800B37A4:
/* 0B07A4 800B37A4 2C000000 */  cmpwi     r0, 0x0
/* 0B07A8 800B37A8 41820068 */  beq       lbl_800B3810
/* 0B07AC 800B37AC 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0B07B0 800B37B0 2800000B */  cmplwi    r0, 0xb
/* 0B07B4 800B37B4 41820010 */  beq       lbl_800B37C4
/* 0B07B8 800B37B8 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0B07BC 800B37BC 2800000A */  cmplwi    r0, 0xa
/* 0B07C0 800B37C0 40820014 */  bne       lbl_800B37D4
lbl_800B37C4:
/* 0B07C4 800B37C4 3C60CC00 */  lis       r3, 0xcc00
/* 0B07C8 800B37C8 80036020 */  lwz       r0, 0x6020(r3)
/* 0B07CC 800B37CC 5403103A */  slwi      r3, r0, 2
/* 0B07D0 800B37D0 48000010 */  b         lbl_800B37E0
lbl_800B37D4:
/* 0B07D4 800B37D4 3C60CC00 */  lis       r3, 0xcc00
/* 0B07D8 800B37D8 38636000 */  addi      r3, r3, 0x6000
/* 0B07DC 800B37DC 80630020 */  lwz       r3, 0x20(r3)
lbl_800B37E0:
/* 0B07E0 800B37E0 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0B07E4 800B37E4 38BF0040 */  addi      r5, r31, 0x40
/* 0B07E8 800B37E8 38000000 */  li        r0, 0x0
/* 0B07EC 800B37EC 90AD8CD0 */  stw       r5, executing@sda21(r0)
/* 0B07F0 800B37F0 9004000C */  stw       r0, 0xc(r4)
/* 0B07F4 800B37F4 81840028 */  lwz       r12, 0x28(r4)
/* 0B07F8 800B37F8 280C0000 */  cmplwi    r12, 0x0
/* 0B07FC 800B37FC 4182000C */  beq       lbl_800B3808
/* 0B0800 800B3800 7D8803A6 */  mtlr      r12
/* 0B0804 800B3804 4E800021 */  blrl
lbl_800B3808:
/* 0B0808 800B3808 4BFFF611 */  bl        stateReady
/* 0B080C 800B380C 48000228 */  b         lbl_800B3A34
lbl_800B3810:
/* 0B0810 800B3810 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0B0814 800B3814 28000006 */  cmplwi    r0, 0x6
/* 0B0818 800B3818 408200B8 */  bne       lbl_800B38D0
/* 0B081C 800B381C 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0B0820 800B3820 38A4001C */  addi      r5, r4, 0x1c
/* 0B0824 800B3824 8004001C */  lwz       r0, 0x1c(r4)
/* 0B0828 800B3828 28000000 */  cmplwi    r0, 0x0
/* 0B082C 800B382C 40820074 */  bne       lbl_800B38A0
/* 0B0830 800B3830 3C60CC00 */  lis       r3, 0xcc00
/* 0B0834 800B3834 80036020 */  lwz       r0, 0x6020(r3)
/* 0B0838 800B3838 540007FF */  clrlwi.   r0, r0, 31
/* 0B083C 800B383C 41820034 */  beq       lbl_800B3870
/* 0B0840 800B3840 381F0040 */  addi      r0, r31, 0x40
/* 0B0844 800B3844 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0B0848 800B3848 38000009 */  li        r0, 0x9
/* 0B084C 800B384C 9004000C */  stw       r0, 0xc(r4)
/* 0B0850 800B3850 81840028 */  lwz       r12, 0x28(r4)
/* 0B0854 800B3854 280C0000 */  cmplwi    r12, 0x0
/* 0B0858 800B3858 41820010 */  beq       lbl_800B3868
/* 0B085C 800B385C 7D8803A6 */  mtlr      r12
/* 0B0860 800B3860 3860FFFE */  li        r3, -0x2
/* 0B0864 800B3864 4E800021 */  blrl
lbl_800B3868:
/* 0B0868 800B3868 4BFFF5B1 */  bl        stateReady
/* 0B086C 800B386C 480001C8 */  b         lbl_800B3A34
lbl_800B3870:
/* 0B0870 800B3870 38000000 */  li        r0, 0x0
/* 0B0874 800B3874 900D8CE4 */  stw       r0, D_8018BC64@sda21(r0)
/* 0B0878 800B3878 38000001 */  li        r0, 0x1
/* 0B087C 800B387C 3C60800B */  lis       r3, fn_800B3414@ha
/* 0B0880 800B3880 90050000 */  stw       r0, 0x0(r5)
/* 0B0884 800B3884 38C33414 */  addi      r6, r3, fn_800B3414@l
/* 0B0888 800B3888 38600000 */  li        r3, 0x0
/* 0B088C 800B388C 80AD8CD0 */  lwz       r5, executing@sda21(r0)
/* 0B0890 800B3890 80850014 */  lwz       r4, 0x14(r5)
/* 0B0894 800B3894 80A50010 */  lwz       r5, 0x10(r5)
/* 0B0898 800B3898 4BFFD9C9 */  bl        fn_800B1260
/* 0B089C 800B389C 48000198 */  b         lbl_800B3A34
lbl_800B38A0:
/* 0B08A0 800B38A0 381F0040 */  addi      r0, r31, 0x40
/* 0B08A4 800B38A4 900D8CD0 */  stw       r0, executing@sda21(r0)
/* 0B08A8 800B38A8 38000000 */  li        r0, 0x0
/* 0B08AC 800B38AC 9004000C */  stw       r0, 0xc(r4)
/* 0B08B0 800B38B0 81840028 */  lwz       r12, 0x28(r4)
/* 0B08B4 800B38B4 280C0000 */  cmplwi    r12, 0x0
/* 0B08B8 800B38B8 41820010 */  beq       lbl_800B38C8
/* 0B08BC 800B38BC 7D8803A6 */  mtlr      r12
/* 0B08C0 800B38C0 38600000 */  li        r3, 0x0
/* 0B08C4 800B38C4 4E800021 */  blrl
lbl_800B38C8:
/* 0B08C8 800B38C8 4BFFF551 */  bl        stateReady
/* 0B08CC 800B38CC 48000168 */  b         lbl_800B3A34
lbl_800B38D0:
/* 0B08D0 800B38D0 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0B08D4 800B38D4 387F0040 */  addi      r3, r31, 0x40
/* 0B08D8 800B38D8 38000000 */  li        r0, 0x0
/* 0B08DC 800B38DC 906D8CD0 */  stw       r3, executing@sda21(r0)
/* 0B08E0 800B38E0 9004000C */  stw       r0, 0xc(r4)
/* 0B08E4 800B38E4 81840028 */  lwz       r12, 0x28(r4)
/* 0B08E8 800B38E8 280C0000 */  cmplwi    r12, 0x0
/* 0B08EC 800B38EC 41820010 */  beq       lbl_800B38FC
/* 0B08F0 800B38F0 7D8803A6 */  mtlr      r12
/* 0B08F4 800B38F4 38600000 */  li        r3, 0x0
/* 0B08F8 800B38F8 4E800021 */  blrl
lbl_800B38FC:
/* 0B08FC 800B38FC 4BFFF51D */  bl        stateReady
/* 0B0900 800B3900 48000134 */  b         lbl_800B3A34
lbl_800B3904:
/* 0B0904 800B3904 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0B0908 800B3908 2800000E */  cmplwi    r0, 0xe
/* 0B090C 800B390C 4082002C */  bne       lbl_800B3938
/* 0B0910 800B3910 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0B0914 800B3914 3800FFFF */  li        r0, -0x1
/* 0B0918 800B3918 3C600123 */  lis       r3, 0x123
/* 0B091C 800B391C 9004000C */  stw       r0, 0xc(r4)
/* 0B0920 800B3920 38634567 */  addi      r3, r3, 0x4567
/* 0B0924 800B3924 48000E21 */  bl        __DVDStoreErrorCode
/* 0B0928 800B3928 3C60800B */  lis       r3, cbForStateError@ha
/* 0B092C 800B392C 38631FA4 */  addi      r3, r3, cbForStateError@l
/* 0B0930 800B3930 4BFFD77D */  bl        DVDLowStopMotor
/* 0B0934 800B3934 48000100 */  b         lbl_800B3A34
lbl_800B3938:
/* 0B0938 800B3938 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0B093C 800B393C 28000001 */  cmplwi    r0, 0x1
/* 0B0940 800B3940 41820028 */  beq       lbl_800B3968
/* 0B0944 800B3944 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0B0948 800B3948 28000004 */  cmplwi    r0, 0x4
/* 0B094C 800B394C 4182001C */  beq       lbl_800B3968
/* 0B0950 800B3950 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0B0954 800B3954 28000005 */  cmplwi    r0, 0x5
/* 0B0958 800B3958 41820010 */  beq       lbl_800B3968
/* 0B095C 800B395C 800D8CEC */  lwz       r0, CurrCommand@sda21(r0)
/* 0B0960 800B3960 2800000E */  cmplwi    r0, 0xe
/* 0B0964 800B3964 408200C4 */  bne       lbl_800B3A28
lbl_800B3968:
/* 0B0968 800B3968 83CD8CD0 */  lwz       r30, executing@sda21(r0)
/* 0B096C 800B396C 807E0020 */  lwz       r3, 0x20(r30)
/* 0B0970 800B3970 801E0014 */  lwz       r0, 0x14(r30)
/* 0B0974 800B3974 7C030040 */  cmplw     r3, r0
/* 0B0978 800B3978 408200B0 */  bne       lbl_800B3A28
/* 0B097C 800B397C 800D8CF0 */  lwz       r0, D_8018BC70@sda21(r0)
/* 0B0980 800B3980 28000000 */  cmplwi    r0, 0x0
/* 0B0984 800B3984 41820064 */  beq       lbl_800B39E8
/* 0B0988 800B3988 38800000 */  li        r4, 0x0
/* 0B098C 800B398C 908D8CF8 */  stw       r4, ResumeFromHere@sda21(r0)
/* 0B0990 800B3990 387F0040 */  addi      r3, r31, 0x40
/* 0B0994 800B3994 3800000A */  li        r0, 0xa
/* 0B0998 800B3998 908D8CF0 */  stw       r4, D_8018BC70@sda21(r0)
/* 0B099C 800B399C 906D8CD0 */  stw       r3, executing@sda21(r0)
/* 0B09A0 800B39A0 901E000C */  stw       r0, 0xc(r30)
/* 0B09A4 800B39A4 819E0028 */  lwz       r12, 0x28(r30)
/* 0B09A8 800B39A8 280C0000 */  cmplwi    r12, 0x0
/* 0B09AC 800B39AC 41820014 */  beq       lbl_800B39C0
/* 0B09B0 800B39B0 7D8803A6 */  mtlr      r12
/* 0B09B4 800B39B4 389E0000 */  addi      r4, r30, 0x0
/* 0B09B8 800B39B8 3860FFFD */  li        r3, -0x3
/* 0B09BC 800B39BC 4E800021 */  blrl
lbl_800B39C0:
/* 0B09C0 800B39C0 818D8CF4 */  lwz       r12, D_8018BC74@sda21(r0)
/* 0B09C4 800B39C4 280C0000 */  cmplwi    r12, 0x0
/* 0B09C8 800B39C8 41820014 */  beq       lbl_800B39DC
/* 0B09CC 800B39CC 7D8803A6 */  mtlr      r12
/* 0B09D0 800B39D0 389E0000 */  addi      r4, r30, 0x0
/* 0B09D4 800B39D4 38600000 */  li        r3, 0x0
/* 0B09D8 800B39D8 4E800021 */  blrl
lbl_800B39DC:
/* 0B09DC 800B39DC 4BFFF43D */  bl        stateReady
/* 0B09E0 800B39E0 38000001 */  li        r0, 0x1
/* 0B09E4 800B39E4 48000008 */  b         lbl_800B39EC
lbl_800B39E8:
/* 0B09E8 800B39E8 38000000 */  li        r0, 0x0
lbl_800B39EC:
/* 0B09EC 800B39EC 2C000000 */  cmpwi     r0, 0x0
/* 0B09F0 800B39F0 40820044 */  bne       lbl_800B3A34
/* 0B09F4 800B39F4 808D8CD0 */  lwz       r4, executing@sda21(r0)
/* 0B09F8 800B39F8 387F0040 */  addi      r3, r31, 0x40
/* 0B09FC 800B39FC 38000000 */  li        r0, 0x0
/* 0B0A00 800B3A00 906D8CD0 */  stw       r3, executing@sda21(r0)
/* 0B0A04 800B3A04 9004000C */  stw       r0, 0xc(r4)
/* 0B0A08 800B3A08 81840028 */  lwz       r12, 0x28(r4)
/* 0B0A0C 800B3A0C 280C0000 */  cmplwi    r12, 0x0
/* 0B0A10 800B3A10 41820010 */  beq       lbl_800B3A20
/* 0B0A14 800B3A14 80640020 */  lwz       r3, 0x20(r4)
/* 0B0A18 800B3A18 7D8803A6 */  mtlr      r12
/* 0B0A1C 800B3A1C 4E800021 */  blrl
lbl_800B3A20:
/* 0B0A20 800B3A20 4BFFF3F9 */  bl        stateReady
/* 0B0A24 800B3A24 48000010 */  b         lbl_800B3A34
lbl_800B3A28:
/* 0B0A28 800B3A28 3C60800B */  lis       r3, fn_800B2160@ha
/* 0B0A2C 800B3A2C 38632160 */  addi      r3, r3, fn_800B2160@l
/* 0B0A30 800B3A30 4BFFD709 */  bl        fn_800B1138
lbl_800B3A34:
/* 0B0A34 800B3A34 8001001C */  lwz       r0, 0x1c(r1)
/* 0B0A38 800B3A38 83E10014 */  lwz       r31, 0x14(r1)
/* 0B0A3C 800B3A3C 83C10010 */  lwz       r30, 0x10(r1)
/* 0B0A40 800B3A40 38210018 */  addi      r1, r1, 0x18
/* 0B0A44 800B3A44 7C0803A6 */  mtlr      r0
/* 0B0A48 800B3A48 4E800020 */  blr

glabel fn_800B3A4C
/* 0B0A4C 800B3A4C 7C0802A6 */  mflr      r0
/* 0B0A50 800B3A50 90010004 */  stw       r0, 0x4(r1)
/* 0B0A54 800B3A54 38000001 */  li        r0, 0x1
/* 0B0A58 800B3A58 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0B0A5C 800B3A5C 93E10034 */  stw       r31, 0x34(r1)
/* 0B0A60 800B3A60 3BE80000 */  addi      r31, r8, 0x0
/* 0B0A64 800B3A64 93C10030 */  stw       r30, 0x30(r1)
/* 0B0A68 800B3A68 93A1002C */  stw       r29, 0x2c(r1)
/* 0B0A6C 800B3A6C 3BA30000 */  addi      r29, r3, 0x0
/* 0B0A70 800B3A70 90030008 */  stw       r0, 0x8(r3)
/* 0B0A74 800B3A74 38000000 */  li        r0, 0x0
/* 0B0A78 800B3A78 90830018 */  stw       r4, 0x18(r3)
/* 0B0A7C 800B3A7C 90A30014 */  stw       r5, 0x14(r3)
/* 0B0A80 800B3A80 90C30010 */  stw       r6, 0x10(r3)
/* 0B0A84 800B3A84 90030020 */  stw       r0, 0x20(r3)
/* 0B0A88 800B3A88 90E30028 */  stw       r7, 0x28(r3)
/* 0B0A8C 800B3A8C 800D8804 */  lwz       r0, autoInvalidation@sda21(r0)
/* 0B0A90 800B3A90 2C000000 */  cmpwi     r0, 0x0
/* 0B0A94 800B3A94 41820030 */  beq       lbl_800B3AC4
/* 0B0A98 800B3A98 807D0008 */  lwz       r3, 0x8(r29)
/* 0B0A9C 800B3A9C 28030001 */  cmplwi    r3, 0x1
/* 0B0AA0 800B3AA0 41820018 */  beq       lbl_800B3AB8
/* 0B0AA4 800B3AA4 3803FFFC */  subi      r0, r3, 0x4
/* 0B0AA8 800B3AA8 28000001 */  cmplwi    r0, 0x1
/* 0B0AAC 800B3AAC 4081000C */  ble       lbl_800B3AB8
/* 0B0AB0 800B3AB0 2803000E */  cmplwi    r3, 0xe
/* 0B0AB4 800B3AB4 40820010 */  bne       lbl_800B3AC4
lbl_800B3AB8:
/* 0B0AB8 800B3AB8 807D0018 */  lwz       r3, 0x18(r29)
/* 0B0ABC 800B3ABC 809D0014 */  lwz       r4, 0x14(r29)
/* 0B0AC0 800B3AC0 4BFE91D9 */  bl        DCInvalidateRange
lbl_800B3AC4:
/* 0B0AC4 800B3AC4 4BFEA785 */  bl        OSDisableInterrupts
/* 0B0AC8 800B3AC8 38000002 */  li        r0, 0x2
/* 0B0ACC 800B3ACC 901D000C */  stw       r0, 0xc(r29)
/* 0B0AD0 800B3AD0 3BC30000 */  addi      r30, r3, 0x0
/* 0B0AD4 800B3AD4 387F0000 */  addi      r3, r31, 0x0
/* 0B0AD8 800B3AD8 389D0000 */  addi      r4, r29, 0x0
/* 0B0ADC 800B3ADC 4800098D */  bl        __DVDPushWaitingQueue
/* 0B0AE0 800B3AE0 800D8CD0 */  lwz       r0, executing@sda21(r0)
/* 0B0AE4 800B3AE4 3BE30000 */  addi      r31, r3, 0x0
/* 0B0AE8 800B3AE8 28000000 */  cmplwi    r0, 0x0
/* 0B0AEC 800B3AEC 40820014 */  bne       lbl_800B3B00
/* 0B0AF0 800B3AF0 800D8CDC */  lwz       r0, PauseFlag@sda21(r0)
/* 0B0AF4 800B3AF4 2C000000 */  cmpwi     r0, 0x0
/* 0B0AF8 800B3AF8 40820008 */  bne       lbl_800B3B00
/* 0B0AFC 800B3AFC 4BFFF31D */  bl        stateReady
lbl_800B3B00:
/* 0B0B00 800B3B00 7FC3F378 */  mr        r3, r30
/* 0B0B04 800B3B04 4BFEA76D */  bl        OSRestoreInterrupts
/* 0B0B08 800B3B08 7FE3FB78 */  mr        r3, r31
/* 0B0B0C 800B3B0C 8001003C */  lwz       r0, 0x3c(r1)
/* 0B0B10 800B3B10 83E10034 */  lwz       r31, 0x34(r1)
/* 0B0B14 800B3B14 83C10030 */  lwz       r30, 0x30(r1)
/* 0B0B18 800B3B18 83A1002C */  lwz       r29, 0x2c(r1)
/* 0B0B1C 800B3B1C 38210038 */  addi      r1, r1, 0x38
/* 0B0B20 800B3B20 7C0803A6 */  mtlr      r0
/* 0B0B24 800B3B24 4E800020 */  blr

glabel fn_800B3B28
/* 0B0B28 800B3B28 7C0802A6 */  mflr      r0
/* 0B0B2C 800B3B2C 90010004 */  stw       r0, 0x4(r1)
/* 0B0B30 800B3B30 38000004 */  li        r0, 0x4
/* 0B0B34 800B3B34 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0B0B38 800B3B38 93E1002C */  stw       r31, 0x2c(r1)
/* 0B0B3C 800B3B3C 3BE30000 */  addi      r31, r3, 0x0
/* 0B0B40 800B3B40 93C10028 */  stw       r30, 0x28(r1)
/* 0B0B44 800B3B44 90030008 */  stw       r0, 0x8(r3)
/* 0B0B48 800B3B48 38000000 */  li        r0, 0x0
/* 0B0B4C 800B3B4C 90830018 */  stw       r4, 0x18(r3)
/* 0B0B50 800B3B50 90A30014 */  stw       r5, 0x14(r3)
/* 0B0B54 800B3B54 90C30010 */  stw       r6, 0x10(r3)
/* 0B0B58 800B3B58 90030020 */  stw       r0, 0x20(r3)
/* 0B0B5C 800B3B5C 90E30028 */  stw       r7, 0x28(r3)
/* 0B0B60 800B3B60 800D8804 */  lwz       r0, autoInvalidation@sda21(r0)
/* 0B0B64 800B3B64 2C000000 */  cmpwi     r0, 0x0
/* 0B0B68 800B3B68 41820030 */  beq       lbl_800B3B98
/* 0B0B6C 800B3B6C 807F0008 */  lwz       r3, 0x8(r31)
/* 0B0B70 800B3B70 28030001 */  cmplwi    r3, 0x1
/* 0B0B74 800B3B74 41820018 */  beq       lbl_800B3B8C
/* 0B0B78 800B3B78 3803FFFC */  subi      r0, r3, 0x4
/* 0B0B7C 800B3B7C 28000001 */  cmplwi    r0, 0x1
/* 0B0B80 800B3B80 4081000C */  ble       lbl_800B3B8C
/* 0B0B84 800B3B84 2803000E */  cmplwi    r3, 0xe
/* 0B0B88 800B3B88 40820010 */  bne       lbl_800B3B98
lbl_800B3B8C:
/* 0B0B8C 800B3B8C 807F0018 */  lwz       r3, 0x18(r31)
/* 0B0B90 800B3B90 809F0014 */  lwz       r4, 0x14(r31)
/* 0B0B94 800B3B94 4BFE9105 */  bl        DCInvalidateRange
lbl_800B3B98:
/* 0B0B98 800B3B98 4BFEA6B1 */  bl        OSDisableInterrupts
/* 0B0B9C 800B3B9C 38000002 */  li        r0, 0x2
/* 0B0BA0 800B3BA0 901F000C */  stw       r0, 0xc(r31)
/* 0B0BA4 800B3BA4 3BC30000 */  addi      r30, r3, 0x0
/* 0B0BA8 800B3BA8 389F0000 */  addi      r4, r31, 0x0
/* 0B0BAC 800B3BAC 38600002 */  li        r3, 0x2
/* 0B0BB0 800B3BB0 480008B9 */  bl        __DVDPushWaitingQueue
/* 0B0BB4 800B3BB4 800D8CD0 */  lwz       r0, executing@sda21(r0)
/* 0B0BB8 800B3BB8 3BE30000 */  addi      r31, r3, 0x0
/* 0B0BBC 800B3BBC 28000000 */  cmplwi    r0, 0x0
/* 0B0BC0 800B3BC0 40820014 */  bne       lbl_800B3BD4
/* 0B0BC4 800B3BC4 800D8CDC */  lwz       r0, PauseFlag@sda21(r0)
/* 0B0BC8 800B3BC8 2C000000 */  cmpwi     r0, 0x0
/* 0B0BCC 800B3BCC 40820008 */  bne       lbl_800B3BD4
/* 0B0BD0 800B3BD0 4BFFF249 */  bl        stateReady
lbl_800B3BD4:
/* 0B0BD4 800B3BD4 7FC3F378 */  mr        r3, r30
/* 0B0BD8 800B3BD8 4BFEA699 */  bl        OSRestoreInterrupts
/* 0B0BDC 800B3BDC 7FE3FB78 */  mr        r3, r31
/* 0B0BE0 800B3BE0 80010034 */  lwz       r0, 0x34(r1)
/* 0B0BE4 800B3BE4 83E1002C */  lwz       r31, 0x2c(r1)
/* 0B0BE8 800B3BE8 83C10028 */  lwz       r30, 0x28(r1)
/* 0B0BEC 800B3BEC 38210030 */  addi      r1, r1, 0x30
/* 0B0BF0 800B3BF0 7C0803A6 */  mtlr      r0
/* 0B0BF4 800B3BF4 4E800020 */  blr

glabel DVDReadDiskID
/* 0B0BF8 800B3BF8 7C0802A6 */  mflr      r0
/* 0B0BFC 800B3BFC 90010004 */  stw       r0, 0x4(r1)
/* 0B0C00 800B3C00 38000005 */  li        r0, 0x5
/* 0B0C04 800B3C04 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B0C08 800B3C08 93E10024 */  stw       r31, 0x24(r1)
/* 0B0C0C 800B3C0C 3BE30000 */  addi      r31, r3, 0x0
/* 0B0C10 800B3C10 93C10020 */  stw       r30, 0x20(r1)
/* 0B0C14 800B3C14 90030008 */  stw       r0, 0x8(r3)
/* 0B0C18 800B3C18 38600020 */  li        r3, 0x20
/* 0B0C1C 800B3C1C 38000000 */  li        r0, 0x0
/* 0B0C20 800B3C20 909F0018 */  stw       r4, 0x18(r31)
/* 0B0C24 800B3C24 907F0014 */  stw       r3, 0x14(r31)
/* 0B0C28 800B3C28 901F0010 */  stw       r0, 0x10(r31)
/* 0B0C2C 800B3C2C 901F0020 */  stw       r0, 0x20(r31)
/* 0B0C30 800B3C30 90BF0028 */  stw       r5, 0x28(r31)
/* 0B0C34 800B3C34 800D8804 */  lwz       r0, autoInvalidation@sda21(r0)
/* 0B0C38 800B3C38 2C000000 */  cmpwi     r0, 0x0
/* 0B0C3C 800B3C3C 41820030 */  beq       lbl_800B3C6C
/* 0B0C40 800B3C40 807F0008 */  lwz       r3, 0x8(r31)
/* 0B0C44 800B3C44 28030001 */  cmplwi    r3, 0x1
/* 0B0C48 800B3C48 41820018 */  beq       lbl_800B3C60
/* 0B0C4C 800B3C4C 3803FFFC */  subi      r0, r3, 0x4
/* 0B0C50 800B3C50 28000001 */  cmplwi    r0, 0x1
/* 0B0C54 800B3C54 4081000C */  ble       lbl_800B3C60
/* 0B0C58 800B3C58 2803000E */  cmplwi    r3, 0xe
/* 0B0C5C 800B3C5C 40820010 */  bne       lbl_800B3C6C
lbl_800B3C60:
/* 0B0C60 800B3C60 807F0018 */  lwz       r3, 0x18(r31)
/* 0B0C64 800B3C64 809F0014 */  lwz       r4, 0x14(r31)
/* 0B0C68 800B3C68 4BFE9031 */  bl        DCInvalidateRange
lbl_800B3C6C:
/* 0B0C6C 800B3C6C 4BFEA5DD */  bl        OSDisableInterrupts
/* 0B0C70 800B3C70 38000002 */  li        r0, 0x2
/* 0B0C74 800B3C74 901F000C */  stw       r0, 0xc(r31)
/* 0B0C78 800B3C78 3BC30000 */  addi      r30, r3, 0x0
/* 0B0C7C 800B3C7C 389F0000 */  addi      r4, r31, 0x0
/* 0B0C80 800B3C80 38600002 */  li        r3, 0x2
/* 0B0C84 800B3C84 480007E5 */  bl        __DVDPushWaitingQueue
/* 0B0C88 800B3C88 800D8CD0 */  lwz       r0, executing@sda21(r0)
/* 0B0C8C 800B3C8C 3BE30000 */  addi      r31, r3, 0x0
/* 0B0C90 800B3C90 28000000 */  cmplwi    r0, 0x0
/* 0B0C94 800B3C94 40820014 */  bne       lbl_800B3CA8
/* 0B0C98 800B3C98 800D8CDC */  lwz       r0, PauseFlag@sda21(r0)
/* 0B0C9C 800B3C9C 2C000000 */  cmpwi     r0, 0x0
/* 0B0CA0 800B3CA0 40820008 */  bne       lbl_800B3CA8
/* 0B0CA4 800B3CA4 4BFFF175 */  bl        stateReady
lbl_800B3CA8:
/* 0B0CA8 800B3CA8 7FC3F378 */  mr        r3, r30
/* 0B0CAC 800B3CAC 4BFEA5C5 */  bl        OSRestoreInterrupts
/* 0B0CB0 800B3CB0 7FE3FB78 */  mr        r3, r31
/* 0B0CB4 800B3CB4 8001002C */  lwz       r0, 0x2c(r1)
/* 0B0CB8 800B3CB8 83E10024 */  lwz       r31, 0x24(r1)
/* 0B0CBC 800B3CBC 83C10020 */  lwz       r30, 0x20(r1)
/* 0B0CC0 800B3CC0 38210028 */  addi      r1, r1, 0x28
/* 0B0CC4 800B3CC4 7C0803A6 */  mtlr      r0
/* 0B0CC8 800B3CC8 4E800020 */  blr

glabel DVDInquiryAsync
/* 0B0CCC 800B3CCC 7C0802A6 */  mflr      r0
/* 0B0CD0 800B3CD0 90010004 */  stw       r0, 0x4(r1)
/* 0B0CD4 800B3CD4 3800000E */  li        r0, 0xe
/* 0B0CD8 800B3CD8 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B0CDC 800B3CDC 93E10024 */  stw       r31, 0x24(r1)
/* 0B0CE0 800B3CE0 3BE30000 */  addi      r31, r3, 0x0
/* 0B0CE4 800B3CE4 93C10020 */  stw       r30, 0x20(r1)
/* 0B0CE8 800B3CE8 90030008 */  stw       r0, 0x8(r3)
/* 0B0CEC 800B3CEC 38600020 */  li        r3, 0x20
/* 0B0CF0 800B3CF0 38000000 */  li        r0, 0x0
/* 0B0CF4 800B3CF4 909F0018 */  stw       r4, 0x18(r31)
/* 0B0CF8 800B3CF8 907F0014 */  stw       r3, 0x14(r31)
/* 0B0CFC 800B3CFC 901F0020 */  stw       r0, 0x20(r31)
/* 0B0D00 800B3D00 90BF0028 */  stw       r5, 0x28(r31)
/* 0B0D04 800B3D04 800D8804 */  lwz       r0, autoInvalidation@sda21(r0)
/* 0B0D08 800B3D08 2C000000 */  cmpwi     r0, 0x0
/* 0B0D0C 800B3D0C 41820030 */  beq       lbl_800B3D3C
/* 0B0D10 800B3D10 807F0008 */  lwz       r3, 0x8(r31)
/* 0B0D14 800B3D14 28030001 */  cmplwi    r3, 0x1
/* 0B0D18 800B3D18 41820018 */  beq       lbl_800B3D30
/* 0B0D1C 800B3D1C 3803FFFC */  subi      r0, r3, 0x4
/* 0B0D20 800B3D20 28000001 */  cmplwi    r0, 0x1
/* 0B0D24 800B3D24 4081000C */  ble       lbl_800B3D30
/* 0B0D28 800B3D28 2803000E */  cmplwi    r3, 0xe
/* 0B0D2C 800B3D2C 40820010 */  bne       lbl_800B3D3C
lbl_800B3D30:
/* 0B0D30 800B3D30 807F0018 */  lwz       r3, 0x18(r31)
/* 0B0D34 800B3D34 809F0014 */  lwz       r4, 0x14(r31)
/* 0B0D38 800B3D38 4BFE8F61 */  bl        DCInvalidateRange
lbl_800B3D3C:
/* 0B0D3C 800B3D3C 4BFEA50D */  bl        OSDisableInterrupts
/* 0B0D40 800B3D40 38000002 */  li        r0, 0x2
/* 0B0D44 800B3D44 901F000C */  stw       r0, 0xc(r31)
/* 0B0D48 800B3D48 3BC30000 */  addi      r30, r3, 0x0
/* 0B0D4C 800B3D4C 389F0000 */  addi      r4, r31, 0x0
/* 0B0D50 800B3D50 38600002 */  li        r3, 0x2
/* 0B0D54 800B3D54 48000715 */  bl        __DVDPushWaitingQueue
/* 0B0D58 800B3D58 800D8CD0 */  lwz       r0, executing@sda21(r0)
/* 0B0D5C 800B3D5C 3BE30000 */  addi      r31, r3, 0x0
/* 0B0D60 800B3D60 28000000 */  cmplwi    r0, 0x0
/* 0B0D64 800B3D64 40820014 */  bne       lbl_800B3D78
/* 0B0D68 800B3D68 800D8CDC */  lwz       r0, PauseFlag@sda21(r0)
/* 0B0D6C 800B3D6C 2C000000 */  cmpwi     r0, 0x0
/* 0B0D70 800B3D70 40820008 */  bne       lbl_800B3D78
/* 0B0D74 800B3D74 4BFFF0A5 */  bl        stateReady
lbl_800B3D78:
/* 0B0D78 800B3D78 7FC3F378 */  mr        r3, r30
/* 0B0D7C 800B3D7C 4BFEA4F5 */  bl        OSRestoreInterrupts
/* 0B0D80 800B3D80 7FE3FB78 */  mr        r3, r31
/* 0B0D84 800B3D84 8001002C */  lwz       r0, 0x2c(r1)
/* 0B0D88 800B3D88 83E10024 */  lwz       r31, 0x24(r1)
/* 0B0D8C 800B3D8C 83C10020 */  lwz       r30, 0x20(r1)
/* 0B0D90 800B3D90 38210028 */  addi      r1, r1, 0x28
/* 0B0D94 800B3D94 7C0803A6 */  mtlr      r0
/* 0B0D98 800B3D98 4E800020 */  blr

glabel DVDReset
/* 0B0D9C 800B3D9C 7C0802A6 */  mflr      r0
/* 0B0DA0 800B3DA0 90010004 */  stw       r0, 0x4(r1)
/* 0B0DA4 800B3DA4 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B0DA8 800B3DA8 4BFFD679 */  bl        DVDLowReset
/* 0B0DAC 800B3DAC 3C60CC00 */  lis       r3, 0xcc00
/* 0B0DB0 800B3DB0 3800002A */  li        r0, 0x2a
/* 0B0DB4 800B3DB4 90036000 */  stw       r0, 0x6000(r3)
/* 0B0DB8 800B3DB8 38836000 */  addi      r4, r3, 0x6000
/* 0B0DBC 800B3DBC 38000000 */  li        r0, 0x0
/* 0B0DC0 800B3DC0 80636004 */  lwz       r3, 0x6004(r3)
/* 0B0DC4 800B3DC4 90640004 */  stw       r3, 0x4(r4)
/* 0B0DC8 800B3DC8 900D8D08 */  stw       r0, ResetRequired@sda21(r0)
/* 0B0DCC 800B3DCC 900D8CF8 */  stw       r0, ResumeFromHere@sda21(r0)
/* 0B0DD0 800B3DD0 8001000C */  lwz       r0, 0xc(r1)
/* 0B0DD4 800B3DD4 38210008 */  addi      r1, r1, 0x8
/* 0B0DD8 800B3DD8 7C0803A6 */  mtlr      r0
/* 0B0DDC 800B3DDC 4E800020 */  blr

glabel DVDGetCommandBlockStatus
/* 0B0DE0 800B3DE0 7C0802A6 */  mflr      r0
/* 0B0DE4 800B3DE4 90010004 */  stw       r0, 0x4(r1)
/* 0B0DE8 800B3DE8 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B0DEC 800B3DEC 93E10014 */  stw       r31, 0x14(r1)
/* 0B0DF0 800B3DF0 7C7F1B78 */  mr        r31, r3
/* 0B0DF4 800B3DF4 4BFEA455 */  bl        OSDisableInterrupts
/* 0B0DF8 800B3DF8 801F000C */  lwz       r0, 0xc(r31)
/* 0B0DFC 800B3DFC 2C000003 */  cmpwi     r0, 0x3
/* 0B0E00 800B3E00 4082000C */  bne       lbl_800B3E0C
/* 0B0E04 800B3E04 3BE00001 */  li        r31, 0x1
/* 0B0E08 800B3E08 48000008 */  b         lbl_800B3E10
lbl_800B3E0C:
/* 0B0E0C 800B3E0C 7C1F0378 */  mr        r31, r0
lbl_800B3E10:
/* 0B0E10 800B3E10 4BFEA461 */  bl        OSRestoreInterrupts
/* 0B0E14 800B3E14 7FE3FB78 */  mr        r3, r31
/* 0B0E18 800B3E18 8001001C */  lwz       r0, 0x1c(r1)
/* 0B0E1C 800B3E1C 83E10014 */  lwz       r31, 0x14(r1)
/* 0B0E20 800B3E20 38210018 */  addi      r1, r1, 0x18
/* 0B0E24 800B3E24 7C0803A6 */  mtlr      r0
/* 0B0E28 800B3E28 4E800020 */  blr

glabel DVDGetDriveStatus
/* 0B0E2C 800B3E2C 7C0802A6 */  mflr      r0
/* 0B0E30 800B3E30 90010004 */  stw       r0, 0x4(r1)
/* 0B0E34 800B3E34 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B0E38 800B3E38 93E10014 */  stw       r31, 0x14(r1)
/* 0B0E3C 800B3E3C 93C10010 */  stw       r30, 0x10(r1)
/* 0B0E40 800B3E40 4BFEA409 */  bl        OSDisableInterrupts
/* 0B0E44 800B3E44 800D8CE8 */  lwz       r0, FatalErrorFlag@sda21(r0)
/* 0B0E48 800B3E48 3BC30000 */  addi      r30, r3, 0x0
/* 0B0E4C 800B3E4C 2C000000 */  cmpwi     r0, 0x0
/* 0B0E50 800B3E50 4182000C */  beq       lbl_800B3E5C
/* 0B0E54 800B3E54 3BE0FFFF */  li        r31, -0x1
/* 0B0E58 800B3E58 4800005C */  b         lbl_800B3EB4
lbl_800B3E5C:
/* 0B0E5C 800B3E5C 800D8CE0 */  lwz       r0, PausingFlag@sda21(r0)
/* 0B0E60 800B3E60 2C000000 */  cmpwi     r0, 0x0
/* 0B0E64 800B3E64 4182000C */  beq       lbl_800B3E70
/* 0B0E68 800B3E68 3BE00008 */  li        r31, 0x8
/* 0B0E6C 800B3E6C 48000048 */  b         lbl_800B3EB4
lbl_800B3E70:
/* 0B0E70 800B3E70 83ED8CD0 */  lwz       r31, executing@sda21(r0)
/* 0B0E74 800B3E74 281F0000 */  cmplwi    r31, 0x0
/* 0B0E78 800B3E78 4082000C */  bne       lbl_800B3E84
/* 0B0E7C 800B3E7C 3BE00000 */  li        r31, 0x0
/* 0B0E80 800B3E80 48000034 */  b         lbl_800B3EB4
lbl_800B3E84:
/* 0B0E84 800B3E84 3C608019 */  lis       r3, DummyCommandBlock@ha
/* 0B0E88 800B3E88 38038880 */  addi      r0, r3, DummyCommandBlock@l
/* 0B0E8C 800B3E8C 7C1F0040 */  cmplw     r31, r0
/* 0B0E90 800B3E90 4082000C */  bne       lbl_800B3E9C
/* 0B0E94 800B3E94 3BE00000 */  li        r31, 0x0
/* 0B0E98 800B3E98 4800001C */  b         lbl_800B3EB4
lbl_800B3E9C:
/* 0B0E9C 800B3E9C 4BFEA3AD */  bl        OSDisableInterrupts
/* 0B0EA0 800B3EA0 83FF000C */  lwz       r31, 0xc(r31)
/* 0B0EA4 800B3EA4 2C1F0003 */  cmpwi     r31, 0x3
/* 0B0EA8 800B3EA8 40820008 */  bne       lbl_800B3EB0
/* 0B0EAC 800B3EAC 3BE00001 */  li        r31, 0x1
lbl_800B3EB0:
/* 0B0EB0 800B3EB0 4BFEA3C1 */  bl        OSRestoreInterrupts
lbl_800B3EB4:
/* 0B0EB4 800B3EB4 7FC3F378 */  mr        r3, r30
/* 0B0EB8 800B3EB8 4BFEA3B9 */  bl        OSRestoreInterrupts
/* 0B0EBC 800B3EBC 7FE3FB78 */  mr        r3, r31
/* 0B0EC0 800B3EC0 8001001C */  lwz       r0, 0x1c(r1)
/* 0B0EC4 800B3EC4 83E10014 */  lwz       r31, 0x14(r1)
/* 0B0EC8 800B3EC8 83C10010 */  lwz       r30, 0x10(r1)
/* 0B0ECC 800B3ECC 38210018 */  addi      r1, r1, 0x18
/* 0B0ED0 800B3ED0 7C0803A6 */  mtlr      r0
/* 0B0ED4 800B3ED4 4E800020 */  blr

glabel fn_800B3ED8
/* 0B0ED8 800B3ED8 800D8804 */  lwz       r0, autoInvalidation@sda21(r0)
/* 0B0EDC 800B3EDC 906D8804 */  stw       r3, autoInvalidation@sda21(r0)
/* 0B0EE0 800B3EE0 7C030378 */  mr        r3, r0
/* 0B0EE4 800B3EE4 4E800020 */  blr

glabel fn_800B3EE8
/* 0B0EE8 800B3EE8 7C0802A6 */  mflr      r0
/* 0B0EEC 800B3EEC 90010004 */  stw       r0, 0x4(r1)
/* 0B0EF0 800B3EF0 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B0EF4 800B3EF4 93E1001C */  stw       r31, 0x1c(r1)
/* 0B0EF8 800B3EF8 93C10018 */  stw       r30, 0x18(r1)
/* 0B0EFC 800B3EFC 3BC40000 */  addi      r30, r4, 0x0
/* 0B0F00 800B3F00 93A10014 */  stw       r29, 0x14(r1)
/* 0B0F04 800B3F04 3BA30000 */  addi      r29, r3, 0x0
/* 0B0F08 800B3F08 4BFEA341 */  bl        OSDisableInterrupts
/* 0B0F0C 800B3F0C 809D000C */  lwz       r4, 0xc(r29)
/* 0B0F10 800B3F10 3BE30000 */  addi      r31, r3, 0x0
/* 0B0F14 800B3F14 38040001 */  addi      r0, r4, 0x1
/* 0B0F18 800B3F18 2800000C */  cmplwi    r0, 0xc
/* 0B0F1C 800B3F1C 41810214 */  bgt       lbl_800B4130
/* 0B0F20 800B3F20 3C60800F */  lis       r3, jtbl_800F38E0@ha
/* 0B0F24 800B3F24 386338E0 */  addi      r3, r3, jtbl_800F38E0@l
/* 0B0F28 800B3F28 5400103A */  slwi      r0, r0, 2
/* 0B0F2C 800B3F2C 7C03002E */  lwzx      r0, r3, r0
/* 0B0F30 800B3F30 7C0903A6 */  mtctr     r0
/* 0B0F34 800B3F34 4E800420 */  bctr
lbl_800B3F38:
/* 0B0F38 800B3F38 281E0000 */  cmplwi    r30, 0x0
/* 0B0F3C 800B3F3C 418201F4 */  beq       lbl_800B4130
/* 0B0F40 800B3F40 399E0000 */  addi      r12, r30, 0x0
/* 0B0F44 800B3F44 7D8803A6 */  mtlr      r12
/* 0B0F48 800B3F48 389D0000 */  addi      r4, r29, 0x0
/* 0B0F4C 800B3F4C 38600000 */  li        r3, 0x0
/* 0B0F50 800B3F50 4E800021 */  blrl
/* 0B0F54 800B3F54 480001DC */  b         lbl_800B4130
lbl_800B3F58:
/* 0B0F58 800B3F58 800D8CF0 */  lwz       r0, D_8018BC70@sda21(r0)
/* 0B0F5C 800B3F5C 28000000 */  cmplwi    r0, 0x0
/* 0B0F60 800B3F60 41820014 */  beq       lbl_800B3F74
/* 0B0F64 800B3F64 7FE3FB78 */  mr        r3, r31
/* 0B0F68 800B3F68 4BFEA309 */  bl        OSRestoreInterrupts
/* 0B0F6C 800B3F6C 38600000 */  li        r3, 0x0
/* 0B0F70 800B3F70 480001CC */  b         lbl_800B413C
lbl_800B3F74:
/* 0B0F74 800B3F74 38000001 */  li        r0, 0x1
/* 0B0F78 800B3F78 93CD8CF4 */  stw       r30, D_8018BC74@sda21(r0)
/* 0B0F7C 800B3F7C 900D8CF0 */  stw       r0, D_8018BC70@sda21(r0)
/* 0B0F80 800B3F80 801D0008 */  lwz       r0, 0x8(r29)
/* 0B0F84 800B3F84 28000004 */  cmplwi    r0, 0x4
/* 0B0F88 800B3F88 4182000C */  beq       lbl_800B3F94
/* 0B0F8C 800B3F8C 28000001 */  cmplwi    r0, 0x1
/* 0B0F90 800B3F90 408201A0 */  bne       lbl_800B4130
lbl_800B3F94:
/* 0B0F94 800B3F94 4BFFD549 */  bl        fn_800B14DC
/* 0B0F98 800B3F98 48000198 */  b         lbl_800B4130
lbl_800B3F9C:
/* 0B0F9C 800B3F9C 7FA3EB78 */  mr        r3, r29
/* 0B0FA0 800B3FA0 48000629 */  bl        __DVDDequeueWaitingQueue
/* 0B0FA4 800B3FA4 3800000A */  li        r0, 0xa
/* 0B0FA8 800B3FA8 901D000C */  stw       r0, 0xc(r29)
/* 0B0FAC 800B3FAC 819D0028 */  lwz       r12, 0x28(r29)
/* 0B0FB0 800B3FB0 280C0000 */  cmplwi    r12, 0x0
/* 0B0FB4 800B3FB4 41820014 */  beq       lbl_800B3FC8
/* 0B0FB8 800B3FB8 7D8803A6 */  mtlr      r12
/* 0B0FBC 800B3FBC 389D0000 */  addi      r4, r29, 0x0
/* 0B0FC0 800B3FC0 3860FFFD */  li        r3, -0x3
/* 0B0FC4 800B3FC4 4E800021 */  blrl
lbl_800B3FC8:
/* 0B0FC8 800B3FC8 281E0000 */  cmplwi    r30, 0x0
/* 0B0FCC 800B3FCC 41820164 */  beq       lbl_800B4130
/* 0B0FD0 800B3FD0 399E0000 */  addi      r12, r30, 0x0
/* 0B0FD4 800B3FD4 7D8803A6 */  mtlr      r12
/* 0B0FD8 800B3FD8 389D0000 */  addi      r4, r29, 0x0
/* 0B0FDC 800B3FDC 38600000 */  li        r3, 0x0
/* 0B0FE0 800B3FE0 4E800021 */  blrl
/* 0B0FE4 800B3FE4 4800014C */  b         lbl_800B4130
lbl_800B3FE8:
/* 0B0FE8 800B3FE8 801D0008 */  lwz       r0, 0x8(r29)
/* 0B0FEC 800B3FEC 2C00000D */  cmpwi     r0, 0xd
/* 0B0FF0 800B3FF0 41820028 */  beq       lbl_800B4018
/* 0B0FF4 800B3FF4 40800018 */  bge       lbl_800B400C
/* 0B0FF8 800B3FF8 2C000006 */  cmpwi     r0, 0x6
/* 0B0FFC 800B3FFC 4080003C */  bge       lbl_800B4038
/* 0B1000 800B4000 2C000004 */  cmpwi     r0, 0x4
/* 0B1004 800B4004 40800014 */  bge       lbl_800B4018
/* 0B1008 800B4008 48000030 */  b         lbl_800B4038
lbl_800B400C:
/* 0B100C 800B400C 2C00000F */  cmpwi     r0, 0xf
/* 0B1010 800B4010 41820008 */  beq       lbl_800B4018
/* 0B1014 800B4014 48000024 */  b         lbl_800B4038
lbl_800B4018:
/* 0B1018 800B4018 281E0000 */  cmplwi    r30, 0x0
/* 0B101C 800B401C 41820114 */  beq       lbl_800B4130
/* 0B1020 800B4020 399E0000 */  addi      r12, r30, 0x0
/* 0B1024 800B4024 7D8803A6 */  mtlr      r12
/* 0B1028 800B4028 389D0000 */  addi      r4, r29, 0x0
/* 0B102C 800B402C 38600000 */  li        r3, 0x0
/* 0B1030 800B4030 4E800021 */  blrl
/* 0B1034 800B4034 480000FC */  b         lbl_800B4130
lbl_800B4038:
/* 0B1038 800B4038 800D8CF0 */  lwz       r0, D_8018BC70@sda21(r0)
/* 0B103C 800B403C 28000000 */  cmplwi    r0, 0x0
/* 0B1040 800B4040 41820014 */  beq       lbl_800B4054
/* 0B1044 800B4044 7FE3FB78 */  mr        r3, r31
/* 0B1048 800B4048 4BFEA229 */  bl        OSRestoreInterrupts
/* 0B104C 800B404C 38600000 */  li        r3, 0x0
/* 0B1050 800B4050 480000EC */  b         lbl_800B413C
lbl_800B4054:
/* 0B1054 800B4054 38000001 */  li        r0, 0x1
/* 0B1058 800B4058 93CD8CF4 */  stw       r30, D_8018BC74@sda21(r0)
/* 0B105C 800B405C 900D8CF0 */  stw       r0, D_8018BC70@sda21(r0)
/* 0B1060 800B4060 480000D0 */  b         lbl_800B4130
lbl_800B4064:
/* 0B1064 800B4064 4BFFD48D */  bl        fn_800B14F0
/* 0B1068 800B4068 3C80800B */  lis       r4, cbForStateMotorStopped@ha
/* 0B106C 800B406C 38042D34 */  addi      r0, r4, cbForStateMotorStopped@l
/* 0B1070 800B4070 7C030040 */  cmplw     r3, r0
/* 0B1074 800B4074 41820014 */  beq       lbl_800B4088
/* 0B1078 800B4078 7FE3FB78 */  mr        r3, r31
/* 0B107C 800B407C 4BFEA1F5 */  bl        OSRestoreInterrupts
/* 0B1080 800B4080 38600000 */  li        r3, 0x0
/* 0B1084 800B4084 480000B8 */  b         lbl_800B413C
lbl_800B4088:
/* 0B1088 800B4088 801D000C */  lwz       r0, 0xc(r29)
/* 0B108C 800B408C 2C000004 */  cmpwi     r0, 0x4
/* 0B1090 800B4090 4082000C */  bne       lbl_800B409C
/* 0B1094 800B4094 38000003 */  li        r0, 0x3
/* 0B1098 800B4098 900D8CF8 */  stw       r0, ResumeFromHere@sda21(r0)
lbl_800B409C:
/* 0B109C 800B409C 801D000C */  lwz       r0, 0xc(r29)
/* 0B10A0 800B40A0 2C000005 */  cmpwi     r0, 0x5
/* 0B10A4 800B40A4 4082000C */  bne       lbl_800B40B0
/* 0B10A8 800B40A8 38000004 */  li        r0, 0x4
/* 0B10AC 800B40AC 900D8CF8 */  stw       r0, ResumeFromHere@sda21(r0)
lbl_800B40B0:
/* 0B10B0 800B40B0 801D000C */  lwz       r0, 0xc(r29)
/* 0B10B4 800B40B4 2C000006 */  cmpwi     r0, 0x6
/* 0B10B8 800B40B8 4082000C */  bne       lbl_800B40C4
/* 0B10BC 800B40BC 38000001 */  li        r0, 0x1
/* 0B10C0 800B40C0 900D8CF8 */  stw       r0, ResumeFromHere@sda21(r0)
lbl_800B40C4:
/* 0B10C4 800B40C4 801D000C */  lwz       r0, 0xc(r29)
/* 0B10C8 800B40C8 2C00000B */  cmpwi     r0, 0xb
/* 0B10CC 800B40CC 4082000C */  bne       lbl_800B40D8
/* 0B10D0 800B40D0 38000002 */  li        r0, 0x2
/* 0B10D4 800B40D4 900D8CF8 */  stw       r0, ResumeFromHere@sda21(r0)
lbl_800B40D8:
/* 0B10D8 800B40D8 801D000C */  lwz       r0, 0xc(r29)
/* 0B10DC 800B40DC 2C000007 */  cmpwi     r0, 0x7
/* 0B10E0 800B40E0 4082000C */  bne       lbl_800B40EC
/* 0B10E4 800B40E4 38000007 */  li        r0, 0x7
/* 0B10E8 800B40E8 900D8CF8 */  stw       r0, ResumeFromHere@sda21(r0)
lbl_800B40EC:
/* 0B10EC 800B40EC 3800000A */  li        r0, 0xa
/* 0B10F0 800B40F0 901D000C */  stw       r0, 0xc(r29)
/* 0B10F4 800B40F4 819D0028 */  lwz       r12, 0x28(r29)
/* 0B10F8 800B40F8 280C0000 */  cmplwi    r12, 0x0
/* 0B10FC 800B40FC 41820014 */  beq       lbl_800B4110
/* 0B1100 800B4100 7D8803A6 */  mtlr      r12
/* 0B1104 800B4104 389D0000 */  addi      r4, r29, 0x0
/* 0B1108 800B4108 3860FFFD */  li        r3, -0x3
/* 0B110C 800B410C 4E800021 */  blrl
lbl_800B4110:
/* 0B1110 800B4110 281E0000 */  cmplwi    r30, 0x0
/* 0B1114 800B4114 41820018 */  beq       lbl_800B412C
/* 0B1118 800B4118 399E0000 */  addi      r12, r30, 0x0
/* 0B111C 800B411C 7D8803A6 */  mtlr      r12
/* 0B1120 800B4120 389D0000 */  addi      r4, r29, 0x0
/* 0B1124 800B4124 38600000 */  li        r3, 0x0
/* 0B1128 800B4128 4E800021 */  blrl
lbl_800B412C:
/* 0B112C 800B412C 4BFFECED */  bl        stateReady
lbl_800B4130:
/* 0B1130 800B4130 7FE3FB78 */  mr        r3, r31
/* 0B1134 800B4134 4BFEA13D */  bl        OSRestoreInterrupts
/* 0B1138 800B4138 38600001 */  li        r3, 0x1
lbl_800B413C:
/* 0B113C 800B413C 80010024 */  lwz       r0, 0x24(r1)
/* 0B1140 800B4140 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B1144 800B4144 83C10018 */  lwz       r30, 0x18(r1)
/* 0B1148 800B4148 83A10014 */  lwz       r29, 0x14(r1)
/* 0B114C 800B414C 38210020 */  addi      r1, r1, 0x20
/* 0B1150 800B4150 7C0803A6 */  mtlr      r0
/* 0B1154 800B4154 4E800020 */  blr

glabel DVDCancel
/* 0B1158 800B4158 7C0802A6 */  mflr      r0
/* 0B115C 800B415C 3C80800B */  lis       r4, fn_800B4204@ha
/* 0B1160 800B4160 90010004 */  stw       r0, 0x4(r1)
/* 0B1164 800B4164 38844204 */  addi      r4, r4, fn_800B4204@l
/* 0B1168 800B4168 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B116C 800B416C 93E10014 */  stw       r31, 0x14(r1)
/* 0B1170 800B4170 93C10010 */  stw       r30, 0x10(r1)
/* 0B1174 800B4174 3BC30000 */  addi      r30, r3, 0x0
/* 0B1178 800B4178 4BFFFD71 */  bl        fn_800B3EE8
/* 0B117C 800B417C 2C030000 */  cmpwi     r3, 0x0
/* 0B1180 800B4180 4082000C */  bne       lbl_800B418C
/* 0B1184 800B4184 3860FFFF */  li        r3, -0x1
/* 0B1188 800B4188 48000064 */  b         lbl_800B41EC
lbl_800B418C:
/* 0B118C 800B418C 4BFEA0BD */  bl        OSDisableInterrupts
/* 0B1190 800B4190 7C7F1B78 */  mr        r31, r3
lbl_800B4194:
/* 0B1194 800B4194 807E000C */  lwz       r3, 0xc(r30)
/* 0B1198 800B4198 38030001 */  addi      r0, r3, 0x1
/* 0B119C 800B419C 28000001 */  cmplwi    r0, 0x1
/* 0B11A0 800B41A0 40810040 */  ble       lbl_800B41E0
/* 0B11A4 800B41A4 2C03000A */  cmpwi     r3, 0xa
/* 0B11A8 800B41A8 41820038 */  beq       lbl_800B41E0
/* 0B11AC 800B41AC 2C030003 */  cmpwi     r3, 0x3
/* 0B11B0 800B41B0 40820024 */  bne       lbl_800B41D4
/* 0B11B4 800B41B4 807E0008 */  lwz       r3, 0x8(r30)
/* 0B11B8 800B41B8 3803FFFC */  subi      r0, r3, 0x4
/* 0B11BC 800B41BC 28000001 */  cmplwi    r0, 0x1
/* 0B11C0 800B41C0 40810020 */  ble       lbl_800B41E0
/* 0B11C4 800B41C4 2803000D */  cmplwi    r3, 0xd
/* 0B11C8 800B41C8 41820018 */  beq       lbl_800B41E0
/* 0B11CC 800B41CC 2803000F */  cmplwi    r3, 0xf
/* 0B11D0 800B41D0 41820010 */  beq       lbl_800B41E0
lbl_800B41D4:
/* 0B11D4 800B41D4 386D8CC8 */  li        r3, __DVDThreadQueue@sda21
/* 0B11D8 800B41D8 4BFED06D */  bl        OSSleepThread
/* 0B11DC 800B41DC 4BFFFFB8 */  b         lbl_800B4194
lbl_800B41E0:
/* 0B11E0 800B41E0 7FE3FB78 */  mr        r3, r31
/* 0B11E4 800B41E4 4BFEA08D */  bl        OSRestoreInterrupts
/* 0B11E8 800B41E8 38600000 */  li        r3, 0x0
lbl_800B41EC:
/* 0B11EC 800B41EC 8001001C */  lwz       r0, 0x1c(r1)
/* 0B11F0 800B41F0 83E10014 */  lwz       r31, 0x14(r1)
/* 0B11F4 800B41F4 83C10010 */  lwz       r30, 0x10(r1)
/* 0B11F8 800B41F8 38210018 */  addi      r1, r1, 0x18
/* 0B11FC 800B41FC 7C0803A6 */  mtlr      r0
/* 0B1200 800B4200 4E800020 */  blr

glabel fn_800B4204
/* 0B1204 800B4204 7C0802A6 */  mflr      r0
/* 0B1208 800B4208 386D8CC8 */  li        r3, __DVDThreadQueue@sda21
/* 0B120C 800B420C 90010004 */  stw       r0, 0x4(r1)
/* 0B1210 800B4210 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B1214 800B4214 4BFED11D */  bl        OSWakeupThread
/* 0B1218 800B4218 8001000C */  lwz       r0, 0xc(r1)
/* 0B121C 800B421C 38210008 */  addi      r1, r1, 0x8
/* 0B1220 800B4220 7C0803A6 */  mtlr      r0
/* 0B1224 800B4224 4E800020 */  blr

glabel fn_800B4228
/* 0B1228 800B4228 3C608000 */  lis       r3, 0x8000
/* 0B122C 800B422C 4E800020 */  blr

glabel fn_800B4230
/* 0B1230 800B4230 7C0802A6 */  mflr      r0
/* 0B1234 800B4234 90010004 */  stw       r0, 0x4(r1)
/* 0B1238 800B4238 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0B123C 800B423C 93E1000C */  stw       r31, 0xc(r1)
/* 0B1240 800B4240 4BFEA009 */  bl        OSDisableInterrupts
/* 0B1244 800B4244 800D8CE8 */  lwz       r0, FatalErrorFlag@sda21(r0)
/* 0B1248 800B4248 2C000000 */  cmpwi     r0, 0x0
/* 0B124C 800B424C 4182000C */  beq       lbl_800B4258
/* 0B1250 800B4250 3880FFFF */  li        r4, -0x1
/* 0B1254 800B4254 48000048 */  b         lbl_800B429C
lbl_800B4258:
/* 0B1258 800B4258 800D8CE0 */  lwz       r0, PausingFlag@sda21(r0)
/* 0B125C 800B425C 2C000000 */  cmpwi     r0, 0x0
/* 0B1260 800B4260 4182000C */  beq       lbl_800B426C
/* 0B1264 800B4264 38800008 */  li        r4, 0x8
/* 0B1268 800B4268 48000034 */  b         lbl_800B429C
lbl_800B426C:
/* 0B126C 800B426C 80AD8CD0 */  lwz       r5, executing@sda21(r0)
/* 0B1270 800B4270 28050000 */  cmplwi    r5, 0x0
/* 0B1274 800B4274 4082000C */  bne       lbl_800B4280
/* 0B1278 800B4278 38800000 */  li        r4, 0x0
/* 0B127C 800B427C 48000020 */  b         lbl_800B429C
lbl_800B4280:
/* 0B1280 800B4280 3C808019 */  lis       r4, DummyCommandBlock@ha
/* 0B1284 800B4284 38048880 */  addi      r0, r4, DummyCommandBlock@l
/* 0B1288 800B4288 7C050040 */  cmplw     r5, r0
/* 0B128C 800B428C 4082000C */  bne       lbl_800B4298
/* 0B1290 800B4290 38800000 */  li        r4, 0x0
/* 0B1294 800B4294 48000008 */  b         lbl_800B429C
lbl_800B4298:
/* 0B1298 800B4298 8085000C */  lwz       r4, 0xc(r5)
lbl_800B429C:
/* 0B129C 800B429C 38040001 */  addi      r0, r4, 0x1
/* 0B12A0 800B42A0 2800000C */  cmplwi    r0, 0xc
/* 0B12A4 800B42A4 41810054 */  bgt       lbl_800B42F8
/* 0B12A8 800B42A8 3C80800F */  lis       r4, jtbl_800F3914@ha
/* 0B12AC 800B42AC 38843914 */  addi      r4, r4, jtbl_800F3914@l
/* 0B12B0 800B42B0 5400103A */  slwi      r0, r0, 2
/* 0B12B4 800B42B4 7C04002E */  lwzx      r0, r4, r0
/* 0B12B8 800B42B8 7C0903A6 */  mtctr     r0
/* 0B12BC 800B42BC 4E800420 */  bctr
lbl_800B42C0:
/* 0B12C0 800B42C0 3BE00001 */  li        r31, 0x1
/* 0B12C4 800B42C4 48000034 */  b         lbl_800B42F8
lbl_800B42C8:
/* 0B12C8 800B42C8 3BE00000 */  li        r31, 0x0
/* 0B12CC 800B42CC 4800002C */  b         lbl_800B42F8
lbl_800B42D0:
/* 0B12D0 800B42D0 3C80CC00 */  lis       r4, 0xcc00
/* 0B12D4 800B42D4 38846000 */  addi      r4, r4, 0x6000
/* 0B12D8 800B42D8 80840004 */  lwz       r4, 0x4(r4)
/* 0B12DC 800B42DC 5480F7FF */  extrwi.   r0, r4, 1, 29
/* 0B12E0 800B42E0 4082000C */  bne       lbl_800B42EC
/* 0B12E4 800B42E4 548007FF */  clrlwi.   r0, r4, 31
/* 0B12E8 800B42E8 4182000C */  beq       lbl_800B42F4
lbl_800B42EC:
/* 0B12EC 800B42EC 3BE00000 */  li        r31, 0x0
/* 0B12F0 800B42F0 48000008 */  b         lbl_800B42F8
lbl_800B42F4:
/* 0B12F4 800B42F4 3BE00001 */  li        r31, 0x1
lbl_800B42F8:
/* 0B12F8 800B42F8 4BFE9F79 */  bl        OSRestoreInterrupts
/* 0B12FC 800B42FC 7FE3FB78 */  mr        r3, r31
/* 0B1300 800B4300 80010014 */  lwz       r0, 0x14(r1)
/* 0B1304 800B4304 83E1000C */  lwz       r31, 0xc(r1)
/* 0B1308 800B4308 38210010 */  addi      r1, r1, 0x10
/* 0B130C 800B430C 7C0803A6 */  mtlr      r0
/* 0B1310 800B4310 4E800020 */  blr

glabel fn_800B4314
/* 0B1314 800B4314 7C0802A6 */  mflr      r0
/* 0B1318 800B4318 90010004 */  stw       r0, 0x4(r1)
/* 0B131C 800B431C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B1320 800B4320 93E1001C */  stw       r31, 0x1c(r1)
/* 0B1324 800B4324 93C10018 */  stw       r30, 0x18(r1)
/* 0B1328 800B4328 7C7E1B78 */  mr        r30, r3
/* 0B132C 800B432C 93A10014 */  stw       r29, 0x14(r1)
/* 0B1330 800B4330 4BFE9F19 */  bl        OSDisableInterrupts
/* 0B1334 800B4334 7C7D1B78 */  mr        r29, r3
/* 0B1338 800B4338 480000F9 */  bl        __DVDClearWaitingQueue
/* 0B133C 800B433C 800D8CF0 */  lwz       r0, D_8018BC70@sda21(r0)
/* 0B1340 800B4340 28000000 */  cmplwi    r0, 0x0
/* 0B1344 800B4344 4182000C */  beq       lbl_800B4350
/* 0B1348 800B4348 93CD8CF4 */  stw       r30, D_8018BC74@sda21(r0)
/* 0B134C 800B434C 480000C0 */  b         lbl_800B440C
lbl_800B4350:
/* 0B1350 800B4350 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0B1354 800B4354 28030000 */  cmplwi    r3, 0x0
/* 0B1358 800B4358 4182000C */  beq       lbl_800B4364
/* 0B135C 800B435C 38000000 */  li        r0, 0x0
/* 0B1360 800B4360 90030028 */  stw       r0, 0x28(r3)
lbl_800B4364:
/* 0B1364 800B4364 4BFE9EE5 */  bl        OSDisableInterrupts
/* 0B1368 800B4368 7C7F1B78 */  mr        r31, r3
/* 0B136C 800B436C 4BFE9EDD */  bl        OSDisableInterrupts
/* 0B1370 800B4370 800D8CD0 */  lwz       r0, executing@sda21(r0)
/* 0B1374 800B4374 38800001 */  li        r4, 0x1
/* 0B1378 800B4378 908D8CDC */  stw       r4, PauseFlag@sda21(r0)
/* 0B137C 800B437C 28000000 */  cmplwi    r0, 0x0
/* 0B1380 800B4380 40820008 */  bne       lbl_800B4388
/* 0B1384 800B4384 908D8CE0 */  stw       r4, PausingFlag@sda21(r0)
lbl_800B4388:
/* 0B1388 800B4388 4BFE9EE9 */  bl        OSRestoreInterrupts
/* 0B138C 800B438C 4800000C */  b         lbl_800B4398
lbl_800B4390:
/* 0B1390 800B4390 38800000 */  li        r4, 0x0
/* 0B1394 800B4394 4BFFFB55 */  bl        fn_800B3EE8
lbl_800B4398:
/* 0B1398 800B4398 48000139 */  bl        __DVDPopWaitingQueue
/* 0B139C 800B439C 28030000 */  cmplwi    r3, 0x0
/* 0B13A0 800B43A0 4082FFF0 */  bne       lbl_800B4390
/* 0B13A4 800B43A4 806D8CD0 */  lwz       r3, executing@sda21(r0)
/* 0B13A8 800B43A8 28030000 */  cmplwi    r3, 0x0
/* 0B13AC 800B43AC 41820010 */  beq       lbl_800B43BC
/* 0B13B0 800B43B0 7FC4F378 */  mr        r4, r30
/* 0B13B4 800B43B4 4BFFFB35 */  bl        fn_800B3EE8
/* 0B13B8 800B43B8 48000020 */  b         lbl_800B43D8
lbl_800B43BC:
/* 0B13BC 800B43BC 281E0000 */  cmplwi    r30, 0x0
/* 0B13C0 800B43C0 41820018 */  beq       lbl_800B43D8
/* 0B13C4 800B43C4 399E0000 */  addi      r12, r30, 0x0
/* 0B13C8 800B43C8 7D8803A6 */  mtlr      r12
/* 0B13CC 800B43CC 38600000 */  li        r3, 0x0
/* 0B13D0 800B43D0 38800000 */  li        r4, 0x0
/* 0B13D4 800B43D4 4E800021 */  blrl
lbl_800B43D8:
/* 0B13D8 800B43D8 4BFE9E71 */  bl        OSDisableInterrupts
/* 0B13DC 800B43DC 38800000 */  li        r4, 0x0
/* 0B13E0 800B43E0 908D8CDC */  stw       r4, PauseFlag@sda21(r0)
/* 0B13E4 800B43E4 7C7E1B78 */  mr        r30, r3
/* 0B13E8 800B43E8 800D8CE0 */  lwz       r0, PausingFlag@sda21(r0)
/* 0B13EC 800B43EC 2C000000 */  cmpwi     r0, 0x0
/* 0B13F0 800B43F0 4182000C */  beq       lbl_800B43FC
/* 0B13F4 800B43F4 908D8CE0 */  stw       r4, PausingFlag@sda21(r0)
/* 0B13F8 800B43F8 4BFFEA21 */  bl        stateReady
lbl_800B43FC:
/* 0B13FC 800B43FC 7FC3F378 */  mr        r3, r30
/* 0B1400 800B4400 4BFE9E71 */  bl        OSRestoreInterrupts
/* 0B1404 800B4404 7FE3FB78 */  mr        r3, r31
/* 0B1408 800B4408 4BFE9E69 */  bl        OSRestoreInterrupts
lbl_800B440C:
/* 0B140C 800B440C 7FA3EB78 */  mr        r3, r29
/* 0B1410 800B4410 4BFE9E61 */  bl        OSRestoreInterrupts
/* 0B1414 800B4414 80010024 */  lwz       r0, 0x24(r1)
/* 0B1418 800B4418 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B141C 800B441C 83C10018 */  lwz       r30, 0x18(r1)
/* 0B1420 800B4420 83A10014 */  lwz       r29, 0x14(r1)
/* 0B1424 800B4424 38210020 */  addi      r1, r1, 0x20
/* 0B1428 800B4428 7C0803A6 */  mtlr      r0
/* 0B142C 800B442C 4E800020 */  blr

# 0x800F37C8 - 0x800F3948
.section .data, "wa"

.balign 8

glabel D_800F37C8
	.string "<< Dolphin SDK - DVD\trelease build: Sep  5 2002 05:34:06 (0x2301) >>"

glabel gap_05_800F380D_data
.hidden gap_05_800F380D_data
	.byte 0x00, 0x00, 0x00

"@18":
	.string "load fst\n"

glabel gap_05_800F381A_data
.hidden gap_05_800F381A_data
	.2byte 0x0000

glabel D_800F381C
	.string "DVDChangeDisk(): FST in the new disc is too big.   "

jtbl_800F3850:
	.long stateBusy, lbl_800B33EC
	.long stateBusy, lbl_800B3160
	.long stateBusy, lbl_800B3200
	.long stateBusy, lbl_800B3224
	.long stateBusy, lbl_800B3160
	.long stateBusy, lbl_800B3134
	.long stateBusy, lbl_800B3244
	.long stateBusy, lbl_800B32A8
	.long stateBusy, lbl_800B32D4
	.long stateBusy, lbl_800B3308
	.long stateBusy, lbl_800B332C
	.long stateBusy, lbl_800B3350
	.long stateBusy, lbl_800B3374
	.long stateBusy, lbl_800B3398
	.long stateBusy, lbl_800B33C0
	.long stateBusy, lbl_800B3234

glabel D_800F3890
	.long 0xFFFFFFFF
	.long 0xFFFFFFFF
	.long 0xFFFFFFFF
	.long 0x44564443
	.long 0x68616E67
	.long 0x65446973
	.long 0x6B417379
	.long 0x6E632829
	.long 0x3A20596F
	.long 0x75206361
	.long 0x6E277420
	.long 0x73706563
	.long 0x69667920
	.long 0x4E554C4C
	.long 0x20746F20
	.long 0x636F6D70
	.long 0x616E7920
	.long 0x6E616D65
	.long 0x2E20200A
	.long 0x00000000

jtbl_800F38E0:
	.long lbl_800B3F38
	.long lbl_800B3F38
	.long lbl_800B3F58
	.long lbl_800B3F9C
	.long lbl_800B3FE8
	.long lbl_800B4064
	.long lbl_800B4064
	.long lbl_800B4064
	.long lbl_800B4064
	.long lbl_800B4130
	.long lbl_800B4130
	.long lbl_800B3F38
	.long lbl_800B4064

jtbl_800F3914:
	.long lbl_800B42C8
	.long lbl_800B42D0
	.long lbl_800B42C0
	.long lbl_800B42C0
	.long lbl_800B42C8
	.long lbl_800B42C8
	.long lbl_800B42C8
	.long lbl_800B42C8
	.long lbl_800B42C8
	.long lbl_800B42D0
	.long lbl_800B42C0
	.long lbl_800B42C0
	.long lbl_800B42C8

# 0x80188840 - 0x801888D8
.section .bss, "wa"

BB2:
	.skip 0x20

glabel D_80188860
	.skip 0x20

DummyCommandBlock:
	.skip 0x30

ResetAlarm:
	.skip 0x28

# 0x8018B780 - 0x8018B798
.section .sdata, "wa"

glabel __DVDVersion
	.long D_800F37C8

autoInvalidation:
	.long 0x00000001

glabel D_8018B788
	.long defaultOptionalCommandChecker

glabel D_8018B78C
	.long 0x6476642E
	.long 0x63000000

glabel D_8018B794
	.long 0xFFFFFFFF

# 0x8018BC50 - 0x8018BC98
.section .sbss, "wa"

executing:
	.skip 0x4

IDShouldBe:
	.skip 0x4

bootInfo:
	.skip 0x4

PauseFlag:
	.skip 0x4

PausingFlag:
	.skip 0x4

glabel D_8018BC64
	.skip 0x4

FatalErrorFlag:
	.skip 0x4

CurrCommand:
	.skip 0x4

glabel D_8018BC70
	.skip 0x4

glabel D_8018BC74
	.skip 0x4

ResumeFromHere:
	.skip 0x4

CancelLastError:
	.skip 0x4

glabel D_8018BC80
	.skip 0x4

glabel D_8018BC84
	.skip 0x4

ResetRequired:
	.skip 0x4

FirstTimeInBootrom:
	.skip 0x4

DVDInitialized:
	.skip 0x4

glabel D_8018BC94
	.skip 0x4
