# dsp_debug.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B91DC - 0x800B922C

glabel __DSP_debug_printf
/* 0B61DC 800B91DC 9421FF90 */  stwu      r1, -0x70(r1)
/* 0B61E0 800B91E0 40860024 */  bne       cr1, lbl_800B9204
/* 0B61E4 800B91E4 D8210028 */  stfd      f1, 0x28(r1)
/* 0B61E8 800B91E8 D8410030 */  stfd      f2, 0x30(r1)
/* 0B61EC 800B91EC D8610038 */  stfd      f3, 0x38(r1)
/* 0B61F0 800B91F0 D8810040 */  stfd      f4, 0x40(r1)
/* 0B61F4 800B91F4 D8A10048 */  stfd      f5, 0x48(r1)
/* 0B61F8 800B91F8 D8C10050 */  stfd      f6, 0x50(r1)
/* 0B61FC 800B91FC D8E10058 */  stfd      f7, 0x58(r1)
/* 0B6200 800B9200 D9010060 */  stfd      f8, 0x60(r1)
lbl_800B9204:
/* 0B6204 800B9204 90610008 */  stw       r3, 0x8(r1)
/* 0B6208 800B9208 9081000C */  stw       r4, 0xc(r1)
/* 0B620C 800B920C 90A10010 */  stw       r5, 0x10(r1)
/* 0B6210 800B9210 90C10014 */  stw       r6, 0x14(r1)
/* 0B6214 800B9214 90E10018 */  stw       r7, 0x18(r1)
/* 0B6218 800B9218 9101001C */  stw       r8, 0x1c(r1)
/* 0B621C 800B921C 91210020 */  stw       r9, 0x20(r1)
/* 0B6220 800B9220 91410024 */  stw       r10, 0x24(r1)
/* 0B6224 800B9224 38210070 */  addi      r1, r1, 0x70
/* 0B6228 800B9228 4E800020 */  blr
