# global_destructor_chain.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CC464 - 0x800CC4AC

glabel __destroy_global_chain
/* 0C9464 800CC464 7C0802A6 */  mflr      r0
/* 0C9468 800CC468 90010004 */  stw       r0, 0x4(r1)
/* 0C946C 800CC46C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C9470 800CC470 48000020 */  b         lbl_800CC490
lbl_800CC474:
/* 0C9474 800CC474 80030000 */  lwz       r0, 0x0(r3)
/* 0C9478 800CC478 3880FFFF */  li        r4, -0x1
/* 0C947C 800CC47C 900D8F78 */  stw       r0, __global_destructor_chain@sda21(r0)
/* 0C9480 800CC480 81830004 */  lwz       r12, 0x4(r3)
/* 0C9484 800CC484 80630008 */  lwz       r3, 0x8(r3)
/* 0C9488 800CC488 7D8803A6 */  mtlr      r12
/* 0C948C 800CC48C 4E800021 */  blrl
lbl_800CC490:
/* 0C9490 800CC490 806D8F78 */  lwz       r3, __global_destructor_chain@sda21(r0)
/* 0C9494 800CC494 28030000 */  cmplwi    r3, 0x0
/* 0C9498 800CC498 4082FFDC */  bne       lbl_800CC474
/* 0C949C 800CC49C 8001000C */  lwz       r0, 0xc(r1)
/* 0C94A0 800CC4A0 38210008 */  addi      r1, r1, 0x8
/* 0C94A4 800CC4A4 7C0803A6 */  mtlr      r0
/* 0C94A8 800CC4A8 4E800020 */  blr

# 0x8018BEF8 - 0x8018BF00
.section .sbss, "wa"

glabel __global_destructor_chain
	.skip 0x4

glabel gap_08_8018BEFC_sbss
.hidden gap_08_8018BEFC_sbss
	.skip 0x4
