glabel mcardOpenDuringGameError
/* 011710 80016CB0 7C0802A6 */  mflr    r0
/* 011714 80016CB4 90010004 */  stw     r0, 4(r1)
/* 011718 80016CB8 38000000 */  li      r0, 0
/* 01171C 80016CBC 9421FFF8 */  stwu    r1, -8(r1)
/* 011720 80016CC0 90040000 */  stw     r0, 0(r4)
/* 011724 80016CC4 8003035C */  lwz     r0, 0x35c(r3)
/* 011728 80016CC8 28000017 */  cmplwi  r0, 0x17
/* 01172C 80016CCC 418100A8 */  bgt     lbl_80016D74
/* 011730 80016CD0 3CA0800F */  lis     r5, jtbl_800EA5A8@ha
/* 011734 80016CD4 38A5A5A8 */  addi    r5, r5, jtbl_800EA5A8@l
/* 011738 80016CD8 5400103A */  slwi    r0, r0, 2
/* 01173C 80016CDC 7C05002E */  lwzx    r0, r5, r0
/* 011740 80016CE0 7C0903A6 */  mtctr   r0
/* 011744 80016CE4 4E800420 */  bctr    
.global lbl_80016CE8
lbl_80016CE8:
/* 011748 80016CE8 38A40000 */  addi    r5, r4, 0
/* 01174C 80016CEC 3880000C */  li      r4, 0xc
/* 011750 80016CF0 48000181 */  bl      mcardMenu
/* 011754 80016CF4 48000088 */  b       lbl_80016D7C
.global lbl_80016CF8
lbl_80016CF8:
/* 011758 80016CF8 38A40000 */  addi    r5, r4, 0
/* 01175C 80016CFC 3880000E */  li      r4, 0xe
/* 011760 80016D00 48000171 */  bl      mcardMenu
/* 011764 80016D04 48000078 */  b       lbl_80016D7C
.global lbl_80016D08
lbl_80016D08:
/* 011768 80016D08 38A40000 */  addi    r5, r4, 0
/* 01176C 80016D0C 3880000F */  li      r4, 0xf
/* 011770 80016D10 48000161 */  bl      mcardMenu
/* 011774 80016D14 48000068 */  b       lbl_80016D7C
.global lbl_80016D18
lbl_80016D18:
/* 011778 80016D18 38A40000 */  addi    r5, r4, 0
/* 01177C 80016D1C 38800010 */  li      r4, 0x10
/* 011780 80016D20 48000151 */  bl      mcardMenu
/* 011784 80016D24 48000058 */  b       lbl_80016D7C
.global lbl_80016D28
lbl_80016D28:
/* 011788 80016D28 38A40000 */  addi    r5, r4, 0
/* 01178C 80016D2C 38800011 */  li      r4, 0x11
/* 011790 80016D30 48000141 */  bl      mcardMenu
/* 011794 80016D34 48000048 */  b       lbl_80016D7C
.global lbl_80016D38
lbl_80016D38:
/* 011798 80016D38 38A40000 */  addi    r5, r4, 0
/* 01179C 80016D3C 38800013 */  li      r4, 0x13
/* 0117A0 80016D40 48000131 */  bl      mcardMenu
/* 0117A4 80016D44 48000038 */  b       lbl_80016D7C
.global lbl_80016D48
lbl_80016D48:
/* 0117A8 80016D48 38000004 */  li      r0, 4
/* 0117AC 80016D4C 90040000 */  stw     r0, 0(r4)
/* 0117B0 80016D50 4800002C */  b       lbl_80016D7C
.global lbl_80016D54
lbl_80016D54:
/* 0117B4 80016D54 38A40000 */  addi    r5, r4, 0
/* 0117B8 80016D58 3880001B */  li      r4, 0x1b
/* 0117BC 80016D5C 48000115 */  bl      mcardMenu
/* 0117C0 80016D60 4800001C */  b       lbl_80016D7C
.global lbl_80016D64
lbl_80016D64:
/* 0117C4 80016D64 38A40000 */  addi    r5, r4, 0
/* 0117C8 80016D68 38800018 */  li      r4, 0x18
/* 0117CC 80016D6C 48000105 */  bl      mcardMenu
/* 0117D0 80016D70 4800000C */  b       lbl_80016D7C
.global lbl_80016D74
lbl_80016D74:
/* 0117D4 80016D74 38600000 */  li      r3, 0
/* 0117D8 80016D78 48000008 */  b       lbl_80016D80
lbl_80016D7C:
/* 0117DC 80016D7C 38600001 */  li      r3, 1
lbl_80016D80:
/* 0117E0 80016D80 8001000C */  lwz     r0, 0xc(r1)
/* 0117E4 80016D84 38210008 */  addi    r1, r1, 8
/* 0117E8 80016D88 7C0803A6 */  mtlr    r0
/* 0117EC 80016D8C 4E800020 */  blr     

.section .data

jtbl_800EA5A8:
    .word lbl_80016D74
    .word lbl_80016D74
    .word lbl_80016D08
    .word lbl_80016CE8
    .word lbl_80016D48
    .word lbl_80016CF8
    .word lbl_80016D28
    .word lbl_80016D74
    .word lbl_80016D74
    .word lbl_80016D74
    .word lbl_80016D74
    .word lbl_80016D74
    .word lbl_80016D74
    .word lbl_80016D28
    .word lbl_80016D74
    .word lbl_80016D74
    .word lbl_80016D18
    .word lbl_80016D74
    .word lbl_80016D54
    .word lbl_80016D38
    .word lbl_80016D38
    .word lbl_80016D74
    .word lbl_80016D74
    .word lbl_80016D64
