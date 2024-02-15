# strtoul.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel atoi
/* 0CB4DC 800D0A7C 7C0802A6 */  mflr    r0
/* 0CB4E0 800D0A80 90010004 */  stw     r0, 4(r1)
/* 0CB4E4 800D0A84 38000000 */  li      r0, 0
/* 0CB4E8 800D0A88 9421FFD0 */  stwu    r1, -0x30(r1)
/* 0CB4EC 800D0A8C 93E1002C */  stw     r31, 0x2c(r1)
/* 0CB4F0 800D0A90 3FE08000 */  lis     r31, 0x8000
/* 0CB4F4 800D0A94 389FFFFF */  addi    r4, r31, -1
/* 0CB4F8 800D0A98 90610018 */  stw     r3, 0x18(r1)
/* 0CB4FC 800D0A9C 3C60800D */  lis     r3, __StringRead@ha
/* 0CB500 800D0AA0 38A30740 */  addi    r5, r3, __StringRead@l
/* 0CB504 800D0AA4 9001001C */  stw     r0, 0x1c(r1)
/* 0CB508 800D0AA8 38C10018 */  addi    r6, r1, 0x18
/* 0CB50C 800D0AAC 38E1000C */  addi    r7, r1, 0xc
/* 0CB510 800D0AB0 39010010 */  addi    r8, r1, 0x10
/* 0CB514 800D0AB4 39210014 */  addi    r9, r1, 0x14
/* 0CB518 800D0AB8 3860000A */  li      r3, 0xa
/* 0CB51C 800D0ABC 48000085 */  bl      __strtoul
/* 0CB520 800D0AC0 80010014 */  lwz     r0, 0x14(r1)
/* 0CB524 800D0AC4 2C000000 */  cmpwi   r0, 0
/* 0CB528 800D0AC8 40820030 */  bne     lbl_800D0AF8
/* 0CB52C 800D0ACC 80810010 */  lwz     r4, 0x10(r1)
/* 0CB530 800D0AD0 2C040000 */  cmpwi   r4, 0
/* 0CB534 800D0AD4 40820010 */  bne     lbl_800D0AE4
/* 0CB538 800D0AD8 381FFFFF */  addi    r0, r31, -1
/* 0CB53C 800D0ADC 7C030040 */  cmplw   r3, r0
/* 0CB540 800D0AE0 41810018 */  bgt     lbl_800D0AF8
lbl_800D0AE4:
/* 0CB544 800D0AE4 2C040000 */  cmpwi   r4, 0
/* 0CB548 800D0AE8 41820038 */  beq     lbl_800D0B20
/* 0CB54C 800D0AEC 3C008000 */  lis     r0, 0x8000
/* 0CB550 800D0AF0 7C030040 */  cmplw   r3, r0
/* 0CB554 800D0AF4 4081002C */  ble     lbl_800D0B20
lbl_800D0AF8:
/* 0CB558 800D0AF8 80010010 */  lwz     r0, 0x10(r1)
/* 0CB55C 800D0AFC 2C000000 */  cmpwi   r0, 0
/* 0CB560 800D0B00 4182000C */  beq     lbl_800D0B0C
/* 0CB564 800D0B04 3C608000 */  lis     r3, 0x8000
/* 0CB568 800D0B08 4800000C */  b       lbl_800D0B14
lbl_800D0B0C:
/* 0CB56C 800D0B0C 3C608000 */  lis     r3, 0x8000
/* 0CB570 800D0B10 3863FFFF */  addi    r3, r3, -1
lbl_800D0B14:
/* 0CB574 800D0B14 38000022 */  li      r0, 0x22
/* 0CB578 800D0B18 900D8FF8 */  stw     r0, errno@sda21(r13)
/* 0CB57C 800D0B1C 48000010 */  b       lbl_800D0B2C
lbl_800D0B20:
/* 0CB580 800D0B20 2C040000 */  cmpwi   r4, 0
/* 0CB584 800D0B24 41820008 */  beq     lbl_800D0B2C
/* 0CB588 800D0B28 7C6300D0 */  neg     r3, r3
lbl_800D0B2C:
/* 0CB58C 800D0B2C 80010034 */  lwz     r0, 0x34(r1)
/* 0CB590 800D0B30 83E1002C */  lwz     r31, 0x2c(r1)
/* 0CB594 800D0B34 38210030 */  addi    r1, r1, 0x30
/* 0CB598 800D0B38 7C0803A6 */  mtlr    r0
/* 0CB59C 800D0B3C 4E800020 */  blr     

