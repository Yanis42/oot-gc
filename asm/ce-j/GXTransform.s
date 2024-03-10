# GXTransform.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel GXSetProjection
/* 0A9198 800AE738 80A28400 */  lwz     r5, __GXData@sda21(r2)
/* 0A919C 800AE73C 2C040001 */  cmpwi   r4, 1
/* 0A91A0 800AE740 908504D8 */  stw     r4, 0x4d8(r5)
/* 0A91A4 800AE744 C0030000 */  lfs     f0, 0(r3)
/* 0A91A8 800AE748 D00504DC */  stfs    f0, 0x4dc(r5)
/* 0A91AC 800AE74C C0030014 */  lfs     f0, 0x14(r3)
/* 0A91B0 800AE750 D00504E4 */  stfs    f0, 0x4e4(r5)
/* 0A91B4 800AE754 C0030028 */  lfs     f0, 0x28(r3)
/* 0A91B8 800AE758 D00504EC */  stfs    f0, 0x4ec(r5)
/* 0A91BC 800AE75C C003002C */  lfs     f0, 0x2c(r3)
/* 0A91C0 800AE760 D00504F0 */  stfs    f0, 0x4f0(r5)
/* 0A91C4 800AE764 40820018 */  bne     lbl_800AE77C
/* 0A91C8 800AE768 C003000C */  lfs     f0, 0xc(r3)
/* 0A91CC 800AE76C D00504E0 */  stfs    f0, 0x4e0(r5)
/* 0A91D0 800AE770 C003001C */  lfs     f0, 0x1c(r3)
/* 0A91D4 800AE774 D00504E8 */  stfs    f0, 0x4e8(r5)
/* 0A91D8 800AE778 48000014 */  b       lbl_800AE78C
lbl_800AE77C:
/* 0A91DC 800AE77C C0030008 */  lfs     f0, 8(r3)
/* 0A91E0 800AE780 D00504E0 */  stfs    f0, 0x4e0(r5)
/* 0A91E4 800AE784 C0030018 */  lfs     f0, 0x18(r3)
/* 0A91E8 800AE788 D00504E8 */  stfs    f0, 0x4e8(r5)
lbl_800AE78C:
/* 0A91EC 800AE78C 3CA0CC01 */  lis     r5, 0xcc01
/* 0A91F0 800AE790 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A91F4 800AE794 38000010 */  li      r0, 0x10
/* 0A91F8 800AE798 3C600006 */  lis     r3, 6
/* 0A91FC 800AE79C 98058000 */  stb     r0, -0x8000(r5)
/* 0A9200 800AE7A0 38031020 */  addi    r0, r3, 0x1020
/* 0A9204 800AE7A4 90058000 */  stw     r0, -0x8000(r5)
/* 0A9208 800AE7A8 38C58000 */  addi    r6, r5, -32768
/* 0A920C 800AE7AC 386404DC */  addi    r3, r4, 0x4dc
/* 0A9210 800AE7B0 E0430000 */  psq_l   f2, 0(r3), 0, qr0
/* 0A9214 800AE7B4 E0230008 */  psq_l   f1, 8(r3), 0, qr0
/* 0A9218 800AE7B8 E0030010 */  psq_l   f0, 16(r3), 0, qr0
/* 0A921C 800AE7BC F0460000 */  psq_st  f2, 0(r6), 0, qr0
/* 0A9220 800AE7C0 F0260000 */  psq_st  f1, 0(r6), 0, qr0
/* 0A9224 800AE7C4 F0060000 */  psq_st  f0, 0(r6), 0, qr0
/* 0A9228 800AE7C8 806404D8 */  lwz     r3, 0x4d8(r4)
/* 0A922C 800AE7CC 38000001 */  li      r0, 1
/* 0A9230 800AE7D0 90658000 */  stw     r3, -0x8000(r5)
/* 0A9234 800AE7D4 B0040002 */  sth     r0, 2(r4)
/* 0A9238 800AE7D8 4E800020 */  blr     

