# e_asin.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CFC60 - 0x800CFC68

# fabs(double)
glabel fabs__Fd
/* 0CCC60 800CFC60 FC200A10 */  fabs      f1, f1
/* 0CCC64 800CFC64 4E800020 */  blr
