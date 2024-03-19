# OSMemory.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009ECD0 - 0x8009EFB0

OnReset:
/* 09BCD0 8009ECD0 7C0802A6 */  mflr      r0
/* 09BCD4 8009ECD4 2C030000 */  cmpwi     r3, 0x0
/* 09BCD8 8009ECD8 90010004 */  stw       r0, 0x4(r1)
/* 09BCDC 8009ECDC 9421FFF8 */  stwu      r1, -0x8(r1)
/* 09BCE0 8009ECE0 41820018 */  beq       lbl_8009ECF8
/* 09BCE4 8009ECE4 3C60CC00 */  lis       r3, 0xcc00
/* 09BCE8 8009ECE8 380000FF */  li        r0, 0xff
/* 09BCEC 8009ECEC B0034010 */  sth       r0, 0x4010(r3)
/* 09BCF0 8009ECF0 3C60F000 */  lis       r3, 0xf000
/* 09BCF4 8009ECF4 4BFFF91D */  bl        __OSMaskInterrupts
lbl_8009ECF8:
/* 09BCF8 8009ECF8 38600001 */  li        r3, 0x1
/* 09BCFC 8009ECFC 8001000C */  lwz       r0, 0xc(r1)
/* 09BD00 8009ED00 38210008 */  addi      r1, r1, 0x8
/* 09BD04 8009ED04 7C0803A6 */  mtlr      r0
/* 09BD08 8009ED08 4E800020 */  blr

MEMIntrruptHandler:
/* 09BD0C 8009ED0C 7C0802A6 */  mflr      r0
/* 09BD10 8009ED10 3C60CC00 */  lis       r3, 0xcc00
/* 09BD14 8009ED14 90010004 */  stw       r0, 0x4(r1)
/* 09BD18 8009ED18 39034000 */  addi      r8, r3, 0x4000
/* 09BD1C 8009ED1C 38000000 */  li        r0, 0x0
/* 09BD20 8009ED20 9421FFF8 */  stwu      r1, -0x8(r1)
/* 09BD24 8009ED24 A0E34024 */  lhz       r7, 0x4024(r3)
/* 09BD28 8009ED28 3C608018 */  lis       r3, __OSErrorTable@ha
/* 09BD2C 8009ED2C A0C80022 */  lhz       r6, 0x22(r8)
/* 09BD30 8009ED30 386372D0 */  addi      r3, r3, __OSErrorTable@l
/* 09BD34 8009ED34 A0A8001E */  lhz       r5, 0x1e(r8)
/* 09BD38 8009ED38 50E6819E */  rlwimi    r6, r7, 16, 6, 15
/* 09BD3C 8009ED3C B0080020 */  sth       r0, 0x20(r8)
/* 09BD40 8009ED40 8183003C */  lwz       r12, 0x3c(r3)
/* 09BD44 8009ED44 280C0000 */  cmplwi    r12, 0x0
/* 09BD48 8009ED48 41820018 */  beq       lbl_8009ED60
/* 09BD4C 8009ED4C 7D8803A6 */  mtlr      r12
/* 09BD50 8009ED50 3860000F */  li        r3, 0xf
/* 09BD54 8009ED54 4CC63182 */  crclr     cr1eq
/* 09BD58 8009ED58 4E800021 */  blrl
/* 09BD5C 8009ED5C 4800000C */  b         lbl_8009ED68
lbl_8009ED60:
/* 09BD60 8009ED60 3860000F */  li        r3, 0xf
/* 09BD64 8009ED64 4BFFF1A5 */  bl        __OSUnhandledException
lbl_8009ED68:
/* 09BD68 8009ED68 8001000C */  lwz       r0, 0xc(r1)
/* 09BD6C 8009ED6C 38210008 */  addi      r1, r1, 0x8
/* 09BD70 8009ED70 7C0803A6 */  mtlr      r0
/* 09BD74 8009ED74 4E800020 */  blr