glabel GXSetProjectionv
/* 0A923C 800AE7DC C02284C0 */  lfs     f1, D_801361C0@sda21(r2)
/* 0A9240 800AE7E0 C0030000 */  lfs     f0, 0(r3)
/* 0A9244 800AE7E4 FC010000 */  fcmpu   cr0, f1, f0
/* 0A9248 800AE7E8 4082000C */  bne     lbl_800AE7F4
/* 0A924C 800AE7EC 38000000 */  li      r0, 0
/* 0A9250 800AE7F0 48000008 */  b       lbl_800AE7F8
lbl_800AE7F4:
/* 0A9254 800AE7F4 38000001 */  li      r0, 1
lbl_800AE7F8:
/* 0A9258 800AE7F8 80A28400 */  lwz     r5, __GXData@sda21(r2)
/* 0A925C 800AE7FC 38630004 */  addi    r3, r3, 4
/* 0A9260 800AE800 900504D8 */  stw     r0, 0x4d8(r5)
/* 0A9264 800AE804 38C504DC */  addi    r6, r5, 0x4dc
/* 0A9268 800AE808 E0430000 */  psq_l   f2, 0(r3), 0, qr0
/* 0A926C 800AE80C E0230008 */  psq_l   f1, 8(r3), 0, qr0
/* 0A9270 800AE810 E0030010 */  psq_l   f0, 16(r3), 0, qr0
/* 0A9274 800AE814 F0460000 */  psq_st  f2, 0(r6), 0, qr0
/* 0A9278 800AE818 F0260008 */  psq_st  f1, 8(r6), 0, qr0
/* 0A927C 800AE81C F0060010 */  psq_st  f0, 16(r6), 0, qr0
/* 0A9280 800AE820 3C80CC01 */  lis     r4, 0xcc01
/* 0A9284 800AE824 38000010 */  li      r0, 0x10
/* 0A9288 800AE828 3C600006 */  lis     r3, 6
/* 0A928C 800AE82C 98048000 */  stb     r0, -0x8000(r4)
/* 0A9290 800AE830 38031020 */  addi    r0, r3, 0x1020
/* 0A9294 800AE834 90048000 */  stw     r0, -0x8000(r4)
/* 0A9298 800AE838 38648000 */  addi    r3, r4, -32768
/* 0A929C 800AE83C E0460000 */  psq_l   f2, 0(r6), 0, qr0
/* 0A92A0 800AE840 E0260008 */  psq_l   f1, 8(r6), 0, qr0
/* 0A92A4 800AE844 E0060010 */  psq_l   f0, 16(r6), 0, qr0
/* 0A92A8 800AE848 F0430000 */  psq_st  f2, 0(r3), 0, qr0
/* 0A92AC 800AE84C F0230000 */  psq_st  f1, 0(r3), 0, qr0
/* 0A92B0 800AE850 F0030000 */  psq_st  f0, 0(r3), 0, qr0
/* 0A92B4 800AE854 806504D8 */  lwz     r3, 0x4d8(r5)
/* 0A92B8 800AE858 38000001 */  li      r0, 1
/* 0A92BC 800AE85C 90648000 */  stw     r3, -0x8000(r4)
/* 0A92C0 800AE860 B0050002 */  sth     r0, 2(r5)
/* 0A92C4 800AE864 4E800020 */  blr     

glabel GXLoadPosMtxImm
/* 0A92C8 800AE868 3CA0CC01 */  lis     r5, 0xcc01
/* 0A92CC 800AE86C 38000010 */  li      r0, 0x10
/* 0A92D0 800AE870 5484103A */  slwi    r4, r4, 2
/* 0A92D4 800AE874 98058000 */  stb     r0, -0x8000(r5)
/* 0A92D8 800AE878 6480000B */  oris    r0, r4, 0xb
/* 0A92DC 800AE87C 90058000 */  stw     r0, -0x8000(r5)
/* 0A92E0 800AE880 38858000 */  addi    r4, r5, -32768
/* 0A92E4 800AE884 E0A30000 */  psq_l   f5, 0(r3), 0, qr0
/* 0A92E8 800AE888 E0830008 */  psq_l   f4, 8(r3), 0, qr0
/* 0A92EC 800AE88C E0630010 */  psq_l   f3, 16(r3), 0, qr0
/* 0A92F0 800AE890 E0430018 */  psq_l   f2, 24(r3), 0, qr0
/* 0A92F4 800AE894 E0230020 */  psq_l   f1, 32(r3), 0, qr0
/* 0A92F8 800AE898 E0030028 */  psq_l   f0, 40(r3), 0, qr0
/* 0A92FC 800AE89C F0A40000 */  psq_st  f5, 0(r4), 0, qr0
/* 0A9300 800AE8A0 F0840000 */  psq_st  f4, 0(r4), 0, qr0
/* 0A9304 800AE8A4 F0640000 */  psq_st  f3, 0(r4), 0, qr0
/* 0A9308 800AE8A8 F0440000 */  psq_st  f2, 0(r4), 0, qr0
/* 0A930C 800AE8AC F0240000 */  psq_st  f1, 0(r4), 0, qr0
/* 0A9310 800AE8B0 F0040000 */  psq_st  f0, 0(r4), 0, qr0
/* 0A9314 800AE8B4 4E800020 */  blr     

