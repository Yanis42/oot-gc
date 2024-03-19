# main_TRK.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CBF94 - 0x800CBFE4

glabel fn_800CBF94
/* 0C8F94 800CBF94 38600054 */  li        r3, 0x54
/* 0C8F98 800CBF98 4E800020 */  blr

glabel TRK_main
/* 0C8F9C 800CBF9C 7C0802A6 */  mflr      r0
/* 0C8FA0 800CBFA0 90010004 */  stw       r0, 0x4(r1)
/* 0C8FA4 800CBFA4 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C8FA8 800CBFA8 4BFFC035 */  bl        TRKInitializeNub
/* 0C8FAC 800CBFAC 3C808019 */  lis       r4, TRK_mainError@ha
/* 0C8FB0 800CBFB0 9464AD70 */  stwu      r3, TRK_mainError@l(r4)
/* 0C8FB4 800CBFB4 80040000 */  lwz       r0, 0x0(r4)
/* 0C8FB8 800CBFB8 2C000000 */  cmpwi     r0, 0x0
/* 0C8FBC 800CBFBC 4082000C */  bne       lbl_800CBFC8
/* 0C8FC0 800CBFC0 4BFFC115 */  bl        TRKNubWelcome
/* 0C8FC4 800CBFC4 4BFFBCC9 */  bl        TRKNubMainLoop
lbl_800CBFC8:
/* 0C8FC8 800CBFC8 4BFFC0E9 */  bl        TRKTerminateNub
/* 0C8FCC 800CBFCC 3C808019 */  lis       r4, TRK_mainError@ha
/* 0C8FD0 800CBFD0 9064AD70 */  stw       r3, TRK_mainError@l(r4)
/* 0C8FD4 800CBFD4 38210008 */  addi      r1, r1, 0x8
/* 0C8FD8 800CBFD8 80010004 */  lwz       r0, 0x4(r1)
/* 0C8FDC 800CBFDC 7C0803A6 */  mtlr      r0
/* 0C8FE0 800CBFE0 4E800020 */  blr

# 0x8018AD70 - 0x8018AD74
.section .bss, "wa"

TRK_mainError:
	.skip 0x4