Config24MB:
/* 09BD78 8009ED78 38E00000 */  li        r7, 0x0
/* 09BD7C 8009ED7C 3C800000 */  lis       r4, 0x0
/* 09BD80 8009ED80 38840002 */  addi      r4, r4, 0x2
/* 09BD84 8009ED84 3C608000 */  lis       r3, 0x8000
/* 09BD88 8009ED88 386301FF */  addi      r3, r3, 0x1ff
/* 09BD8C 8009ED8C 3CC00100 */  lis       r6, 0x100
/* 09BD90 8009ED90 38C60002 */  addi      r6, r6, 0x2
/* 09BD94 8009ED94 3CA08100 */  lis       r5, 0x8100
/* 09BD98 8009ED98 38A500FF */  addi      r5, r5, 0xff
/* 09BD9C 8009ED9C 4C00012C */  isync
/* 09BDA0 8009EDA0 7CF883A6 */  mtdbatu   0, r7
/* 09BDA4 8009EDA4 7C9983A6 */  mtdbatl   0, r4
/* 09BDA8 8009EDA8 7C7883A6 */  mtdbatu   0, r3
/* 09BDAC 8009EDAC 4C00012C */  isync
/* 09BDB0 8009EDB0 7CF083A6 */  mtibatu   0, r7
/* 09BDB4 8009EDB4 7C9183A6 */  mtibatl   0, r4
/* 09BDB8 8009EDB8 7C7083A6 */  mtibatu   0, r3
/* 09BDBC 8009EDBC 4C00012C */  isync
/* 09BDC0 8009EDC0 7CFC83A6 */  mtdbatu   2, r7
/* 09BDC4 8009EDC4 7CDD83A6 */  mtdbatl   2, r6
/* 09BDC8 8009EDC8 7CBC83A6 */  mtdbatu   2, r5
/* 09BDCC 8009EDCC 4C00012C */  isync
/* 09BDD0 8009EDD0 7CF483A6 */  mtibatu   2, r7
/* 09BDD4 8009EDD4 7CD583A6 */  mtibatl   2, r6
/* 09BDD8 8009EDD8 7CB483A6 */  mtibatu   2, r5
/* 09BDDC 8009EDDC 4C00012C */  isync
/* 09BDE0 8009EDE0 7C6000A6 */  mfmsr     r3
/* 09BDE4 8009EDE4 60630030 */  ori       r3, r3, 0x30
/* 09BDE8 8009EDE8 7C7B03A6 */  mtsrr1    r3
/* 09BDEC 8009EDEC 7C6802A6 */  mflr      r3
/* 09BDF0 8009EDF0 7C7A03A6 */  mtsrr0    r3
/* 09BDF4 8009EDF4 4C000064 */  rfi

Config48MB:
/* 09BDF8 8009EDF8 38E00000 */  li        r7, 0x0
/* 09BDFC 8009EDFC 3C800000 */  lis       r4, 0x0
/* 09BE00 8009EE00 38840002 */  addi      r4, r4, 0x2
/* 09BE04 8009EE04 3C608000 */  lis       r3, 0x8000
/* 09BE08 8009EE08 386303FF */  addi      r3, r3, 0x3ff
/* 09BE0C 8009EE0C 3CC00200 */  lis       r6, 0x200
/* 09BE10 8009EE10 38C60002 */  addi      r6, r6, 0x2
/* 09BE14 8009EE14 3CA08200 */  lis       r5, 0x8200
/* 09BE18 8009EE18 38A501FF */  addi      r5, r5, 0x1ff
/* 09BE1C 8009EE1C 4C00012C */  isync
/* 09BE20 8009EE20 7CF883A6 */  mtdbatu   0, r7
/* 09BE24 8009EE24 7C9983A6 */  mtdbatl   0, r4
/* 09BE28 8009EE28 7C7883A6 */  mtdbatu   0, r3
/* 09BE2C 8009EE2C 4C00012C */  isync
/* 09BE30 8009EE30 7CF083A6 */  mtibatu   0, r7
/* 09BE34 8009EE34 7C9183A6 */  mtibatl   0, r4
/* 09BE38 8009EE38 7C7083A6 */  mtibatu   0, r3
/* 09BE3C 8009EE3C 4C00012C */  isync
/* 09BE40 8009EE40 7CFC83A6 */  mtdbatu   2, r7
/* 09BE44 8009EE44 7CDD83A6 */  mtdbatl   2, r6
/* 09BE48 8009EE48 7CBC83A6 */  mtdbatu   2, r5
/* 09BE4C 8009EE4C 4C00012C */  isync
/* 09BE50 8009EE50 7CF483A6 */  mtibatu   2, r7
/* 09BE54 8009EE54 7CD583A6 */  mtibatl   2, r6
/* 09BE58 8009EE58 7CB483A6 */  mtibatu   2, r5
/* 09BE5C 8009EE5C 4C00012C */  isync
/* 09BE60 8009EE60 7C6000A6 */  mfmsr     r3
/* 09BE64 8009EE64 60630030 */  ori       r3, r3, 0x30
/* 09BE68 8009EE68 7C7B03A6 */  mtsrr1    r3
/* 09BE6C 8009EE6C 7C6802A6 */  mflr      r3
/* 09BE70 8009EE70 7C7A03A6 */  mtsrr0    r3
/* 09BE74 8009EE74 4C000064 */  rfi