glabel GXLoadNrmMtxImm
/* 0A9318 800AE8B8 1CA40003 */  mulli   r5, r4, 3
/* 0A931C 800AE8BC 3C80CC01 */  lis     r4, 0xcc01
/* 0A9320 800AE8C0 38000010 */  li      r0, 0x10
/* 0A9324 800AE8C4 38A50400 */  addi    r5, r5, 0x400
/* 0A9328 800AE8C8 98048000 */  stb     r0, -0x8000(r4)
/* 0A932C 800AE8CC 64A00008 */  oris    r0, r5, 8
/* 0A9330 800AE8D0 94048000 */  stwu    r0, -0x8000(r4)
/* 0A9334 800AE8D4 E0A30000 */  psq_l   f5, 0(r3), 0, qr0
/* 0A9338 800AE8D8 C0830008 */  lfs     f4, 8(r3)
/* 0A933C 800AE8DC E0630010 */  psq_l   f3, 16(r3), 0, qr0
/* 0A9340 800AE8E0 C0430018 */  lfs     f2, 0x18(r3)
/* 0A9344 800AE8E4 E0230020 */  psq_l   f1, 32(r3), 0, qr0
/* 0A9348 800AE8E8 C0030028 */  lfs     f0, 0x28(r3)
/* 0A934C 800AE8EC F0A40000 */  psq_st  f5, 0(r4), 0, qr0
/* 0A9350 800AE8F0 D0840000 */  stfs    f4, 0(r4)
/* 0A9354 800AE8F4 F0640000 */  psq_st  f3, 0(r4), 0, qr0
/* 0A9358 800AE8F8 D0440000 */  stfs    f2, 0(r4)
/* 0A935C 800AE8FC F0240000 */  psq_st  f1, 0(r4), 0, qr0
/* 0A9360 800AE900 D0040000 */  stfs    f0, 0(r4)
/* 0A9364 800AE904 4E800020 */  blr     

glabel GXSetCurrentMtx
/* 0A9368 800AE908 7C0802A6 */  mflr    r0
/* 0A936C 800AE90C 90010004 */  stw     r0, 4(r1)
/* 0A9370 800AE910 9421FFF8 */  stwu    r1, -8(r1)
/* 0A9374 800AE914 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A9378 800AE918 80040080 */  lwz     r0, 0x80(r4)
/* 0A937C 800AE91C 506006BE */  rlwimi  r0, r3, 0, 0x1a, 0x1f
/* 0A9380 800AE920 38600000 */  li      r3, 0
/* 0A9384 800AE924 90040080 */  stw     r0, 0x80(r4)
/* 0A9388 800AE928 48000321 */  bl      __GXSetMatrixIndex
/* 0A938C 800AE92C 8001000C */  lwz     r0, 0xc(r1)
/* 0A9390 800AE930 38210008 */  addi    r1, r1, 8
/* 0A9394 800AE934 7C0803A6 */  mtlr    r0
/* 0A9398 800AE938 4E800020 */  blr     

