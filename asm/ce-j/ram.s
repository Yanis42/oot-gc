# ram.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel ramEvent
/* 0677F8 8006CD98 7C0802A6 */  mflr    r0
/* 0677FC 8006CD9C 2C040003 */  cmpwi   r4, 3
/* 067800 8006CDA0 90010004 */  stw     r0, 4(r1)
/* 067804 8006CDA4 9421FFE0 */  stwu    r1, -0x20(r1)
/* 067808 8006CDA8 93E1001C */  stw     r31, 0x1c(r1)
/* 06780C 8006CDAC 3BE50000 */  addi    r31, r5, 0
/* 067810 8006CDB0 93C10018 */  stw     r30, 0x18(r1)
/* 067814 8006CDB4 3BC30000 */  addi    r30, r3, 0
/* 067818 8006CDB8 418201FC */  beq     lbl_8006CFB4
/* 06781C 8006CDBC 40800018 */  bge     lbl_8006CDD4
/* 067820 8006CDC0 2C040002 */  cmpwi   r4, 2
/* 067824 8006CDC4 40800028 */  bge     lbl_8006CDEC
/* 067828 8006CDC8 2C040000 */  cmpwi   r4, 0
/* 06782C 8006CDCC 408001E8 */  bge     lbl_8006CFB4
/* 067830 8006CDD0 480001DC */  b       lbl_8006CFAC
lbl_8006CDD4:
/* 067834 8006CDD4 2C041003 */  cmpwi   r4, 0x1003
/* 067838 8006CDD8 418201DC */  beq     lbl_8006CFB4
/* 06783C 8006CDDC 408001D0 */  bge     lbl_8006CFAC
/* 067840 8006CDE0 2C041002 */  cmpwi   r4, 0x1002
/* 067844 8006CDE4 4080001C */  bge     lbl_8006CE00
/* 067848 8006CDE8 480001C4 */  b       lbl_8006CFAC
lbl_8006CDEC:
/* 06784C 8006CDEC 38000000 */  li      r0, 0
/* 067850 8006CDF0 901E0008 */  stw     r0, 8(r30)
/* 067854 8006CDF4 901E0004 */  stw     r0, 4(r30)
/* 067858 8006CDF8 93FE0000 */  stw     r31, 0(r30)
/* 06785C 8006CDFC 480001B8 */  b       lbl_8006CFB4
lbl_8006CE00:
/* 067860 8006CE00 801F0000 */  lwz     r0, 0(r31)
/* 067864 8006CE04 5400063E */  clrlwi  r0, r0, 0x18
/* 067868 8006CE08 2C000001 */  cmpwi   r0, 1
/* 06786C 8006CE0C 418200A0 */  beq     lbl_8006CEAC
/* 067870 8006CE10 40800010 */  bge     lbl_8006CE20
/* 067874 8006CE14 2C000000 */  cmpwi   r0, 0
/* 067878 8006CE18 40800014 */  bge     lbl_8006CE2C
/* 06787C 8006CE1C 48000198 */  b       lbl_8006CFB4
lbl_8006CE20:
/* 067880 8006CE20 2C000003 */  cmpwi   r0, 3
/* 067884 8006CE24 40800190 */  bge     lbl_8006CFB4
/* 067888 8006CE28 48000104 */  b       lbl_8006CF2C
lbl_8006CE2C:
/* 06788C 8006CE2C 807E0000 */  lwz     r3, 0(r30)
/* 067890 8006CE30 3CA08007 */  lis     r5, ramPut8@ha
/* 067894 8006CE34 3CC08007 */  lis     r6, ramPut16@ha
/* 067898 8006CE38 3CE08007 */  lis     r7, ramPut32@ha
/* 06789C 8006CE3C 80630024 */  lwz     r3, 0x24(r3)
/* 0678A0 8006CE40 3C808007 */  lis     r4, ramPut64@ha
/* 0678A4 8006CE44 3904D1D4 */  addi    r8, r4, ramPut64@l
/* 0678A8 8006CE48 38A5D258 */  addi    r5, r5, ramPut8@l
/* 0678AC 8006CE4C 38C6D230 */  addi    r6, r6, ramPut16@l
/* 0678B0 8006CE50 38E7D208 */  addi    r7, r7, ramPut32@l
/* 0678B4 8006CE54 389F0000 */  addi    r4, r31, 0
/* 0678B8 8006CE58 4BFC81E1 */  bl      cpuSetDevicePut
/* 0678BC 8006CE5C 2C030000 */  cmpwi   r3, 0
/* 0678C0 8006CE60 4082000C */  bne     lbl_8006CE6C
/* 0678C4 8006CE64 38600000 */  li      r3, 0
/* 0678C8 8006CE68 48000150 */  b       lbl_8006CFB8
lbl_8006CE6C:
/* 0678CC 8006CE6C 807E0000 */  lwz     r3, 0(r30)
/* 0678D0 8006CE70 3CA08007 */  lis     r5, ramGet8@ha
/* 0678D4 8006CE74 3CC08007 */  lis     r6, ramGet16@ha
/* 0678D8 8006CE78 3CE08007 */  lis     r7, ramGet32@ha
/* 0678DC 8006CE7C 80630024 */  lwz     r3, 0x24(r3)
/* 0678E0 8006CE80 3C808007 */  lis     r4, ramGet64@ha
/* 0678E4 8006CE84 3904D0F8 */  addi    r8, r4, ramGet64@l
/* 0678E8 8006CE88 38A5D1A4 */  addi    r5, r5, ramGet8@l
/* 0678EC 8006CE8C 38C6D170 */  addi    r6, r6, ramGet16@l
/* 0678F0 8006CE90 38E7D13C */  addi    r7, r7, ramGet32@l
/* 0678F4 8006CE94 389F0000 */  addi    r4, r31, 0
/* 0678F8 8006CE98 4BFC81B9 */  bl      cpuSetDeviceGet
/* 0678FC 8006CE9C 2C030000 */  cmpwi   r3, 0
/* 067900 8006CEA0 40820114 */  bne     lbl_8006CFB4
/* 067904 8006CEA4 38600000 */  li      r3, 0
/* 067908 8006CEA8 48000110 */  b       lbl_8006CFB8
lbl_8006CEAC:
/* 06790C 8006CEAC 807E0000 */  lwz     r3, 0(r30)
/* 067910 8006CEB0 3CA08007 */  lis     r5, ramPutRI8@ha
/* 067914 8006CEB4 3CC08007 */  lis     r6, ramPutRI16@ha
/* 067918 8006CEB8 3CE08007 */  lis     r7, ramPutRI32@ha
/* 06791C 8006CEBC 80630024 */  lwz     r3, 0x24(r3)
/* 067920 8006CEC0 3C808007 */  lis     r4, ramPutRI64@ha
/* 067924 8006CEC4 3904D2C8 */  addi    r8, r4, ramPutRI64@l
/* 067928 8006CEC8 38A5D30C */  addi    r5, r5, ramPutRI8@l
/* 06792C 8006CECC 38C6D304 */  addi    r6, r6, ramPutRI16@l
/* 067930 8006CED0 38E7D2D0 */  addi    r7, r7, ramPutRI32@l
/* 067934 8006CED4 389F0000 */  addi    r4, r31, 0
/* 067938 8006CED8 4BFC8161 */  bl      cpuSetDevicePut
/* 06793C 8006CEDC 2C030000 */  cmpwi   r3, 0
/* 067940 8006CEE0 4082000C */  bne     lbl_8006CEEC
/* 067944 8006CEE4 38600000 */  li      r3, 0
/* 067948 8006CEE8 480000D0 */  b       lbl_8006CFB8
lbl_8006CEEC:
/* 06794C 8006CEEC 807E0000 */  lwz     r3, 0(r30)
/* 067950 8006CEF0 3CA08007 */  lis     r5, ramGetRI8@ha
/* 067954 8006CEF4 3CC08007 */  lis     r6, ramGetRI16@ha
/* 067958 8006CEF8 3CE08007 */  lis     r7, ramGetRI32@ha
/* 06795C 8006CEFC 80630024 */  lwz     r3, 0x24(r3)
/* 067960 8006CF00 3C808007 */  lis     r4, ramGetRI64@ha
/* 067964 8006CF04 3904D27C */  addi    r8, r4, ramGetRI64@l
/* 067968 8006CF08 38A5D2C0 */  addi    r5, r5, ramGetRI8@l
/* 06796C 8006CF0C 38C6D2B8 */  addi    r6, r6, ramGetRI16@l
/* 067970 8006CF10 38E7D284 */  addi    r7, r7, ramGetRI32@l
/* 067974 8006CF14 389F0000 */  addi    r4, r31, 0
/* 067978 8006CF18 4BFC8139 */  bl      cpuSetDeviceGet
/* 06797C 8006CF1C 2C030000 */  cmpwi   r3, 0
/* 067980 8006CF20 40820094 */  bne     lbl_8006CFB4
/* 067984 8006CF24 38600000 */  li      r3, 0
/* 067988 8006CF28 48000090 */  b       lbl_8006CFB8
lbl_8006CF2C:
/* 06798C 8006CF2C 807E0000 */  lwz     r3, 0(r30)
/* 067990 8006CF30 3CA08007 */  lis     r5, ramPutControl8@ha
/* 067994 8006CF34 3CC08007 */  lis     r6, ramPutControl16@ha
/* 067998 8006CF38 3CE08007 */  lis     r7, ramPutControl32@ha
/* 06799C 8006CF3C 80630024 */  lwz     r3, 0x24(r3)
/* 0679A0 8006CF40 3C808007 */  lis     r4, ramPutControl64@ha
/* 0679A4 8006CF44 3904D360 */  addi    r8, r4, ramPutControl64@l
/* 0679A8 8006CF48 38A5D3A4 */  addi    r5, r5, ramPutControl8@l
/* 0679AC 8006CF4C 38C6D39C */  addi    r6, r6, ramPutControl16@l
/* 0679B0 8006CF50 38E7D368 */  addi    r7, r7, ramPutControl32@l
/* 0679B4 8006CF54 389F0000 */  addi    r4, r31, 0
/* 0679B8 8006CF58 4BFC80E1 */  bl      cpuSetDevicePut
/* 0679BC 8006CF5C 2C030000 */  cmpwi   r3, 0
/* 0679C0 8006CF60 4082000C */  bne     lbl_8006CF6C
/* 0679C4 8006CF64 38600000 */  li      r3, 0
/* 0679C8 8006CF68 48000050 */  b       lbl_8006CFB8
lbl_8006CF6C:
/* 0679CC 8006CF6C 807E0000 */  lwz     r3, 0(r30)
/* 0679D0 8006CF70 3CA08007 */  lis     r5, ramGetControl8@ha
/* 0679D4 8006CF74 3CC08007 */  lis     r6, ramGetControl16@ha
/* 0679D8 8006CF78 3CE08007 */  lis     r7, ramGetControl32@ha
/* 0679DC 8006CF7C 80630024 */  lwz     r3, 0x24(r3)
/* 0679E0 8006CF80 3C808007 */  lis     r4, ramGetControl64@ha
/* 0679E4 8006CF84 3904D314 */  addi    r8, r4, ramGetControl64@l
/* 0679E8 8006CF88 38A5D358 */  addi    r5, r5, ramGetControl8@l
/* 0679EC 8006CF8C 38C6D350 */  addi    r6, r6, ramGetControl16@l
/* 0679F0 8006CF90 38E7D31C */  addi    r7, r7, ramGetControl32@l
/* 0679F4 8006CF94 389F0000 */  addi    r4, r31, 0
/* 0679F8 8006CF98 4BFC80B9 */  bl      cpuSetDeviceGet
/* 0679FC 8006CF9C 2C030000 */  cmpwi   r3, 0
/* 067A00 8006CFA0 40820014 */  bne     lbl_8006CFB4
/* 067A04 8006CFA4 38600000 */  li      r3, 0
/* 067A08 8006CFA8 48000010 */  b       lbl_8006CFB8
lbl_8006CFAC:
/* 067A0C 8006CFAC 38600000 */  li      r3, 0
/* 067A10 8006CFB0 48000008 */  b       lbl_8006CFB8
lbl_8006CFB4:
/* 067A14 8006CFB4 38600001 */  li      r3, 1
lbl_8006CFB8:
/* 067A18 8006CFB8 80010024 */  lwz     r0, 0x24(r1)
/* 067A1C 8006CFBC 83E1001C */  lwz     r31, 0x1c(r1)
/* 067A20 8006CFC0 83C10018 */  lwz     r30, 0x18(r1)
/* 067A24 8006CFC4 7C0803A6 */  mtlr    r0
/* 067A28 8006CFC8 38210020 */  addi    r1, r1, 0x20
/* 067A2C 8006CFCC 4E800020 */  blr     

