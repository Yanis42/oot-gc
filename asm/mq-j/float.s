# float.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800F51D8 - 0x800F51E0
.section .data, "wa"

.balign 8

glabel D_800F51D8
	.long 0x7FFFFFFF # NaN

glabel D_800F51DC
	.float inf
