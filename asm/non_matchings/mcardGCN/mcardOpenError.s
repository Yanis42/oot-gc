glabel mcardOpenError
/* 0117F0 80016D90 7C0802A6 */  mflr    r0
/* 0117F4 80016D94 90010004 */  stw     r0, 4(r1)
/* 0117F8 80016D98 38000000 */  li      r0, 0
/* 0117FC 80016D9C 9421FFF8 */  stwu    r1, -8(r1)
/* 011800 80016DA0 90040000 */  stw     r0, 0(r4)
/* 011804 80016DA4 8003035C */  lwz     r0, 0x35c(r3)
/* 011808 80016DA8 28000017 */  cmplwi  r0, 0x17
/* 01180C 80016DAC 418100A8 */  bgt     lbl_80016E54
/* 011810 80016DB0 3CA0800F */  lis     r5, jtbl_800EA608@ha
/* 011814 80016DB4 38A5A608 */  addi    r5, r5, jtbl_800EA608@l
/* 011818 80016DB8 5400103A */  slwi    r0, r0, 2
/* 01181C 80016DBC 7C05002E */  lwzx    r0, r5, r0
/* 011820 80016DC0 7C0903A6 */  mtctr   r0
/* 011824 80016DC4 4E800420 */  bctr    
.global lbl_80016DC8
lbl_80016DC8:
/* 011828 80016DC8 38A40000 */  addi    r5, r4, 0
/* 01182C 80016DCC 38800001 */  li      r4, 1
/* 011830 80016DD0 480000A1 */  bl      mcardMenu
/* 011834 80016DD4 48000088 */  b       lbl_80016E5C
.global lbl_80016DD8
lbl_80016DD8:
/* 011838 80016DD8 38A40000 */  addi    r5, r4, 0
/* 01183C 80016DDC 38800002 */  li      r4, 2
/* 011840 80016DE0 48000091 */  bl      mcardMenu
/* 011844 80016DE4 48000078 */  b       lbl_80016E5C
.global lbl_80016DE8
lbl_80016DE8:
/* 011848 80016DE8 38A40000 */  addi    r5, r4, 0
/* 01184C 80016DEC 38800003 */  li      r4, 3
/* 011850 80016DF0 48000081 */  bl      mcardMenu
/* 011854 80016DF4 48000068 */  b       lbl_80016E5C
.global lbl_80016DF8
lbl_80016DF8:
/* 011858 80016DF8 38A40000 */  addi    r5, r4, 0
/* 01185C 80016DFC 38800004 */  li      r4, 4
/* 011860 80016E00 48000071 */  bl      mcardMenu
/* 011864 80016E04 48000058 */  b       lbl_80016E5C
.global lbl_80016E08
lbl_80016E08:
/* 011868 80016E08 38A40000 */  addi    r5, r4, 0
/* 01186C 80016E0C 38800005 */  li      r4, 5
/* 011870 80016E10 48000061 */  bl      mcardMenu
/* 011874 80016E14 48000048 */  b       lbl_80016E5C
.global lbl_80016E18
lbl_80016E18:
/* 011878 80016E18 38A40000 */  addi    r5, r4, 0
/* 01187C 80016E1C 38800007 */  li      r4, 7
/* 011880 80016E20 48000051 */  bl      mcardMenu
/* 011884 80016E24 48000038 */  b       lbl_80016E5C
.global lbl_80016E28
lbl_80016E28:
/* 011888 80016E28 38000004 */  li      r0, 4
/* 01188C 80016E2C 90040000 */  stw     r0, 0(r4)
/* 011890 80016E30 4800002C */  b       lbl_80016E5C
.global lbl_80016E34
lbl_80016E34:
/* 011894 80016E34 38A40000 */  addi    r5, r4, 0
/* 011898 80016E38 38800018 */  li      r4, 0x18
/* 01189C 80016E3C 48000035 */  bl      mcardMenu
/* 0118A0 80016E40 4800001C */  b       lbl_80016E5C
.global lbl_80016E44
lbl_80016E44:
/* 0118A4 80016E44 38A40000 */  addi    r5, r4, 0
/* 0118A8 80016E48 38800019 */  li      r4, 0x19
/* 0118AC 80016E4C 48000025 */  bl      mcardMenu
/* 0118B0 80016E50 4800000C */  b       lbl_80016E5C
.global lbl_80016E54
lbl_80016E54:
/* 0118B4 80016E54 38600000 */  li      r3, 0
/* 0118B8 80016E58 48000008 */  b       lbl_80016E60
lbl_80016E5C:
/* 0118BC 80016E5C 38600001 */  li      r3, 1
lbl_80016E60:
/* 0118C0 80016E60 8001000C */  lwz     r0, 0xc(r1)
/* 0118C4 80016E64 38210008 */  addi    r1, r1, 8
/* 0118C8 80016E68 7C0803A6 */  mtlr    r0
/* 0118CC 80016E6C 4E800020 */  blr     

.section .data

jtbl_800EA608:
    .word lbl_80016E54
    .word lbl_80016E54
    .word lbl_80016DE8
    .word lbl_80016DC8
    .word lbl_80016E28
    .word lbl_80016DD8
    .word lbl_80016E08
    .word lbl_80016E54
    .word lbl_80016E54
    .word lbl_80016E54
    .word lbl_80016E54
    .word lbl_80016E54
    .word lbl_80016E54
    .word lbl_80016E08
    .word lbl_80016E54
    .word lbl_80016E54
    .word lbl_80016DF8
    .word lbl_80016E54
    .word lbl_80016E44
    .word lbl_80016E18
    .word lbl_80016E18
    .word lbl_80016E54
    .word lbl_80016E54
    .word lbl_80016E34
