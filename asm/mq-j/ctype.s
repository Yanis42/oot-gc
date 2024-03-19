# ctype.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CD180 - 0x800CD1D0

glabel toupper
/* 0CA180 800CD180 2C03FFFF */  cmpwi     r3, -0x1
/* 0CA184 800CD184 4082000C */  bne       lbl_800CD190
/* 0CA188 800CD188 3860FFFF */  li        r3, -0x1
/* 0CA18C 800CD18C 4E800020 */  blr
lbl_800CD190:
/* 0CA190 800CD190 3C80800D */  lis       r4, D_800D2190@ha
/* 0CA194 800CD194 5463063E */  clrlwi    r3, r3, 24
/* 0CA198 800CD198 38042190 */  addi      r0, r4, D_800D2190@l
/* 0CA19C 800CD19C 7C601A14 */  add       r3, r0, r3
/* 0CA1A0 800CD1A0 88630000 */  lbz       r3, 0x0(r3)
/* 0CA1A4 800CD1A4 4E800020 */  blr

glabel tolower
/* 0CA1A8 800CD1A8 2C03FFFF */  cmpwi     r3, -0x1
/* 0CA1AC 800CD1AC 4082000C */  bne       lbl_800CD1B8
/* 0CA1B0 800CD1B0 3860FFFF */  li        r3, -0x1
/* 0CA1B4 800CD1B4 4E800020 */  blr
lbl_800CD1B8:
/* 0CA1B8 800CD1B8 3C80800D */  lis       r4, D_800D2090@ha
/* 0CA1BC 800CD1BC 5463063E */  clrlwi    r3, r3, 24
/* 0CA1C0 800CD1C0 38042090 */  addi      r0, r4, D_800D2090@l
/* 0CA1C4 800CD1C4 7C601A14 */  add       r3, r0, r3
/* 0CA1C8 800CD1C8 88630000 */  lbz       r3, 0x0(r3)
/* 0CA1CC 800CD1CC 4E800020 */  blr

# 0x800D1F90 - 0x800D2290
.section .rodata, "a"

.balign 8

glabel D_800D1F90
	.long 0x01010101
	.long 0x01010101
	.long 0x01020202
	.long 0x02020101
	.long 0x01010101
	.long 0x01010101
	.long 0x01010101
	.long 0x01010101
	.long 0x04080808
	.long 0x08080808
	.long 0x08080808
	.long 0x08080808
	.long 0x30303030
	.long 0x30303030
	.long 0x30300808
	.long 0x08080808
	.long 0x08A0A0A0
	.long 0xA0A0A080
	.long 0x80808080
	.long 0x80808080
	.long 0x80808080
	.long 0x80808080
	.long 0x80808008
	.long 0x08080808
	.long 0x08606060
	.long 0x60606040
	.long 0x40404040
	.long 0x40404040
	.long 0x40404040
	.long 0x40404040
	.long 0x40404008
	.long 0x08080801
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000

glabel D_800D2090
	.long 0x00010203
	.long 0x04050607
	.long 0x08090A0B
	.long 0x0C0D0E0F
	.long 0x10111213
	.long 0x14151617
	.long 0x18191A1B
	.long 0x1C1D1E1F
	.long 0x20212223
	.long 0x24252627
	.long 0x28292A2B
	.long 0x2C2D2E2F
	.long 0x30313233
	.long 0x34353637
	.long 0x38393A3B
	.long 0x3C3D3E3F
	.long 0x40616263
	.long 0x64656667
	.long 0x68696A6B
	.long 0x6C6D6E6F
	.long 0x70717273
	.long 0x74757677
	.long 0x78797A5B
	.long 0x5C5D5E5F
	.long 0x60616263
	.long 0x64656667
	.long 0x68696A6B
	.long 0x6C6D6E6F
	.long 0x70717273
	.long 0x74757677
	.long 0x78797A7B
	.long 0x7C7D7E7F
	.long 0x80818283
	.long 0x84858687
	.long 0x88898A8B
	.long 0x8C8D8E8F
	.long 0x90919293
	.long 0x94959697
	.long 0x98999A9B
	.long 0x9C9D9E9F
	.long 0xA0A1A2A3
	.long 0xA4A5A6A7
	.long 0xA8A9AAAB
	.long 0xACADAEAF
	.long 0xB0B1B2B3
	.long 0xB4B5B6B7
	.long 0xB8B9BABB
	.long 0xBCBDBEBF
	.long 0xC0C1C2C3
	.long 0xC4C5C6C7
	.long 0xC8C9CACB
	.long 0xCCCDCECF
	.long 0xD0D1D2D3
	.long 0xD4D5D6D7
	.long 0xD8D9DADB
	.long 0xDCDDDEDF
	.long 0xE0E1E2E3
	.long 0xE4E5E6E7
	.long 0xE8E9EAEB
	.long 0xECEDEEEF
	.long 0xF0F1F2F3
	.long 0xF4F5F6F7
	.long 0xF8F9FAFB
	.long 0xFCFDFEFF

glabel D_800D2190
	.long 0x00010203
	.long 0x04050607
	.long 0x08090A0B
	.long 0x0C0D0E0F
	.long 0x10111213
	.long 0x14151617
	.long 0x18191A1B
	.long 0x1C1D1E1F
	.long 0x20212223
	.long 0x24252627
	.long 0x28292A2B
	.long 0x2C2D2E2F
	.long 0x30313233
	.long 0x34353637
	.long 0x38393A3B
	.long 0x3C3D3E3F
	.long 0x40414243
	.long 0x44454647
	.long 0x48494A4B
	.long 0x4C4D4E4F
	.long 0x50515253
	.long 0x54555657
	.long 0x58595A5B
	.long 0x5C5D5E5F
	.long 0x60414243
	.long 0x44454647
	.long 0x48494A4B
	.long 0x4C4D4E4F
	.long 0x50515253
	.long 0x54555657
	.long 0x58595A7B
	.long 0x7C7D7E7F
	.long 0x80818283
	.long 0x84858687
	.long 0x88898A8B
	.long 0x8C8D8E8F
	.long 0x90919293
	.long 0x94959697
	.long 0x98999A9B
	.long 0x9C9D9E9F
	.long 0xA0A1A2A3
	.long 0xA4A5A6A7
	.long 0xA8A9AAAB
	.long 0xACADAEAF
	.long 0xB0B1B2B3
	.long 0xB4B5B6B7
	.long 0xB8B9BABB
	.long 0xBCBDBEBF
	.long 0xC0C1C2C3
	.long 0xC4C5C6C7
	.long 0xC8C9CACB
	.long 0xCCCDCECF
	.long 0xD0D1D2D3
	.long 0xD4D5D6D7
	.long 0xD8D9DADB
	.long 0xDCDDDEDF
	.long 0xE0E1E2E3
	.long 0xE4E5E6E7
	.long 0xE8E9EAEB
	.long 0xECEDEEEF
	.long 0xF0F1F2F3
	.long 0xF4F5F6F7
	.long 0xF8F9FAFB
	.long 0xFCFDFEFF