glabel GXLoadTexMtxImm
/* 0A939C 800AE93C 28040040 */  cmplwi  r4, 0x40
/* 0A93A0 800AE940 41800014 */  blt     lbl_800AE954
/* 0A93A4 800AE944 3804FFC0 */  addi    r0, r4, -64
/* 0A93A8 800AE948 5404103A */  slwi    r4, r0, 2
/* 0A93AC 800AE94C 38E40500 */  addi    r7, r4, 0x500
/* 0A93B0 800AE950 48000008 */  b       lbl_800AE958
lbl_800AE954:
/* 0A93B4 800AE954 5487103A */  slwi    r7, r4, 2
lbl_800AE958:
/* 0A93B8 800AE958 2C050001 */  cmpwi   r5, 1
/* 0A93BC 800AE95C 4082000C */  bne     lbl_800AE968
/* 0A93C0 800AE960 38800008 */  li      r4, 8
/* 0A93C4 800AE964 48000008 */  b       lbl_800AE96C
lbl_800AE968:
/* 0A93C8 800AE968 3880000C */  li      r4, 0xc
lbl_800AE96C:
/* 0A93CC 800AE96C 3804FFFF */  addi    r0, r4, -1
/* 0A93D0 800AE970 5406801E */  slwi    r6, r0, 0x10
/* 0A93D4 800AE974 38000010 */  li      r0, 0x10
/* 0A93D8 800AE978 3C80CC01 */  lis     r4, 0xcc01
/* 0A93DC 800AE97C 98048000 */  stb     r0, -0x8000(r4)
/* 0A93E0 800AE980 7CE03378 */  or      r0, r7, r6
/* 0A93E4 800AE984 2C050000 */  cmpwi   r5, 0
/* 0A93E8 800AE988 90048000 */  stw     r0, -0x8000(r4)
/* 0A93EC 800AE98C 4082003C */  bne     lbl_800AE9C8
/* 0A93F0 800AE990 38848000 */  addi    r4, r4, -32768
/* 0A93F4 800AE994 E0A30000 */  psq_l   f5, 0(r3), 0, qr0
/* 0A93F8 800AE998 E0830008 */  psq_l   f4, 8(r3), 0, qr0
/* 0A93FC 800AE99C E0630010 */  psq_l   f3, 16(r3), 0, qr0
/* 0A9400 800AE9A0 E0430018 */  psq_l   f2, 24(r3), 0, qr0
/* 0A9404 800AE9A4 E0230020 */  psq_l   f1, 32(r3), 0, qr0
/* 0A9408 800AE9A8 E0030028 */  psq_l   f0, 40(r3), 0, qr0
/* 0A940C 800AE9AC F0A40000 */  psq_st  f5, 0(r4), 0, qr0
/* 0A9410 800AE9B0 F0840000 */  psq_st  f4, 0(r4), 0, qr0
/* 0A9414 800AE9B4 F0640000 */  psq_st  f3, 0(r4), 0, qr0
/* 0A9418 800AE9B8 F0440000 */  psq_st  f2, 0(r4), 0, qr0
/* 0A941C 800AE9BC F0240000 */  psq_st  f1, 0(r4), 0, qr0
/* 0A9420 800AE9C0 F0040000 */  psq_st  f0, 0(r4), 0, qr0
/* 0A9424 800AE9C4 4E800020 */  blr     
lbl_800AE9C8:
/* 0A9428 800AE9C8 38848000 */  addi    r4, r4, -32768
/* 0A942C 800AE9CC E0630000 */  psq_l   f3, 0(r3), 0, qr0
/* 0A9430 800AE9D0 E0430008 */  psq_l   f2, 8(r3), 0, qr0
/* 0A9434 800AE9D4 E0230010 */  psq_l   f1, 16(r3), 0, qr0
/* 0A9438 800AE9D8 E0030018 */  psq_l   f0, 24(r3), 0, qr0
/* 0A943C 800AE9DC F0640000 */  psq_st  f3, 0(r4), 0, qr0
/* 0A9440 800AE9E0 F0440000 */  psq_st  f2, 0(r4), 0, qr0
/* 0A9444 800AE9E4 F0240000 */  psq_st  f1, 0(r4), 0, qr0
/* 0A9448 800AE9E8 F0040000 */  psq_st  f0, 0(r4), 0, qr0
/* 0A944C 800AE9EC 4E800020 */  blr     