glabel __strtoul
/* 0CB5A0 800D0B40 7C0802A6 */  mflr    r0
/* 0CB5A4 800D0B44 90010004 */  stw     r0, 4(r1)
/* 0CB5A8 800D0B48 38000000 */  li      r0, 0
/* 0CB5AC 800D0B4C 9421FFA0 */  stwu    r1, -0x60(r1)
/* 0CB5B0 800D0B50 BE410028 */  stmw    r18, 0x28(r1)
/* 0CB5B4 800D0B54 7C7C1B79 */  or.     r28, r3, r3
/* 0CB5B8 800D0B58 3AE90000 */  addi    r23, r9, 0
/* 0CB5BC 800D0B5C 7D154378 */  mr      r21, r8
/* 0CB5C0 800D0B60 3AC40000 */  addi    r22, r4, 0
/* 0CB5C4 800D0B64 3BA50000 */  addi    r29, r5, 0
/* 0CB5C8 800D0B68 3BC60000 */  addi    r30, r6, 0
/* 0CB5CC 800D0B6C 3A670000 */  addi    r19, r7, 0
/* 0CB5D0 800D0B70 3B000001 */  li      r24, 1
/* 0CB5D4 800D0B74 3BE00000 */  li      r31, 0
/* 0CB5D8 800D0B78 3B600000 */  li      r27, 0
/* 0CB5DC 800D0B7C 3B400000 */  li      r26, 0
/* 0CB5E0 800D0B80 90090000 */  stw     r0, 0(r9)
/* 0CB5E4 800D0B84 90080000 */  stw     r0, 0(r8)
/* 0CB5E8 800D0B88 4180001C */  blt     lbl_800D0BA4
/* 0CB5EC 800D0B8C 2C1C0001 */  cmpwi   r28, 1
/* 0CB5F0 800D0B90 41820014 */  beq     lbl_800D0BA4
/* 0CB5F4 800D0B94 2C1C0024 */  cmpwi   r28, 0x24
/* 0CB5F8 800D0B98 4181000C */  bgt     lbl_800D0BA4
/* 0CB5FC 800D0B9C 2C160001 */  cmpwi   r22, 1
/* 0CB600 800D0BA0 4080000C */  bge     lbl_800D0BAC
lbl_800D0BA4:
/* 0CB604 800D0BA4 3B000040 */  li      r24, 0x40
/* 0CB608 800D0BA8 48000024 */  b       lbl_800D0BCC
lbl_800D0BAC:
/* 0CB60C 800D0BAC 399D0000 */  addi    r12, r29, 0
/* 0CB610 800D0BB0 7D8803A6 */  mtlr    r12
/* 0CB614 800D0BB4 387E0000 */  addi    r3, r30, 0
/* 0CB618 800D0BB8 3BE00001 */  li      r31, 1
/* 0CB61C 800D0BBC 38800000 */  li      r4, 0
/* 0CB620 800D0BC0 38A00000 */  li      r5, 0
/* 0CB624 800D0BC4 4E800021 */  blrl    
/* 0CB628 800D0BC8 7C721B78 */  mr      r18, r3
lbl_800D0BCC:
/* 0CB62C 800D0BCC 2C1C0000 */  cmpwi   r28, 0
/* 0CB630 800D0BD0 4182000C */  beq     lbl_800D0BDC
/* 0CB634 800D0BD4 3800FFFF */  li      r0, -1
/* 0CB638 800D0BD8 7F40E396 */  divwu   r26, r0, r28
lbl_800D0BDC:
/* 0CB63C 800D0BDC 3C60800D */  lis     r3, __ctype_map@ha
/* 0CB640 800D0BE0 3C80800F */  lis     r4, jtbl_800F3E30@ha
/* 0CB644 800D0BE4 3B2333B0 */  addi    r25, r3, __ctype_map@l
/* 0CB648 800D0BE8 3A843E30 */  addi    r20, r4, jtbl_800F3E30@l
/* 0CB64C 800D0BEC 48000238 */  b       lbl_800D0E24
lbl_800D0BF0:
/* 0CB650 800D0BF0 28180010 */  cmplwi  r24, 0x10
/* 0CB654 800D0BF4 41810230 */  bgt     lbl_800D0E24
/* 0CB658 800D0BF8 5700103A */  slwi    r0, r24, 2
/* 0CB65C 800D0BFC 7C14002E */  lwzx    r0, r20, r0
/* 0CB660 800D0C00 7C0903A6 */  mtctr   r0
/* 0CB664 800D0C04 4E800420 */  bctr    
glabel lbl_800D0C08
/* 0CB668 800D0C08 5640063E */  clrlwi  r0, r18, 0x18
/* 0CB66C 800D0C0C 7C790214 */  add     r3, r25, r0
/* 0CB670 800D0C10 88030000 */  lbz     r0, 0(r3)
/* 0CB674 800D0C14 5400077D */  rlwinm. r0, r0, 0, 0x1d, 0x1e
/* 0CB678 800D0C18 41820028 */  beq     lbl_800D0C40
/* 0CB67C 800D0C1C 399D0000 */  addi    r12, r29, 0
/* 0CB680 800D0C20 7D8803A6 */  mtlr    r12
/* 0CB684 800D0C24 387E0000 */  addi    r3, r30, 0
/* 0CB688 800D0C28 38800000 */  li      r4, 0
/* 0CB68C 800D0C2C 38A00000 */  li      r5, 0
/* 0CB690 800D0C30 3BFF0001 */  addi    r31, r31, 1
/* 0CB694 800D0C34 4E800021 */  blrl    
/* 0CB698 800D0C38 7C721B78 */  mr      r18, r3
/* 0CB69C 800D0C3C 480001E8 */  b       lbl_800D0E24
lbl_800D0C40:
/* 0CB6A0 800D0C40 2C12002B */  cmpwi   r18, 0x2b
/* 0CB6A4 800D0C44 40820028 */  bne     lbl_800D0C6C
/* 0CB6A8 800D0C48 399D0000 */  addi    r12, r29, 0
/* 0CB6AC 800D0C4C 7D8803A6 */  mtlr    r12
/* 0CB6B0 800D0C50 387E0000 */  addi    r3, r30, 0
/* 0CB6B4 800D0C54 38800000 */  li      r4, 0
/* 0CB6B8 800D0C58 38A00000 */  li      r5, 0
/* 0CB6BC 800D0C5C 3BFF0001 */  addi    r31, r31, 1
/* 0CB6C0 800D0C60 4E800021 */  blrl    
/* 0CB6C4 800D0C64 7C721B78 */  mr      r18, r3
/* 0CB6C8 800D0C68 48000034 */  b       lbl_800D0C9C
lbl_800D0C6C:
/* 0CB6CC 800D0C6C 2C12002D */  cmpwi   r18, 0x2d
/* 0CB6D0 800D0C70 4082002C */  bne     lbl_800D0C9C
/* 0CB6D4 800D0C74 399D0000 */  addi    r12, r29, 0
/* 0CB6D8 800D0C78 7D8803A6 */  mtlr    r12
/* 0CB6DC 800D0C7C 387E0000 */  addi    r3, r30, 0
/* 0CB6E0 800D0C80 38800000 */  li      r4, 0
/* 0CB6E4 800D0C84 38A00000 */  li      r5, 0
/* 0CB6E8 800D0C88 3BFF0001 */  addi    r31, r31, 1
/* 0CB6EC 800D0C8C 4E800021 */  blrl    
/* 0CB6F0 800D0C90 38000001 */  li      r0, 1
/* 0CB6F4 800D0C94 90150000 */  stw     r0, 0(r21)
/* 0CB6F8 800D0C98 7C721B78 */  mr      r18, r3
lbl_800D0C9C:
/* 0CB6FC 800D0C9C 3B000002 */  li      r24, 2
/* 0CB700 800D0CA0 48000184 */  b       lbl_800D0E24
glabel lbl_800D0CA4
/* 0CB704 800D0CA4 2C1C0000 */  cmpwi   r28, 0
/* 0CB708 800D0CA8 4182000C */  beq     lbl_800D0CB4
/* 0CB70C 800D0CAC 2C1C0010 */  cmpwi   r28, 0x10
/* 0CB710 800D0CB0 40820034 */  bne     lbl_800D0CE4
lbl_800D0CB4:
/* 0CB714 800D0CB4 2C120030 */  cmpwi   r18, 0x30
/* 0CB718 800D0CB8 4082002C */  bne     lbl_800D0CE4
/* 0CB71C 800D0CBC 399D0000 */  addi    r12, r29, 0
/* 0CB720 800D0CC0 7D8803A6 */  mtlr    r12
/* 0CB724 800D0CC4 387E0000 */  addi    r3, r30, 0
/* 0CB728 800D0CC8 3B000004 */  li      r24, 4
/* 0CB72C 800D0CCC 38800000 */  li      r4, 0
/* 0CB730 800D0CD0 38A00000 */  li      r5, 0
/* 0CB734 800D0CD4 3BFF0001 */  addi    r31, r31, 1
/* 0CB738 800D0CD8 4E800021 */  blrl    
/* 0CB73C 800D0CDC 7C721B78 */  mr      r18, r3
/* 0CB740 800D0CE0 48000144 */  b       lbl_800D0E24
lbl_800D0CE4:
/* 0CB744 800D0CE4 3B000008 */  li      r24, 8
/* 0CB748 800D0CE8 4800013C */  b       lbl_800D0E24
glabel lbl_800D0CEC
/* 0CB74C 800D0CEC 2C120058 */  cmpwi   r18, 0x58
/* 0CB750 800D0CF0 4182000C */  beq     lbl_800D0CFC
/* 0CB754 800D0CF4 2C120078 */  cmpwi   r18, 0x78
/* 0CB758 800D0CF8 40820030 */  bne     lbl_800D0D28
lbl_800D0CFC:
/* 0CB75C 800D0CFC 399D0000 */  addi    r12, r29, 0
/* 0CB760 800D0D00 7D8803A6 */  mtlr    r12
/* 0CB764 800D0D04 387E0000 */  addi    r3, r30, 0
/* 0CB768 800D0D08 3B800010 */  li      r28, 0x10
/* 0CB76C 800D0D0C 3B000008 */  li      r24, 8
/* 0CB770 800D0D10 38800000 */  li      r4, 0
/* 0CB774 800D0D14 38A00000 */  li      r5, 0
/* 0CB778 800D0D18 3BFF0001 */  addi    r31, r31, 1
/* 0CB77C 800D0D1C 4E800021 */  blrl    
/* 0CB780 800D0D20 7C721B78 */  mr      r18, r3
/* 0CB784 800D0D24 48000100 */  b       lbl_800D0E24
lbl_800D0D28:
/* 0CB788 800D0D28 2C1C0000 */  cmpwi   r28, 0
/* 0CB78C 800D0D2C 40820008 */  bne     lbl_800D0D34
/* 0CB790 800D0D30 3B800008 */  li      r28, 8
lbl_800D0D34:
/* 0CB794 800D0D34 3B000010 */  li      r24, 0x10
/* 0CB798 800D0D38 480000EC */  b       lbl_800D0E24
glabel lbl_800D0D3C
/* 0CB79C 800D0D3C 2C1C0000 */  cmpwi   r28, 0
/* 0CB7A0 800D0D40 40820008 */  bne     lbl_800D0D48
/* 0CB7A4 800D0D44 3B80000A */  li      r28, 0xa
lbl_800D0D48:
/* 0CB7A8 800D0D48 281A0000 */  cmplwi  r26, 0
/* 0CB7AC 800D0D4C 4082000C */  bne     lbl_800D0D58
/* 0CB7B0 800D0D50 3800FFFF */  li      r0, -1
/* 0CB7B4 800D0D54 7F40E396 */  divwu   r26, r0, r28
lbl_800D0D58:
/* 0CB7B8 800D0D58 5640063E */  clrlwi  r0, r18, 0x18
/* 0CB7BC 800D0D5C 7C790214 */  add     r3, r25, r0
/* 0CB7C0 800D0D60 88630000 */  lbz     r3, 0(r3)
/* 0CB7C4 800D0D64 546006F7 */  rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 0CB7C8 800D0D68 4182002C */  beq     lbl_800D0D94
/* 0CB7CC 800D0D6C 3A52FFD0 */  addi    r18, r18, -48
/* 0CB7D0 800D0D70 7C12E000 */  cmpw    r18, r28
/* 0CB7D4 800D0D74 41800060 */  blt     lbl_800D0DD4
/* 0CB7D8 800D0D78 2C180010 */  cmpwi   r24, 0x10
/* 0CB7DC 800D0D7C 4082000C */  bne     lbl_800D0D88
/* 0CB7E0 800D0D80 3B000020 */  li      r24, 0x20
/* 0CB7E4 800D0D84 48000008 */  b       lbl_800D0D8C
lbl_800D0D88:
/* 0CB7E8 800D0D88 3B000040 */  li      r24, 0x40
lbl_800D0D8C:
/* 0CB7EC 800D0D8C 3A520030 */  addi    r18, r18, 0x30
/* 0CB7F0 800D0D90 48000094 */  b       lbl_800D0E24
lbl_800D0D94:
/* 0CB7F4 800D0D94 54600633 */  rlwinm. r0, r3, 0, 0x18, 0x19
/* 0CB7F8 800D0D98 41820018 */  beq     lbl_800D0DB0
/* 0CB7FC 800D0D9C 7E439378 */  mr      r3, r18
/* 0CB800 800D0DA0 4BFFD809 */  bl      toupper
/* 0CB804 800D0DA4 3803FFC9 */  addi    r0, r3, -55
/* 0CB808 800D0DA8 7C00E000 */  cmpw    r0, r28
/* 0CB80C 800D0DAC 4180001C */  blt     lbl_800D0DC8
lbl_800D0DB0:
/* 0CB810 800D0DB0 2C180010 */  cmpwi   r24, 0x10
/* 0CB814 800D0DB4 4082000C */  bne     lbl_800D0DC0
/* 0CB818 800D0DB8 3B000020 */  li      r24, 0x20
/* 0CB81C 800D0DBC 48000068 */  b       lbl_800D0E24
lbl_800D0DC0:
/* 0CB820 800D0DC0 3B000040 */  li      r24, 0x40
/* 0CB824 800D0DC4 48000060 */  b       lbl_800D0E24
lbl_800D0DC8:
/* 0CB828 800D0DC8 7E439378 */  mr      r3, r18
/* 0CB82C 800D0DCC 4BFFD7DD */  bl      toupper
/* 0CB830 800D0DD0 3A43FFC9 */  addi    r18, r3, -55
lbl_800D0DD4:
/* 0CB834 800D0DD4 7C1BD040 */  cmplw   r27, r26
/* 0CB838 800D0DD8 4081000C */  ble     lbl_800D0DE4
/* 0CB83C 800D0DDC 38000001 */  li      r0, 1
/* 0CB840 800D0DE0 90170000 */  stw     r0, 0(r23)
lbl_800D0DE4:
/* 0CB844 800D0DE4 7F7BE1D6 */  mullw   r27, r27, r28
/* 0CB848 800D0DE8 201BFFFF */  subfic  r0, r27, -1
/* 0CB84C 800D0DEC 7C120040 */  cmplw   r18, r0
/* 0CB850 800D0DF0 4081000C */  ble     lbl_800D0DFC
/* 0CB854 800D0DF4 38000001 */  li      r0, 1
/* 0CB858 800D0DF8 90170000 */  stw     r0, 0(r23)
lbl_800D0DFC:
/* 0CB85C 800D0DFC 399D0000 */  addi    r12, r29, 0
/* 0CB860 800D0E00 7D8803A6 */  mtlr    r12
/* 0CB864 800D0E04 387E0000 */  addi    r3, r30, 0
/* 0CB868 800D0E08 7F7B9214 */  add     r27, r27, r18
/* 0CB86C 800D0E0C 3B000010 */  li      r24, 0x10
/* 0CB870 800D0E10 38800000 */  li      r4, 0
/* 0CB874 800D0E14 38A00000 */  li      r5, 0
/* 0CB878 800D0E18 3BFF0001 */  addi    r31, r31, 1
/* 0CB87C 800D0E1C 4E800021 */  blrl    
/* 0CB880 800D0E20 7C721B78 */  mr      r18, r3
glabel lbl_800D0E24
/* 0CB884 800D0E24 7C1FB000 */  cmpw    r31, r22
/* 0CB888 800D0E28 41810014 */  bgt     lbl_800D0E3C
/* 0CB88C 800D0E2C 2C12FFFF */  cmpwi   r18, -1
/* 0CB890 800D0E30 4182000C */  beq     lbl_800D0E3C
/* 0CB894 800D0E34 57000675 */  rlwinm. r0, r24, 0, 0x19, 0x1a
/* 0CB898 800D0E38 4182FDB8 */  beq     lbl_800D0BF0
lbl_800D0E3C:
/* 0CB89C 800D0E3C 73000034 */  andi.   r0, r24, 0x34
/* 0CB8A0 800D0E40 40820010 */  bne     lbl_800D0E50
/* 0CB8A4 800D0E44 3B600000 */  li      r27, 0
/* 0CB8A8 800D0E48 3BE00000 */  li      r31, 0
/* 0CB8AC 800D0E4C 48000008 */  b       lbl_800D0E54
lbl_800D0E50:
/* 0CB8B0 800D0E50 3BFFFFFF */  addi    r31, r31, -1
lbl_800D0E54:
/* 0CB8B4 800D0E54 7FACEB78 */  mr      r12, r29
/* 0CB8B8 800D0E58 93F30000 */  stw     r31, 0(r19)
/* 0CB8BC 800D0E5C 7D8803A6 */  mtlr    r12
/* 0CB8C0 800D0E60 387E0000 */  addi    r3, r30, 0
/* 0CB8C4 800D0E64 38920000 */  addi    r4, r18, 0
/* 0CB8C8 800D0E68 38A00001 */  li      r5, 1
/* 0CB8CC 800D0E6C 4E800021 */  blrl    
/* 0CB8D0 800D0E70 7F63DB78 */  mr      r3, r27
/* 0CB8D4 800D0E74 BA410028 */  lmw     r18, 0x28(r1)
/* 0CB8D8 800D0E78 80010064 */  lwz     r0, 0x64(r1)
/* 0CB8DC 800D0E7C 38210060 */  addi    r1, r1, 0x60
/* 0CB8E0 800D0E80 7C0803A6 */  mtlr    r0
/* 0CB8E4 800D0E84 4E800020 */  blr     

.section .data, "wa"

.balign 8

/* 000F0EB0 800F3E30 0044 */
jtbl_800F3E30:
    .long lbl_800D0E24
    .long lbl_800D0C08
    .long lbl_800D0CA4
    .long lbl_800D0E24
    .long lbl_800D0CEC
    .long lbl_800D0E24
    .long lbl_800D0E24
    .long lbl_800D0E24
    .long lbl_800D0D3C
    .long lbl_800D0E24
    .long lbl_800D0E24
    .long lbl_800D0E24
    .long lbl_800D0E24
    .long lbl_800D0E24
    .long lbl_800D0E24
    .long lbl_800D0E24
    .long lbl_800D0D3C