glabel ramGetSize
/* 067A30 8006CFD0 28040000 */  cmplwi  r4, 0
/* 067A34 8006CFD4 4182000C */  beq     lbl_8006CFE0
/* 067A38 8006CFD8 80030008 */  lwz     r0, 8(r3)
/* 067A3C 8006CFDC 90040000 */  stw     r0, 0(r4)
lbl_8006CFE0:
/* 067A40 8006CFE0 38600001 */  li      r3, 1
/* 067A44 8006CFE4 4E800020 */  blr     

glabel ramSetSize
/* 067A48 8006CFE8 7C0802A6 */  mflr    r0
/* 067A4C 8006CFEC 90010004 */  stw     r0, 4(r1)
/* 067A50 8006CFF0 9421FFE8 */  stwu    r1, -0x18(r1)
/* 067A54 8006CFF4 93E10014 */  stw     r31, 0x14(r1)
/* 067A58 8006CFF8 93C10010 */  stw     r30, 0x10(r1)
/* 067A5C 8006CFFC 7C7E1B78 */  mr      r30, r3
/* 067A60 8006D000 80030004 */  lwz     r0, 4(r3)
/* 067A64 8006D004 28000000 */  cmplwi  r0, 0
/* 067A68 8006D008 4182000C */  beq     lbl_8006D014
/* 067A6C 8006D00C 38600000 */  li      r3, 0
/* 067A70 8006D010 48000030 */  b       lbl_8006D040
lbl_8006D014:
/* 067A74 8006D014 380403FF */  addi    r0, r4, 0x3ff
/* 067A78 8006D018 541F002A */  rlwinm  r31, r0, 0, 0, 0x15
/* 067A7C 8006D01C 387E0004 */  addi    r3, r30, 4
/* 067A80 8006D020 67E43000 */  oris    r4, r31, 0x3000
/* 067A84 8006D024 4BF9A191 */  bl      xlHeapTake
/* 067A88 8006D028 2C030000 */  cmpwi   r3, 0
/* 067A8C 8006D02C 4082000C */  bne     lbl_8006D038
/* 067A90 8006D030 38600000 */  li      r3, 0
/* 067A94 8006D034 4800000C */  b       lbl_8006D040
lbl_8006D038:
/* 067A98 8006D038 93FE0008 */  stw     r31, 8(r30)
/* 067A9C 8006D03C 38600001 */  li      r3, 1
lbl_8006D040:
/* 067AA0 8006D040 8001001C */  lwz     r0, 0x1c(r1)
/* 067AA4 8006D044 83E10014 */  lwz     r31, 0x14(r1)
/* 067AA8 8006D048 83C10010 */  lwz     r30, 0x10(r1)
/* 067AAC 8006D04C 7C0803A6 */  mtlr    r0
/* 067AB0 8006D050 38210018 */  addi    r1, r1, 0x18
/* 067AB4 8006D054 4E800020 */  blr     

