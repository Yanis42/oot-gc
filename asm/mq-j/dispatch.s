# dispatch.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800C8BAC - 0x800C8C44

glabel TRKInitializeDispatcher
/* 0C5BAC 800C8BAC 3C608019 */  lis       r3, gTRKBigEndian@ha
/* 0C5BB0 800C8BB0 38000020 */  li        r0, 0x20
/* 0C5BB4 800C8BB4 9003A7E8 */  stw       r0, gTRKBigEndian@l(r3)
/* 0C5BB8 800C8BB8 38600000 */  li        r3, 0x0
/* 0C5BBC 800C8BBC 4E800020 */  blr

glabel fn_800C8BC0
/* 0C5BC0 800C8BC0 7C0802A6 */  mflr      r0
/* 0C5BC4 800C8BC4 38800000 */  li        r4, 0x0
/* 0C5BC8 800C8BC8 90010004 */  stw       r0, 0x4(r1)
/* 0C5BCC 800C8BCC 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0C5BD0 800C8BD0 93E10014 */  stw       r31, 0x14(r1)
/* 0C5BD4 800C8BD4 3BE00500 */  li        r31, 0x500
/* 0C5BD8 800C8BD8 93C10010 */  stw       r30, 0x10(r1)
/* 0C5BDC 800C8BDC 3BC30000 */  addi      r30, r3, 0x0
/* 0C5BE0 800C8BE0 4BFFF7A9 */  bl        fn_800C8388
/* 0C5BE4 800C8BE4 387E0000 */  addi      r3, r30, 0x0
/* 0C5BE8 800C8BE8 38810008 */  addi      r4, r1, 0x8
/* 0C5BEC 800C8BEC 4BFFFB21 */  bl        fn_800C870C
/* 0C5BF0 800C8BF0 3C608019 */  lis       r3, gTRKBigEndian@ha
/* 0C5BF4 800C8BF4 88810008 */  lbz       r4, 0x8(r1)
/* 0C5BF8 800C8BF8 8003A7E8 */  lwz       r0, gTRKBigEndian@l(r3)
/* 0C5BFC 800C8BFC 7C040040 */  cmplw     r4, r0
/* 0C5C00 800C8C00 40800028 */  bge       lbl_800C8C28
/* 0C5C04 800C8C04 3C60800F */  lis       r3, D_800F4D80@ha
/* 0C5C08 800C8C08 5484103A */  slwi      r4, r4, 2
/* 0C5C0C 800C8C0C 38034D80 */  addi      r0, r3, D_800F4D80@l
/* 0C5C10 800C8C10 7C602214 */  add       r3, r0, r4
/* 0C5C14 800C8C14 81830000 */  lwz       r12, 0x0(r3)
/* 0C5C18 800C8C18 387E0000 */  addi      r3, r30, 0x0
/* 0C5C1C 800C8C1C 7D8803A6 */  mtlr      r12
/* 0C5C20 800C8C20 4E800021 */  blrl
/* 0C5C24 800C8C24 7C7F1B78 */  mr        r31, r3
lbl_800C8C28:
/* 0C5C28 800C8C28 7FE3FB78 */  mr        r3, r31
/* 0C5C2C 800C8C2C 83E10014 */  lwz       r31, 0x14(r1)
/* 0C5C30 800C8C30 83C10010 */  lwz       r30, 0x10(r1)
/* 0C5C34 800C8C34 38210018 */  addi      r1, r1, 0x18
/* 0C5C38 800C8C38 80010004 */  lwz       r0, 0x4(r1)
/* 0C5C3C 800C8C3C 7C0803A6 */  mtlr      r0
/* 0C5C40 800C8C40 4E800020 */  blr

# 0x800F4D80 - 0x800F4E08
.section .data, "wa"

.balign 8

glabel D_800F4D80
	.long fn_800C8D60
	.long fn_800C8D88
	.long fn_800C8DB0
	.long fn_800C8E00
	.long fn_800C8E30
	.long fn_800C8FB4
	.long fn_800C9090
	.long fn_800C8D60
	.long fn_800C8D60
	.long fn_800C8D60
	.long fn_800C8D60
	.long fn_800C8D60
	.long fn_800C8D60
	.long fn_800C8D60
	.long fn_800C8D60
	.long fn_800C8D60
	.long fn_800C92D4
	.long fn_800C94A0
	.long fn_800C9680
	.long fn_800C988C
	.long fn_800C8D60
	.long fn_800C8D60
	.long fn_800C9A88
	.long fn_800C8D60
	.long fn_800C9BE0
	.long fn_800C9C44
	.long fn_800C9E58
	.long fn_800C8D60
	.long fn_800C8D60
	.long fn_800C8D60
	.long fn_800C8D60
	.long fn_800C8D60
	.long 0x00000000
	.long 0x00000000

# 0x8018A7E8 - 0x8018A7EC
.section .bss, "wa"

glabel gTRKBigEndian
	.skip 0x4
