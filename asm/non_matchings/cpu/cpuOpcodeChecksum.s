glabel cpuOpcodeChecksum
/* 02B8D0 80030E70 28030000 */  cmplwi  r3, 0
/* 02B8D4 80030E74 38A00020 */  li      r5, 0x20
/* 02B8D8 80030E78 4082000C */  bne     lbl_80030E84
/* 02B8DC 80030E7C 38600000 */  li      r3, 0
/* 02B8E0 80030E80 4E800020 */  blr     
lbl_80030E84:
/* 02B8E4 80030E84 546036BE */  srwi    r0, r3, 0x1a
/* 02B8E8 80030E88 2800003F */  cmplwi  r0, 0x3f
/* 02B8EC 80030E8C 418100F0 */  bgt     lbl_80030F7C
/* 02B8F0 80030E90 3C80800F */  lis     r4, jtbl_800EBF54@ha
/* 02B8F4 80030E94 3884BF54 */  addi    r4, r4, jtbl_800EBF54@l
/* 02B8F8 80030E98 5400103A */  slwi    r0, r0, 2
/* 02B8FC 80030E9C 7C04002E */  lwzx    r0, r4, r0
/* 02B900 80030EA0 7C0903A6 */  mtctr   r0
/* 02B904 80030EA4 4E800420 */  bctr    
.global lbl_80030EA8
lbl_80030EA8:
/* 02B908 80030EA8 546086FE */  rlwinm  r0, r3, 0x10, 0x1b, 0x1f
/* 02B90C 80030EAC 2C000010 */  cmpwi   r0, 0x10
/* 02B910 80030EB0 40800018 */  bge     lbl_80030EC8
/* 02B914 80030EB4 2C000004 */  cmpwi   r0, 4
/* 02B918 80030EB8 408000C4 */  bge     lbl_80030F7C
/* 02B91C 80030EBC 2C000000 */  cmpwi   r0, 0
/* 02B920 80030EC0 40800010 */  bge     lbl_80030ED0
/* 02B924 80030EC4 480000B8 */  b       lbl_80030F7C
lbl_80030EC8:
/* 02B928 80030EC8 2C000014 */  cmpwi   r0, 0x14
/* 02B92C 80030ECC 408000B0 */  bge     lbl_80030F7C
lbl_80030ED0:
/* 02B930 80030ED0 38A00004 */  li      r5, 4
/* 02B934 80030ED4 480000A8 */  b       lbl_80030F7C
.global lbl_80030ED8
lbl_80030ED8:
/* 02B938 80030ED8 546006BE */  clrlwi  r0, r3, 0x1a
/* 02B93C 80030EDC 28000018 */  cmplwi  r0, 0x18
/* 02B940 80030EE0 4181001C */  bgt     lbl_80030EFC
/* 02B944 80030EE4 3C80800F */  lis     r4, jtbl_800EBEF0@ha
/* 02B948 80030EE8 3884BEF0 */  addi    r4, r4, jtbl_800EBEF0@l
/* 02B94C 80030EEC 5400103A */  slwi    r0, r0, 2
/* 02B950 80030EF0 7C04002E */  lwzx    r0, r4, r0
/* 02B954 80030EF4 7C0903A6 */  mtctr   r0
/* 02B958 80030EF8 4E800420 */  bctr    
.global lbl_80030EFC
lbl_80030EFC:
/* 02B95C 80030EFC 54605EFE */  rlwinm  r0, r3, 0xb, 0x1b, 0x1f
/* 02B960 80030F00 2C000008 */  cmpwi   r0, 8
/* 02B964 80030F04 41820008 */  beq     lbl_80030F0C
/* 02B968 80030F08 48000074 */  b       lbl_80030F7C
lbl_80030F0C:
/* 02B96C 80030F0C 546086FE */  rlwinm  r0, r3, 0x10, 0x1b, 0x1f
/* 02B970 80030F10 2C000004 */  cmpwi   r0, 4
/* 02B974 80030F14 40800068 */  bge     lbl_80030F7C
/* 02B978 80030F18 2C000000 */  cmpwi   r0, 0
/* 02B97C 80030F1C 40800008 */  bge     lbl_80030F24
/* 02B980 80030F20 4800005C */  b       lbl_80030F7C
lbl_80030F24:
/* 02B984 80030F24 38A00004 */  li      r5, 4
/* 02B988 80030F28 48000054 */  b       lbl_80030F7C
.global lbl_80030F2C
lbl_80030F2C:
/* 02B98C 80030F2C 54605EFE */  rlwinm  r0, r3, 0xb, 0x1b, 0x1f
/* 02B990 80030F30 28000008 */  cmplwi  r0, 8
/* 02B994 80030F34 40820048 */  bne     lbl_80030F7C
/* 02B998 80030F38 546086FE */  rlwinm  r0, r3, 0x10, 0x1b, 0x1f
/* 02B99C 80030F3C 2C000004 */  cmpwi   r0, 4
/* 02B9A0 80030F40 4080003C */  bge     lbl_80030F7C
/* 02B9A4 80030F44 2C000000 */  cmpwi   r0, 0
/* 02B9A8 80030F48 40800008 */  bge     lbl_80030F50
/* 02B9AC 80030F4C 48000030 */  b       lbl_80030F7C
lbl_80030F50:
/* 02B9B0 80030F50 38A00004 */  li      r5, 4
/* 02B9B4 80030F54 48000028 */  b       lbl_80030F7C
.global lbl_80030F58
lbl_80030F58:
/* 02B9B8 80030F58 38A00001 */  li      r5, 1
/* 02B9BC 80030F5C 48000020 */  b       lbl_80030F7C
.global lbl_80030F60
lbl_80030F60:
/* 02B9C0 80030F60 38A00001 */  li      r5, 1
/* 02B9C4 80030F64 48000018 */  b       lbl_80030F7C
.global lbl_80030F68
lbl_80030F68:
/* 02B9C8 80030F68 38A00004 */  li      r5, 4
/* 02B9CC 80030F6C 48000010 */  b       lbl_80030F7C
.global lbl_80030F70
lbl_80030F70:
/* 02B9D0 80030F70 38A00010 */  li      r5, 0x10
/* 02B9D4 80030F74 48000008 */  b       lbl_80030F7C
.global lbl_80030F78
lbl_80030F78:
/* 02B9D8 80030F78 38A00010 */  li      r5, 0x10
.global lbl_80030F7C
lbl_80030F7C:
/* 02B9DC 80030F7C 7CA32B78 */  mr      r3, r5
/* 02B9E0 80030F80 4E800020 */  blr     

