# CARDOpen.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel __CARDCompareFileName
/* 0BA80C 800BFDAC 38A30008 */  addi    r5, r3, 8
/* 0BA810 800BFDB0 38E00020 */  li      r7, 0x20
/* 0BA814 800BFDB4 4800003C */  b       lbl_800BFDF0
lbl_800BFDB8:
/* 0BA818 800BFDB8 88050000 */  lbz     r0, 0(r5)
/* 0BA81C 800BFDBC 38A50001 */  addi    r5, r5, 1
/* 0BA820 800BFDC0 88C40000 */  lbz     r6, 0(r4)
/* 0BA824 800BFDC4 38840001 */  addi    r4, r4, 1
/* 0BA828 800BFDC8 7C030774 */  extsb   r3, r0
/* 0BA82C 800BFDCC 7CC00774 */  extsb   r0, r6
/* 0BA830 800BFDD0 7C030000 */  cmpw    r3, r0
/* 0BA834 800BFDD4 4182000C */  beq     lbl_800BFDE0
/* 0BA838 800BFDD8 38600000 */  li      r3, 0
/* 0BA83C 800BFDDC 4E800020 */  blr     
lbl_800BFDE0:
/* 0BA840 800BFDE0 7CC00775 */  extsb.  r0, r6
/* 0BA844 800BFDE4 4082000C */  bne     lbl_800BFDF0
/* 0BA848 800BFDE8 38600001 */  li      r3, 1
/* 0BA84C 800BFDEC 4E800020 */  blr     
lbl_800BFDF0:
/* 0BA850 800BFDF0 34E7FFFF */  addic.  r7, r7, -1
/* 0BA854 800BFDF4 4080FFC4 */  bge     lbl_800BFDB8
/* 0BA858 800BFDF8 88040000 */  lbz     r0, 0(r4)
/* 0BA85C 800BFDFC 7C000775 */  extsb.  r0, r0
/* 0BA860 800BFE00 4082000C */  bne     lbl_800BFE0C
/* 0BA864 800BFE04 38600001 */  li      r3, 1
/* 0BA868 800BFE08 4E800020 */  blr     
lbl_800BFE0C:
/* 0BA86C 800BFE0C 38600000 */  li      r3, 0
/* 0BA870 800BFE10 4E800020 */  blr     

glabel __CARDAccess
/* 0BA874 800BFE14 7C0802A6 */  mflr    r0
/* 0BA878 800BFE18 90010004 */  stw     r0, 4(r1)
/* 0BA87C 800BFE1C 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0BA880 800BFE20 93E10014 */  stw     r31, 0x14(r1)
/* 0BA884 800BFE24 93C10010 */  stw     r30, 0x10(r1)
/* 0BA888 800BFE28 7C9E2378 */  mr      r30, r4
/* 0BA88C 800BFE2C 88040000 */  lbz     r0, 0(r4)
/* 0BA890 800BFE30 83E3010C */  lwz     r31, 0x10c(r3)
/* 0BA894 800BFE34 280000FF */  cmplwi  r0, 0xff
/* 0BA898 800BFE38 4082000C */  bne     lbl_800BFE44
/* 0BA89C 800BFE3C 3860FFFC */  li      r3, -4
/* 0BA8A0 800BFE40 48000050 */  b       lbl_800BFE90
lbl_800BFE44:
/* 0BA8A4 800BFE44 3C608013 */  lis     r3, __CARDDiskNone@ha
/* 0BA8A8 800BFE48 380329F0 */  addi    r0, r3, __CARDDiskNone@l
/* 0BA8AC 800BFE4C 7C1F0040 */  cmplw   r31, r0
/* 0BA8B0 800BFE50 41820034 */  beq     lbl_800BFE84
/* 0BA8B4 800BFE54 387E0000 */  addi    r3, r30, 0
/* 0BA8B8 800BFE58 389F0000 */  addi    r4, r31, 0
/* 0BA8BC 800BFE5C 38A00004 */  li      r5, 4
/* 0BA8C0 800BFE60 4800EAB1 */  bl      memcmp
/* 0BA8C4 800BFE64 2C030000 */  cmpwi   r3, 0
/* 0BA8C8 800BFE68 40820024 */  bne     lbl_800BFE8C
/* 0BA8CC 800BFE6C 387E0004 */  addi    r3, r30, 4
/* 0BA8D0 800BFE70 389F0004 */  addi    r4, r31, 4
/* 0BA8D4 800BFE74 38A00002 */  li      r5, 2
/* 0BA8D8 800BFE78 4800EA99 */  bl      memcmp
/* 0BA8DC 800BFE7C 2C030000 */  cmpwi   r3, 0
/* 0BA8E0 800BFE80 4082000C */  bne     lbl_800BFE8C
lbl_800BFE84:
/* 0BA8E4 800BFE84 38600000 */  li      r3, 0
/* 0BA8E8 800BFE88 48000008 */  b       lbl_800BFE90
lbl_800BFE8C:
/* 0BA8EC 800BFE8C 3860FFF6 */  li      r3, -10
lbl_800BFE90:
/* 0BA8F0 800BFE90 8001001C */  lwz     r0, 0x1c(r1)
/* 0BA8F4 800BFE94 83E10014 */  lwz     r31, 0x14(r1)
/* 0BA8F8 800BFE98 83C10010 */  lwz     r30, 0x10(r1)
/* 0BA8FC 800BFE9C 38210018 */  addi    r1, r1, 0x18
/* 0BA900 800BFEA0 7C0803A6 */  mtlr    r0
/* 0BA904 800BFEA4 4E800020 */  blr     