glabel ramWipe
/* 067AB8 8006D058 7C0802A6 */  mflr    r0
/* 067ABC 8006D05C 90010004 */  stw     r0, 4(r1)
/* 067AC0 8006D060 9421FFF8 */  stwu    r1, -8(r1)
/* 067AC4 8006D064 80830008 */  lwz     r4, 8(r3)
/* 067AC8 8006D068 28040000 */  cmplwi  r4, 0
/* 067ACC 8006D06C 41820020 */  beq     lbl_8006D08C
/* 067AD0 8006D070 80630004 */  lwz     r3, 4(r3)
/* 067AD4 8006D074 38A00000 */  li      r5, 0
/* 067AD8 8006D078 4BF99891 */  bl      xlHeapFill32
/* 067ADC 8006D07C 2C030000 */  cmpwi   r3, 0
/* 067AE0 8006D080 4082000C */  bne     lbl_8006D08C
/* 067AE4 8006D084 38600000 */  li      r3, 0
/* 067AE8 8006D088 48000008 */  b       lbl_8006D090
lbl_8006D08C:
/* 067AEC 8006D08C 38600001 */  li      r3, 1
lbl_8006D090:
/* 067AF0 8006D090 8001000C */  lwz     r0, 0xc(r1)
/* 067AF4 8006D094 38210008 */  addi    r1, r1, 8
/* 067AF8 8006D098 7C0803A6 */  mtlr    r0
/* 067AFC 8006D09C 4E800020 */  blr     

