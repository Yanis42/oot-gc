glabel THPGXYuv2RgbDraw
/* 00C1B4 80011754 7C0802A6 */  mflr    r0
/* 00C1B8 80011758 90010004 */  stw     r0, 4(r1)
/* 00C1BC 8001175C 9421FF60 */  stwu    r1, -0xa0(r1)
/* 00C1C0 80011760 BF010080 */  stmw    r24, 0x80(r1)
/* 00C1C4 80011764 3B880000 */  addi    r28, r8, 0
/* 00C1C8 80011768 3BA90000 */  addi    r29, r9, 0
/* 00C1CC 8001176C AB6100AA */  lha     r27, 0xaa(r1)
/* 00C1D0 80011770 3B040000 */  addi    r24, r4, 0
/* 00C1D4 80011774 3B250000 */  addi    r25, r5, 0
/* 00C1D8 80011778 3BC60000 */  addi    r30, r6, 0
/* 00C1DC 8001177C 3BE70000 */  addi    r31, r7, 0
/* 00C1E0 80011780 3B4A0000 */  addi    r26, r10, 0
/* 00C1E4 80011784 38830000 */  addi    r4, r3, 0
/* 00C1E8 80011788 38BC0000 */  addi    r5, r28, 0
/* 00C1EC 8001178C 38DD0000 */  addi    r6, r29, 0
/* 00C1F0 80011790 38610060 */  addi    r3, r1, 0x60
/* 00C1F4 80011794 38E00001 */  li      r7, 1
/* 00C1F8 80011798 39000000 */  li      r8, 0
/* 00C1FC 8001179C 39200000 */  li      r9, 0
/* 00C200 800117A0 39400000 */  li      r10, 0
/* 00C204 800117A4 4809AFF5 */  bl      GXInitTexObj
/* 00C208 800117A8 C022808C */  lfs     f1, D_80135D8C@sda21(r2)
/* 00C20C 800117AC 38610060 */  addi    r3, r1, 0x60
/* 00C210 800117B0 38800000 */  li      r4, 0
/* 00C214 800117B4 FC400890 */  fmr     f2, f1
/* 00C218 800117B8 38A00000 */  li      r5, 0
/* 00C21C 800117BC FC600890 */  fmr     f3, f1
/* 00C220 800117C0 38C00000 */  li      r6, 0
/* 00C224 800117C4 38E00000 */  li      r7, 0
/* 00C228 800117C8 39000000 */  li      r8, 0
/* 00C22C 800117CC 4809B261 */  bl      GXInitTexObjLOD
/* 00C230 800117D0 38610060 */  addi    r3, r1, 0x60
/* 00C234 800117D4 38800000 */  li      r4, 0
/* 00C238 800117D8 4809B561 */  bl      GXLoadTexObj
/* 00C23C 800117DC 7F800734 */  extsh   r0, r28
/* 00C240 800117E0 7C1C0E70 */  srawi   r28, r0, 1
/* 00C244 800117E4 7FA00734 */  extsh   r0, r29
/* 00C248 800117E8 7C1D0E70 */  srawi   r29, r0, 1
/* 00C24C 800117EC 38980000 */  addi    r4, r24, 0
/* 00C250 800117F0 38610040 */  addi    r3, r1, 0x40
/* 00C254 800117F4 5785043E */  clrlwi  r5, r28, 0x10
/* 00C258 800117F8 57A6043E */  clrlwi  r6, r29, 0x10
/* 00C25C 800117FC 38E00001 */  li      r7, 1
/* 00C260 80011800 39000000 */  li      r8, 0
/* 00C264 80011804 39200000 */  li      r9, 0
/* 00C268 80011808 39400000 */  li      r10, 0
/* 00C26C 8001180C 4809AF8D */  bl      GXInitTexObj
/* 00C270 80011810 C022808C */  lfs     f1, D_80135D8C@sda21(r2)
/* 00C274 80011814 38610040 */  addi    r3, r1, 0x40
/* 00C278 80011818 38800000 */  li      r4, 0
/* 00C27C 8001181C FC400890 */  fmr     f2, f1
/* 00C280 80011820 38A00000 */  li      r5, 0
/* 00C284 80011824 FC600890 */  fmr     f3, f1
/* 00C288 80011828 38C00000 */  li      r6, 0
/* 00C28C 8001182C 38E00000 */  li      r7, 0
/* 00C290 80011830 39000000 */  li      r8, 0
/* 00C294 80011834 4809B1F9 */  bl      GXInitTexObjLOD
/* 00C298 80011838 38610040 */  addi    r3, r1, 0x40
/* 00C29C 8001183C 38800001 */  li      r4, 1
/* 00C2A0 80011840 4809B4F9 */  bl      GXLoadTexObj
/* 00C2A4 80011844 38990000 */  addi    r4, r25, 0
/* 00C2A8 80011848 38610020 */  addi    r3, r1, 0x20
/* 00C2AC 8001184C 5785043E */  clrlwi  r5, r28, 0x10
/* 00C2B0 80011850 57A6043E */  clrlwi  r6, r29, 0x10
/* 00C2B4 80011854 38E00001 */  li      r7, 1
/* 00C2B8 80011858 39000000 */  li      r8, 0
/* 00C2BC 8001185C 39200000 */  li      r9, 0
/* 00C2C0 80011860 39400000 */  li      r10, 0
/* 00C2C4 80011864 4809AF35 */  bl      GXInitTexObj
/* 00C2C8 80011868 C022808C */  lfs     f1, D_80135D8C@sda21(r2)
/* 00C2CC 8001186C 38610020 */  addi    r3, r1, 0x20
/* 00C2D0 80011870 38800000 */  li      r4, 0
/* 00C2D4 80011874 FC400890 */  fmr     f2, f1
/* 00C2D8 80011878 38A00000 */  li      r5, 0
/* 00C2DC 8001187C FC600890 */  fmr     f3, f1
/* 00C2E0 80011880 38C00000 */  li      r6, 0
/* 00C2E4 80011884 38E00000 */  li      r7, 0
/* 00C2E8 80011888 39000000 */  li      r8, 0
/* 00C2EC 8001188C 4809B1A1 */  bl      GXInitTexObjLOD
/* 00C2F0 80011890 38610020 */  addi    r3, r1, 0x20
/* 00C2F4 80011894 38800002 */  li      r4, 2
/* 00C2F8 80011898 4809B4A1 */  bl      GXLoadTexObj
/* 00C2FC 8001189C 38600080 */  li      r3, 0x80
/* 00C300 800118A0 38800007 */  li      r4, 7
/* 00C304 800118A4 38A00004 */  li      r5, 4
/* 00C308 800118A8 48099BB9 */  bl      GXBegin
/* 00C30C 800118AC 3CC0CC01 */  lis     r6, 0xcc01
/* 00C310 800118B0 B3C68000 */  sth     r30, -0x8000(r6)
/* 00C314 800118B4 7FE00734 */  extsh   r0, r31
/* 00C318 800118B8 7CE0DA14 */  add     r7, r0, r27
/* 00C31C 800118BC B3E68000 */  sth     r31, -0x8000(r6)
/* 00C320 800118C0 38A00000 */  li      r5, 0
/* 00C324 800118C4 7FC30734 */  extsh   r3, r30
/* 00C328 800118C8 B0A68000 */  sth     r5, -0x8000(r6)
/* 00C32C 800118CC 7F400734 */  extsh   r0, r26
/* 00C330 800118D0 7C030214 */  add     r0, r3, r0
/* 00C334 800118D4 B0A68000 */  sth     r5, -0x8000(r6)
/* 00C338 800118D8 7C040734 */  extsh   r4, r0
/* 00C33C 800118DC 38600001 */  li      r3, 1
/* 00C340 800118E0 B0A68000 */  sth     r5, -0x8000(r6)
/* 00C344 800118E4 7CE00734 */  extsh   r0, r7
/* 00C348 800118E8 B0868000 */  sth     r4, -0x8000(r6)
/* 00C34C 800118EC B3E68000 */  sth     r31, -0x8000(r6)
/* 00C350 800118F0 B0A68000 */  sth     r5, -0x8000(r6)
/* 00C354 800118F4 B0668000 */  sth     r3, -0x8000(r6)
/* 00C358 800118F8 B0A68000 */  sth     r5, -0x8000(r6)
/* 00C35C 800118FC B0868000 */  sth     r4, -0x8000(r6)
/* 00C360 80011900 B0068000 */  sth     r0, -0x8000(r6)
/* 00C364 80011904 B0A68000 */  sth     r5, -0x8000(r6)
/* 00C368 80011908 B0668000 */  sth     r3, -0x8000(r6)
/* 00C36C 8001190C B0668000 */  sth     r3, -0x8000(r6)
/* 00C370 80011910 B3C68000 */  sth     r30, -0x8000(r6)
/* 00C374 80011914 B0068000 */  sth     r0, -0x8000(r6)
/* 00C378 80011918 B0A68000 */  sth     r5, -0x8000(r6)
/* 00C37C 8001191C B0A68000 */  sth     r5, -0x8000(r6)
/* 00C380 80011920 B0668000 */  sth     r3, -0x8000(r6)
/* 00C384 80011924 800100A4 */  lwz     r0, 0xa4(r1)
/* 00C388 80011928 BB010080 */  lmw     r24, 0x80(r1)
/* 00C38C 8001192C 382100A0 */  addi    r1, r1, 0xa0
/* 00C390 80011930 7C0803A6 */  mtlr    r0
/* 00C394 80011934 4E800020 */  blr     