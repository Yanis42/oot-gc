# dolphin_trk.c
.include "macros.inc"

.section .init, "ax"

.balign 4

glabel __TRK_reset
/* 0022B0 800053B0 7C0802A6 */  mflr    r0
/* 0022B4 800053B4 90010004 */  stw     r0, 4(r1)
/* 0022B8 800053B8 9421FFF8 */  stwu    r1, -8(r1)
/* 0022BC 800053BC 480C7BBD */  bl      __TRK_copy_vectors
/* 0022C0 800053C0 38210008 */  addi    r1, r1, 8
/* 0022C4 800053C4 80010004 */  lwz     r0, 4(r1)
/* 0022C8 800053C8 7C0803A6 */  mtlr    r0
/* 0022CC 800053CC 4E800020 */  blr     

.section .text, "ax"

.balign 4

glabel InitMetroTRK
/* 0C78B8 800CCE58 3821FFFC */  addi    r1, r1, -4
/* 0C78BC 800CCE5C 90610000 */  stw     r3, 0(r1)
/* 0C78C0 800CCE60 3C608013 */  lis     r3, gTRKCPUState@h
/* 0C78C4 800CCE64 606346A0 */  ori     r3, r3, gTRKCPUState@l
/* 0C78C8 800CCE68 BC030000 */  stmw    r0, 0(r3)
/* 0C78CC 800CCE6C 80810000 */  lwz     r4, 0(r1)
/* 0C78D0 800CCE70 38210004 */  addi    r1, r1, 4
/* 0C78D4 800CCE74 90230004 */  stw     r1, 4(r3)
/* 0C78D8 800CCE78 9083000C */  stw     r4, 0xc(r3)
/* 0C78DC 800CCE7C 7C8802A6 */  mflr    r4
/* 0C78E0 800CCE80 90830084 */  stw     r4, 0x84(r3)
/* 0C78E4 800CCE84 90830080 */  stw     r4, 0x80(r3)
/* 0C78E8 800CCE88 7C800026 */  mfcr    r4
/* 0C78EC 800CCE8C 90830088 */  stw     r4, 0x88(r3)
/* 0C78F0 800CCE90 7C8000A6 */  mfmsr   r4
/* 0C78F4 800CCE94 60838000 */  ori     r3, r4, 0x8000
/* 0C78F8 800CCE98 68638000 */  xori    r3, r3, 0x8000
/* 0C78FC 800CCE9C 7C600124 */  mtmsr   r3
/* 0C7900 800CCEA0 7C9B03A6 */  mtspr   0x1b, r4
/* 0C7904 800CCEA4 480001A9 */  bl      TRKSaveExtended1Block
/* 0C7908 800CCEA8 3C608013 */  lis     r3, gTRKCPUState@h
/* 0C790C 800CCEAC 606346A0 */  ori     r3, r3, gTRKCPUState@l
/* 0C7910 800CCEB0 B8030000 */  .4byte 0xB8030000 /* illegal lmw    r0, 0(r3) */
/* 0C7914 800CCEB4 38000000 */  li      r0, 0
/* 0C7918 800CCEB8 7C12FBA6 */  mtspr   0x3f2, r0
/* 0C791C 800CCEBC 7C15FBA6 */  mtspr   0x3f5, r0
/* 0C7920 800CCEC0 3C208014 */  lis     r1, _db_stack_addr@h
/* 0C7924 800CCEC4 60218420 */  ori     r1, r1, _db_stack_addr@l
/* 0C7928 800CCEC8 7CA32B78 */  mr      r3, r5
/* 0C792C 800CCECC 48000601 */  bl      InitMetroTRKCommTable
/* 0C7930 800CCED0 2C030001 */  cmpwi   r3, 1
/* 0C7934 800CCED4 40820014 */  bne     lbl_800CCEE8
/* 0C7938 800CCED8 80830084 */  lwz     r4, 0x84(r3)
/* 0C793C 800CCEDC 7C8803A6 */  mtlr    r4
/* 0C7940 800CCEE0 B8030000 */  .4byte 0xB8030000 /* illegal lmw    r0, 0(r3) */
/* 0C7944 800CCEE4 4E800020 */  blr     
lbl_800CCEE8:
/* 0C7948 800CCEE8 480004DC */  b       TRK_main