glabel ramGetBuffer
/* 067B00 8006D0A0 80E30008 */  lwz     r7, 8(r3)
/* 067B04 8006D0A4 54A501BE */  clrlwi  r5, r5, 6
/* 067B08 8006D0A8 28070000 */  cmplwi  r7, 0
/* 067B0C 8006D0AC 4082000C */  bne     lbl_8006D0B8
/* 067B10 8006D0B0 38600000 */  li      r3, 0
/* 067B14 8006D0B4 4E800020 */  blr     
lbl_8006D0B8:
/* 067B18 8006D0B8 28060000 */  cmplwi  r6, 0
/* 067B1C 8006D0BC 41820028 */  beq     lbl_8006D0E4
/* 067B20 8006D0C0 80060000 */  lwz     r0, 0(r6)
/* 067B24 8006D0C4 7C050214 */  add     r0, r5, r0
/* 067B28 8006D0C8 7C003840 */  cmplw   r0, r7
/* 067B2C 8006D0CC 41800018 */  blt     lbl_8006D0E4
/* 067B30 8006D0D0 7C053851 */  subf.   r0, r5, r7
/* 067B34 8006D0D4 90060000 */  stw     r0, 0(r6)
/* 067B38 8006D0D8 4080000C */  bge     lbl_8006D0E4
/* 067B3C 8006D0DC 38000000 */  li      r0, 0
/* 067B40 8006D0E0 90060000 */  stw     r0, 0(r6)
lbl_8006D0E4:
/* 067B44 8006D0E4 80030004 */  lwz     r0, 4(r3)
/* 067B48 8006D0E8 38600001 */  li      r3, 1
/* 067B4C 8006D0EC 7C002A14 */  add     r0, r0, r5
/* 067B50 8006D0F0 90040000 */  stw     r0, 0(r4)
/* 067B54 8006D0F4 4E800020 */  blr     

