# dolphin_trk.c
.include "macros.inc"

.section .init, "ax"

.balign 4

# 0x80005300 - 0x80005320

glabel __TRK_reset
/* 002300 80005300 7C0802A6 */  mflr      r0
/* 002304 80005304 90010004 */  stw       r0, 0x4(r1)
/* 002308 80005308 9421FFF8 */  stwu      r1, -0x8(r1)
/* 00230C 8000530C 480C6845 */  bl        fn_800CBB50
/* 002310 80005310 38210008 */  addi      r1, r1, 0x8
/* 002314 80005314 80010004 */  lwz       r0, 0x4(r1)
/* 002318 80005318 7C0803A6 */  mtlr      r0
/* 00231C 8000531C 4E800020 */  blr

# 0x800CBA30 - 0x800CBC24

.section .text, "ax"

.balign 4

glabel InitMetroTRK
/* 0C8A30 800CBA30 3821FFFC */  subi      r1, r1, 0x4
/* 0C8A34 800CBA34 90610000 */  stw       r3, 0x0(r1)
/* 0C8A38 800CBA38 3C608018 */  lis       r3, gTRKCPUState@h
/* 0C8A3C 800CBA3C 6063A940 */  ori       r3, r3, gTRKCPUState@l
/* 0C8A40 800CBA40 BC030000 */  stmw      r0, 0x0(r3)
/* 0C8A44 800CBA44 80810000 */  lwz       r4, 0x0(r1)
/* 0C8A48 800CBA48 38210004 */  addi      r1, r1, 0x4
/* 0C8A4C 800CBA4C 90230004 */  stw       r1, 0x4(r3)
/* 0C8A50 800CBA50 9083000C */  stw       r4, 0xc(r3)
/* 0C8A54 800CBA54 7C8802A6 */  mflr      r4
/* 0C8A58 800CBA58 90830084 */  stw       r4, 0x84(r3)
/* 0C8A5C 800CBA5C 90830080 */  stw       r4, 0x80(r3)
/* 0C8A60 800CBA60 7C800026 */  mfcr      r4
/* 0C8A64 800CBA64 90830088 */  stw       r4, 0x88(r3)
/* 0C8A68 800CBA68 7C8000A6 */  mfmsr     r4
/* 0C8A6C 800CBA6C 60838000 */  ori       r3, r4, 0x8000
/* 0C8A70 800CBA70 68638000 */  xori      r3, r3, 0x8000
/* 0C8A74 800CBA74 7C600124 */  mtmsr     r3
/* 0C8A78 800CBA78 7C9B03A6 */  mtsrr1    r4
/* 0C8A7C 800CBA7C 480001A9 */  bl        TRKSaveExtended1Block
/* 0C8A80 800CBA80 3C608018 */  lis       r3, gTRKCPUState@h
/* 0C8A84 800CBA84 6063A940 */  ori       r3, r3, gTRKCPUState@l
/* 0C8A88 800CBA88 B8030000 */  .long    0xB8030000
/* 0C8A8C 800CBA8C 38000000 */  li        r0, 0x0
/* 0C8A90 800CBA90 7C12FBA6 */  mtspr     IABR, r0
/* 0C8A94 800CBA94 7C15FBA6 */  mtspr     DABR, r0
/* 0C8A98 800CBA98 3C208019 */  lis       r1, _db_stack_addr@h
/* 0C8A9C 800CBA9C 6021E650 */  ori       r1, r1, _db_stack_addr@l
/* 0C8AA0 800CBAA0 7CA32B78 */  mr        r3, r5
/* 0C8AA4 800CBAA4 48000601 */  bl        InitMetroTRKCommTable
/* 0C8AA8 800CBAA8 2C030001 */  cmpwi     r3, 0x1
/* 0C8AAC 800CBAAC 40820014 */  bne       lbl_800CBAC0
/* 0C8AB0 800CBAB0 80830084 */  lwz       r4, 0x84(r3)
/* 0C8AB4 800CBAB4 7C8803A6 */  mtlr      r4
/* 0C8AB8 800CBAB8 B8030000 */  .long    0xB8030000
/* 0C8ABC 800CBABC 4E800020 */  blr
lbl_800CBAC0:
/* 0C8AC0 800CBAC0 480004DC */  b         TRK_main

