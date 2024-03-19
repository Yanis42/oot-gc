# misc_io.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CD910 - 0x800CD914

glabel __stdio_atexit
/* 0CA910 800CD910 4E800020 */  blr
