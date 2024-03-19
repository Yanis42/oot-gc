# critical_regions.ppc_eabi.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CD17C - 0x800CD180

glabel __kill_critical_regions
/* 0CA17C 800CD17C 4E800020 */  blr
