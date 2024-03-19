# OSArena.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009C9D0 - 0x8009C9F0

glabel OSGetArenaHi
/* 0999D0 8009C9D0 806D8B08 */  lwz       r3, __OSArenaHi@sda21(r0)
/* 0999D4 8009C9D4 4E800020 */  blr

glabel OSGetArenaLo
/* 0999D8 8009C9D8 806D8730 */  lwz       r3, __OSArenaLo@sda21(r0)
/* 0999DC 8009C9DC 4E800020 */  blr

glabel OSSetArenaHi
/* 0999E0 8009C9E0 906D8B08 */  stw       r3, __OSArenaHi@sda21(r0)
/* 0999E4 8009C9E4 4E800020 */  blr

glabel OSSetArenaLo
/* 0999E8 8009C9E8 906D8730 */  stw       r3, __OSArenaLo@sda21(r0)
/* 0999EC 8009C9EC 4E800020 */  blr

# 0x8018B6B0 - 0x8018B6B8
.section .sdata, "wa"

__OSArenaLo:
	.long 0xFFFFFFFF

glabel gap_07_8018B6B4_sdata
.hidden gap_07_8018B6B4_sdata
	.long 0x00000000

# 0x8018BA88 - 0x8018BA90
.section .sbss, "wa"

__OSArenaHi:
	.skip 0x4

glabel gap_08_8018BA8C_sbss
.hidden gap_08_8018BA8C_sbss
	.skip 0x4