glabel __CARDIsWritable
/* 0BA908 800BFEA8 7C0802A6 */  mflr    r0
/* 0BA90C 800BFEAC 90010004 */  stw     r0, 4(r1)
/* 0BA910 800BFEB0 9421FFD8 */  stwu    r1, -0x28(r1)
/* 0BA914 800BFEB4 BF610014 */  stmw    r27, 0x14(r1)
/* 0BA918 800BFEB8 7C9B2378 */  mr      r27, r4
/* 0BA91C 800BFEBC 88040000 */  lbz     r0, 0(r4)
/* 0BA920 800BFEC0 83A3010C */  lwz     r29, 0x10c(r3)
/* 0BA924 800BFEC4 280000FF */  cmplwi  r0, 0xff
/* 0BA928 800BFEC8 4082000C */  bne     lbl_800BFED4
/* 0BA92C 800BFECC 3BC0FFFC */  li      r30, -4
/* 0BA930 800BFED0 48000050 */  b       lbl_800BFF20
lbl_800BFED4:
/* 0BA934 800BFED4 3C608013 */  lis     r3, __CARDDiskNone@ha
/* 0BA938 800BFED8 380329F0 */  addi    r0, r3, __CARDDiskNone@l
/* 0BA93C 800BFEDC 7C1D0040 */  cmplw   r29, r0
/* 0BA940 800BFEE0 41820034 */  beq     lbl_800BFF14
/* 0BA944 800BFEE4 387B0000 */  addi    r3, r27, 0
/* 0BA948 800BFEE8 389D0000 */  addi    r4, r29, 0
/* 0BA94C 800BFEEC 38A00004 */  li      r5, 4
/* 0BA950 800BFEF0 4800EA21 */  bl      memcmp
/* 0BA954 800BFEF4 2C030000 */  cmpwi   r3, 0
/* 0BA958 800BFEF8 40820024 */  bne     lbl_800BFF1C
/* 0BA95C 800BFEFC 387B0004 */  addi    r3, r27, 4
/* 0BA960 800BFF00 389D0004 */  addi    r4, r29, 4
/* 0BA964 800BFF04 38A00002 */  li      r5, 2
/* 0BA968 800BFF08 4800EA09 */  bl      memcmp
/* 0BA96C 800BFF0C 2C030000 */  cmpwi   r3, 0
/* 0BA970 800BFF10 4082000C */  bne     lbl_800BFF1C
lbl_800BFF14:
/* 0BA974 800BFF14 3BC00000 */  li      r30, 0
/* 0BA978 800BFF18 48000008 */  b       lbl_800BFF20
lbl_800BFF1C:
/* 0BA97C 800BFF1C 3BC0FFF6 */  li      r30, -10
lbl_800BFF20:
/* 0BA980 800BFF20 2C1EFFF6 */  cmpwi   r30, -10
/* 0BA984 800BFF24 408200A0 */  bne     lbl_800BFFC4
/* 0BA988 800BFF28 887B0034 */  lbz     r3, 0x34(r27)
/* 0BA98C 800BFF2C 880D887A */  lbz     r0, __CARDPermMask@sda21(r13)
/* 0BA990 800BFF30 7C600038 */  and     r0, r3, r0
/* 0BA994 800BFF34 541C063E */  clrlwi  r28, r0, 0x18
/* 0BA998 800BFF38 540006B5 */  rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 0BA99C 800BFF3C 41820044 */  beq     lbl_800BFF80
/* 0BA9A0 800BFF40 3C608013 */  lis     r3, __CARDDiskNone@ha
/* 0BA9A4 800BFF44 3BE329F0 */  addi    r31, r3, __CARDDiskNone@l
/* 0BA9A8 800BFF48 387B0000 */  addi    r3, r27, 0
/* 0BA9AC 800BFF4C 389F0000 */  addi    r4, r31, 0
/* 0BA9B0 800BFF50 38A00004 */  li      r5, 4
/* 0BA9B4 800BFF54 4800E9BD */  bl      memcmp
/* 0BA9B8 800BFF58 2C030000 */  cmpwi   r3, 0
/* 0BA9BC 800BFF5C 40820024 */  bne     lbl_800BFF80
/* 0BA9C0 800BFF60 387B0004 */  addi    r3, r27, 4
/* 0BA9C4 800BFF64 389F0004 */  addi    r4, r31, 4
/* 0BA9C8 800BFF68 38A00002 */  li      r5, 2
/* 0BA9CC 800BFF6C 4800E9A5 */  bl      memcmp
/* 0BA9D0 800BFF70 2C030000 */  cmpwi   r3, 0
/* 0BA9D4 800BFF74 4082000C */  bne     lbl_800BFF80
/* 0BA9D8 800BFF78 38600000 */  li      r3, 0
/* 0BA9DC 800BFF7C 4800004C */  b       lbl_800BFFC8
lbl_800BFF80:
/* 0BA9E0 800BFF80 57800673 */  rlwinm. r0, r28, 0, 0x19, 0x19
/* 0BA9E4 800BFF84 41820040 */  beq     lbl_800BFFC4
/* 0BA9E8 800BFF88 3C608013 */  lis     r3, __CARDDiskNone@ha
/* 0BA9EC 800BFF8C 388329F0 */  addi    r4, r3, __CARDDiskNone@l
/* 0BA9F0 800BFF90 387B0000 */  addi    r3, r27, 0
/* 0BA9F4 800BFF94 38A00004 */  li      r5, 4
/* 0BA9F8 800BFF98 4800E979 */  bl      memcmp
/* 0BA9FC 800BFF9C 2C030000 */  cmpwi   r3, 0
/* 0BAA00 800BFFA0 40820024 */  bne     lbl_800BFFC4
/* 0BAA04 800BFFA4 387B0004 */  addi    r3, r27, 4
/* 0BAA08 800BFFA8 389D0004 */  addi    r4, r29, 4
/* 0BAA0C 800BFFAC 38A00002 */  li      r5, 2
/* 0BAA10 800BFFB0 4800E961 */  bl      memcmp
/* 0BAA14 800BFFB4 2C030000 */  cmpwi   r3, 0
/* 0BAA18 800BFFB8 4082000C */  bne     lbl_800BFFC4
/* 0BAA1C 800BFFBC 38600000 */  li      r3, 0
/* 0BAA20 800BFFC0 48000008 */  b       lbl_800BFFC8
lbl_800BFFC4:
/* 0BAA24 800BFFC4 7FC3F378 */  mr      r3, r30
lbl_800BFFC8:
/* 0BAA28 800BFFC8 BB610014 */  lmw     r27, 0x14(r1)
/* 0BAA2C 800BFFCC 8001002C */  lwz     r0, 0x2c(r1)
/* 0BAA30 800BFFD0 38210028 */  addi    r1, r1, 0x28
/* 0BAA34 800BFFD4 7C0803A6 */  mtlr    r0
/* 0BAA38 800BFFD8 4E800020 */  blr     

