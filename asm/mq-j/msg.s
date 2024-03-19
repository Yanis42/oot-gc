# msg.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800C8170 - 0x800C8198

glabel fn_800C8170
/* 0C5170 800C8170 7C0802A6 */  mflr      r0
/* 0C5174 800C8174 90010004 */  stw       r0, 0x4(r1)
/* 0C5178 800C8178 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C517C 800C817C 80830008 */  lwz       r4, 0x8(r3)
/* 0C5180 800C8180 38630010 */  addi      r3, r3, 0x10
/* 0C5184 800C8184 480040F1 */  bl        fn_800CC274
/* 0C5188 800C8188 38210008 */  addi      r1, r1, 0x8
/* 0C518C 800C818C 80010004 */  lwz       r0, 0x4(r1)
/* 0C5190 800C8190 7C0803A6 */  mtlr      r0
/* 0C5194 800C8194 4E800020 */  blr