glabel __GXSetViewport
/* 0A9450 800AE9F0 80C28400 */  lwz     r6, __GXData@sda21(r2)
/* 0A9454 800AE9F4 3C600005 */  lis     r3, 5
/* 0A9458 800AE9F8 C02284C4 */  lfs     f1, D_801361C4@sda21(r2)
/* 0A945C 800AE9FC 38A00010 */  li      r5, 0x10
/* 0A9460 800AEA00 C0660500 */  lfs     f3, 0x500(r6)
/* 0A9464 800AEA04 C04604FC */  lfs     f2, 0x4fc(r6)
/* 0A9468 800AEA08 3C80CC01 */  lis     r4, 0xcc01
/* 0A946C 800AEA0C FC001850 */  fneg    f0, f3
/* 0A9470 800AEA10 C0A604F4 */  lfs     f5, 0x4f4(r6)
/* 0A9474 800AEA14 ECE20072 */  fmuls   f7, f2, f1
/* 0A9478 800AEA18 C08604F8 */  lfs     f4, 0x4f8(r6)
/* 0A947C 800AEA1C 3803101A */  addi    r0, r3, 0x101a
/* 0A9480 800AEA20 EC630072 */  fmuls   f3, f3, f1
/* 0A9484 800AEA24 C0460508 */  lfs     f2, 0x508(r6)
/* 0A9488 800AEA28 C0C60510 */  lfs     f6, 0x510(r6)
/* 0A948C 800AEA2C ED000072 */  fmuls   f8, f0, f1
/* 0A9490 800AEA30 C0260504 */  lfs     f1, 0x504(r6)
/* 0A9494 800AEA34 C006050C */  lfs     f0, 0x50c(r6)
/* 0A9498 800AEA38 ED2201B2 */  fmuls   f9, f2, f6
/* 0A949C 800AEA3C EC2101B2 */  fmuls   f1, f1, f6
/* 0A94A0 800AEA40 C0C284C8 */  lfs     f6, D_801361C8@sda21(r2)
/* 0A94A4 800AEA44 98A48000 */  stb     r5, -0x8000(r4)
/* 0A94A8 800AEA48 ECA5382A */  fadds   f5, f5, f7
/* 0A94AC 800AEA4C 90048000 */  stw     r0, -0x8000(r4)
/* 0A94B0 800AEA50 EC44182A */  fadds   f2, f4, f3
/* 0A94B4 800AEA54 D0E48000 */  stfs    f7, -0x8000(r4)
/* 0A94B8 800AEA58 EC290828 */  fsubs   f1, f9, f1
/* 0A94BC 800AEA5C EC66282A */  fadds   f3, f6, f5
/* 0A94C0 800AEA60 D1048000 */  stfs    f8, -0x8000(r4)
/* 0A94C4 800AEA64 EC46102A */  fadds   f2, f6, f2
/* 0A94C8 800AEA68 D0248000 */  stfs    f1, -0x8000(r4)
/* 0A94CC 800AEA6C EC09002A */  fadds   f0, f9, f0
/* 0A94D0 800AEA70 D0648000 */  stfs    f3, -0x8000(r4)
/* 0A94D4 800AEA74 D0448000 */  stfs    f2, -0x8000(r4)
/* 0A94D8 800AEA78 D0048000 */  stfs    f0, -0x8000(r4)
/* 0A94DC 800AEA7C 4E800020 */  blr     