glabel __CARDIsReadable
/* 0BAA3C 800BFFDC 7C0802A6 */  mflr    r0
/* 0BAA40 800BFFE0 90010004 */  stw     r0, 4(r1)
/* 0BAA44 800BFFE4 9421FFD8 */  stwu    r1, -0x28(r1)
/* 0BAA48 800BFFE8 BF610014 */  stmw    r27, 0x14(r1)
/* 0BAA4C 800BFFEC 7C9B2378 */  mr      r27, r4
/* 0BAA50 800BFFF0 8383010C */  lwz     r28, 0x10c(r3)
/* 0BAA54 800BFFF4 4BFFFE21 */  bl      __CARDAccess
/* 0BAA58 800BFFF8 3BA30000 */  addi    r29, r3, 0
/* 0BAA5C 800BFFFC 2C1DFFF6 */  cmpwi   r29, -10
/* 0BAA60 800C0000 4082009C */  bne     lbl_800C009C
/* 0BAA64 800C0004 887B0034 */  lbz     r3, 0x34(r27)
/* 0BAA68 800C0008 880D887A */  lbz     r0, __CARDPermMask@sda21(r13)
/* 0BAA6C 800C000C 7C600038 */  and     r0, r3, r0
/* 0BAA70 800C0010 541E063E */  clrlwi  r30, r0, 0x18
/* 0BAA74 800C0014 540006B5 */  rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 0BAA78 800C0018 41820044 */  beq     lbl_800C005C
/* 0BAA7C 800C001C 3C608013 */  lis     r3, __CARDDiskNone@ha
/* 0BAA80 800C0020 3BE329F0 */  addi    r31, r3, __CARDDiskNone@l
/* 0BAA84 800C0024 387B0000 */  addi    r3, r27, 0
/* 0BAA88 800C0028 389F0000 */  addi    r4, r31, 0
/* 0BAA8C 800C002C 38A00004 */  li      r5, 4
/* 0BAA90 800C0030 4800E8E1 */  bl      memcmp
/* 0BAA94 800C0034 2C030000 */  cmpwi   r3, 0
/* 0BAA98 800C0038 40820024 */  bne     lbl_800C005C
/* 0BAA9C 800C003C 387B0004 */  addi    r3, r27, 4
/* 0BAAA0 800C0040 389F0004 */  addi    r4, r31, 4
/* 0BAAA4 800C0044 38A00002 */  li      r5, 2
/* 0BAAA8 800C0048 4800E8C9 */  bl      memcmp
/* 0BAAAC 800C004C 2C030000 */  cmpwi   r3, 0
/* 0BAAB0 800C0050 4082000C */  bne     lbl_800C005C
/* 0BAAB4 800C0054 3BA00000 */  li      r29, 0
/* 0BAAB8 800C0058 48000044 */  b       lbl_800C009C
lbl_800C005C:
/* 0BAABC 800C005C 57C00673 */  rlwinm. r0, r30, 0, 0x19, 0x19
/* 0BAAC0 800C0060 4182003C */  beq     lbl_800C009C
/* 0BAAC4 800C0064 3C608013 */  lis     r3, __CARDDiskNone@ha
/* 0BAAC8 800C0068 388329F0 */  addi    r4, r3, __CARDDiskNone@l
/* 0BAACC 800C006C 387B0000 */  addi    r3, r27, 0
/* 0BAAD0 800C0070 38A00004 */  li      r5, 4
/* 0BAAD4 800C0074 4800E89D */  bl      memcmp
/* 0BAAD8 800C0078 2C030000 */  cmpwi   r3, 0
/* 0BAADC 800C007C 40820020 */  bne     lbl_800C009C
/* 0BAAE0 800C0080 387B0004 */  addi    r3, r27, 4
/* 0BAAE4 800C0084 389C0004 */  addi    r4, r28, 4
/* 0BAAE8 800C0088 38A00002 */  li      r5, 2
/* 0BAAEC 800C008C 4800E885 */  bl      memcmp
/* 0BAAF0 800C0090 2C030000 */  cmpwi   r3, 0
/* 0BAAF4 800C0094 40820008 */  bne     lbl_800C009C
/* 0BAAF8 800C0098 3BA00000 */  li      r29, 0
lbl_800C009C:
/* 0BAAFC 800C009C 2C1DFFF6 */  cmpwi   r29, -10
/* 0BAB00 800C00A0 40820018 */  bne     lbl_800C00B8
/* 0BAB04 800C00A4 881B0034 */  lbz     r0, 0x34(r27)
/* 0BAB08 800C00A8 5400077B */  rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 0BAB0C 800C00AC 4182000C */  beq     lbl_800C00B8
/* 0BAB10 800C00B0 38600000 */  li      r3, 0
/* 0BAB14 800C00B4 48000008 */  b       lbl_800C00BC
lbl_800C00B8:
/* 0BAB18 800C00B8 7FA3EB78 */  mr      r3, r29
lbl_800C00BC:
/* 0BAB1C 800C00BC BB610014 */  lmw     r27, 0x14(r1)
/* 0BAB20 800C00C0 8001002C */  lwz     r0, 0x2c(r1)
/* 0BAB24 800C00C4 38210028 */  addi    r1, r1, 0x28
/* 0BAB28 800C00C8 7C0803A6 */  mtlr    r0
/* 0BAB2C 800C00CC 4E800020 */  blr     