glabel EnableMetroTRKInterrupts
/* 0C8AC4 800CBAC4 7C0802A6 */  mflr      r0
/* 0C8AC8 800CBAC8 90010004 */  stw       r0, 0x4(r1)
/* 0C8ACC 800CBACC 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C8AD0 800CBAD0 48000701 */  bl        EnableEXI2Interrupts
/* 0C8AD4 800CBAD4 38210008 */  addi      r1, r1, 0x8
/* 0C8AD8 800CBAD8 80010004 */  lwz       r0, 0x4(r1)
/* 0C8ADC 800CBADC 7C0803A6 */  mtlr      r0
/* 0C8AE0 800CBAE0 4E800020 */  blr

glabel fn_800CBAE4
/* 0C8AE4 800CBAE4 546000BE */  clrlwi    r0, r3, 2
/* 0C8AE8 800CBAE8 64038000 */  oris      r3, r0, 0x8000
/* 0C8AEC 800CBAEC 4E800020 */  blr

glabel fn_800CBAF0
/* 0C8AF0 800CBAF0 7C0802A6 */  mflr      r0
/* 0C8AF4 800CBAF4 90010004 */  stw       r0, 0x4(r1)
/* 0C8AF8 800CBAF8 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C8AFC 800CBAFC 93E1000C */  stw       r31, 0xc(r1)
/* 0C8B00 800CBB00 93C10008 */  stw       r30, 0x8(r1)
/* 0C8B04 800CBB04 7C7E1B78 */  mr        r30, r3
/* 0C8B08 800CBB08 7FC3F378 */  mr        r3, r30
/* 0C8B0C 800CBB0C 4BFFFFD9 */  bl        fn_800CBAE4
/* 0C8B10 800CBB10 3C808000 */  lis       r4, gTRKInterruptVectorTable@ha
/* 0C8B14 800CBB14 380433CC */  addi      r0, r4, gTRKInterruptVectorTable@l
/* 0C8B18 800CBB18 7C7F1B78 */  mr        r31, r3
/* 0C8B1C 800CBB1C 7C80F214 */  add       r4, r0, r30
/* 0C8B20 800CBB20 7FE3FB78 */  mr        r3, r31
/* 0C8B24 800CBB24 38A00100 */  li        r5, 0x100
/* 0C8B28 800CBB28 4BF37881 */  bl        TRK_memcpy
/* 0C8B2C 800CBB2C 7FE3FB78 */  mr        r3, r31
/* 0C8B30 800CBB30 38800100 */  li        r4, 0x100
/* 0C8B34 800CBB34 4BFFE8E9 */  bl        fn_800CA41C
/* 0C8B38 800CBB38 83E1000C */  lwz       r31, 0xc(r1)
/* 0C8B3C 800CBB3C 83C10008 */  lwz       r30, 0x8(r1)
/* 0C8B40 800CBB40 38210010 */  addi      r1, r1, 0x10
/* 0C8B44 800CBB44 80010004 */  lwz       r0, 0x4(r1)
/* 0C8B48 800CBB48 7C0803A6 */  mtlr      r0
/* 0C8B4C 800CBB4C 4E800020 */  blr

