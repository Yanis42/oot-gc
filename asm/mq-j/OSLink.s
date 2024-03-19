# OSLink.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009EAB4 - 0x8009EACC

glabel __OSModuleInit
/* 09BAB4 8009EAB4 3C808000 */  lis       r4, 0x8000
/* 09BAB8 8009EAB8 38000000 */  li        r0, 0x0
/* 09BABC 8009EABC 900430CC */  stw       r0, 0x30cc(r4)
/* 09BAC0 8009EAC0 900430C8 */  stw       r0, 0x30c8(r4)
/* 09BAC4 8009EAC4 900430D0 */  stw       r0, 0x30d0(r4)
/* 09BAC8 8009EAC8 4E800020 */  blr
