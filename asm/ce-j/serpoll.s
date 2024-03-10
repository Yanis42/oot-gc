# serpoll.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel TRKTestForPacket
/* 0C4868 800C9E08 7C0802A6 */  mflr    r0
/* 0C486C 800C9E0C 90010004 */  stw     r0, 4(r1)
/* 0C4870 800C9E10 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C4874 800C9E14 93E10014 */  stw     r31, 0x14(r1)
/* 0C4878 800C9E18 93C10010 */  stw     r30, 0x10(r1)
/* 0C487C 800C9E1C 4800380D */  bl      TRKPollUART
/* 0C4880 800C9E20 7C7E1B79 */  or.     r30, r3, r3
/* 0C4884 800C9E24 40810088 */  ble     lbl_800C9EAC
/* 0C4888 800C9E28 38610008 */  addi    r3, r1, 8
/* 0C488C 800C9E2C 3881000C */  addi    r4, r1, 0xc
/* 0C4890 800C9E30 4BFFF811 */  bl      TRKGetFreeBuffer
/* 0C4894 800C9E34 2C1E0880 */  cmpwi   r30, 0x880
/* 0C4898 800C9E38 4081004C */  ble     lbl_800C9E84
/* 0C489C 800C9E3C 4800002C */  b       lbl_800C9E68
lbl_800C9E40:
/* 0C48A0 800C9E40 2C1E0880 */  cmpwi   r30, 0x880
/* 0C48A4 800C9E44 4081000C */  ble     lbl_800C9E50
/* 0C48A8 800C9E48 3BE00880 */  li      r31, 0x880
/* 0C48AC 800C9E4C 48000008 */  b       lbl_800C9E54
lbl_800C9E50:
/* 0C48B0 800C9E50 7FDFF378 */  mr      r31, r30
lbl_800C9E54:
/* 0C48B4 800C9E54 8061000C */  lwz     r3, 0xc(r1)
/* 0C48B8 800C9E58 389F0000 */  addi    r4, r31, 0
/* 0C48BC 800C9E5C 38630010 */  addi    r3, r3, 0x10
/* 0C48C0 800C9E60 480037F9 */  bl      TRK_ReadUARTN
/* 0C48C4 800C9E64 7FDFF050 */  subf    r30, r31, r30
lbl_800C9E68:
/* 0C48C8 800C9E68 2C1E0000 */  cmpwi   r30, 0
/* 0C48CC 800C9E6C 4181FFD4 */  bgt     lbl_800C9E40
/* 0C48D0 800C9E70 8061000C */  lwz     r3, 0xc(r1)
/* 0C48D4 800C9E74 388000FF */  li      r4, 0xff
/* 0C48D8 800C9E78 38A00006 */  li      r5, 6
/* 0C48DC 800C9E7C 480002D9 */  bl      TRKStandardACK
/* 0C48E0 800C9E80 4800002C */  b       lbl_800C9EAC
lbl_800C9E84:
/* 0C48E4 800C9E84 8061000C */  lwz     r3, 0xc(r1)
/* 0C48E8 800C9E88 389E0000 */  addi    r4, r30, 0
/* 0C48EC 800C9E8C 38630010 */  addi    r3, r3, 0x10
/* 0C48F0 800C9E90 480037C9 */  bl      TRK_ReadUARTN
/* 0C48F4 800C9E94 2C030000 */  cmpwi   r3, 0
/* 0C48F8 800C9E98 40820014 */  bne     lbl_800C9EAC
/* 0C48FC 800C9E9C 8061000C */  lwz     r3, 0xc(r1)
/* 0C4900 800C9EA0 93C30008 */  stw     r30, 8(r3)
/* 0C4904 800C9EA4 80610008 */  lwz     r3, 8(r1)
/* 0C4908 800C9EA8 48000018 */  b       lbl_800C9EC0
lbl_800C9EAC:
/* 0C490C 800C9EAC 80610008 */  lwz     r3, 8(r1)
/* 0C4910 800C9EB0 2C03FFFF */  cmpwi   r3, -1
/* 0C4914 800C9EB4 41820008 */  beq     lbl_800C9EBC
/* 0C4918 800C9EB8 4BFFF851 */  bl      TRKReleaseBuffer
lbl_800C9EBC:
/* 0C491C 800C9EBC 3860FFFF */  li      r3, -1
lbl_800C9EC0:
/* 0C4920 800C9EC0 83E10014 */  lwz     r31, 0x14(r1)
/* 0C4924 800C9EC4 83C10010 */  lwz     r30, 0x10(r1)
/* 0C4928 800C9EC8 38210018 */  addi    r1, r1, 0x18
/* 0C492C 800C9ECC 80010004 */  lwz     r0, 4(r1)
/* 0C4930 800C9ED0 7C0803A6 */  mtlr    r0
/* 0C4934 800C9ED4 4E800020 */  blr     

