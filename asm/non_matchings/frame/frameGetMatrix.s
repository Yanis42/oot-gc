glabel frameGetMatrix
/* 01A2B0 8001F850 7C0802A6 */  mflr    r0
/* 01A2B4 8001F854 90010004 */  stw     r0, 4(r1)
/* 01A2B8 8001F858 9421FFE0 */  stwu    r1, -0x20(r1)
/* 01A2BC 8001F85C 93E1001C */  stw     r31, 0x1c(r1)
/* 01A2C0 8001F860 93C10018 */  stw     r30, 0x18(r1)
/* 01A2C4 8001F864 7C7E1B78 */  mr      r30, r3
/* 01A2C8 8001F868 7C872378 */  mr      r7, r4
/* 01A2CC 8001F86C 7CDF3378 */  mr      r31, r6
/* 01A2D0 8001F870 2C050001 */  cmpwi   r5, 1
/* 01A2D4 8001F874 41820080 */  beq     lbl_8001F8F4
/* 01A2D8 8001F878 408000D4 */  bge     lbl_8001F94C
/* 01A2DC 8001F87C 2C050000 */  cmpwi   r5, 0
/* 01A2E0 8001F880 40800008 */  bge     lbl_8001F888
/* 01A2E4 8001F884 480000C8 */  b       lbl_8001F94C
lbl_8001F888:
/* 01A2E8 8001F888 28070000 */  cmplwi  r7, 0
/* 01A2EC 8001F88C 41820038 */  beq     lbl_8001F8C4
/* 01A2F0 8001F890 3C7E0004 */  addis   r3, r30, 4
/* 01A2F4 8001F894 8003C4CC */  lwz     r0, -0x3b34(r3)
/* 01A2F8 8001F898 7CE33B78 */  mr      r3, r7
/* 01A2FC 8001F89C 38A00040 */  li      r5, 0x40
/* 01A300 8001F8A0 54043032 */  slwi    r4, r0, 6
/* 01A304 8001F8A4 3C840004 */  addis   r4, r4, 4
/* 01A308 8001F8A8 3884C520 */  addi    r4, r4, -15072
/* 01A30C 8001F8AC 7C9E2214 */  add     r4, r30, r4
/* 01A310 8001F8B0 4BFE7241 */  bl      xlHeapCopy
/* 01A314 8001F8B4 2C030000 */  cmpwi   r3, 0
/* 01A318 8001F8B8 4082000C */  bne     lbl_8001F8C4
/* 01A31C 8001F8BC 38600000 */  li      r3, 0
/* 01A320 8001F8C0 48000098 */  b       lbl_8001F958
lbl_8001F8C4:
/* 01A324 8001F8C4 2C1F0000 */  cmpwi   r31, 0
/* 01A328 8001F8C8 4182008C */  beq     lbl_8001F954
/* 01A32C 8001F8CC 3C9E0004 */  addis   r4, r30, 4
/* 01A330 8001F8D0 8064C4CC */  lwz     r3, -0x3b34(r4)
/* 01A334 8001F8D4 2C030000 */  cmpwi   r3, 0
/* 01A338 8001F8D8 4081007C */  ble     lbl_8001F954
/* 01A33C 8001F8DC 3803FFFF */  addi    r0, r3, -1
/* 01A340 8001F8E0 9004C4CC */  stw     r0, -0x3b34(r4)
/* 01A344 8001F8E4 801E008C */  lwz     r0, 0x8c(r30)
/* 01A348 8001F8E8 540002D0 */  rlwinm  r0, r0, 0, 0xb, 8
/* 01A34C 8001F8EC 901E008C */  stw     r0, 0x8c(r30)
/* 01A350 8001F8F0 48000064 */  b       lbl_8001F954
lbl_8001F8F4:
/* 01A354 8001F8F4 28070000 */  cmplwi  r7, 0
/* 01A358 8001F8F8 4182005C */  beq     lbl_8001F954
/* 01A35C 8001F8FC 801E008C */  lwz     r0, 0x8c(r30)
/* 01A360 8001F900 54000108 */  rlwinm  r0, r0, 0, 4, 4
/* 01A364 8001F904 28000000 */  cmplwi  r0, 0
/* 01A368 8001F908 41820020 */  beq     lbl_8001F928
/* 01A36C 8001F90C 3C7E0004 */  addis   r3, r30, 4
/* 01A370 8001F910 3C9E0004 */  addis   r4, r30, 4
/* 01A374 8001F914 7CE53B78 */  mr      r5, r7
/* 01A378 8001F918 3863C7E0 */  addi    r3, r3, -14368
/* 01A37C 8001F91C 3884C7A0 */  addi    r4, r4, -14432
/* 01A380 8001F920 48088861 */  bl      PSMTX44Concat
/* 01A384 8001F924 48000030 */  b       lbl_8001F954
lbl_8001F928:
/* 01A388 8001F928 3C9E0004 */  addis   r4, r30, 4
/* 01A38C 8001F92C 7CE33B78 */  mr      r3, r7
/* 01A390 8001F930 3884C7A0 */  addi    r4, r4, -14432
/* 01A394 8001F934 38A00040 */  li      r5, 0x40
/* 01A398 8001F938 4BFE71B9 */  bl      xlHeapCopy
/* 01A39C 8001F93C 2C030000 */  cmpwi   r3, 0
/* 01A3A0 8001F940 40820014 */  bne     lbl_8001F954
/* 01A3A4 8001F944 38600000 */  li      r3, 0
/* 01A3A8 8001F948 48000010 */  b       lbl_8001F958
lbl_8001F94C:
/* 01A3AC 8001F94C 38600000 */  li      r3, 0
/* 01A3B0 8001F950 48000008 */  b       lbl_8001F958
lbl_8001F954:
/* 01A3B4 8001F954 38600001 */  li      r3, 1
lbl_8001F958:
/* 01A3B8 8001F958 80010024 */  lwz     r0, 0x24(r1)
/* 01A3BC 8001F95C 83E1001C */  lwz     r31, 0x1c(r1)
/* 01A3C0 8001F960 83C10018 */  lwz     r30, 0x18(r1)
/* 01A3C4 8001F964 7C0803A6 */  mtlr    r0
/* 01A3C8 8001F968 38210020 */  addi    r1, r1, 0x20
/* 01A3CC 8001F96C 4E800020 */  blr     
