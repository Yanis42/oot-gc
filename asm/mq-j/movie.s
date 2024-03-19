# movie.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8000F5A8 - 0x8000F66C

glabel MovieDraw
/* 00C5A8 8000F5A8 7C0802A6 */  mflr      r0
/* 00C5AC 8000F5AC 38800000 */  li        r4, 0x0
/* 00C5B0 8000F5B0 90010004 */  stw       r0, 0x4(r1)
/* 00C5B4 8000F5B4 38A0FFF8 */  li        r5, -0x8
/* 00C5B8 8000F5B8 38C00280 */  li        r6, 0x280
/* 00C5BC 8000F5BC 9421FFF8 */  stwu      r1, -0x8(r1)
/* 00C5C0 8000F5C0 38E001B8 */  li        r7, 0x1b8
/* 00C5C4 8000F5C4 806D88BC */  lwz       r3, rmode@sda21(r0)
/* 00C5C8 8000F5C8 48000F31 */  bl        THPPlayerDrawCurrentFrame
/* 00C5CC 8000F5CC 48001029 */  bl        THPPlayerDrawDone
/* 00C5D0 8000F5D0 8001000C */  lwz       r0, 0xc(r1)
/* 00C5D4 8000F5D4 38210008 */  addi      r1, r1, 0x8
/* 00C5D8 8000F5D8 7C0803A6 */  mtlr      r0
/* 00C5DC 8000F5DC 4E800020 */  blr

glabel MovieInit
/* 00C5E0 8000F5E0 7C0802A6 */  mflr      r0
/* 00C5E4 8000F5E4 38600000 */  li        r3, 0x0
/* 00C5E8 8000F5E8 90010004 */  stw       r0, 0x4(r1)
/* 00C5EC 8000F5EC 9421FFF0 */  stwu      r1, -0x10(r1)
/* 00C5F0 8000F5F0 4800007D */  bl        THPPlayerInit
/* 00C5F4 8000F5F4 38600006 */  li        r3, 0x6
/* 00C5F8 8000F5F8 38810008 */  addi      r4, r1, 0x8
/* 00C5FC 8000F5FC 4BFF8E95 */  bl        simulatorGetArgument
/* 00C600 8000F600 2C030000 */  cmpwi     r3, 0x0
/* 00C604 8000F604 40820018 */  bne       lbl_8000F61C
/* 00C608 8000F608 3C60800F */  lis       r3, D_800EB680@ha
/* 00C60C 8000F60C 3863B680 */  addi      r3, r3, D_800EB680@l
/* 00C610 8000F610 38800000 */  li        r4, 0x0
/* 00C614 8000F614 48000191 */  bl        THPPlayerOpen
/* 00C618 8000F618 48000010 */  b         lbl_8000F628
lbl_8000F61C:
/* 00C61C 8000F61C 80610008 */  lwz       r3, 0x8(r1)
/* 00C620 8000F620 38800000 */  li        r4, 0x0
/* 00C624 8000F624 48000181 */  bl        THPPlayerOpen
lbl_8000F628:
/* 00C628 8000F628 480003F5 */  bl        THPPlayerCalcNeedMemory
/* 00C62C 8000F62C 7C601B78 */  mr        r0, r3
/* 00C630 8000F630 806D8728 */  lwz       r3, __OSCurrHeap@sda21(r0)
/* 00C634 8000F634 7C040378 */  mr        r4, r0
/* 00C638 8000F638 4808CDD5 */  bl        OSAllocFromHeap
/* 00C63C 8000F63C 906D8920 */  stw       r3, gBufferP@sda21(r0)
/* 00C640 8000F640 806D8920 */  lwz       r3, gBufferP@sda21(r0)
/* 00C644 8000F644 48000481 */  bl        THPPlayerSetBuffer
/* 00C648 8000F648 38600000 */  li        r3, 0x0
/* 00C64C 8000F64C 38800000 */  li        r4, 0x0
/* 00C650 8000F650 38A00000 */  li        r5, 0x0
/* 00C654 8000F654 480007A9 */  bl        THPPlayerPrepare
/* 00C658 8000F658 48000A19 */  bl        THPPlayerPlay
/* 00C65C 8000F65C 80010014 */  lwz       r0, 0x14(r1)
/* 00C660 8000F660 38210010 */  addi      r1, r1, 0x10
/* 00C664 8000F664 7C0803A6 */  mtlr      r0
/* 00C668 8000F668 4E800020 */  blr

# 0x800EB680 - 0x800EB6A0
.section .data, "wa"

.balign 8

glabel D_800EB680
	.long 0x66696E61
	.long 0x6C5F7A65
	.long 0x6C64615F
	.long 0x63726564
	.long 0x6974735F
	.long 0x736F756E
	.long 0x642E7468
	.long 0x70000000

# 0x8018B8A0 - 0x8018B8A8
.section .sbss, "wa"

glabel gBufferP
	.skip 0x4

glabel gap_08_8018B8A4_sbss
.hidden gap_08_8018B8A4_sbss
	.skip 0x4
