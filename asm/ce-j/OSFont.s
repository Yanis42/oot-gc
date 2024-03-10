# OSFont.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel OSGetFontEncode
/* 099704 8009ECA4 A06D8758 */  lhz     r3, fontEncode$80@sda21(r13)
/* 099708 8009ECA8 28030001 */  cmplwi  r3, 1
/* 09970C 8009ECAC 4C810020 */  blelr   
/* 099710 8009ECB0 3C608000 */  lis     r3, 0x8000
/* 099714 8009ECB4 800300CC */  lwz     r0, 0xcc(r3)
/* 099718 8009ECB8 2C000000 */  cmpwi   r0, 0
/* 09971C 8009ECBC 4182000C */  beq     lbl_8009ECC8
/* 099720 8009ECC0 4180002C */  blt     lbl_8009ECEC
/* 099724 8009ECC4 48000028 */  b       lbl_8009ECEC
lbl_8009ECC8:
/* 099728 8009ECC8 3C60CC00 */  lis     r3, VI_REGS_BASE@ha
/* 09972C 8009ECCC A003206E */  lhz     r0, (VI_REGS_BASE + VI_SEL)@l(r3)
/* 099730 8009ECD0 540007BD */  rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 099734 8009ECD4 4182000C */  beq     lbl_8009ECE0
/* 099738 8009ECD8 38000001 */  li      r0, 1
/* 09973C 8009ECDC 48000008 */  b       lbl_8009ECE4
lbl_8009ECE0:
/* 099740 8009ECE0 38000000 */  li      r0, 0
lbl_8009ECE4:
/* 099744 8009ECE4 B00D8758 */  sth     r0, fontEncode$80@sda21(r13)
/* 099748 8009ECE8 4800000C */  b       lbl_8009ECF4
lbl_8009ECEC:
/* 09974C 8009ECEC 38000000 */  li      r0, 0
/* 099750 8009ECF0 B00D8758 */  sth     r0, fontEncode$80@sda21(r13)
lbl_8009ECF4:
/* 099754 8009ECF4 A06D8758 */  lhz     r3, fontEncode$80@sda21(r13)
/* 099758 8009ECF8 4E800020 */  blr     

.section .sdata, "wa"

.balign 8

/* 000F16B8 80135438 0002 */
fontEncode$80:
    .short 0xFFFF