ramGet64:
/* 067B58 8006D0F8 80030008 */  lwz     r0, 8(r3)
/* 067B5C 8006D0FC 548401BE */  clrlwi  r4, r4, 6
/* 067B60 8006D100 7C040040 */  cmplw   r4, r0
/* 067B64 8006D104 40800024 */  bge     lbl_8006D128
/* 067B68 8006D108 80630004 */  lwz     r3, 4(r3)
/* 067B6C 8006D10C 54800038 */  rlwinm  r0, r4, 0, 0, 0x1c
/* 067B70 8006D110 7C630214 */  add     r3, r3, r0
/* 067B74 8006D114 80030000 */  lwz     r0, 0(r3)
/* 067B78 8006D118 80630004 */  lwz     r3, 4(r3)
/* 067B7C 8006D11C 90650004 */  stw     r3, 4(r5)
/* 067B80 8006D120 90050000 */  stw     r0, 0(r5)
/* 067B84 8006D124 48000010 */  b       lbl_8006D134
lbl_8006D128:
/* 067B88 8006D128 38000000 */  li      r0, 0
/* 067B8C 8006D12C 90050004 */  stw     r0, 4(r5)
/* 067B90 8006D130 90050000 */  stw     r0, 0(r5)
lbl_8006D134:
/* 067B94 8006D134 38600001 */  li      r3, 1
/* 067B98 8006D138 4E800020 */  blr     

ramGet32:
/* 067B9C 8006D13C 80030008 */  lwz     r0, 8(r3)
/* 067BA0 8006D140 548401BE */  clrlwi  r4, r4, 6
/* 067BA4 8006D144 7C040040 */  cmplw   r4, r0
/* 067BA8 8006D148 40800018 */  bge     lbl_8006D160
/* 067BAC 8006D14C 80630004 */  lwz     r3, 4(r3)
/* 067BB0 8006D150 5480003A */  rlwinm  r0, r4, 0, 0, 0x1d
/* 067BB4 8006D154 7C03002E */  lwzx    r0, r3, r0
/* 067BB8 8006D158 90050000 */  stw     r0, 0(r5)
/* 067BBC 8006D15C 4800000C */  b       lbl_8006D168
lbl_8006D160:
/* 067BC0 8006D160 38000000 */  li      r0, 0
/* 067BC4 8006D164 90050000 */  stw     r0, 0(r5)
lbl_8006D168:
/* 067BC8 8006D168 38600001 */  li      r3, 1
/* 067BCC 8006D16C 4E800020 */  blr     

