# dvdFatal.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B48B8 - 0x800B48E8

glabel __DVDPrintFatalMessage
/* 0B18B8 800B48B8 7C0802A6 */  mflr      r0
/* 0B18BC 800B48BC 90010004 */  stw       r0, 0x4(r1)
/* 0B18C0 800B48C0 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B18C4 800B48C4 818D8D18 */  lwz       r12, D_8018BC98@sda21(r0)
/* 0B18C8 800B48C8 280C0000 */  cmplwi    r12, 0x0
/* 0B18CC 800B48CC 4182000C */  beq       lbl_800B48D8
/* 0B18D0 800B48D0 7D8803A6 */  mtlr      r12
/* 0B18D4 800B48D4 4E800021 */  blrl
lbl_800B48D8:
/* 0B18D8 800B48D8 8001000C */  lwz       r0, 0xc(r1)
/* 0B18DC 800B48DC 38210008 */  addi      r1, r1, 0x8
/* 0B18E0 800B48E0 7C0803A6 */  mtlr      r0
/* 0B18E4 800B48E4 4E800020 */  blr

# 0x8018BC98 - 0x8018BCA0
.section .sbss, "wa"

glabel D_8018BC98
	.skip 0x8