glabel __CARDGetFileNo
/* 0BAB30 800C00D0 7C0802A6 */  mflr    r0
/* 0BAB34 800C00D4 90010004 */  stw     r0, 4(r1)
/* 0BAB38 800C00D8 9421FFC8 */  stwu    r1, -0x38(r1)
/* 0BAB3C 800C00DC BF21001C */  stmw    r25, 0x1c(r1)
/* 0BAB40 800C00E0 7C7B1B78 */  mr      r27, r3
/* 0BAB44 800C00E4 3B840000 */  addi    r28, r4, 0
/* 0BAB48 800C00E8 3BA50000 */  addi    r29, r5, 0
/* 0BAB4C 800C00EC 80030000 */  lwz     r0, 0(r3)
/* 0BAB50 800C00F0 2C000000 */  cmpwi   r0, 0
/* 0BAB54 800C00F4 4082000C */  bne     lbl_800C0100
/* 0BAB58 800C00F8 3860FFFD */  li      r3, -3
/* 0BAB5C 800C00FC 48000110 */  b       lbl_800C020C
lbl_800C0100:
/* 0BAB60 800C0100 7F63DB78 */  mr      r3, r27
/* 0BAB64 800C0104 4BFFD839 */  bl      __CARDGetDirBlock
/* 0BAB68 800C0108 3C808013 */  lis     r4, __CARDDiskNone@ha
/* 0BAB6C 800C010C 3BE30000 */  addi    r31, r3, 0
/* 0BAB70 800C0110 3B4429F0 */  addi    r26, r4, __CARDDiskNone@l
/* 0BAB74 800C0114 3BC00000 */  li      r30, 0
lbl_800C0118:
/* 0BAB78 800C0118 881F0000 */  lbz     r0, 0(r31)
/* 0BAB7C 800C011C 833B010C */  lwz     r25, 0x10c(r27)
/* 0BAB80 800C0120 280000FF */  cmplwi  r0, 0xff
/* 0BAB84 800C0124 4082000C */  bne     lbl_800C0130
/* 0BAB88 800C0128 3800FFFC */  li      r0, -4
/* 0BAB8C 800C012C 48000048 */  b       lbl_800C0174
lbl_800C0130:
/* 0BAB90 800C0130 7C19D040 */  cmplw   r25, r26
/* 0BAB94 800C0134 41820034 */  beq     lbl_800C0168
/* 0BAB98 800C0138 387F0000 */  addi    r3, r31, 0
/* 0BAB9C 800C013C 38990000 */  addi    r4, r25, 0
/* 0BABA0 800C0140 38A00004 */  li      r5, 4
/* 0BABA4 800C0144 4800E7CD */  bl      memcmp
/* 0BABA8 800C0148 2C030000 */  cmpwi   r3, 0
/* 0BABAC 800C014C 40820024 */  bne     lbl_800C0170
/* 0BABB0 800C0150 387F0004 */  addi    r3, r31, 4
/* 0BABB4 800C0154 38990004 */  addi    r4, r25, 4
/* 0BABB8 800C0158 38A00002 */  li      r5, 2
/* 0BABBC 800C015C 4800E7B5 */  bl      memcmp
/* 0BABC0 800C0160 2C030000 */  cmpwi   r3, 0
/* 0BABC4 800C0164 4082000C */  bne     lbl_800C0170
lbl_800C0168:
/* 0BABC8 800C0168 38000000 */  li      r0, 0
/* 0BABCC 800C016C 48000008 */  b       lbl_800C0174
lbl_800C0170:
/* 0BABD0 800C0170 3800FFF6 */  li      r0, -10
lbl_800C0174:
/* 0BABD4 800C0174 2C000000 */  cmpwi   r0, 0
/* 0BABD8 800C0178 41800080 */  blt     lbl_800C01F8
/* 0BABDC 800C017C 38FC0000 */  addi    r7, r28, 0
/* 0BABE0 800C0180 38DF0008 */  addi    r6, r31, 8
/* 0BABE4 800C0184 38800020 */  li      r4, 0x20
/* 0BABE8 800C0188 4800003C */  b       lbl_800C01C4
lbl_800C018C:
/* 0BABEC 800C018C 88060000 */  lbz     r0, 0(r6)
/* 0BABF0 800C0190 38C60001 */  addi    r6, r6, 1
/* 0BABF4 800C0194 88A70000 */  lbz     r5, 0(r7)
/* 0BABF8 800C0198 38E70001 */  addi    r7, r7, 1
/* 0BABFC 800C019C 7C030774 */  extsb   r3, r0
/* 0BAC00 800C01A0 7CA00774 */  extsb   r0, r5
/* 0BAC04 800C01A4 7C030000 */  cmpw    r3, r0
/* 0BAC08 800C01A8 4182000C */  beq     lbl_800C01B4
/* 0BAC0C 800C01AC 38000000 */  li      r0, 0
/* 0BAC10 800C01B0 48000034 */  b       lbl_800C01E4
lbl_800C01B4:
/* 0BAC14 800C01B4 7CA00775 */  extsb.  r0, r5
/* 0BAC18 800C01B8 4082000C */  bne     lbl_800C01C4
/* 0BAC1C 800C01BC 38000001 */  li      r0, 1
/* 0BAC20 800C01C0 48000024 */  b       lbl_800C01E4
lbl_800C01C4:
/* 0BAC24 800C01C4 3484FFFF */  addic.  r4, r4, -1
/* 0BAC28 800C01C8 4080FFC4 */  bge     lbl_800C018C
/* 0BAC2C 800C01CC 88070000 */  lbz     r0, 0(r7)
/* 0BAC30 800C01D0 7C000775 */  extsb.  r0, r0
/* 0BAC34 800C01D4 4082000C */  bne     lbl_800C01E0
/* 0BAC38 800C01D8 38000001 */  li      r0, 1
/* 0BAC3C 800C01DC 48000008 */  b       lbl_800C01E4
lbl_800C01E0:
/* 0BAC40 800C01E0 38000000 */  li      r0, 0
lbl_800C01E4:
/* 0BAC44 800C01E4 2C000000 */  cmpwi   r0, 0
/* 0BAC48 800C01E8 41820010 */  beq     lbl_800C01F8
/* 0BAC4C 800C01EC 93DD0000 */  stw     r30, 0(r29)
/* 0BAC50 800C01F0 38600000 */  li      r3, 0
/* 0BAC54 800C01F4 48000018 */  b       lbl_800C020C
lbl_800C01F8:
/* 0BAC58 800C01F8 3BDE0001 */  addi    r30, r30, 1
/* 0BAC5C 800C01FC 2C1E007F */  cmpwi   r30, 0x7f
/* 0BAC60 800C0200 3BFF0040 */  addi    r31, r31, 0x40
/* 0BAC64 800C0204 4180FF14 */  blt     lbl_800C0118
/* 0BAC68 800C0208 3860FFFC */  li      r3, -4
lbl_800C020C:
/* 0BAC6C 800C020C BB21001C */  lmw     r25, 0x1c(r1)
/* 0BAC70 800C0210 8001003C */  lwz     r0, 0x3c(r1)
/* 0BAC74 800C0214 38210038 */  addi    r1, r1, 0x38
/* 0BAC78 800C0218 7C0803A6 */  mtlr    r0
/* 0BAC7C 800C021C 4E800020 */  blr     

