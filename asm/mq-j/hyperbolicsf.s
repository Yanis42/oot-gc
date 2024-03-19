# hyperbolicsf.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800D0A54 - 0x800D0A5C

# fabsf(float)
glabel fabsf__Ff
/* 0CDA54 800D0A54 FC200A10 */  fabs      f1, f1
/* 0CDA58 800D0A58 4E800020 */  blr
