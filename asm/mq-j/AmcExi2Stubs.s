# AmcExi2Stubs.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800D10AC - 0x800D10DC

glabel EXI2_Init
/* 0CE0AC 800D10AC 4E800020 */  blr

glabel EXI2_EnableInterrupts
/* 0CE0B0 800D10B0 4E800020 */  blr

glabel EXI2_Poll
/* 0CE0B4 800D10B4 38600000 */  li        r3, 0x0
/* 0CE0B8 800D10B8 4E800020 */  blr

glabel EXI2_ReadN
/* 0CE0BC 800D10BC 38600000 */  li        r3, 0x0
/* 0CE0C0 800D10C0 4E800020 */  blr

glabel EXI2_WriteN
/* 0CE0C4 800D10C4 38600000 */  li        r3, 0x0
/* 0CE0C8 800D10C8 4E800020 */  blr

glabel EXI2_Reserve
/* 0CE0CC 800D10CC 4E800020 */  blr

glabel EXI2_Unreserve
/* 0CE0D0 800D10D0 4E800020 */  blr

glabel AMC_IsStub
/* 0CE0D4 800D10D4 38600001 */  li        r3, 0x1
/* 0CE0D8 800D10D8 4E800020 */  blr