glabel GXSetViewportJitter
/* 0A94E0 800AEA80 7C0802A6 */  mflr    r0
/* 0A94E4 800AEA84 28030000 */  cmplwi  r3, 0
/* 0A94E8 800AEA88 90010004 */  stw     r0, 4(r1)
/* 0A94EC 800AEA8C 9421FFF8 */  stwu    r1, -8(r1)
/* 0A94F0 800AEA90 4082000C */  bne     lbl_800AEA9C
/* 0A94F4 800AEA94 C00284C4 */  lfs     f0, D_801361C4@sda21(r2)
/* 0A94F8 800AEA98 EC420028 */  fsubs   f2, f2, f0
lbl_800AEA9C:
/* 0A94FC 800AEA9C 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A9500 800AEAA0 D02304F4 */  stfs    f1, 0x4f4(r3)
/* 0A9504 800AEAA4 D04304F8 */  stfs    f2, 0x4f8(r3)
/* 0A9508 800AEAA8 D06304FC */  stfs    f3, 0x4fc(r3)
/* 0A950C 800AEAAC D0830500 */  stfs    f4, 0x500(r3)
/* 0A9510 800AEAB0 D0A30504 */  stfs    f5, 0x504(r3)
/* 0A9514 800AEAB4 D0C30508 */  stfs    f6, 0x508(r3)
/* 0A9518 800AEAB8 4BFFFF39 */  bl      __GXSetViewport
/* 0A951C 800AEABC 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A9520 800AEAC0 38000001 */  li      r0, 1
/* 0A9524 800AEAC4 B0030002 */  sth     r0, 2(r3)
/* 0A9528 800AEAC8 8001000C */  lwz     r0, 0xc(r1)
/* 0A952C 800AEACC 38210008 */  addi    r1, r1, 8
/* 0A9530 800AEAD0 7C0803A6 */  mtlr    r0
/* 0A9534 800AEAD4 4E800020 */  blr     

glabel GXSetViewport
/* 0A9538 800AEAD8 7C0802A6 */  mflr    r0
/* 0A953C 800AEADC 90010004 */  stw     r0, 4(r1)
/* 0A9540 800AEAE0 9421FFF8 */  stwu    r1, -8(r1)
/* 0A9544 800AEAE4 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A9548 800AEAE8 D02304F4 */  stfs    f1, 0x4f4(r3)
/* 0A954C 800AEAEC D04304F8 */  stfs    f2, 0x4f8(r3)
/* 0A9550 800AEAF0 D06304FC */  stfs    f3, 0x4fc(r3)
/* 0A9554 800AEAF4 D0830500 */  stfs    f4, 0x500(r3)
/* 0A9558 800AEAF8 D0A30504 */  stfs    f5, 0x504(r3)
/* 0A955C 800AEAFC D0C30508 */  stfs    f6, 0x508(r3)
/* 0A9560 800AEB00 4BFFFEF1 */  bl      __GXSetViewport
/* 0A9564 800AEB04 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A9568 800AEB08 38000001 */  li      r0, 1
/* 0A956C 800AEB0C B0030002 */  sth     r0, 2(r3)
/* 0A9570 800AEB10 8001000C */  lwz     r0, 0xc(r1)
/* 0A9574 800AEB14 38210008 */  addi    r1, r1, 8
/* 0A9578 800AEB18 7C0803A6 */  mtlr    r0
/* 0A957C 800AEB1C 4E800020 */  blr     

glabel GXSetScissor
/* 0A9580 800AEB20 80E28400 */  lwz     r7, __GXData@sda21(r2)
/* 0A9584 800AEB24 38840156 */  addi    r4, r4, 0x156
/* 0A9588 800AEB28 38C6FFFF */  addi    r6, r6, -1
/* 0A958C 800AEB2C 800700F8 */  lwz     r0, 0xf8(r7)
/* 0A9590 800AEB30 5080057E */  rlwimi  r0, r4, 0, 0x15, 0x1f
/* 0A9594 800AEB34 38630156 */  addi    r3, r3, 0x156
/* 0A9598 800AEB38 900700F8 */  stw     r0, 0xf8(r7)
/* 0A959C 800AEB3C 3905FFFF */  addi    r8, r5, -1
/* 0A95A0 800AEB40 7CC43214 */  add     r6, r4, r6
/* 0A95A4 800AEB44 800700F8 */  lwz     r0, 0xf8(r7)
/* 0A95A8 800AEB48 50606266 */  rlwimi  r0, r3, 0xc, 9, 0x13
/* 0A95AC 800AEB4C 7D034214 */  add     r8, r3, r8
/* 0A95B0 800AEB50 900700F8 */  stw     r0, 0xf8(r7)
/* 0A95B4 800AEB54 38A00061 */  li      r5, 0x61
/* 0A95B8 800AEB58 3C80CC01 */  lis     r4, 0xcc01
/* 0A95BC 800AEB5C 806700FC */  lwz     r3, 0xfc(r7)
/* 0A95C0 800AEB60 50C3057E */  rlwimi  r3, r6, 0, 0x15, 0x1f
/* 0A95C4 800AEB64 38000000 */  li      r0, 0
/* 0A95C8 800AEB68 906700FC */  stw     r3, 0xfc(r7)
/* 0A95CC 800AEB6C 806700FC */  lwz     r3, 0xfc(r7)
/* 0A95D0 800AEB70 51036266 */  rlwimi  r3, r8, 0xc, 9, 0x13
/* 0A95D4 800AEB74 906700FC */  stw     r3, 0xfc(r7)
/* 0A95D8 800AEB78 98A48000 */  stb     r5, -0x8000(r4)
/* 0A95DC 800AEB7C 806700F8 */  lwz     r3, 0xf8(r7)
/* 0A95E0 800AEB80 90648000 */  stw     r3, -0x8000(r4)
/* 0A95E4 800AEB84 98A48000 */  stb     r5, -0x8000(r4)
/* 0A95E8 800AEB88 806700FC */  lwz     r3, 0xfc(r7)
/* 0A95EC 800AEB8C 90648000 */  stw     r3, -0x8000(r4)
/* 0A95F0 800AEB90 B0070002 */  sth     r0, 2(r7)
/* 0A95F4 800AEB94 4E800020 */  blr     

