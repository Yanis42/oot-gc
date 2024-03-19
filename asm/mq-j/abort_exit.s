# abort_exit.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CCBBC - 0x800CCCC8

glabel exit
/* 0C9BBC 800CCBBC 7C0802A6 */  mflr      r0
/* 0C9BC0 800CCBC0 90010004 */  stw       r0, 0x4(r1)
/* 0C9BC4 800CCBC4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0C9BC8 800CCBC8 93E10014 */  stw       r31, 0x14(r1)
/* 0C9BCC 800CCBCC 800D8F80 */  lwz       r0, __aborting@sda21(r0)
/* 0C9BD0 800CCBD0 2C000000 */  cmpwi     r0, 0x0
/* 0C9BD4 800CCBD4 40820084 */  bne       lbl_800CCC58
/* 0C9BD8 800CCBD8 3C608019 */  lis       r3, atexit_funcs@ha
/* 0C9BDC 800CCBDC 3BE3AD78 */  addi      r31, r3, atexit_funcs@l
/* 0C9BE0 800CCBE0 48000024 */  b         lbl_800CCC04
lbl_800CCBE4:
/* 0C9BE4 800CCBE4 806D8F84 */  lwz       r3, atexit_curr_func@sda21(r0)
/* 0C9BE8 800CCBE8 3863FFFF */  subi      r3, r3, 0x1
/* 0C9BEC 800CCBEC 5460103A */  slwi      r0, r3, 2
/* 0C9BF0 800CCBF0 906D8F84 */  stw       r3, atexit_curr_func@sda21(r0)
/* 0C9BF4 800CCBF4 7C7F0214 */  add       r3, r31, r0
/* 0C9BF8 800CCBF8 81830000 */  lwz       r12, 0x0(r3)
/* 0C9BFC 800CCBFC 7D8803A6 */  mtlr      r12
/* 0C9C00 800CCC00 4E800021 */  blrl
lbl_800CCC04:
/* 0C9C04 800CCC04 800D8F84 */  lwz       r0, atexit_curr_func@sda21(r0)
/* 0C9C08 800CCC08 2C000000 */  cmpwi     r0, 0x0
/* 0C9C0C 800CCC0C 4181FFD8 */  bgt       lbl_800CCBE4
/* 0C9C10 800CCC10 4BFFF855 */  bl        __destroy_global_chain
/* 0C9C14 800CCC14 3C60800D */  lis       r3, _dtors@ha
/* 0C9C18 800CCC18 38031BA0 */  addi      r0, r3, _dtors@l
/* 0C9C1C 800CCC1C 7C1F0378 */  mr        r31, r0
/* 0C9C20 800CCC20 48000010 */  b         lbl_800CCC30
lbl_800CCC24:
/* 0C9C24 800CCC24 7D8803A6 */  mtlr      r12
/* 0C9C28 800CCC28 4E800021 */  blrl
/* 0C9C2C 800CCC2C 3BFF0004 */  addi      r31, r31, 0x4
lbl_800CCC30:
/* 0C9C30 800CCC30 819F0000 */  lwz       r12, 0x0(r31)
/* 0C9C34 800CCC34 280C0000 */  cmplwi    r12, 0x0
/* 0C9C38 800CCC38 4082FFEC */  bne       lbl_800CCC24
/* 0C9C3C 800CCC3C 818D8F8C */  lwz       r12, __stdio_exit@sda21(r0)
/* 0C9C40 800CCC40 280C0000 */  cmplwi    r12, 0x0
/* 0C9C44 800CCC44 41820014 */  beq       lbl_800CCC58
/* 0C9C48 800CCC48 7D8803A6 */  mtlr      r12
/* 0C9C4C 800CCC4C 4E800021 */  blrl
/* 0C9C50 800CCC50 38000000 */  li        r0, 0x0
/* 0C9C54 800CCC54 900D8F8C */  stw       r0, __stdio_exit@sda21(r0)
lbl_800CCC58:
/* 0C9C58 800CCC58 3C608019 */  lis       r3, __atexit_funcs@ha
/* 0C9C5C 800CCC5C 3BE3AE78 */  addi      r31, r3, __atexit_funcs@l
/* 0C9C60 800CCC60 48000024 */  b         lbl_800CCC84
lbl_800CCC64:
/* 0C9C64 800CCC64 806D8F88 */  lwz       r3, __atexit_curr_func@sda21(r0)
/* 0C9C68 800CCC68 3863FFFF */  subi      r3, r3, 0x1
/* 0C9C6C 800CCC6C 5460103A */  slwi      r0, r3, 2
/* 0C9C70 800CCC70 906D8F88 */  stw       r3, __atexit_curr_func@sda21(r0)
/* 0C9C74 800CCC74 7C7F0214 */  add       r3, r31, r0
/* 0C9C78 800CCC78 81830000 */  lwz       r12, 0x0(r3)
/* 0C9C7C 800CCC7C 7D8803A6 */  mtlr      r12
/* 0C9C80 800CCC80 4E800021 */  blrl
lbl_800CCC84:
/* 0C9C84 800CCC84 800D8F88 */  lwz       r0, __atexit_curr_func@sda21(r0)
/* 0C9C88 800CCC88 2C000000 */  cmpwi     r0, 0x0
/* 0C9C8C 800CCC8C 4181FFD8 */  bgt       lbl_800CCC64
/* 0C9C90 800CCC90 480004ED */  bl        __kill_critical_regions
/* 0C9C94 800CCC94 818D8F90 */  lwz       r12, __console_exit@sda21(r0)
/* 0C9C98 800CCC98 280C0000 */  cmplwi    r12, 0x0
/* 0C9C9C 800CCC9C 41820014 */  beq       lbl_800CCCB0
/* 0C9CA0 800CCCA0 7D8803A6 */  mtlr      r12
/* 0C9CA4 800CCCA4 4E800021 */  blrl
/* 0C9CA8 800CCCA8 38000000 */  li        r0, 0x0
/* 0C9CAC 800CCCAC 900D8F90 */  stw       r0, __console_exit@sda21(r0)
lbl_800CCCB0:
/* 0C9CB0 800CCCB0 4BFD4CC9 */  bl        _ExitProcess
/* 0C9CB4 800CCCB4 8001001C */  lwz       r0, 0x1c(r1)
/* 0C9CB8 800CCCB8 83E10014 */  lwz       r31, 0x14(r1)
/* 0C9CBC 800CCCBC 38210018 */  addi      r1, r1, 0x18
/* 0C9CC0 800CCCC0 7C0803A6 */  mtlr      r0
/* 0C9CC4 800CCCC4 4E800020 */  blr

# 0x800D1BA0 - 0x800D1BA4
.section .dtors, "a"

glabel __destroy_global_chain_reference
	.long __destroy_global_chain

# 0x8018AD78 - 0x8018AF78
.section .bss, "wa"

atexit_funcs:
	.skip 0x100

__atexit_funcs:
	.skip 0x100

# 0x8018BF00 - 0x8018BF18
.section .sbss, "wa"

glabel __aborting
	.skip 0x4

atexit_curr_func:
	.skip 0x4

__atexit_curr_func:
	.skip 0x4

glabel __stdio_exit
	.skip 0x4

glabel __console_exit
	.skip 0x4

glabel gap_08_8018BF14_sbss
.hidden gap_08_8018BF14_sbss
	.skip 0x4