glabel CARDOpen
/* 0BAC80 800C0220 7C0802A6 */  mflr    r0
/* 0BAC84 800C0224 90010004 */  stw     r0, 4(r1)
/* 0BAC88 800C0228 3800FFFF */  li      r0, -1
/* 0BAC8C 800C022C 9421FFC8 */  stwu    r1, -0x38(r1)
/* 0BAC90 800C0230 BF21001C */  stmw    r25, 0x1c(r1)
/* 0BAC94 800C0234 3B240000 */  addi    r25, r4, 0
/* 0BAC98 800C0238 3BC50000 */  addi    r30, r5, 0
/* 0BAC9C 800C023C 3BA30000 */  addi    r29, r3, 0
/* 0BACA0 800C0240 38810014 */  addi    r4, r1, 0x14
/* 0BACA4 800C0244 90050000 */  stw     r0, 0(r5)
/* 0BACA8 800C0248 4BFFBA75 */  bl      __CARDGetControlBlock
/* 0BACAC 800C024C 2C030000 */  cmpwi   r3, 0
/* 0BACB0 800C0250 40800008 */  bge     lbl_800C0258
/* 0BACB4 800C0254 480000D4 */  b       lbl_800C0328
lbl_800C0258:
/* 0BACB8 800C0258 83410014 */  lwz     r26, 0x14(r1)
/* 0BACBC 800C025C 801A0000 */  lwz     r0, 0(r26)
/* 0BACC0 800C0260 2C000000 */  cmpwi   r0, 0
/* 0BACC4 800C0264 4082000C */  bne     lbl_800C0270
/* 0BACC8 800C0268 3B40FFFD */  li      r26, -3
/* 0BACCC 800C026C 4800005C */  b       lbl_800C02C8
lbl_800C0270:
/* 0BACD0 800C0270 7F43D378 */  mr      r3, r26
/* 0BACD4 800C0274 4BFFD6C9 */  bl      __CARDGetDirBlock
/* 0BACD8 800C0278 3B630000 */  addi    r27, r3, 0
/* 0BACDC 800C027C 3B800000 */  li      r28, 0
lbl_800C0280:
/* 0BACE0 800C0280 387A0000 */  addi    r3, r26, 0
/* 0BACE4 800C0284 389B0000 */  addi    r4, r27, 0
/* 0BACE8 800C0288 4BFFFB8D */  bl      __CARDAccess
/* 0BACEC 800C028C 2C030000 */  cmpwi   r3, 0
/* 0BACF0 800C0290 41800024 */  blt     lbl_800C02B4
/* 0BACF4 800C0294 387B0000 */  addi    r3, r27, 0
/* 0BACF8 800C0298 38990000 */  addi    r4, r25, 0
/* 0BACFC 800C029C 4BFFFB11 */  bl      __CARDCompareFileName
/* 0BAD00 800C02A0 2C030000 */  cmpwi   r3, 0
/* 0BAD04 800C02A4 41820010 */  beq     lbl_800C02B4
/* 0BAD08 800C02A8 3BFC0000 */  addi    r31, r28, 0
/* 0BAD0C 800C02AC 3B400000 */  li      r26, 0
/* 0BAD10 800C02B0 48000018 */  b       lbl_800C02C8
lbl_800C02B4:
/* 0BAD14 800C02B4 3B9C0001 */  addi    r28, r28, 1
/* 0BAD18 800C02B8 2C1C007F */  cmpwi   r28, 0x7f
/* 0BAD1C 800C02BC 3B7B0040 */  addi    r27, r27, 0x40
/* 0BAD20 800C02C0 4180FFC0 */  blt     lbl_800C0280
/* 0BAD24 800C02C4 3B40FFFC */  li      r26, -4
lbl_800C02C8:
/* 0BAD28 800C02C8 2C1A0000 */  cmpwi   r26, 0
/* 0BAD2C 800C02CC 41800050 */  blt     lbl_800C031C
/* 0BAD30 800C02D0 80610014 */  lwz     r3, 0x14(r1)
/* 0BAD34 800C02D4 4BFFD669 */  bl      __CARDGetDirBlock
/* 0BAD38 800C02D8 57E03032 */  slwi    r0, r31, 6
/* 0BAD3C 800C02DC 7CA30214 */  add     r5, r3, r0
/* 0BAD40 800C02E0 A0850036 */  lhz     r4, 0x36(r5)
/* 0BAD44 800C02E4 28040005 */  cmplwi  r4, 5
/* 0BAD48 800C02E8 41800014 */  blt     lbl_800C02FC
/* 0BAD4C 800C02EC 80610014 */  lwz     r3, 0x14(r1)
/* 0BAD50 800C02F0 A0030010 */  lhz     r0, 0x10(r3)
/* 0BAD54 800C02F4 7C040040 */  cmplw   r4, r0
/* 0BAD58 800C02F8 4180000C */  blt     lbl_800C0304
lbl_800C02FC:
/* 0BAD5C 800C02FC 3B40FFFA */  li      r26, -6
/* 0BAD60 800C0300 4800001C */  b       lbl_800C031C
lbl_800C0304:
/* 0BAD64 800C0304 93BE0000 */  stw     r29, 0(r30)
/* 0BAD68 800C0308 38000000 */  li      r0, 0
/* 0BAD6C 800C030C 93FE0004 */  stw     r31, 4(r30)
/* 0BAD70 800C0310 901E0008 */  stw     r0, 8(r30)
/* 0BAD74 800C0314 A0050036 */  lhz     r0, 0x36(r5)
/* 0BAD78 800C0318 B01E0010 */  sth     r0, 0x10(r30)
lbl_800C031C:
/* 0BAD7C 800C031C 80610014 */  lwz     r3, 0x14(r1)
/* 0BAD80 800C0320 7F44D378 */  mr      r4, r26
/* 0BAD84 800C0324 4BFFBA51 */  bl      __CARDPutControlBlock
lbl_800C0328:
/* 0BAD88 800C0328 BB21001C */  lmw     r25, 0x1c(r1)
/* 0BAD8C 800C032C 8001003C */  lwz     r0, 0x3c(r1)
/* 0BAD90 800C0330 38210038 */  addi    r1, r1, 0x38
/* 0BAD94 800C0334 7C0803A6 */  mtlr    r0
/* 0BAD98 800C0338 4E800020 */  blr     