glabel EnableMetroTRKInterrupts
/* 0C794C 800CCEEC 7C0802A6 */  mflr    r0
/* 0C7950 800CCEF0 90010004 */  stw     r0, 4(r1)
/* 0C7954 800CCEF4 9421FFF8 */  stwu    r1, -8(r1)
/* 0C7958 800CCEF8 48000701 */  bl      EnableEXI2Interrupts
/* 0C795C 800CCEFC 38210008 */  addi    r1, r1, 8
/* 0C7960 800CCF00 80010004 */  lwz     r0, 4(r1)
/* 0C7964 800CCF04 7C0803A6 */  mtlr    r0
/* 0C7968 800CCF08 4E800020 */  blr     

glabel TRKTargetTranslate
/* 0C796C 800CCF0C 546000BE */  clrlwi  r0, r3, 2
/* 0C7970 800CCF10 64038000 */  oris    r3, r0, 0x8000
/* 0C7974 800CCF14 4E800020 */  blr     

glabel TRK_copy_vector
/* 0C7978 800CCF18 7C0802A6 */  mflr    r0
/* 0C797C 800CCF1C 90010004 */  stw     r0, 4(r1)
/* 0C7980 800CCF20 9421FFF0 */  stwu    r1, -0x10(r1)
/* 0C7984 800CCF24 93E1000C */  stw     r31, 0xc(r1)
/* 0C7988 800CCF28 93C10008 */  stw     r30, 8(r1)
/* 0C798C 800CCF2C 7C7E1B78 */  mr      r30, r3
/* 0C7990 800CCF30 7FC3F378 */  mr      r3, r30
/* 0C7994 800CCF34 4BFFFFD9 */  bl      TRKTargetTranslate
/* 0C7998 800CCF38 3C808000 */  lis     r4, gTRKInterruptVectorTable@ha
/* 0C799C 800CCF3C 3804347C */  addi    r0, r4, gTRKInterruptVectorTable@l
/* 0C79A0 800CCF40 7C7F1B78 */  mr      r31, r3
/* 0C79A4 800CCF44 7C80F214 */  add     r4, r0, r30
/* 0C79A8 800CCF48 7FE3FB78 */  mr      r3, r31
/* 0C79AC 800CCF4C 38A00100 */  li      r5, 0x100
/* 0C79B0 800CCF50 4BF36509 */  bl      TRK_memcpy
/* 0C79B4 800CCF54 7FE3FB78 */  mr      r3, r31
/* 0C79B8 800CCF58 38800100 */  li      r4, 0x100
/* 0C79BC 800CCF5C 4BFFE8E9 */  bl      TRK_flush_cache
/* 0C79C0 800CCF60 83E1000C */  lwz     r31, 0xc(r1)
/* 0C79C4 800CCF64 83C10008 */  lwz     r30, 8(r1)
/* 0C79C8 800CCF68 38210010 */  addi    r1, r1, 0x10
/* 0C79CC 800CCF6C 80010004 */  lwz     r0, 4(r1)
/* 0C79D0 800CCF70 7C0803A6 */  mtlr    r0
/* 0C79D4 800CCF74 4E800020 */  blr     

