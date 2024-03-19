# common_float_tables.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800F51F0 - 0x800F5238
.section .data, "wa"

.balign 8

glabel __sincos_on_quadrant
	.float 0
	.float 1
	.float 1
	.float 0
	.float 0
	.float -1
	.float -1
	.float 0

glabel __sincos_poly
	.float 0.0000035287617
	.float 0.0000003089747
	.float -0.0003259365
	.float -0.00003657235
	.float 0.015854323
	.float 0.0024903931
	.float -0.30842513
	.float -0.08074551
	.float 1
	.float 0.7853982
