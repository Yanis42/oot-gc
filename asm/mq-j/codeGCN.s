# codeGCN.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8001C1FC - 0x8001C250

glabel codeEvent
/* 0191FC 8001C1FC 2C040003 */  cmpwi     r4, 0x3
/* 019200 8001C200 41820048 */  beq       lbl_8001C248
/* 019204 8001C204 40800018 */  bge       lbl_8001C21C
/* 019208 8001C208 2C040002 */  cmpwi     r4, 0x2
/* 01920C 8001C20C 40800024 */  bge       lbl_8001C230
/* 019210 8001C210 2C040000 */  cmpwi     r4, 0x0
/* 019214 8001C214 40800034 */  bge       lbl_8001C248
/* 019218 8001C218 48000028 */  b         lbl_8001C240
lbl_8001C21C:
/* 01921C 8001C21C 2C040007 */  cmpwi     r4, 0x7
/* 019220 8001C220 40800020 */  bge       lbl_8001C240
/* 019224 8001C224 2C040005 */  cmpwi     r4, 0x5
/* 019228 8001C228 40800020 */  bge       lbl_8001C248
/* 01922C 8001C22C 48000014 */  b         lbl_8001C240
lbl_8001C230:
/* 019230 8001C230 38000000 */  li        r0, 0x0
/* 019234 8001C234 900D8990 */  stw       r0, gpBufferFunction@sda21(r0)
/* 019238 8001C238 900D8994 */  stw       r0, ganDataCode@sda21(r0)
/* 01923C 8001C23C 4800000C */  b         lbl_8001C248
lbl_8001C240:
/* 019240 8001C240 38600000 */  li        r3, 0x0
/* 019244 8001C244 4E800020 */  blr
lbl_8001C248:
/* 019248 8001C248 38600001 */  li        r3, 0x1
/* 01924C 8001C24C 4E800020 */  blr

# 0x800EBC80 - 0x800EBC90
.section .data, "wa"

.balign 8

glabel gClassCode
	.long D_8018B060
	.long 0x00000004
	.long 0x00000000
	.long codeEvent

# 0x8018B060 - 0x8018B068
.section .sdata, "wa"

glabel D_8018B060
	.long 0x436F6465
	.long 0x00000000

# 0x8018B910 - 0x8018B918
.section .sbss, "wa"

glabel gpBufferFunction
	.skip 0x4

glabel ganDataCode
	.skip 0x4