glabel CARDClose
/* 0BAD9C 800C033C 7C0802A6 */  mflr    r0
/* 0BADA0 800C0340 90010004 */  stw     r0, 4(r1)
/* 0BADA4 800C0344 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0BADA8 800C0348 93E10014 */  stw     r31, 0x14(r1)
/* 0BADAC 800C034C 7C7F1B78 */  mr      r31, r3
/* 0BADB0 800C0350 3881000C */  addi    r4, r1, 0xc
/* 0BADB4 800C0354 80630000 */  lwz     r3, 0(r3)
/* 0BADB8 800C0358 4BFFB965 */  bl      __CARDGetControlBlock
/* 0BADBC 800C035C 2C030000 */  cmpwi   r3, 0
/* 0BADC0 800C0360 40800008 */  bge     lbl_800C0368
/* 0BADC4 800C0364 48000018 */  b       lbl_800C037C
lbl_800C0368:
/* 0BADC8 800C0368 3800FFFF */  li      r0, -1
/* 0BADCC 800C036C 901F0000 */  stw     r0, 0(r31)
/* 0BADD0 800C0370 38800000 */  li      r4, 0
/* 0BADD4 800C0374 8061000C */  lwz     r3, 0xc(r1)
/* 0BADD8 800C0378 4BFFB9FD */  bl      __CARDPutControlBlock
lbl_800C037C:
/* 0BADDC 800C037C 8001001C */  lwz     r0, 0x1c(r1)
/* 0BADE0 800C0380 83E10014 */  lwz     r31, 0x14(r1)
/* 0BADE4 800C0384 38210018 */  addi    r1, r1, 0x18
/* 0BADE8 800C0388 7C0803A6 */  mtlr    r0
/* 0BADEC 800C038C 4E800020 */  blr     

glabel __CARDIsOpened
/* 0BADF0 800C0390 38600000 */  li      r3, 0
/* 0BADF4 800C0394 4E800020 */  blr     