glabel GXGetScissor
/* 0A95F8 800AEB98 81028400 */  lwz     r8, __GXData@sda21(r2)
/* 0A95FC 800AEB9C 80E800F8 */  lwz     r7, 0xf8(r8)
/* 0A9600 800AEBA0 810800FC */  lwz     r8, 0xfc(r8)
/* 0A9604 800AEBA4 54E9A57E */  rlwinm  r9, r7, 0x14, 0x15, 0x1f
/* 0A9608 800AEBA8 3809FEAA */  addi    r0, r9, -342
/* 0A960C 800AEBAC 90030000 */  stw     r0, 0(r3)
/* 0A9610 800AEBB0 54E7057E */  clrlwi  r7, r7, 0x15
/* 0A9614 800AEBB4 3867FEAA */  addi    r3, r7, -342
/* 0A9618 800AEBB8 90640000 */  stw     r3, 0(r4)
/* 0A961C 800AEBBC 5500A57E */  rlwinm  r0, r8, 0x14, 0x15, 0x1f
/* 0A9620 800AEBC0 7C690050 */  subf    r3, r9, r0
/* 0A9624 800AEBC4 38030001 */  addi    r0, r3, 1
/* 0A9628 800AEBC8 5504057E */  clrlwi  r4, r8, 0x15
/* 0A962C 800AEBCC 90050000 */  stw     r0, 0(r5)
/* 0A9630 800AEBD0 7C672050 */  subf    r3, r7, r4
/* 0A9634 800AEBD4 38030001 */  addi    r0, r3, 1
/* 0A9638 800AEBD8 90060000 */  stw     r0, 0(r6)
/* 0A963C 800AEBDC 4E800020 */  blr     

glabel GXSetScissorBoxOffset
/* 0A9640 800AEBE0 38A30156 */  addi    r5, r3, 0x156
/* 0A9644 800AEBE4 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A9648 800AEBE8 38040156 */  addi    r0, r4, 0x156
/* 0A964C 800AEBEC 38800000 */  li      r4, 0
/* 0A9650 800AEBF0 50A4FDBE */  rlwimi  r4, r5, 0x1f, 0x16, 0x1f
/* 0A9654 800AEBF4 38A40000 */  addi    r5, r4, 0
/* 0A9658 800AEBF8 50054B2A */  rlwimi  r5, r0, 9, 0xc, 0x15
/* 0A965C 800AEBFC 38000061 */  li      r0, 0x61
/* 0A9660 800AEC00 3C80CC01 */  lis     r4, 0xcc01
/* 0A9664 800AEC04 98048000 */  stb     r0, -0x8000(r4)
/* 0A9668 800AEC08 38000059 */  li      r0, 0x59
/* 0A966C 800AEC0C 5005C00E */  rlwimi  r5, r0, 0x18, 0, 7
/* 0A9670 800AEC10 90A48000 */  stw     r5, -0x8000(r4)
/* 0A9674 800AEC14 38000000 */  li      r0, 0
/* 0A9678 800AEC18 B0030002 */  sth     r0, 2(r3)
/* 0A967C 800AEC1C 4E800020 */  blr     

