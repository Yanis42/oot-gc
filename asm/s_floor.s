# s_floor.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel floor
/* 0CC53C 800D1ADC 9421FFF0 */  stwu    r1, -0x10(r1)
/* 0CC540 800D1AE0 D8210008 */  stfd    f1, 8(r1)
/* 0CC544 800D1AE4 80010008 */  lwz     r0, 8(r1)
/* 0CC548 800D1AE8 80E1000C */  lwz     r7, 0xc(r1)
/* 0CC54C 800D1AEC 5403657E */  rlwinm  r3, r0, 0xc, 0x15, 0x1f
/* 0CC550 800D1AF0 3883FC01 */  addi    r4, r3, -1023
/* 0CC554 800D1AF4 2C040014 */  cmpwi   r4, 0x14
/* 0CC558 800D1AF8 7C060378 */  mr      r6, r0
/* 0CC55C 800D1AFC 408000A4 */  bge     lbl_800D1BA0
/* 0CC560 800D1B00 2C040000 */  cmpwi   r4, 0
/* 0CC564 800D1B04 40800048 */  bge     lbl_800D1B4C
/* 0CC568 800D1B08 C8428690 */  lfd     f2, D_80136390@sda21(r2)
/* 0CC56C 800D1B0C C8210008 */  lfd     f1, 8(r1)
/* 0CC570 800D1B10 C8028698 */  lfd     f0, D_80136398@sda21(r2)
/* 0CC574 800D1B14 FC22082A */  fadd    f1, f2, f1
/* 0CC578 800D1B18 FC010040 */  fcmpo   cr0, f1, f0
/* 0CC57C 800D1B1C 40810118 */  ble     lbl_800D1C34
/* 0CC580 800D1B20 2C060000 */  cmpwi   r6, 0
/* 0CC584 800D1B24 41800010 */  blt     lbl_800D1B34
/* 0CC588 800D1B28 38E00000 */  li      r7, 0
/* 0CC58C 800D1B2C 38C00000 */  li      r6, 0
/* 0CC590 800D1B30 48000104 */  b       lbl_800D1C34
lbl_800D1B34:
/* 0CC594 800D1B34 54C0007E */  clrlwi  r0, r6, 1
/* 0CC598 800D1B38 7C003B79 */  or.     r0, r0, r7
/* 0CC59C 800D1B3C 418200F8 */  beq     lbl_800D1C34
/* 0CC5A0 800D1B40 3CC0BFF0 */  lis     r6, 0xbff0
/* 0CC5A4 800D1B44 38E00000 */  li      r7, 0
/* 0CC5A8 800D1B48 480000EC */  b       lbl_800D1C34
lbl_800D1B4C:
/* 0CC5AC 800D1B4C 3C600010 */  lis     r3, 0x10
/* 0CC5B0 800D1B50 3803FFFF */  addi    r0, r3, -1
/* 0CC5B4 800D1B54 7C052630 */  sraw    r5, r0, r4
/* 0CC5B8 800D1B58 7CC02838 */  and     r0, r6, r5
/* 0CC5BC 800D1B5C 7CE00379 */  or.     r0, r7, r0
/* 0CC5C0 800D1B60 4082000C */  bne     lbl_800D1B6C
/* 0CC5C4 800D1B64 C8210008 */  lfd     f1, 8(r1)
/* 0CC5C8 800D1B68 480000D8 */  b       lbl_800D1C40
lbl_800D1B6C:
/* 0CC5CC 800D1B6C C8428690 */  lfd     f2, D_80136390@sda21(r2)
/* 0CC5D0 800D1B70 C8210008 */  lfd     f1, 8(r1)
/* 0CC5D4 800D1B74 C8028698 */  lfd     f0, D_80136398@sda21(r2)
/* 0CC5D8 800D1B78 FC22082A */  fadd    f1, f2, f1
/* 0CC5DC 800D1B7C FC010040 */  fcmpo   cr0, f1, f0
/* 0CC5E0 800D1B80 408100B4 */  ble     lbl_800D1C34
/* 0CC5E4 800D1B84 2C060000 */  cmpwi   r6, 0
/* 0CC5E8 800D1B88 4080000C */  bge     lbl_800D1B94
/* 0CC5EC 800D1B8C 7C602630 */  sraw    r0, r3, r4
/* 0CC5F0 800D1B90 7CC60214 */  add     r6, r6, r0
lbl_800D1B94:
/* 0CC5F4 800D1B94 7CC62878 */  andc    r6, r6, r5
/* 0CC5F8 800D1B98 38E00000 */  li      r7, 0
/* 0CC5FC 800D1B9C 48000098 */  b       lbl_800D1C34
lbl_800D1BA0:
/* 0CC600 800D1BA0 2C040033 */  cmpwi   r4, 0x33
/* 0CC604 800D1BA4 40810020 */  ble     lbl_800D1BC4
/* 0CC608 800D1BA8 2C040400 */  cmpwi   r4, 0x400
/* 0CC60C 800D1BAC 40820010 */  bne     lbl_800D1BBC
/* 0CC610 800D1BB0 C8010008 */  lfd     f0, 8(r1)
/* 0CC614 800D1BB4 FC20002A */  fadd    f1, f0, f0
/* 0CC618 800D1BB8 48000088 */  b       lbl_800D1C40
lbl_800D1BBC:
/* 0CC61C 800D1BBC C8210008 */  lfd     f1, 8(r1)
/* 0CC620 800D1BC0 48000080 */  b       lbl_800D1C40
lbl_800D1BC4:
/* 0CC624 800D1BC4 3804FFEC */  addi    r0, r4, -20
/* 0CC628 800D1BC8 3860FFFF */  li      r3, -1
/* 0CC62C 800D1BCC 7C650430 */  srw     r5, r3, r0
/* 0CC630 800D1BD0 7CE02839 */  and.    r0, r7, r5
/* 0CC634 800D1BD4 4082000C */  bne     lbl_800D1BE0
/* 0CC638 800D1BD8 C8210008 */  lfd     f1, 8(r1)
/* 0CC63C 800D1BDC 48000064 */  b       lbl_800D1C40
lbl_800D1BE0:
/* 0CC640 800D1BE0 C8428690 */  lfd     f2, D_80136390@sda21(r2)
/* 0CC644 800D1BE4 C8210008 */  lfd     f1, 8(r1)
/* 0CC648 800D1BE8 C8028698 */  lfd     f0, D_80136398@sda21(r2)
/* 0CC64C 800D1BEC FC22082A */  fadd    f1, f2, f1
/* 0CC650 800D1BF0 FC010040 */  fcmpo   cr0, f1, f0
/* 0CC654 800D1BF4 40810040 */  ble     lbl_800D1C34
/* 0CC658 800D1BF8 2C060000 */  cmpwi   r6, 0
/* 0CC65C 800D1BFC 40800034 */  bge     lbl_800D1C30
/* 0CC660 800D1C00 2C040014 */  cmpwi   r4, 0x14
/* 0CC664 800D1C04 4082000C */  bne     lbl_800D1C10
/* 0CC668 800D1C08 38C60001 */  addi    r6, r6, 1
/* 0CC66C 800D1C0C 48000024 */  b       lbl_800D1C30
lbl_800D1C10:
/* 0CC670 800D1C10 20040034 */  subfic  r0, r4, 0x34
/* 0CC674 800D1C14 38600001 */  li      r3, 1
/* 0CC678 800D1C18 7C600030 */  slw     r0, r3, r0
/* 0CC67C 800D1C1C 7C070214 */  add     r0, r7, r0
/* 0CC680 800D1C20 7C003840 */  cmplw   r0, r7
/* 0CC684 800D1C24 40800008 */  bge     lbl_800D1C2C
/* 0CC688 800D1C28 38C60001 */  addi    r6, r6, 1
lbl_800D1C2C:
/* 0CC68C 800D1C2C 7C070378 */  mr      r7, r0
lbl_800D1C30:
/* 0CC690 800D1C30 7CE72878 */  andc    r7, r7, r5
lbl_800D1C34:
/* 0CC694 800D1C34 90C10008 */  stw     r6, 8(r1)
/* 0CC698 800D1C38 90E1000C */  stw     r7, 0xc(r1)
/* 0CC69C 800D1C3C C8210008 */  lfd     f1, 8(r1)
lbl_800D1C40:
/* 0CC6A0 800D1C40 38210010 */  addi    r1, r1, 0x10
/* 0CC6A4 800D1C44 4E800020 */  blr     

.section .sdata2, "wa"

.balign 8

/* 000F1E90 80136390 0008 */
D_80136390:
    .double 1e+300

/* 000F1E98 80136398 0008 */
D_80136398:
    .double 0.0