glabel __TRK_copy_vectors
/* 0C79D8 800CCF78 7C0802A6 */  mflr    r0
/* 0C79DC 800CCF7C 90010004 */  stw     r0, 4(r1)
/* 0C79E0 800CCF80 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C79E4 800CCF84 93E10014 */  stw     r31, 0x14(r1)
/* 0C79E8 800CCF88 93C10010 */  stw     r30, 0x10(r1)
/* 0C79EC 800CCF8C 93A1000C */  stw     r29, 0xc(r1)
/* 0C79F0 800CCF90 93810008 */  stw     r28, 8(r1)
/* 0C79F4 800CCF94 38600044 */  li      r3, 0x44
/* 0C79F8 800CCF98 4BFFFF75 */  bl      TRKTargetTranslate
/* 0C79FC 800CCF9C 3BA00000 */  li      r29, 0
/* 0C7A00 800CCFA0 83830000 */  lwz     r28, 0(r3)
/* 0C7A04 800CCFA4 3C60800F */  lis     r3, TRK_ISR_OFFSETS@ha
/* 0C7A08 800CCFA8 57A4103A */  slwi    r4, r29, 2
/* 0C7A0C 800CCFAC 38033AD8 */  addi    r0, r3, TRK_ISR_OFFSETS@l
/* 0C7A10 800CCFB0 7FC02214 */  add     r30, r0, r4
/* 0C7A14 800CCFB4 48000004 */  b       lbl_800CCFB8
lbl_800CCFB8:
/* 0C7A18 800CCFB8 3BE00001 */  li      r31, 1
/* 0C7A1C 800CCFBC 48000004 */  b       lbl_800CCFC0
lbl_800CCFC0:
/* 0C7A20 800CCFC0 48000004 */  b       lbl_800CCFC4
lbl_800CCFC4:
/* 0C7A24 800CCFC4 7FE0E830 */  slw     r0, r31, r29
/* 0C7A28 800CCFC8 7F800038 */  and     r0, r28, r0
/* 0C7A2C 800CCFCC 28000000 */  cmplwi  r0, 0
/* 0C7A30 800CCFD0 4182000C */  beq     lbl_800CCFDC
/* 0C7A34 800CCFD4 807E0000 */  lwz     r3, 0(r30)
/* 0C7A38 800CCFD8 4BFFFF41 */  bl      TRK_copy_vector
lbl_800CCFDC:
/* 0C7A3C 800CCFDC 3BDE0004 */  addi    r30, r30, 4
/* 0C7A40 800CCFE0 3BBD0001 */  addi    r29, r29, 1
/* 0C7A44 800CCFE4 2C1D000E */  cmpwi   r29, 0xe
/* 0C7A48 800CCFE8 4081FFDC */  ble     lbl_800CCFC4
/* 0C7A4C 800CCFEC 83E10014 */  lwz     r31, 0x14(r1)
/* 0C7A50 800CCFF0 83C10010 */  lwz     r30, 0x10(r1)
/* 0C7A54 800CCFF4 83A1000C */  lwz     r29, 0xc(r1)
/* 0C7A58 800CCFF8 83810008 */  lwz     r28, 8(r1)
/* 0C7A5C 800CCFFC 38210018 */  addi    r1, r1, 0x18
/* 0C7A60 800CD000 80010004 */  lwz     r0, 4(r1)
/* 0C7A64 800CD004 7C0803A6 */  mtlr    r0
/* 0C7A68 800CD008 4E800020 */  blr     

glabel TRKInitializeTarget
/* 0C7A6C 800CD00C 7C0802A6 */  mflr    r0
/* 0C7A70 800CD010 90010004 */  stw     r0, 4(r1)
/* 0C7A74 800CD014 9421FFF0 */  stwu    r1, -0x10(r1)
/* 0C7A78 800CD018 93E1000C */  stw     r31, 0xc(r1)
/* 0C7A7C 800CD01C 3C608013 */  lis     r3, gTRKState@ha
/* 0C7A80 800CD020 3BE345F8 */  addi    r31, r3, gTRKState@l
/* 0C7A84 800CD024 38000001 */  li      r0, 1
/* 0C7A88 800CD028 901F0098 */  stw     r0, 0x98(r31)
/* 0C7A8C 800CD02C 4BFFE851 */  bl      __TRK_get_MSR
/* 0C7A90 800CD030 907F008C */  stw     r3, 0x8c(r31)
/* 0C7A94 800CD034 38600000 */  li      r3, 0
/* 0C7A98 800CD038 83E1000C */  lwz     r31, 0xc(r1)
/* 0C7A9C 800CD03C 38210010 */  addi    r1, r1, 0x10
/* 0C7AA0 800CD040 80010004 */  lwz     r0, 4(r1)
/* 0C7AA4 800CD044 7C0803A6 */  mtlr    r0
/* 0C7AA8 800CD048 4E800020 */  blr     

.section .data, "wa"

.balign 8

/* 000F0B58 800F3AD8 003C */
TRK_ISR_OFFSETS:
    .long 0x00000100, 0x00000200, 0x00000300, 0x00000400, 0x00000500, 0x00000600, 0x00000700, 0x00000800
    .long 0x00000900, 0x00000C00, 0x00000D00, 0x00000F00, 0x00001300, 0x00001400, 0x00001700