glabel GXSetClipMode
/* 0A9680 800AEC20 38000010 */  li      r0, 0x10
/* 0A9684 800AEC24 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A9688 800AEC28 3CC0CC01 */  lis     r6, 0xcc01
/* 0A968C 800AEC2C 98068000 */  stb     r0, -0x8000(r6)
/* 0A9690 800AEC30 38A01005 */  li      r5, 0x1005
/* 0A9694 800AEC34 38000001 */  li      r0, 1
/* 0A9698 800AEC38 90A68000 */  stw     r5, -0x8000(r6)
/* 0A969C 800AEC3C 90668000 */  stw     r3, -0x8000(r6)
/* 0A96A0 800AEC40 B0040002 */  sth     r0, 2(r4)
/* 0A96A4 800AEC44 4E800020 */  blr     

glabel __GXSetMatrixIndex
/* 0A96A8 800AEC48 2C030005 */  cmpwi   r3, 5
/* 0A96AC 800AEC4C 4080003C */  bge     lbl_800AEC88
/* 0A96B0 800AEC50 38000008 */  li      r0, 8
/* 0A96B4 800AEC54 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A96B8 800AEC58 3CA0CC01 */  lis     r5, 0xcc01
/* 0A96BC 800AEC5C 98058000 */  stb     r0, -0x8000(r5)
/* 0A96C0 800AEC60 38000030 */  li      r0, 0x30
/* 0A96C4 800AEC64 38600010 */  li      r3, 0x10
/* 0A96C8 800AEC68 98058000 */  stb     r0, -0x8000(r5)
/* 0A96CC 800AEC6C 38001018 */  li      r0, 0x1018
/* 0A96D0 800AEC70 80840080 */  lwz     r4, 0x80(r4)
/* 0A96D4 800AEC74 90858000 */  stw     r4, -0x8000(r5)
/* 0A96D8 800AEC78 98658000 */  stb     r3, -0x8000(r5)
/* 0A96DC 800AEC7C 90058000 */  stw     r0, -0x8000(r5)
/* 0A96E0 800AEC80 90858000 */  stw     r4, -0x8000(r5)
/* 0A96E4 800AEC84 48000038 */  b       lbl_800AECBC
lbl_800AEC88:
/* 0A96E8 800AEC88 38000008 */  li      r0, 8
/* 0A96EC 800AEC8C 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A96F0 800AEC90 3CA0CC01 */  lis     r5, 0xcc01
/* 0A96F4 800AEC94 98058000 */  stb     r0, -0x8000(r5)
/* 0A96F8 800AEC98 38000040 */  li      r0, 0x40
/* 0A96FC 800AEC9C 38600010 */  li      r3, 0x10
/* 0A9700 800AECA0 98058000 */  stb     r0, -0x8000(r5)
/* 0A9704 800AECA4 38001019 */  li      r0, 0x1019
/* 0A9708 800AECA8 80840084 */  lwz     r4, 0x84(r4)
/* 0A970C 800AECAC 90858000 */  stw     r4, -0x8000(r5)
/* 0A9710 800AECB0 98658000 */  stb     r3, -0x8000(r5)
/* 0A9714 800AECB4 90058000 */  stw     r0, -0x8000(r5)
/* 0A9718 800AECB8 90858000 */  stw     r4, -0x8000(r5)
lbl_800AECBC:
/* 0A971C 800AECBC 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A9720 800AECC0 38000001 */  li      r0, 1
/* 0A9724 800AECC4 B0030002 */  sth     r0, 2(r3)
/* 0A9728 800AECC8 4E800020 */  blr     

.section .sdata2, "wa"

.balign 8

/* 000F1CC0 801361C0 0004 */
D_801361C0:
    .float 0.0

/* 000F1CC4 801361C4 0004 */
D_801361C4:
    .float 0.5

/* 000F1CC8 801361C8 0004 */
D_801361C8:
    .float 342.0