glabel fn_800CBB50
/* 0C8B50 800CBB50 7C0802A6 */  mflr      r0
/* 0C8B54 800CBB54 90010004 */  stw       r0, 0x4(r1)
/* 0C8B58 800CBB58 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0C8B5C 800CBB5C 93E10014 */  stw       r31, 0x14(r1)
/* 0C8B60 800CBB60 93C10010 */  stw       r30, 0x10(r1)
/* 0C8B64 800CBB64 93A1000C */  stw       r29, 0xc(r1)
/* 0C8B68 800CBB68 93810008 */  stw       r28, 0x8(r1)
/* 0C8B6C 800CBB6C 38600044 */  li        r3, 0x44
/* 0C8B70 800CBB70 4BFFFF75 */  bl        fn_800CBAE4
/* 0C8B74 800CBB74 3BA00000 */  li        r29, 0x0
/* 0C8B78 800CBB78 83830000 */  lwz       r28, 0x0(r3)
/* 0C8B7C 800CBB7C 3C60800F */  lis       r3, D_800F4E38@ha
/* 0C8B80 800CBB80 57A4103A */  slwi      r4, r29, 2
/* 0C8B84 800CBB84 38034E38 */  addi      r0, r3, D_800F4E38@l
/* 0C8B88 800CBB88 7FC02214 */  add       r30, r0, r4
/* 0C8B8C 800CBB8C 48000004 */  b         lbl_800CBB90
lbl_800CBB90:
/* 0C8B90 800CBB90 3BE00001 */  li        r31, 0x1
/* 0C8B94 800CBB94 48000004 */  b         lbl_800CBB98
lbl_800CBB98:
/* 0C8B98 800CBB98 48000004 */  b         lbl_800CBB9C
lbl_800CBB9C:
/* 0C8B9C 800CBB9C 7FE0E830 */  slw       r0, r31, r29
/* 0C8BA0 800CBBA0 7F800038 */  and       r0, r28, r0
/* 0C8BA4 800CBBA4 28000000 */  cmplwi    r0, 0x0
/* 0C8BA8 800CBBA8 4182000C */  beq       lbl_800CBBB4
/* 0C8BAC 800CBBAC 807E0000 */  lwz       r3, 0x0(r30)
/* 0C8BB0 800CBBB0 4BFFFF41 */  bl        fn_800CBAF0
lbl_800CBBB4:
/* 0C8BB4 800CBBB4 3BDE0004 */  addi      r30, r30, 0x4
/* 0C8BB8 800CBBB8 3BBD0001 */  addi      r29, r29, 0x1
/* 0C8BBC 800CBBBC 2C1D000E */  cmpwi     r29, 0xe
/* 0C8BC0 800CBBC0 4081FFDC */  ble       lbl_800CBB9C
/* 0C8BC4 800CBBC4 83E10014 */  lwz       r31, 0x14(r1)
/* 0C8BC8 800CBBC8 83C10010 */  lwz       r30, 0x10(r1)
/* 0C8BCC 800CBBCC 83A1000C */  lwz       r29, 0xc(r1)
/* 0C8BD0 800CBBD0 83810008 */  lwz       r28, 0x8(r1)
/* 0C8BD4 800CBBD4 38210018 */  addi      r1, r1, 0x18
/* 0C8BD8 800CBBD8 80010004 */  lwz       r0, 0x4(r1)
/* 0C8BDC 800CBBDC 7C0803A6 */  mtlr      r0
/* 0C8BE0 800CBBE0 4E800020 */  blr

glabel TRKInitializeTarget
/* 0C8BE4 800CBBE4 7C0802A6 */  mflr      r0
/* 0C8BE8 800CBBE8 90010004 */  stw       r0, 0x4(r1)
/* 0C8BEC 800CBBEC 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C8BF0 800CBBF0 93E1000C */  stw       r31, 0xc(r1)
/* 0C8BF4 800CBBF4 3C608019 */  lis       r3, gTRKState@ha
/* 0C8BF8 800CBBF8 3BE3A898 */  addi      r31, r3, gTRKState@l
/* 0C8BFC 800CBBFC 38000001 */  li        r0, 0x1
/* 0C8C00 800CBC00 901F0098 */  stw       r0, 0x98(r31)
/* 0C8C04 800CBC04 4BFFE851 */  bl        fn_800CA454
/* 0C8C08 800CBC08 907F008C */  stw       r3, 0x8c(r31)
/* 0C8C0C 800CBC0C 38600000 */  li        r3, 0x0
/* 0C8C10 800CBC10 83E1000C */  lwz       r31, 0xc(r1)
/* 0C8C14 800CBC14 38210010 */  addi      r1, r1, 0x10
/* 0C8C18 800CBC18 80010004 */  lwz       r0, 0x4(r1)
/* 0C8C1C 800CBC1C 7C0803A6 */  mtlr      r0
/* 0C8C20 800CBC20 4E800020 */  blr

# 0x800F4E38 - 0x800F4E78
.section .data, "wa"

.balign 8

glabel D_800F4E38
	.long 0x00000100
	.long 0x00000200
	.long 0x00000300
	.long 0x00000400
	.long 0x00000500
	.long 0x00000600
	.long 0x00000700
	.long 0x00000800
	.long 0x00000900
	.long 0x00000C00
	.long 0x00000D00
	.long 0x00000F00
	.long 0x00001300
	.long 0x00001400
	.long 0x00001700
	.long 0x00000000
