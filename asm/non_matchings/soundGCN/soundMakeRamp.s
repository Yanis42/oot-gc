glabel soundMakeRamp
/* 0177EC 8001CD8C 7C0802A6 */  mflr    r0
/* 0177F0 8001CD90 2C050000 */  cmpwi   r5, 0
/* 0177F4 8001CD94 90010004 */  stw     r0, 4(r1)
/* 0177F8 8001CD98 9421FFB8 */  stwu    r1, -0x48(r1)
/* 0177FC 8001CD9C BF610034 */  stmw    r27, 0x34(r1)
/* 017800 8001CDA0 4082014C */  bne     lbl_8001CEEC
/* 017804 8001CDA4 5480103A */  slwi    r0, r4, 2
/* 017808 8001CDA8 812300C4 */  lwz     r9, 0xc4(r3)
/* 01780C 8001CDAC 7C830214 */  add     r4, r3, r0
/* 017810 8001CDB0 80040050 */  lwz     r0, 0x50(r4)
/* 017814 8001CDB4 80840010 */  lwz     r4, 0x10(r4)
/* 017818 8001CDB8 7C050E70 */  srawi   r5, r0, 1
/* 01781C 8001CDBC 3805FFFE */  addi    r0, r5, -2
/* 017820 8001CDC0 5400083C */  slwi    r0, r0, 1
/* 017824 8001CDC4 7C840214 */  add     r4, r4, r0
/* 017828 8001CDC8 A8A40000 */  lha     r5, 0(r4)
/* 01782C 8001CDCC A9640002 */  lha     r11, 2(r4)
/* 017830 8001CDD0 7CA00735 */  extsh.  r0, r5
/* 017834 8001CDD4 39450000 */  addi    r10, r5, 0
/* 017838 8001CDD8 4082000C */  bne     lbl_8001CDE4
/* 01783C 8001CDDC 38A00000 */  li      r5, 0
/* 017840 8001CDE0 48000078 */  b       lbl_8001CE58
lbl_8001CDE4:
/* 017844 8001CDE4 800300D4 */  lwz     r0, 0xd4(r3)
/* 017848 8001CDE8 7D440734 */  extsh   r4, r10
/* 01784C 8001CDEC 6C848000 */  xoris   r4, r4, 0x8000
/* 017850 8001CDF0 C84280F0 */  lfd     f2, D_80135DF0@sda21(r2)
/* 017854 8001CDF4 7C001670 */  srawi   r0, r0, 2
/* 017858 8001CDF8 6C008000 */  xoris   r0, r0, 0x8000
/* 01785C 8001CDFC 9081002C */  stw     r4, 0x2c(r1)
/* 017860 8001CE00 3C804330 */  lis     r4, 0x4330
/* 017864 8001CE04 C06280F8 */  lfs     f3, D_80135DF8@sda21(r2)
/* 017868 8001CE08 90010024 */  stw     r0, 0x24(r1)
/* 01786C 8001CE0C 90810028 */  stw     r4, 0x28(r1)
/* 017870 8001CE10 90810020 */  stw     r4, 0x20(r1)
/* 017874 8001CE14 C8210028 */  lfd     f1, 0x28(r1)
/* 017878 8001CE18 C8010020 */  lfd     f0, 0x20(r1)
/* 01787C 8001CE1C EC211028 */  fsubs   f1, f1, f2
/* 017880 8001CE20 EC001028 */  fsubs   f0, f0, f2
/* 017884 8001CE24 EC010024 */  fdivs   f0, f1, f0
/* 017888 8001CE28 EC03002A */  fadds   f0, f3, f0
/* 01788C 8001CE2C FC00001E */  fctiwz  f0, f0
/* 017890 8001CE30 D8010018 */  stfd    f0, 0x18(r1)
/* 017894 8001CE34 80A1001C */  lwz     r5, 0x1c(r1)
/* 017898 8001CE38 7CA00735 */  extsh.  r0, r5
/* 01789C 8001CE3C 4082001C */  bne     lbl_8001CE58
/* 0178A0 8001CE40 7D400735 */  extsh.  r0, r10
/* 0178A4 8001CE44 4081000C */  ble     lbl_8001CE50
/* 0178A8 8001CE48 38000001 */  li      r0, 1
/* 0178AC 8001CE4C 48000008 */  b       lbl_8001CE54
lbl_8001CE50:
/* 0178B0 8001CE50 3800FFFF */  li      r0, -1
lbl_8001CE54:
/* 0178B4 8001CE54 7C050734 */  extsh   r5, r0
lbl_8001CE58:
/* 0178B8 8001CE58 7D600735 */  extsh.  r0, r11
/* 0178BC 8001CE5C 4082000C */  bne     lbl_8001CE68
/* 0178C0 8001CE60 38800000 */  li      r4, 0
/* 0178C4 8001CE64 48000074 */  b       lbl_8001CED8
lbl_8001CE68:
/* 0178C8 8001CE68 800300D4 */  lwz     r0, 0xd4(r3)
/* 0178CC 8001CE6C 6D648000 */  xoris   r4, r11, 0x8000
/* 0178D0 8001CE70 9081001C */  stw     r4, 0x1c(r1)
/* 0178D4 8001CE74 3C804330 */  lis     r4, 0x4330
/* 0178D8 8001CE78 7C001670 */  srawi   r0, r0, 2
/* 0178DC 8001CE7C 6C008000 */  xoris   r0, r0, 0x8000
/* 0178E0 8001CE80 90810018 */  stw     r4, 0x18(r1)
/* 0178E4 8001CE84 C84280F0 */  lfd     f2, D_80135DF0@sda21(r2)
/* 0178E8 8001CE88 90010024 */  stw     r0, 0x24(r1)
/* 0178EC 8001CE8C C8010018 */  lfd     f0, 0x18(r1)
/* 0178F0 8001CE90 90810020 */  stw     r4, 0x20(r1)
/* 0178F4 8001CE94 EC201028 */  fsubs   f1, f0, f2
/* 0178F8 8001CE98 C06280F8 */  lfs     f3, D_80135DF8@sda21(r2)
/* 0178FC 8001CE9C C8010020 */  lfd     f0, 0x20(r1)
/* 017900 8001CEA0 EC001028 */  fsubs   f0, f0, f2
/* 017904 8001CEA4 EC010024 */  fdivs   f0, f1, f0
/* 017908 8001CEA8 EC03002A */  fadds   f0, f3, f0
/* 01790C 8001CEAC FC00001E */  fctiwz  f0, f0
/* 017910 8001CEB0 D8010028 */  stfd    f0, 0x28(r1)
/* 017914 8001CEB4 8081002C */  lwz     r4, 0x2c(r1)
/* 017918 8001CEB8 7C800735 */  extsh.  r0, r4
/* 01791C 8001CEBC 4082001C */  bne     lbl_8001CED8
/* 017920 8001CEC0 7D600735 */  extsh.  r0, r11
/* 017924 8001CEC4 4081000C */  ble     lbl_8001CED0
/* 017928 8001CEC8 38000001 */  li      r0, 1
/* 01792C 8001CECC 48000008 */  b       lbl_8001CED4
lbl_8001CED0:
/* 017930 8001CED0 3800FFFF */  li      r0, -1
lbl_8001CED4:
/* 017934 8001CED4 7C040734 */  extsh   r4, r0
lbl_8001CED8:
/* 017938 8001CED8 7CC500D0 */  neg     r6, r5
/* 01793C 8001CEDC 7CE400D0 */  neg     r7, r4
/* 017940 8001CEE0 3BE00000 */  li      r31, 0
/* 017944 8001CEE4 39800000 */  li      r12, 0
/* 017948 8001CEE8 48000140 */  b       lbl_8001D028
lbl_8001CEEC:
/* 01794C 8001CEEC 2C050001 */  cmpwi   r5, 1
/* 017950 8001CEF0 40820130 */  bne     lbl_8001D020
/* 017954 8001CEF4 5480103A */  slwi    r0, r4, 2
/* 017958 8001CEF8 812300C0 */  lwz     r9, 0xc0(r3)
/* 01795C 8001CEFC 7C830214 */  add     r4, r3, r0
/* 017960 8001CF00 80840010 */  lwz     r4, 0x10(r4)
/* 017964 8001CF04 A8A40000 */  lha     r5, 0(r4)
/* 017968 8001CF08 ABE40002 */  lha     r31, 2(r4)
/* 01796C 8001CF0C 7CA00735 */  extsh.  r0, r5
/* 017970 8001CF10 39850000 */  addi    r12, r5, 0
/* 017974 8001CF14 4082000C */  bne     lbl_8001CF20
/* 017978 8001CF18 38C00000 */  li      r6, 0
/* 01797C 8001CF1C 48000078 */  b       lbl_8001CF94
lbl_8001CF20:
/* 017980 8001CF20 800300D4 */  lwz     r0, 0xd4(r3)
/* 017984 8001CF24 7D840734 */  extsh   r4, r12
/* 017988 8001CF28 6C848000 */  xoris   r4, r4, 0x8000
/* 01798C 8001CF2C C84280F0 */  lfd     f2, D_80135DF0@sda21(r2)
/* 017990 8001CF30 7C001670 */  srawi   r0, r0, 2
/* 017994 8001CF34 6C008000 */  xoris   r0, r0, 0x8000
/* 017998 8001CF38 9081001C */  stw     r4, 0x1c(r1)
/* 01799C 8001CF3C 3C804330 */  lis     r4, 0x4330
/* 0179A0 8001CF40 C06280F8 */  lfs     f3, D_80135DF8@sda21(r2)
/* 0179A4 8001CF44 90010024 */  stw     r0, 0x24(r1)
/* 0179A8 8001CF48 90810018 */  stw     r4, 0x18(r1)
/* 0179AC 8001CF4C 90810020 */  stw     r4, 0x20(r1)
/* 0179B0 8001CF50 C8210018 */  lfd     f1, 0x18(r1)
/* 0179B4 8001CF54 C8010020 */  lfd     f0, 0x20(r1)
/* 0179B8 8001CF58 EC211028 */  fsubs   f1, f1, f2
/* 0179BC 8001CF5C EC001028 */  fsubs   f0, f0, f2
/* 0179C0 8001CF60 EC010024 */  fdivs   f0, f1, f0
/* 0179C4 8001CF64 EC03002A */  fadds   f0, f3, f0
/* 0179C8 8001CF68 FC00001E */  fctiwz  f0, f0
/* 0179CC 8001CF6C D8010028 */  stfd    f0, 0x28(r1)
/* 0179D0 8001CF70 80C1002C */  lwz     r6, 0x2c(r1)
/* 0179D4 8001CF74 7CC00735 */  extsh.  r0, r6
/* 0179D8 8001CF78 4082001C */  bne     lbl_8001CF94
/* 0179DC 8001CF7C 7D800735 */  extsh.  r0, r12
/* 0179E0 8001CF80 4081000C */  ble     lbl_8001CF8C
/* 0179E4 8001CF84 38000001 */  li      r0, 1
/* 0179E8 8001CF88 48000008 */  b       lbl_8001CF90
lbl_8001CF8C:
/* 0179EC 8001CF8C 3800FFFF */  li      r0, -1
lbl_8001CF90:
/* 0179F0 8001CF90 7C060734 */  extsh   r6, r0
lbl_8001CF94:
/* 0179F4 8001CF94 7FE00735 */  extsh.  r0, r31
/* 0179F8 8001CF98 4082000C */  bne     lbl_8001CFA4
/* 0179FC 8001CF9C 38E00000 */  li      r7, 0
/* 017A00 8001CFA0 48000074 */  b       lbl_8001D014
lbl_8001CFA4:
/* 017A04 8001CFA4 800300D4 */  lwz     r0, 0xd4(r3)
/* 017A08 8001CFA8 6FE48000 */  xoris   r4, r31, 0x8000
/* 017A0C 8001CFAC 9081001C */  stw     r4, 0x1c(r1)
/* 017A10 8001CFB0 3C804330 */  lis     r4, 0x4330
/* 017A14 8001CFB4 7C001670 */  srawi   r0, r0, 2
/* 017A18 8001CFB8 6C008000 */  xoris   r0, r0, 0x8000
/* 017A1C 8001CFBC 90810018 */  stw     r4, 0x18(r1)
/* 017A20 8001CFC0 C84280F0 */  lfd     f2, D_80135DF0@sda21(r2)
/* 017A24 8001CFC4 90010024 */  stw     r0, 0x24(r1)
/* 017A28 8001CFC8 C8010018 */  lfd     f0, 0x18(r1)
/* 017A2C 8001CFCC 90810020 */  stw     r4, 0x20(r1)
/* 017A30 8001CFD0 EC201028 */  fsubs   f1, f0, f2
/* 017A34 8001CFD4 C06280F8 */  lfs     f3, D_80135DF8@sda21(r2)
/* 017A38 8001CFD8 C8010020 */  lfd     f0, 0x20(r1)
/* 017A3C 8001CFDC EC001028 */  fsubs   f0, f0, f2
/* 017A40 8001CFE0 EC010024 */  fdivs   f0, f1, f0
/* 017A44 8001CFE4 EC03002A */  fadds   f0, f3, f0
/* 017A48 8001CFE8 FC00001E */  fctiwz  f0, f0
/* 017A4C 8001CFEC D8010028 */  stfd    f0, 0x28(r1)
/* 017A50 8001CFF0 80E1002C */  lwz     r7, 0x2c(r1)
/* 017A54 8001CFF4 7CE00735 */  extsh.  r0, r7
/* 017A58 8001CFF8 4082001C */  bne     lbl_8001D014
/* 017A5C 8001CFFC 7FE00735 */  extsh.  r0, r31
/* 017A60 8001D000 4081000C */  ble     lbl_8001D00C
/* 017A64 8001D004 38000001 */  li      r0, 1
/* 017A68 8001D008 48000008 */  b       lbl_8001D010
lbl_8001D00C:
/* 017A6C 8001D00C 3800FFFF */  li      r0, -1
lbl_8001D010:
/* 017A70 8001D010 7C070734 */  extsh   r7, r0
lbl_8001D014:
/* 017A74 8001D014 39600000 */  li      r11, 0
/* 017A78 8001D018 39400000 */  li      r10, 0
/* 017A7C 8001D01C 4800000C */  b       lbl_8001D028
lbl_8001D020:
/* 017A80 8001D020 38600000 */  li      r3, 0
/* 017A84 8001D024 48000218 */  b       lbl_8001D23C
lbl_8001D028:
/* 017A88 8001D028 7D440734 */  extsh   r4, r10
/* 017A8C 8001D02C 7D650734 */  extsh   r5, r11
/* 017A90 8001D030 7FFC0734 */  extsh   r28, r31
/* 017A94 8001D034 7D800734 */  extsh   r0, r12
lbl_8001D038:
/* 017A98 8001D038 7CC80735 */  extsh.  r8, r6
/* 017A9C 8001D03C 39000001 */  li      r8, 1
/* 017AA0 8001D040 41820094 */  beq     lbl_8001D0D4
/* 017AA4 8001D044 83C300D4 */  lwz     r30, 0xd4(r3)
/* 017AA8 8001D048 7D5D0735 */  extsh.  r29, r10
/* 017AAC 8001D04C 7FDD1670 */  srawi   r29, r30, 2
/* 017AB0 8001D050 7FA6E9D6 */  mullw   r29, r6, r29
/* 017AB4 8001D054 7F64EA14 */  add     r27, r4, r29
/* 017AB8 8001D058 4080000C */  bge     lbl_8001D064
/* 017ABC 8001D05C 7F7D0735 */  extsh.  r29, r27
/* 017AC0 8001D060 41800060 */  blt     lbl_8001D0C0
lbl_8001D064:
/* 017AC4 8001D064 7D5D0735 */  extsh.  r29, r10
/* 017AC8 8001D068 4081000C */  ble     lbl_8001D074
/* 017ACC 8001D06C 7F7D0735 */  extsh.  r29, r27
/* 017AD0 8001D070 41810050 */  bgt     lbl_8001D0C0
lbl_8001D074:
/* 017AD4 8001D074 7D5D0735 */  extsh.  r29, r10
/* 017AD8 8001D078 4082005C */  bne     lbl_8001D0D4
/* 017ADC 8001D07C 7D9D0735 */  extsh.  r29, r12
/* 017AE0 8001D080 40800020 */  bge     lbl_8001D0A0
/* 017AE4 8001D084 7F7E0734 */  extsh   r30, r27
/* 017AE8 8001D088 7FDD0238 */  eqv     r29, r30, r0
/* 017AEC 8001D08C 7FDE0010 */  subfc   r30, r30, r0
/* 017AF0 8001D090 57BD0FFE */  srwi    r29, r29, 0x1f
/* 017AF4 8001D094 7FBD0194 */  addze   r29, r29
/* 017AF8 8001D098 57BD07FE */  clrlwi  r29, r29, 0x1f
/* 017AFC 8001D09C 4800001C */  b       lbl_8001D0B8
lbl_8001D0A0:
/* 017B00 8001D0A0 7F7E0734 */  extsh   r30, r27
/* 017B04 8001D0A4 7C1DF238 */  eqv     r29, r0, r30
/* 017B08 8001D0A8 7FC0F010 */  subfc   r30, r0, r30
/* 017B0C 8001D0AC 57BD0FFE */  srwi    r29, r29, 0x1f
/* 017B10 8001D0B0 7FBD0194 */  addze   r29, r29
/* 017B14 8001D0B4 57BD07FE */  clrlwi  r29, r29, 0x1f
lbl_8001D0B8:
/* 017B18 8001D0B8 2C1D0000 */  cmpwi   r29, 0
/* 017B1C 8001D0BC 41820018 */  beq     lbl_8001D0D4
lbl_8001D0C0:
/* 017B20 8001D0C0 7CC80734 */  extsh   r8, r6
/* 017B24 8001D0C4 38C00001 */  li      r6, 1
/* 017B28 8001D0C8 7D063030 */  slw     r6, r8, r6
/* 017B2C 8001D0CC 7CC60734 */  extsh   r6, r6
/* 017B30 8001D0D0 39000000 */  li      r8, 0
lbl_8001D0D4:
/* 017B34 8001D0D4 7CFD0735 */  extsh.  r29, r7
/* 017B38 8001D0D8 41820094 */  beq     lbl_8001D16C
/* 017B3C 8001D0DC 83C300D4 */  lwz     r30, 0xd4(r3)
/* 017B40 8001D0E0 7D7D0735 */  extsh.  r29, r11
/* 017B44 8001D0E4 7FDD1670 */  srawi   r29, r30, 2
/* 017B48 8001D0E8 7FA7E9D6 */  mullw   r29, r7, r29
/* 017B4C 8001D0EC 7F65EA14 */  add     r27, r5, r29
/* 017B50 8001D0F0 4080000C */  bge     lbl_8001D0FC
/* 017B54 8001D0F4 7F7D0735 */  extsh.  r29, r27
/* 017B58 8001D0F8 41800060 */  blt     lbl_8001D158
lbl_8001D0FC:
/* 017B5C 8001D0FC 7D7D0735 */  extsh.  r29, r11
/* 017B60 8001D100 4081000C */  ble     lbl_8001D10C
/* 017B64 8001D104 7F7D0735 */  extsh.  r29, r27
/* 017B68 8001D108 41810050 */  bgt     lbl_8001D158
lbl_8001D10C:
/* 017B6C 8001D10C 7D7D0735 */  extsh.  r29, r11
/* 017B70 8001D110 4082005C */  bne     lbl_8001D16C
/* 017B74 8001D114 7FFD0735 */  extsh.  r29, r31
/* 017B78 8001D118 40800020 */  bge     lbl_8001D138
/* 017B7C 8001D11C 7F7E0734 */  extsh   r30, r27
/* 017B80 8001D120 7FDDE238 */  eqv     r29, r30, r28
/* 017B84 8001D124 7FDEE010 */  subfc   r30, r30, r28
/* 017B88 8001D128 57BD0FFE */  srwi    r29, r29, 0x1f
/* 017B8C 8001D12C 7FBD0194 */  addze   r29, r29
/* 017B90 8001D130 57BD07FE */  clrlwi  r29, r29, 0x1f
/* 017B94 8001D134 4800001C */  b       lbl_8001D150
lbl_8001D138:
/* 017B98 8001D138 7F7D0734 */  extsh   r29, r27
/* 017B9C 8001D13C 7F9EEA38 */  eqv     r30, r28, r29
/* 017BA0 8001D140 7FBCE810 */  subfc   r29, r28, r29
/* 017BA4 8001D144 57DE0FFE */  srwi    r30, r30, 0x1f
/* 017BA8 8001D148 7FBE0194 */  addze   r29, r30
/* 017BAC 8001D14C 57BD07FE */  clrlwi  r29, r29, 0x1f
lbl_8001D150:
/* 017BB0 8001D150 2C1D0000 */  cmpwi   r29, 0
/* 017BB4 8001D154 41820018 */  beq     lbl_8001D16C
lbl_8001D158:
/* 017BB8 8001D158 7CE80734 */  extsh   r8, r7
/* 017BBC 8001D15C 38E00001 */  li      r7, 1
/* 017BC0 8001D160 7D073830 */  slw     r7, r8, r7
/* 017BC4 8001D164 7CE70734 */  extsh   r7, r7
/* 017BC8 8001D168 39000000 */  li      r8, 0
lbl_8001D16C:
/* 017BCC 8001D16C 2C080000 */  cmpwi   r8, 0
/* 017BD0 8001D170 4182FEC8 */  beq     lbl_8001D038
/* 017BD4 8001D174 38A90000 */  addi    r5, r9, 0
/* 017BD8 8001D178 7CC80734 */  extsh   r8, r6
/* 017BDC 8001D17C 7D9C0734 */  extsh   r28, r12
/* 017BE0 8001D180 7CFD0734 */  extsh   r29, r7
/* 017BE4 8001D184 7FFE0734 */  extsh   r30, r31
/* 017BE8 8001D188 3B600000 */  li      r27, 0
/* 017BEC 8001D18C 48000094 */  b       lbl_8001D220
lbl_8001D190:
/* 017BF0 8001D190 B1450000 */  sth     r10, 0(r5)
/* 017BF4 8001D194 7D400734 */  extsh   r0, r10
/* 017BF8 8001D198 7C00E000 */  cmpw    r0, r28
/* 017BFC 8001D19C B1650002 */  sth     r11, 2(r5)
/* 017C00 8001D1A0 41820038 */  beq     lbl_8001D1D8
/* 017C04 8001D1A4 40800010 */  bge     lbl_8001D1B4
/* 017C08 8001D1A8 7C004214 */  add     r0, r0, r8
/* 017C0C 8001D1AC 7C00E000 */  cmpw    r0, r28
/* 017C10 8001D1B0 4181001C */  bgt     lbl_8001D1CC
lbl_8001D1B4:
/* 017C14 8001D1B4 7D400734 */  extsh   r0, r10
/* 017C18 8001D1B8 7C00E000 */  cmpw    r0, r28
/* 017C1C 8001D1BC 40810018 */  ble     lbl_8001D1D4
/* 017C20 8001D1C0 7C004214 */  add     r0, r0, r8
/* 017C24 8001D1C4 7C00E000 */  cmpw    r0, r28
/* 017C28 8001D1C8 4080000C */  bge     lbl_8001D1D4
lbl_8001D1CC:
/* 017C2C 8001D1CC 7D8A6378 */  mr      r10, r12
/* 017C30 8001D1D0 48000008 */  b       lbl_8001D1D8
lbl_8001D1D4:
/* 017C34 8001D1D4 7D4A3214 */  add     r10, r10, r6
lbl_8001D1D8:
/* 017C38 8001D1D8 7D600734 */  extsh   r0, r11
/* 017C3C 8001D1DC 7C00F000 */  cmpw    r0, r30
/* 017C40 8001D1E0 41820038 */  beq     lbl_8001D218
/* 017C44 8001D1E4 40800010 */  bge     lbl_8001D1F4
/* 017C48 8001D1E8 7C00EA14 */  add     r0, r0, r29
/* 017C4C 8001D1EC 7C00F000 */  cmpw    r0, r30
/* 017C50 8001D1F0 4181001C */  bgt     lbl_8001D20C
lbl_8001D1F4:
/* 017C54 8001D1F4 7D600734 */  extsh   r0, r11
/* 017C58 8001D1F8 7C00F000 */  cmpw    r0, r30
/* 017C5C 8001D1FC 40810018 */  ble     lbl_8001D214
/* 017C60 8001D200 7C00EA14 */  add     r0, r0, r29
/* 017C64 8001D204 7C00F000 */  cmpw    r0, r30
/* 017C68 8001D208 4080000C */  bge     lbl_8001D214
lbl_8001D20C:
/* 017C6C 8001D20C 7FEBFB78 */  mr      r11, r31
/* 017C70 8001D210 48000008 */  b       lbl_8001D218
lbl_8001D214:
/* 017C74 8001D214 7D6B3A14 */  add     r11, r11, r7
lbl_8001D218:
/* 017C78 8001D218 38A50004 */  addi    r5, r5, 4
/* 017C7C 8001D21C 3B7B0002 */  addi    r27, r27, 2
lbl_8001D220:
/* 017C80 8001D220 808300D4 */  lwz     r4, 0xd4(r3)
/* 017C84 8001D224 7C800E70 */  srawi   r0, r4, 1
/* 017C88 8001D228 7C1B0000 */  cmpw    r27, r0
/* 017C8C 8001D22C 4180FF64 */  blt     lbl_8001D190
/* 017C90 8001D230 7D234B78 */  mr      r3, r9
/* 017C94 8001D234 48080579 */  bl      DCStoreRange
/* 017C98 8001D238 38600001 */  li      r3, 1
lbl_8001D23C:
/* 017C9C 8001D23C BB610034 */  lmw     r27, 0x34(r1)
/* 017CA0 8001D240 8001004C */  lwz     r0, 0x4c(r1)
/* 017CA4 8001D244 38210048 */  addi    r1, r1, 0x48
/* 017CA8 8001D248 7C0803A6 */  mtlr    r0
/* 017CAC 8001D24C 4E800020 */  blr     