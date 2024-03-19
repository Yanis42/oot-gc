# dsp.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B905C - 0x800B91DC

glabel DSPCheckMailToDSP
/* 0B605C 800B905C 3C60CC00 */  lis       r3, 0xcc00
/* 0B6060 800B9060 A0035000 */  lhz       r0, 0x5000(r3)
/* 0B6064 800B9064 54038FFE */  extrwi    r3, r0, 1, 16
/* 0B6068 800B9068 4E800020 */  blr

glabel DSPCheckMailFromDSP
/* 0B606C 800B906C 3C60CC00 */  lis       r3, 0xcc00
/* 0B6070 800B9070 A0035004 */  lhz       r0, 0x5004(r3)
/* 0B6074 800B9074 54038FFE */  extrwi    r3, r0, 1, 16
/* 0B6078 800B9078 4E800020 */  blr

glabel DSPReadMailFromDSP
/* 0B607C 800B907C 3C60CC00 */  lis       r3, 0xcc00
/* 0B6080 800B9080 38635000 */  addi      r3, r3, 0x5000
/* 0B6084 800B9084 A0030004 */  lhz       r0, 0x4(r3)
/* 0B6088 800B9088 A0630006 */  lhz       r3, 0x6(r3)
/* 0B608C 800B908C 5003801E */  rlwimi    r3, r0, 16, 0, 15
/* 0B6090 800B9090 4E800020 */  blr

glabel DSPSendMailToDSP
/* 0B6094 800B9094 3C80CC00 */  lis       r4, 0xcc00
/* 0B6098 800B9098 5460843E */  srwi      r0, r3, 16
/* 0B609C 800B909C B0045000 */  sth       r0, 0x5000(r4)
/* 0B60A0 800B90A0 B0645002 */  sth       r3, 0x5002(r4)
/* 0B60A4 800B90A4 4E800020 */  blr

glabel DSPInit
/* 0B60A8 800B90A8 7C0802A6 */  mflr      r0
/* 0B60AC 800B90AC 3C60800F */  lis       r3, D_800F4978@ha
/* 0B60B0 800B90B0 90010004 */  stw       r0, 0x4(r1)
/* 0B60B4 800B90B4 38A34978 */  addi      r5, r3, D_800F4978@l
/* 0B60B8 800B90B8 4CC63182 */  crclr     cr1eq
/* 0B60BC 800B90BC 38650048 */  addi      r3, r5, 0x48
/* 0B60C0 800B90C0 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0B60C4 800B90C4 38850068 */  addi      r4, r5, 0x68
/* 0B60C8 800B90C8 93E1000C */  stw       r31, 0xc(r1)
/* 0B60CC 800B90CC 38A50074 */  addi      r5, r5, 0x74
/* 0B60D0 800B90D0 4800010D */  bl        __DSP_debug_printf
/* 0B60D4 800B90D4 800D8E30 */  lwz       r0, D_8018BDB0@sda21(r0)
/* 0B60D8 800B90D8 2C000001 */  cmpwi     r0, 0x1
/* 0B60DC 800B90DC 4182007C */  beq       lbl_800B9158
/* 0B60E0 800B90E0 806D8848 */  lwz       r3, D_8018B7C8@sda21(r0)
/* 0B60E4 800B90E4 4BFE2BA1 */  bl        OSRegisterVersion
/* 0B60E8 800B90E8 4BFE5161 */  bl        OSDisableInterrupts
/* 0B60EC 800B90EC 3C80800C */  lis       r4, __DSPHandler@ha
/* 0B60F0 800B90F0 3BE30000 */  addi      r31, r3, 0x0
/* 0B60F4 800B90F4 3884922C */  addi      r4, r4, __DSPHandler@l
/* 0B60F8 800B90F8 38600007 */  li        r3, 0x7
/* 0B60FC 800B90FC 4BFE5199 */  bl        __OSSetInterruptHandler
/* 0B6100 800B9100 3C600100 */  lis       r3, 0x100
/* 0B6104 800B9104 4BFE5595 */  bl        __OSUnmaskInterrupts
/* 0B6108 800B9108 3C60CC00 */  lis       r3, 0xcc00
/* 0B610C 800B910C 38C35000 */  addi      r6, r3, 0x5000
/* 0B6110 800B9110 A063500A */  lhz       r3, 0x500a(r3)
/* 0B6114 800B9114 3800FF57 */  li        r0, -0xa9
/* 0B6118 800B9118 7C600038 */  and       r0, r3, r0
/* 0B611C 800B911C 60000800 */  ori       r0, r0, 0x800
/* 0B6120 800B9120 B006000A */  sth       r0, 0xa(r6)
/* 0B6124 800B9124 38A0FF53 */  li        r5, -0xad
/* 0B6128 800B9128 38800000 */  li        r4, 0x0
/* 0B612C 800B912C A0E6000A */  lhz       r7, 0xa(r6)
/* 0B6130 800B9130 38000001 */  li        r0, 0x1
/* 0B6134 800B9134 387F0000 */  addi      r3, r31, 0x0
/* 0B6138 800B9138 7CE52838 */  and       r5, r7, r5
/* 0B613C 800B913C B0A6000A */  sth       r5, 0xa(r6)
/* 0B6140 800B9140 908D8E40 */  stw       r4, D_8018BDC0@sda21(r0)
/* 0B6144 800B9144 908D8E4C */  stw       r4, D_8018BDCC@sda21(r0)
/* 0B6148 800B9148 908D8E44 */  stw       r4, D_8018BDC4@sda21(r0)
/* 0B614C 800B914C 908D8E48 */  stw       r4, D_8018BDC8@sda21(r0)
/* 0B6150 800B9150 900D8E30 */  stw       r0, D_8018BDB0@sda21(r0)
/* 0B6154 800B9154 4BFE511D */  bl        OSRestoreInterrupts
lbl_800B9158:
/* 0B6158 800B9158 80010014 */  lwz       r0, 0x14(r1)
/* 0B615C 800B915C 83E1000C */  lwz       r31, 0xc(r1)
/* 0B6160 800B9160 38210010 */  addi      r1, r1, 0x10
/* 0B6164 800B9164 7C0803A6 */  mtlr      r0
/* 0B6168 800B9168 4E800020 */  blr