RealMode:
/* 09BE78 8009EE78 546300BE */  clrlwi    r3, r3, 2
/* 09BE7C 8009EE7C 7C7A03A6 */  mtsrr0    r3
/* 09BE80 8009EE80 7C6000A6 */  mfmsr     r3
/* 09BE84 8009EE84 54630732 */  rlwinm    r3, r3, 0, 28, 25
/* 09BE88 8009EE88 7C7B03A6 */  mtsrr1    r3
/* 09BE8C 8009EE8C 4C000064 */  rfi

glabel __OSInitMemoryProtection
/* 09BE90 8009EE90 7C0802A6 */  mflr      r0
/* 09BE94 8009EE94 90010004 */  stw       r0, 0x4(r1)
/* 09BE98 8009EE98 9421FFB8 */  stwu      r1, -0x48(r1)
/* 09BE9C 8009EE9C 93E10044 */  stw       r31, 0x44(r1)
/* 09BEA0 8009EEA0 93C10040 */  stw       r30, 0x40(r1)
/* 09BEA4 8009EEA4 93A1003C */  stw       r29, 0x3c(r1)
/* 09BEA8 8009EEA8 3C608000 */  lis       r3, 0x8000
/* 09BEAC 8009EEAC 83A300F0 */  lwz       r29, 0xf0(r3)
/* 09BEB0 8009EEB0 4BFFF399 */  bl        OSDisableInterrupts
/* 09BEB4 8009EEB4 3C000180 */  lis       r0, 0x180
/* 09BEB8 8009EEB8 7C1D0040 */  cmplw     r29, r0
/* 09BEBC 8009EEBC 7C7F1B78 */  mr        r31, r3
/* 09BEC0 8009EEC0 41810014 */  bgt       lbl_8009EED4
/* 09BEC4 8009EEC4 3C60800A */  lis       r3, Config24MB@ha
/* 09BEC8 8009EEC8 3863ED78 */  addi      r3, r3, Config24MB@l
/* 09BECC 8009EECC 4BFFFFAD */  bl        RealMode
/* 09BED0 8009EED0 4800001C */  b         lbl_8009EEEC
lbl_8009EED4:
/* 09BED4 8009EED4 3C000300 */  lis       r0, 0x300
/* 09BED8 8009EED8 7C1D0040 */  cmplw     r29, r0
/* 09BEDC 8009EEDC 41810010 */  bgt       lbl_8009EEEC
/* 09BEE0 8009EEE0 3C60800A */  lis       r3, Config48MB@ha
/* 09BEE4 8009EEE4 3863EDF8 */  addi      r3, r3, Config48MB@l
/* 09BEE8 8009EEE8 4BFFFF91 */  bl        RealMode
lbl_8009EEEC:
/* 09BEEC 8009EEEC 3C60CC00 */  lis       r3, 0xcc00
/* 09BEF0 8009EEF0 3BA34000 */  addi      r29, r3, 0x4000
/* 09BEF4 8009EEF4 38000000 */  li        r0, 0x0
/* 09BEF8 8009EEF8 B01D0020 */  sth       r0, 0x20(r29)
/* 09BEFC 8009EEFC 380000FF */  li        r0, 0xff
/* 09BF00 8009EF00 3C60F000 */  lis       r3, 0xf000
/* 09BF04 8009EF04 B01D0010 */  sth       r0, 0x10(r29)
/* 09BF08 8009EF08 4BFFF709 */  bl        __OSMaskInterrupts
/* 09BF0C 8009EF0C 3C60800A */  lis       r3, MEMIntrruptHandler@ha
/* 09BF10 8009EF10 3BC3ED0C */  addi      r30, r3, MEMIntrruptHandler@l
/* 09BF14 8009EF14 7FC4F378 */  mr        r4, r30
/* 09BF18 8009EF18 38600000 */  li        r3, 0x0
/* 09BF1C 8009EF1C 4BFFF379 */  bl        __OSSetInterruptHandler
/* 09BF20 8009EF20 7FC4F378 */  mr        r4, r30
/* 09BF24 8009EF24 38600001 */  li        r3, 0x1
/* 09BF28 8009EF28 4BFFF36D */  bl        __OSSetInterruptHandler
/* 09BF2C 8009EF2C 7FC4F378 */  mr        r4, r30
/* 09BF30 8009EF30 38600002 */  li        r3, 0x2
/* 09BF34 8009EF34 4BFFF361 */  bl        __OSSetInterruptHandler
/* 09BF38 8009EF38 7FC4F378 */  mr        r4, r30
/* 09BF3C 8009EF3C 38600003 */  li        r3, 0x3
/* 09BF40 8009EF40 4BFFF355 */  bl        __OSSetInterruptHandler
/* 09BF44 8009EF44 7FC4F378 */  mr        r4, r30
/* 09BF48 8009EF48 38600004 */  li        r3, 0x4
/* 09BF4C 8009EF4C 4BFFF349 */  bl        __OSSetInterruptHandler
/* 09BF50 8009EF50 3C60800F */  lis       r3, ResetFunctionInfo@ha
/* 09BF54 8009EF54 38632860 */  addi      r3, r3, ResetFunctionInfo@l
/* 09BF58 8009EF58 480002AD */  bl        OSRegisterResetFunction
/* 09BF5C 8009EF5C 3C608000 */  lis       r3, 0x8000
/* 09BF60 8009EF60 808300F0 */  lwz       r4, 0xf0(r3)
/* 09BF64 8009EF64 80030028 */  lwz       r0, 0x28(r3)
/* 09BF68 8009EF68 7C040040 */  cmplw     r4, r0
/* 09BF6C 8009EF6C 40800018 */  bge       lbl_8009EF84
/* 09BF70 8009EF70 3C04FE80 */  subis     r0, r4, 0x180
/* 09BF74 8009EF74 28000000 */  cmplwi    r0, 0x0
/* 09BF78 8009EF78 4082000C */  bne       lbl_8009EF84
/* 09BF7C 8009EF7C 38000002 */  li        r0, 0x2
/* 09BF80 8009EF80 B01D0028 */  sth       r0, 0x28(r29)
lbl_8009EF84:
/* 09BF84 8009EF84 3C600800 */  lis       r3, 0x800
/* 09BF88 8009EF88 4BFFF711 */  bl        __OSUnmaskInterrupts
/* 09BF8C 8009EF8C 7FE3FB78 */  mr        r3, r31
/* 09BF90 8009EF90 4BFFF2E1 */  bl        OSRestoreInterrupts
/* 09BF94 8009EF94 8001004C */  lwz       r0, 0x4c(r1)
/* 09BF98 8009EF98 83E10044 */  lwz       r31, 0x44(r1)
/* 09BF9C 8009EF9C 83C10040 */  lwz       r30, 0x40(r1)
/* 09BFA0 8009EFA0 83A1003C */  lwz       r29, 0x3c(r1)
/* 09BFA4 8009EFA4 38210048 */  addi      r1, r1, 0x48
/* 09BFA8 8009EFA8 7C0803A6 */  mtlr      r0
/* 09BFAC 8009EFAC 4E800020 */  blr

# 0x800F2860 - 0x800F2870
.section .data, "wa"

.balign 8

ResetFunctionInfo:
	.long OnReset
	.long 0x0000007F
	.long 0x00000000
	.long 0x00000000
