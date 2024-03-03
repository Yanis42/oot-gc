glabel AudioDecode
/* 00B9E8 80010F88 7C0802A6 */  mflr    r0
/* 00B9EC 80010F8C 3C808010 */  lis     r4, ActivePlayer@ha
/* 00B9F0 80010F90 90010004 */  stw     r0, 4(r1)
/* 00B9F4 80010F94 9421FFE0 */  stwu    r1, -0x20(r1)
/* 00B9F8 80010F98 93E1001C */  stw     r31, 0x1c(r1)
/* 00B9FC 80010F9C 3BE49C80 */  addi    r31, r4, ActivePlayer@l
/* 00BA00 80010FA0 93C10018 */  stw     r30, 0x18(r1)
/* 00BA04 80010FA4 3BDF006C */  addi    r30, r31, 0x6c
/* 00BA08 80010FA8 93A10014 */  stw     r29, 0x14(r1)
/* 00BA0C 80010FAC 93810010 */  stw     r28, 0x10(r1)
/* 00BA10 80010FB0 801F006C */  lwz     r0, 0x6c(r31)
/* 00BA14 80010FB4 80A30000 */  lwz     r5, 0(r3)
/* 00BA18 80010FB8 5403103A */  slwi    r3, r0, 2
/* 00BA1C 80010FBC 3B830008 */  addi    r28, r3, 8
/* 00BA20 80010FC0 3BA50008 */  addi    r29, r5, 8
/* 00BA24 80010FC4 7F85E214 */  add     r28, r5, r28
/* 00BA28 80010FC8 48000099 */  bl      PopFreeAudioBuffer
/* 00BA2C 80010FCC 801E0000 */  lwz     r0, 0(r30)
/* 00BA30 80010FD0 3BC30000 */  addi    r30, r3, 0
/* 00BA34 80010FD4 28000000 */  cmplwi  r0, 0
/* 00BA38 80010FD8 7C0903A6 */  mtctr   r0
/* 00BA3C 80010FDC 40810064 */  ble     lbl_80011040
lbl_80010FE0:
/* 00BA40 80010FE0 881F0070 */  lbz     r0, 0x70(r31)
/* 00BA44 80010FE4 2C000001 */  cmpwi   r0, 1
/* 00BA48 80010FE8 41820008 */  beq     lbl_80010FF0
/* 00BA4C 80010FEC 48000040 */  b       lbl_8001102C
lbl_80010FF0:
/* 00BA50 80010FF0 3C608010 */  lis     r3, ActivePlayer@ha
/* 00BA54 80010FF4 80DD0000 */  lwz     r6, 0(r29)
/* 00BA58 80010FF8 38839C80 */  addi    r4, r3, ActivePlayer@l
/* 00BA5C 80010FFC 807E0000 */  lwz     r3, 0(r30)
/* 00BA60 80011000 800400EC */  lwz     r0, 0xec(r4)
/* 00BA64 80011004 38A00000 */  li      r5, 0
/* 00BA68 80011008 7C0601D6 */  mullw   r0, r6, r0
/* 00BA6C 8001100C 7C9C0214 */  add     r4, r28, r0
/* 00BA70 80011010 480B7A1D */  bl      THPAudioDecode
/* 00BA74 80011014 907E0008 */  stw     r3, 8(r30)
/* 00BA78 80011018 7FC3F378 */  mr      r3, r30
/* 00BA7C 8001101C 801E0000 */  lwz     r0, 0(r30)
/* 00BA80 80011020 901E0004 */  stw     r0, 4(r30)
/* 00BA84 80011024 480000E5 */  bl      PushDecodedAudioBuffer
/* 00BA88 80011028 48000018 */  b       lbl_80011040
lbl_8001102C:
/* 00BA8C 8001102C 801D0000 */  lwz     r0, 0(r29)
/* 00BA90 80011030 3BBD0004 */  addi    r29, r29, 4
/* 00BA94 80011034 3BFF0001 */  addi    r31, r31, 1
/* 00BA98 80011038 7F9C0214 */  add     r28, r28, r0
/* 00BA9C 8001103C 4200FFA4 */  bdnz    lbl_80010FE0
lbl_80011040:
/* 00BAA0 80011040 80010024 */  lwz     r0, 0x24(r1)
/* 00BAA4 80011044 83E1001C */  lwz     r31, 0x1c(r1)
/* 00BAA8 80011048 83C10018 */  lwz     r30, 0x18(r1)
/* 00BAAC 8001104C 7C0803A6 */  mtlr    r0
/* 00BAB0 80011050 83A10014 */  lwz     r29, 0x14(r1)
/* 00BAB4 80011054 83810010 */  lwz     r28, 0x10(r1)
/* 00BAB8 80011058 38210020 */  addi    r1, r1, 0x20
/* 00BABC 8001105C 4E800020 */  blr     