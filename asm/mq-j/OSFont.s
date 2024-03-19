# OSFont.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009E1F0 - 0x8009E248

glabel OSGetFontEncode
/* 09B1F0 8009E1F0 A06D8740 */  lhz       r3, D_8018B6C0@sda21(r0)
/* 09B1F4 8009E1F4 28030001 */  cmplwi    r3, 0x1
/* 09B1F8 8009E1F8 4C810020 */  blelr
/* 09B1FC 8009E1FC 3C608000 */  lis       r3, 0x8000
/* 09B200 8009E200 800300CC */  lwz       r0, 0xcc(r3)
/* 09B204 8009E204 2C000000 */  cmpwi     r0, 0x0
/* 09B208 8009E208 4182000C */  beq       lbl_8009E214
/* 09B20C 8009E20C 4180002C */  blt       lbl_8009E238
/* 09B210 8009E210 48000028 */  b         lbl_8009E238
lbl_8009E214:
/* 09B214 8009E214 3C60CC00 */  lis       r3, 0xcc00
/* 09B218 8009E218 A003206E */  lhz       r0, 0x206e(r3)
/* 09B21C 8009E21C 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 09B220 8009E220 4182000C */  beq       lbl_8009E22C
/* 09B224 8009E224 38000001 */  li        r0, 0x1
/* 09B228 8009E228 48000008 */  b         lbl_8009E230
lbl_8009E22C:
/* 09B22C 8009E22C 38000000 */  li        r0, 0x0
lbl_8009E230:
/* 09B230 8009E230 B00D8740 */  sth       r0, D_8018B6C0@sda21(r0)
/* 09B234 8009E234 4800000C */  b         lbl_8009E240
lbl_8009E238:
/* 09B238 8009E238 38000000 */  li        r0, 0x0
/* 09B23C 8009E23C B00D8740 */  sth       r0, D_8018B6C0@sda21(r0)
lbl_8009E240:
/* 09B240 8009E240 A06D8740 */  lhz       r3, D_8018B6C0@sda21(r0)
/* 09B244 8009E244 4E800020 */  blr

# 0x8018B6C0 - 0x8018B6C8
.section .sdata, "wa"

glabel D_8018B6C0
	.2byte 0xFFFF
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