glabel DSPAddTask
/* 0B616C 800B916C 7C0802A6 */  mflr      r0
/* 0B6170 800B9170 90010004 */  stw       r0, 0x4(r1)
/* 0B6174 800B9174 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B6178 800B9178 93E10014 */  stw       r31, 0x14(r1)
/* 0B617C 800B917C 93C10010 */  stw       r30, 0x10(r1)
/* 0B6180 800B9180 7C7E1B78 */  mr        r30, r3
/* 0B6184 800B9184 4BFE50C5 */  bl        OSDisableInterrupts
/* 0B6188 800B9188 3BE30000 */  addi      r31, r3, 0x0
/* 0B618C 800B918C 387E0000 */  addi      r3, r30, 0x0
/* 0B6190 800B9190 480007ED */  bl        __DSP_insert_task
/* 0B6194 800B9194 38000000 */  li        r0, 0x0
/* 0B6198 800B9198 901E0000 */  stw       r0, 0x0(r30)
/* 0B619C 800B919C 38000001 */  li        r0, 0x1
/* 0B61A0 800B91A0 387F0000 */  addi      r3, r31, 0x0
/* 0B61A4 800B91A4 901E0008 */  stw       r0, 0x8(r30)
/* 0B61A8 800B91A8 4BFE50C9 */  bl        OSRestoreInterrupts
/* 0B61AC 800B91AC 800D8E48 */  lwz       r0, D_8018BDC8@sda21(r0)
/* 0B61B0 800B91B0 7C1E0040 */  cmplw     r30, r0
/* 0B61B4 800B91B4 4082000C */  bne       lbl_800B91C0
/* 0B61B8 800B91B8 7FC3F378 */  mr        r3, r30
/* 0B61BC 800B91BC 48000635 */  bl        __DSP_boot_task
lbl_800B91C0:
/* 0B61C0 800B91C0 7FC3F378 */  mr        r3, r30
/* 0B61C4 800B91C4 8001001C */  lwz       r0, 0x1c(r1)
/* 0B61C8 800B91C8 83E10014 */  lwz       r31, 0x14(r1)
/* 0B61CC 800B91CC 83C10010 */  lwz       r30, 0x10(r1)
/* 0B61D0 800B91D0 38210018 */  addi      r1, r1, 0x18
/* 0B61D4 800B91D4 7C0803A6 */  mtlr      r0
/* 0B61D8 800B91D8 4E800020 */  blr

# 0x800F4978 - 0x800F49F8
.section .data, "wa"

.balign 8

glabel D_800F4978
	.string "<< Dolphin SDK - DSP\trelease build: Sep  5 2002 05:35:13 (0x2301) >>"

glabel gap_05_800F49BD_data
.hidden gap_05_800F49BD_data
	.byte 0x00, 0x00, 0x00

glabel D_800F49C0
	.string "DSPInit(): Build Date: %s %s\n"

glabel gap_05_800F49DE_data
.hidden gap_05_800F49DE_data
	.2byte 0x0000

glabel D_800F49E0
	.string "Sep  5 2002"

glabel D_800F49EC
	.string "05:35:13"

glabel gap_05_800F49F5_data
.hidden gap_05_800F49F5_data
	.byte 0x00, 0x00, 0x00

# 0x8018B7C8 - 0x8018B7D0
.section .sdata, "wa"

glabel D_8018B7C8
	.long D_800F4978
	.long 0x00000000

# 0x8018BDB0 - 0x8018BDB8
.section .sbss, "wa"

glabel D_8018BDB0
	.skip 0x8