ramGet16:
/* 067BD0 8006D170 80030008 */  lwz     r0, 8(r3)
/* 067BD4 8006D174 548401BE */  clrlwi  r4, r4, 6
/* 067BD8 8006D178 7C040040 */  cmplw   r4, r0
/* 067BDC 8006D17C 40800018 */  bge     lbl_8006D194
/* 067BE0 8006D180 80630004 */  lwz     r3, 4(r3)
/* 067BE4 8006D184 5480003C */  rlwinm  r0, r4, 0, 0, 0x1e
/* 067BE8 8006D188 7C0302AE */  lhax    r0, r3, r0
/* 067BEC 8006D18C B0050000 */  sth     r0, 0(r5)
/* 067BF0 8006D190 4800000C */  b       lbl_8006D19C
lbl_8006D194:
/* 067BF4 8006D194 38000000 */  li      r0, 0
/* 067BF8 8006D198 B0050000 */  sth     r0, 0(r5)
lbl_8006D19C:
/* 067BFC 8006D19C 38600001 */  li      r3, 1
/* 067C00 8006D1A0 4E800020 */  blr     

ramGet8:
/* 067C04 8006D1A4 80030008 */  lwz     r0, 8(r3)
/* 067C08 8006D1A8 548401BE */  clrlwi  r4, r4, 6
/* 067C0C 8006D1AC 7C040040 */  cmplw   r4, r0
/* 067C10 8006D1B0 40800014 */  bge     lbl_8006D1C4
/* 067C14 8006D1B4 80030004 */  lwz     r0, 4(r3)
/* 067C18 8006D1B8 7C0400AE */  lbzx    r0, r4, r0
/* 067C1C 8006D1BC 98050000 */  stb     r0, 0(r5)
/* 067C20 8006D1C0 4800000C */  b       lbl_8006D1CC
lbl_8006D1C4:
/* 067C24 8006D1C4 38000000 */  li      r0, 0
/* 067C28 8006D1C8 98050000 */  stb     r0, 0(r5)
lbl_8006D1CC:
/* 067C2C 8006D1CC 38600001 */  li      r3, 1
/* 067C30 8006D1D0 4E800020 */  blr     

ramPut64:
/* 067C34 8006D1D4 80030008 */  lwz     r0, 8(r3)
/* 067C38 8006D1D8 548401BE */  clrlwi  r4, r4, 6
/* 067C3C 8006D1DC 7C040040 */  cmplw   r4, r0
/* 067C40 8006D1E0 40800020 */  bge     lbl_8006D200
/* 067C44 8006D1E4 80630004 */  lwz     r3, 4(r3)
/* 067C48 8006D1E8 54800038 */  rlwinm  r0, r4, 0, 0, 0x1c
/* 067C4C 8006D1EC 80850000 */  lwz     r4, 0(r5)
/* 067C50 8006D1F0 80A50004 */  lwz     r5, 4(r5)
/* 067C54 8006D1F4 7C630214 */  add     r3, r3, r0
/* 067C58 8006D1F8 90A30004 */  stw     r5, 4(r3)
/* 067C5C 8006D1FC 90830000 */  stw     r4, 0(r3)
lbl_8006D200:
/* 067C60 8006D200 38600001 */  li      r3, 1
/* 067C64 8006D204 4E800020 */  blr     

ramPut32:
/* 067C68 8006D208 80030008 */  lwz     r0, 8(r3)
/* 067C6C 8006D20C 548601BE */  clrlwi  r6, r4, 6
/* 067C70 8006D210 7C060040 */  cmplw   r6, r0
/* 067C74 8006D214 40800014 */  bge     lbl_8006D228
/* 067C78 8006D218 80850000 */  lwz     r4, 0(r5)
/* 067C7C 8006D21C 54C0003A */  rlwinm  r0, r6, 0, 0, 0x1d
/* 067C80 8006D220 80630004 */  lwz     r3, 4(r3)
/* 067C84 8006D224 7C83012E */  stwx    r4, r3, r0
lbl_8006D228:
/* 067C88 8006D228 38600001 */  li      r3, 1
/* 067C8C 8006D22C 4E800020 */  blr     

ramPut16:
/* 067C90 8006D230 80030008 */  lwz     r0, 8(r3)
/* 067C94 8006D234 548601BE */  clrlwi  r6, r4, 6
/* 067C98 8006D238 7C060040 */  cmplw   r6, r0
/* 067C9C 8006D23C 40800014 */  bge     lbl_8006D250
/* 067CA0 8006D240 A0850000 */  lhz     r4, 0(r5)
/* 067CA4 8006D244 54C0003C */  rlwinm  r0, r6, 0, 0, 0x1e
/* 067CA8 8006D248 80630004 */  lwz     r3, 4(r3)
/* 067CAC 8006D24C 7C83032E */  sthx    r4, r3, r0
lbl_8006D250:
/* 067CB0 8006D250 38600001 */  li      r3, 1
/* 067CB4 8006D254 4E800020 */  blr     