.section .data

jtbl_800EBEF0:
    .word lbl_80030EFC
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030F7C
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030F7C
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030EFC
    .word lbl_80030F7C

jtbl_800EBF54:
    .word lbl_80030F7C
    .word lbl_80030EA8
    .word lbl_80030F58
    .word lbl_80030F60
    .word lbl_80030F68
    .word lbl_80030F68
    .word lbl_80030F68
    .word lbl_80030F68
    .word lbl_80030F7C
    .word lbl_80030F70
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F70
    .word lbl_80030F7C
    .word lbl_80030F70
    .word lbl_80030ED8
    .word lbl_80030F2C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F68
    .word lbl_80030F68
    .word lbl_80030F68
    .word lbl_80030F68
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F78
    .word lbl_80030F78
    .word lbl_80030F78
    .word lbl_80030F78
    .word lbl_80030F78
    .word lbl_80030F78
    .word lbl_80030F78
    .word lbl_80030F7C
    .word lbl_80030F78
    .word lbl_80030F78
    .word lbl_80030F7C
    .word lbl_80030F78
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F78
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F78
    .word lbl_80030F7C
    .word lbl_80030F78
    .word lbl_80030F7C
    .word lbl_80030F78
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F7C
    .word lbl_80030F78
    .word lbl_80030F7C
    .word lbl_80030F78
