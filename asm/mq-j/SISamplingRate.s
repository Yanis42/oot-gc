# SISamplingRate.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A4BDC - 0x800A4CE4

glabel SISetSamplingRate
/* 0A1BDC 800A4BDC 7C0802A6 */  mflr      r0
/* 0A1BE0 800A4BE0 90010004 */  stw       r0, 0x4(r1)
/* 0A1BE4 800A4BE4 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0A1BE8 800A4BE8 93E1001C */  stw       r31, 0x1c(r1)
/* 0A1BEC 800A4BEC 93C10018 */  stw       r30, 0x18(r1)
/* 0A1BF0 800A4BF0 93A10014 */  stw       r29, 0x14(r1)
/* 0A1BF4 800A4BF4 3BA30000 */  addi      r29, r3, 0x0
/* 0A1BF8 800A4BF8 281D000B */  cmplwi    r29, 0xb
/* 0A1BFC 800A4BFC 3C60800F */  lis       r3, XYNTSC@ha
/* 0A1C00 800A4C00 3BE32AB8 */  addi      r31, r3, XYNTSC@l
/* 0A1C04 800A4C04 40810008 */  ble       lbl_800A4C0C
/* 0A1C08 800A4C08 3BA0000B */  li        r29, 0xb
lbl_800A4C0C:
/* 0A1C0C 800A4C0C 4BFF963D */  bl        OSDisableInterrupts
/* 0A1C10 800A4C10 93AD8B90 */  stw       r29, SamplingRate@sda21(r0)
/* 0A1C14 800A4C14 7C7E1B78 */  mr        r30, r3
/* 0A1C18 800A4C18 48001B41 */  bl        VIGetTvFormat
/* 0A1C1C 800A4C1C 2C030002 */  cmpwi     r3, 0x2
/* 0A1C20 800A4C20 41820024 */  beq       lbl_800A4C44
/* 0A1C24 800A4C24 40800014 */  bge       lbl_800A4C38
/* 0A1C28 800A4C28 2C030000 */  cmpwi     r3, 0x0
/* 0A1C2C 800A4C2C 41820018 */  beq       lbl_800A4C44
/* 0A1C30 800A4C30 4080001C */  bge       lbl_800A4C4C
/* 0A1C34 800A4C34 48000020 */  b         lbl_800A4C54
lbl_800A4C38:
/* 0A1C38 800A4C38 2C030005 */  cmpwi     r3, 0x5
/* 0A1C3C 800A4C3C 41820008 */  beq       lbl_800A4C44
/* 0A1C40 800A4C40 48000014 */  b         lbl_800A4C54
lbl_800A4C44:
/* 0A1C44 800A4C44 7FE4FB78 */  mr        r4, r31
/* 0A1C48 800A4C48 48000020 */  b         lbl_800A4C68
lbl_800A4C4C:
/* 0A1C4C 800A4C4C 389F0030 */  addi      r4, r31, 0x30
/* 0A1C50 800A4C50 48000018 */  b         lbl_800A4C68
lbl_800A4C54:
/* 0A1C54 800A4C54 387F0060 */  addi      r3, r31, 0x60
/* 0A1C58 800A4C58 4CC63182 */  crclr     cr1eq
/* 0A1C5C 800A4C5C 4BFF8EE9 */  bl        OSReport
/* 0A1C60 800A4C60 3BA00000 */  li        r29, 0x0
/* 0A1C64 800A4C64 389F0000 */  addi      r4, r31, 0x0
lbl_800A4C68:
/* 0A1C68 800A4C68 3C60CC00 */  lis       r3, 0xcc00
/* 0A1C6C 800A4C6C A003206C */  lhz       r0, 0x206c(r3)
/* 0A1C70 800A4C70 540007FF */  clrlwi.   r0, r0, 31
/* 0A1C74 800A4C74 4182000C */  beq       lbl_800A4C80
/* 0A1C78 800A4C78 38A00002 */  li        r5, 0x2
/* 0A1C7C 800A4C7C 48000008 */  b         lbl_800A4C84
lbl_800A4C80:
/* 0A1C80 800A4C80 38A00001 */  li        r5, 0x1
lbl_800A4C84:
/* 0A1C84 800A4C84 57A3103A */  slwi      r3, r29, 2
/* 0A1C88 800A4C88 7C041A2E */  lhzx      r0, r4, r3
/* 0A1C8C 800A4C8C 7C641A14 */  add       r3, r4, r3
/* 0A1C90 800A4C90 88830002 */  lbz       r4, 0x2(r3)
/* 0A1C94 800A4C94 7C6501D6 */  mullw     r3, r5, r0
/* 0A1C98 800A4C98 4BFFF4A9 */  bl        SISetXY
/* 0A1C9C 800A4C9C 7FC3F378 */  mr        r3, r30
/* 0A1CA0 800A4CA0 4BFF95D1 */  bl        OSRestoreInterrupts
/* 0A1CA4 800A4CA4 80010024 */  lwz       r0, 0x24(r1)
/* 0A1CA8 800A4CA8 83E1001C */  lwz       r31, 0x1c(r1)
/* 0A1CAC 800A4CAC 83C10018 */  lwz       r30, 0x18(r1)
/* 0A1CB0 800A4CB0 83A10014 */  lwz       r29, 0x14(r1)
/* 0A1CB4 800A4CB4 38210020 */  addi      r1, r1, 0x20
/* 0A1CB8 800A4CB8 7C0803A6 */  mtlr      r0
/* 0A1CBC 800A4CBC 4E800020 */  blr

glabel SIRefreshSamplingRate
/* 0A1CC0 800A4CC0 7C0802A6 */  mflr      r0
/* 0A1CC4 800A4CC4 90010004 */  stw       r0, 0x4(r1)
/* 0A1CC8 800A4CC8 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0A1CCC 800A4CCC 806D8B90 */  lwz       r3, SamplingRate@sda21(r0)
/* 0A1CD0 800A4CD0 4BFFFF0D */  bl        SISetSamplingRate
/* 0A1CD4 800A4CD4 8001000C */  lwz       r0, 0xc(r1)
/* 0A1CD8 800A4CD8 38210008 */  addi      r1, r1, 0x8
/* 0A1CDC 800A4CDC 7C0803A6 */  mtlr      r0
/* 0A1CE0 800A4CE0 4E800020 */  blr

# 0x800F2AB8 - 0x800F2B50
.section .data, "wa"

.balign 8

XYNTSC:
	.long 0x00F60200
	.long 0x000F1200
	.long 0x001E0900
	.long 0x002C0600
	.long 0x00340500
	.long 0x00410400
	.long 0x00570300
	.long 0x00570300
	.long 0x00570300
	.long 0x00830200
	.long 0x00830200
	.long 0x00830200

XYPAL:
	.long 0x01280200
	.long 0x000F1500
	.long 0x001D0B00
	.long 0x002D0700
	.long 0x00340600
	.long 0x003F0500
	.long 0x004E0400
	.long 0x00680300
	.long 0x00680300
	.long 0x00680300
	.long 0x00680300
	.long 0x009C0200

glabel D_800F2B18
	.string "SISetSamplingRate: unknown TV format. Use default."

glabel gap_05_800F2B4B_data
.hidden gap_05_800F2B4B_data
	.long 0x00000000
	.byte 0x00

# 0x8018BB10 - 0x8018BB18
.section .sbss, "wa"

SamplingRate:
	.skip 0x4

glabel gap_08_8018BB14_sbss
.hidden gap_08_8018BB14_sbss
	.skip 0x4