glabel TRKGetInput
/* 0C4938 800C9ED8 7C0802A6 */  mflr    r0
/* 0C493C 800C9EDC 90010004 */  stw     r0, 4(r1)
/* 0C4940 800C9EE0 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C4944 800C9EE4 93E10014 */  stw     r31, 0x14(r1)
/* 0C4948 800C9EE8 93C10010 */  stw     r30, 0x10(r1)
/* 0C494C 800C9EEC 4BFFFF1D */  bl      TRKTestForPacket
/* 0C4950 800C9EF0 3BC30000 */  addi    r30, r3, 0
/* 0C4954 800C9EF4 2C1EFFFF */  cmpwi   r30, -1
/* 0C4958 800C9EF8 41820044 */  beq     lbl_800C9F3C
/* 0C495C 800C9EFC 7FC3F378 */  mr      r3, r30
/* 0C4960 800C9F00 4BFFF7DD */  bl      TRKGetBuffer
/* 0C4964 800C9F04 3BE30000 */  addi    r31, r3, 0
/* 0C4968 800C9F08 38800000 */  li      r4, 0
/* 0C496C 800C9F0C 4BFFF8A5 */  bl      TRKSetBufferPosition
/* 0C4970 800C9F10 387F0000 */  addi    r3, r31, 0
/* 0C4974 800C9F14 38810008 */  addi    r4, r1, 8
/* 0C4978 800C9F18 4BFFFC1D */  bl      TRKReadBuffer1_ui8
/* 0C497C 800C9F1C 88010008 */  lbz     r0, 8(r1)
/* 0C4980 800C9F20 28000080 */  cmplwi  r0, 0x80
/* 0C4984 800C9F24 40800010 */  bge     lbl_800C9F34
/* 0C4988 800C9F28 7FC3F378 */  mr      r3, r30
/* 0C498C 800C9F2C 48000029 */  bl      TRKProcessInput
/* 0C4990 800C9F30 4800000C */  b       lbl_800C9F3C
lbl_800C9F34:
/* 0C4994 800C9F34 7FC3F378 */  mr      r3, r30
/* 0C4998 800C9F38 4BFFF7D1 */  bl      TRKReleaseBuffer
lbl_800C9F3C:
/* 0C499C 800C9F3C 83E10014 */  lwz     r31, 0x14(r1)
/* 0C49A0 800C9F40 83C10010 */  lwz     r30, 0x10(r1)
/* 0C49A4 800C9F44 38210018 */  addi    r1, r1, 0x18
/* 0C49A8 800C9F48 80010004 */  lwz     r0, 4(r1)
/* 0C49AC 800C9F4C 7C0803A6 */  mtlr    r0
/* 0C49B0 800C9F50 4E800020 */  blr     

glabel TRKProcessInput
/* 0C49B4 800C9F54 7C0802A6 */  mflr    r0
/* 0C49B8 800C9F58 38800002 */  li      r4, 2
/* 0C49BC 800C9F5C 90010004 */  stw     r0, 4(r1)
/* 0C49C0 800C9F60 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C49C4 800C9F64 93E10014 */  stw     r31, 0x14(r1)
/* 0C49C8 800C9F68 3BE30000 */  addi    r31, r3, 0
/* 0C49CC 800C9F6C 38610008 */  addi    r3, r1, 8
/* 0C49D0 800C9F70 4BFFF459 */  bl      TRKConstructEvent
/* 0C49D4 800C9F74 3C608013 */  lis     r3, gTRKFramingState@ha
/* 0C49D8 800C9F78 93E10010 */  stw     r31, 0x10(r1)
/* 0C49DC 800C9F7C 38834530 */  addi    r4, r3, gTRKFramingState@l
/* 0C49E0 800C9F80 38610008 */  addi    r3, r1, 8
/* 0C49E4 800C9F84 3800FFFF */  li      r0, -1
/* 0C49E8 800C9F88 90040000 */  stw     r0, 0(r4)
/* 0C49EC 800C9F8C 4BFFF35D */  bl      TRKPostEvent
/* 0C49F0 800C9F90 83E10014 */  lwz     r31, 0x14(r1)
/* 0C49F4 800C9F94 38210018 */  addi    r1, r1, 0x18
/* 0C49F8 800C9F98 80010004 */  lwz     r0, 4(r1)
/* 0C49FC 800C9F9C 7C0803A6 */  mtlr    r0
/* 0C4A00 800C9FA0 4E800020 */  blr     

glabel TRKInitializeSerialHandler
/* 0C4A04 800C9FA4 3C608013 */  lis     r3, gTRKFramingState@ha
/* 0C4A08 800C9FA8 38834530 */  addi    r4, r3, gTRKFramingState@l
/* 0C4A0C 800C9FAC 3800FFFF */  li      r0, -1
/* 0C4A10 800C9FB0 90040000 */  stw     r0, 0(r4)
/* 0C4A14 800C9FB4 38000000 */  li      r0, 0
/* 0C4A18 800C9FB8 38600000 */  li      r3, 0
/* 0C4A1C 800C9FBC 98040008 */  stb     r0, 8(r4)
/* 0C4A20 800C9FC0 9004000C */  stw     r0, 0xc(r4)
/* 0C4A24 800C9FC4 4E800020 */  blr     

glabel TRKTerminateSerialHandler
/* 0C4A28 800C9FC8 38600000 */  li      r3, 0
/* 0C4A2C 800C9FCC 4E800020 */  blr     

.section .bss, "wa"

.balign 4

/* 001315B0 80134530 0014 */
gTRKFramingState:
    .skip 20

/* 001315C4 80134544 0004 */
glabel gTRKInputPendingPtr
    .skip 4