ramPut8:
/* 067CB8 8006D258 80030008 */  lwz     r0, 8(r3)
/* 067CBC 8006D25C 548601BE */  clrlwi  r6, r4, 6
/* 067CC0 8006D260 7C060040 */  cmplw   r6, r0
/* 067CC4 8006D264 40800010 */  bge     lbl_8006D274
/* 067CC8 8006D268 88850000 */  lbz     r4, 0(r5)
/* 067CCC 8006D26C 80030004 */  lwz     r0, 4(r3)
/* 067CD0 8006D270 7C8601AE */  stbx    r4, r6, r0
lbl_8006D274:
/* 067CD4 8006D274 38600001 */  li      r3, 1
/* 067CD8 8006D278 4E800020 */  blr     

ramGetRI64:
/* 067CDC 8006D27C 38600000 */  li      r3, 0
/* 067CE0 8006D280 4E800020 */  blr     

ramGetRI32:
/* 067CE4 8006D284 548006FE */  clrlwi  r0, r4, 0x1b
/* 067CE8 8006D288 2800001C */  cmplwi  r0, 0x1c
/* 067CEC 8006D28C 4181001C */  bgt     lbl_8006D2A8
/* 067CF0 8006D290 3C60800F */  lis     r3, jtbl_800ED6D8@ha
/* 067CF4 8006D294 3863D6D8 */  addi    r3, r3, jtbl_800ED6D8@l
/* 067CF8 8006D298 5400103A */  slwi    r0, r0, 2
/* 067CFC 8006D29C 7C03002E */  lwzx    r0, r3, r0
/* 067D00 8006D2A0 7C0903A6 */  mtctr   r0
/* 067D04 8006D2A4 4E800420 */  bctr    
glabel lbl_8006D2A8
/* 067D08 8006D2A8 38600000 */  li      r3, 0
/* 067D0C 8006D2AC 4E800020 */  blr     
glabel lbl_8006D2B0
/* 067D10 8006D2B0 38600001 */  li      r3, 1
/* 067D14 8006D2B4 4E800020 */  blr     

ramGetRI16:
/* 067D18 8006D2B8 38600000 */  li      r3, 0
/* 067D1C 8006D2BC 4E800020 */  blr     

ramGetRI8:
/* 067D20 8006D2C0 38600000 */  li      r3, 0
/* 067D24 8006D2C4 4E800020 */  blr     

ramPutRI64:
/* 067D28 8006D2C8 38600000 */  li      r3, 0
/* 067D2C 8006D2CC 4E800020 */  blr     

ramPutRI32:
/* 067D30 8006D2D0 548006FE */  clrlwi  r0, r4, 0x1b
/* 067D34 8006D2D4 2800001C */  cmplwi  r0, 0x1c
/* 067D38 8006D2D8 4181001C */  bgt     lbl_8006D2F4
/* 067D3C 8006D2DC 3C60800F */  lis     r3, jtbl_800ED74C@ha
/* 067D40 8006D2E0 3863D74C */  addi    r3, r3, jtbl_800ED74C@l
/* 067D44 8006D2E4 5400103A */  slwi    r0, r0, 2
/* 067D48 8006D2E8 7C03002E */  lwzx    r0, r3, r0
/* 067D4C 8006D2EC 7C0903A6 */  mtctr   r0
/* 067D50 8006D2F0 4E800420 */  bctr    
glabel lbl_8006D2F4
/* 067D54 8006D2F4 38600000 */  li      r3, 0
/* 067D58 8006D2F8 4E800020 */  blr     
glabel lbl_8006D2FC
/* 067D5C 8006D2FC 38600001 */  li      r3, 1
/* 067D60 8006D300 4E800020 */  blr     

ramPutRI16:
/* 067D64 8006D304 38600000 */  li      r3, 0
/* 067D68 8006D308 4E800020 */  blr     

ramPutRI8:
/* 067D6C 8006D30C 38600000 */  li      r3, 0
/* 067D70 8006D310 4E800020 */  blr     

ramGetControl64:
/* 067D74 8006D314 38600000 */  li      r3, 0
/* 067D78 8006D318 4E800020 */  blr     

ramGetControl32:
/* 067D7C 8006D31C 548006BE */  clrlwi  r0, r4, 0x1a
/* 067D80 8006D320 28000024 */  cmplwi  r0, 0x24
/* 067D84 8006D324 4181001C */  bgt     lbl_8006D340
/* 067D88 8006D328 3C60800F */  lis     r3, jtbl_800ED7C0@ha
/* 067D8C 8006D32C 3863D7C0 */  addi    r3, r3, jtbl_800ED7C0@l
/* 067D90 8006D330 5400103A */  slwi    r0, r0, 2
/* 067D94 8006D334 7C03002E */  lwzx    r0, r3, r0
/* 067D98 8006D338 7C0903A6 */  mtctr   r0
/* 067D9C 8006D33C 4E800420 */  bctr    
glabel lbl_8006D340
/* 067DA0 8006D340 38600000 */  li      r3, 0
/* 067DA4 8006D344 4E800020 */  blr     
glabel lbl_8006D348
/* 067DA8 8006D348 38600001 */  li      r3, 1
/* 067DAC 8006D34C 4E800020 */  blr     

ramGetControl16:
/* 067DB0 8006D350 38600000 */  li      r3, 0
/* 067DB4 8006D354 4E800020 */  blr     

ramGetControl8:
/* 067DB8 8006D358 38600000 */  li      r3, 0
/* 067DBC 8006D35C 4E800020 */  blr     

ramPutControl64:
/* 067DC0 8006D360 38600000 */  li      r3, 0
/* 067DC4 8006D364 4E800020 */  blr     

ramPutControl32:
/* 067DC8 8006D368 548006BE */  clrlwi  r0, r4, 0x1a
/* 067DCC 8006D36C 28000024 */  cmplwi  r0, 0x24
/* 067DD0 8006D370 4181001C */  bgt     lbl_8006D38C
/* 067DD4 8006D374 3C60800F */  lis     r3, jtbl_800ED854@ha
/* 067DD8 8006D378 3863D854 */  addi    r3, r3, jtbl_800ED854@l
/* 067DDC 8006D37C 5400103A */  slwi    r0, r0, 2
/* 067DE0 8006D380 7C03002E */  lwzx    r0, r3, r0
/* 067DE4 8006D384 7C0903A6 */  mtctr   r0
/* 067DE8 8006D388 4E800420 */  bctr    
glabel lbl_8006D38C
/* 067DEC 8006D38C 38600000 */  li      r3, 0
/* 067DF0 8006D390 4E800020 */  blr     
glabel lbl_8006D394
/* 067DF4 8006D394 38600001 */  li      r3, 1
/* 067DF8 8006D398 4E800020 */  blr     

ramPutControl16:
/* 067DFC 8006D39C 38600000 */  li      r3, 0
/* 067E00 8006D3A0 4E800020 */  blr     

ramPutControl8:
/* 067E04 8006D3A4 38600000 */  li      r3, 0
/* 067E08 8006D3A8 4E800020 */  blr     

.section .data, "wa"

.balign 8

/* 000EA748 800ED6C8 0010 */
glabel gClassRAM
    .long D_80135270, 0x0000000C, 0x00000000, ramEvent

/* 000EA758 800ED6D8 0074 */
jtbl_800ED6D8:
    .long lbl_8006D2B0
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2B0
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2B0
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2B0
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2B0
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2B0
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2B0
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2A8
    .long lbl_8006D2B0

/* 000EA7CC 800ED74C 0074 */
jtbl_800ED74C:
    .long lbl_8006D2FC
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2FC
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2FC
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2FC
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2FC
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2FC
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2FC
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2F4
    .long lbl_8006D2FC

/* 000EA840 800ED7C0 0094 */
jtbl_800ED7C0:
    .long lbl_8006D348
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D348
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D348
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D348
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D348
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D348
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D348
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D348
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D348
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D340
    .long lbl_8006D348

/* 000EA8D4 800ED854 0094 */
jtbl_800ED854:
    .long lbl_8006D394
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D394
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D394
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D394
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D394
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D394
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D394
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D394
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D394
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D38C
    .long lbl_8006D394

.section .sdata, "wa"

.balign 8

/* 000F14F0 80135270 0004 */
D_80135270:
    .asciz "RAM"
    .balign 4
