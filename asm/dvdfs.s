# dvdfs.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel __DVDFSInit
/* 0AD168 800B2708 3C608000 */  lis     r3, 0x8000
/* 0AD16C 800B270C 906D8D10 */  stw     r3, BootInfo@sda21(r13)
/* 0AD170 800B2710 80030038 */  lwz     r0, 0x38(r3)
/* 0AD174 800B2714 900D8D14 */  stw     r0, FstStart@sda21(r13)
/* 0AD178 800B2718 806D8D14 */  lwz     r3, FstStart@sda21(r13)
/* 0AD17C 800B271C 28030000 */  cmplwi  r3, 0
/* 0AD180 800B2720 4D820020 */  beqlr   
/* 0AD184 800B2724 80030008 */  lwz     r0, 8(r3)
/* 0AD188 800B2728 900D8D1C */  stw     r0, MaxEntryNum@sda21(r13)
/* 0AD18C 800B272C 800D8D1C */  lwz     r0, MaxEntryNum@sda21(r13)
/* 0AD190 800B2730 1C00000C */  mulli   r0, r0, 0xc
/* 0AD194 800B2734 7C030214 */  add     r0, r3, r0
/* 0AD198 800B2738 900D8D18 */  stw     r0, FstStringStart@sda21(r13)
/* 0AD19C 800B273C 4E800020 */  blr     

glabel DVDConvertPathToEntrynum
/* 0AD1A0 800B2740 7C0802A6 */  mflr    r0
/* 0AD1A4 800B2744 90010004 */  stw     r0, 4(r1)
/* 0AD1A8 800B2748 9421FFB8 */  stwu    r1, -0x48(r1)
/* 0AD1AC 800B274C BE810018 */  stmw    r20, 0x18(r1)
/* 0AD1B0 800B2750 7C771B78 */  mr      r23, r3
/* 0AD1B4 800B2754 3C60800F */  lis     r3, D_800F22F8@ha
/* 0AD1B8 800B2758 3B370000 */  addi    r25, r23, 0
/* 0AD1BC 800B275C 3BE322F8 */  addi    r31, r3, D_800F22F8@l
/* 0AD1C0 800B2760 834D8D20 */  lwz     r26, currentDirectory@sda21(r13)
lbl_800B2764:
/* 0AD1C4 800B2764 88770000 */  lbz     r3, 0(r23)
/* 0AD1C8 800B2768 7C600775 */  extsb.  r0, r3
/* 0AD1CC 800B276C 4082000C */  bne     lbl_800B2778
/* 0AD1D0 800B2770 7F43D378 */  mr      r3, r26
/* 0AD1D4 800B2774 480002AC */  b       lbl_800B2A20
lbl_800B2778:
/* 0AD1D8 800B2778 7C600774 */  extsb   r0, r3
/* 0AD1DC 800B277C 2C00002F */  cmpwi   r0, 0x2f
/* 0AD1E0 800B2780 40820010 */  bne     lbl_800B2790
/* 0AD1E4 800B2784 3B400000 */  li      r26, 0
/* 0AD1E8 800B2788 3AF70001 */  addi    r23, r23, 1
/* 0AD1EC 800B278C 4BFFFFD8 */  b       lbl_800B2764
lbl_800B2790:
/* 0AD1F0 800B2790 2C00002E */  cmpwi   r0, 0x2e
/* 0AD1F4 800B2794 40820074 */  bne     lbl_800B2808
/* 0AD1F8 800B2798 88770001 */  lbz     r3, 1(r23)
/* 0AD1FC 800B279C 7C600774 */  extsb   r0, r3
/* 0AD200 800B27A0 2C00002E */  cmpwi   r0, 0x2e
/* 0AD204 800B27A4 40820044 */  bne     lbl_800B27E8
/* 0AD208 800B27A8 88770002 */  lbz     r3, 2(r23)
/* 0AD20C 800B27AC 2C03002F */  cmpwi   r3, 0x2f
/* 0AD210 800B27B0 4082001C */  bne     lbl_800B27CC
/* 0AD214 800B27B4 1C7A000C */  mulli   r3, r26, 0xc
/* 0AD218 800B27B8 808D8D14 */  lwz     r4, FstStart@sda21(r13)
/* 0AD21C 800B27BC 38030004 */  addi    r0, r3, 4
/* 0AD220 800B27C0 7F44002E */  lwzx    r26, r4, r0
/* 0AD224 800B27C4 3AF70003 */  addi    r23, r23, 3
/* 0AD228 800B27C8 4BFFFF9C */  b       lbl_800B2764
lbl_800B27CC:
/* 0AD22C 800B27CC 7C600775 */  extsb.  r0, r3
/* 0AD230 800B27D0 40820038 */  bne     lbl_800B2808
/* 0AD234 800B27D4 1C1A000C */  mulli   r0, r26, 0xc
/* 0AD238 800B27D8 806D8D14 */  lwz     r3, FstStart@sda21(r13)
/* 0AD23C 800B27DC 7C630214 */  add     r3, r3, r0
/* 0AD240 800B27E0 80630004 */  lwz     r3, 4(r3)
/* 0AD244 800B27E4 4800023C */  b       lbl_800B2A20
lbl_800B27E8:
/* 0AD248 800B27E8 2C00002F */  cmpwi   r0, 0x2f
/* 0AD24C 800B27EC 4082000C */  bne     lbl_800B27F8
/* 0AD250 800B27F0 3AF70002 */  addi    r23, r23, 2
/* 0AD254 800B27F4 4BFFFF70 */  b       lbl_800B2764
lbl_800B27F8:
/* 0AD258 800B27F8 7C600775 */  extsb.  r0, r3
/* 0AD25C 800B27FC 4082000C */  bne     lbl_800B2808
/* 0AD260 800B2800 7F43D378 */  mr      r3, r26
/* 0AD264 800B2804 4800021C */  b       lbl_800B2A20
lbl_800B2808:
/* 0AD268 800B2808 800D8D24 */  lwz     r0, __DVDLongFileNameFlag@sda21(r13)
/* 0AD26C 800B280C 28000000 */  cmplwi  r0, 0
/* 0AD270 800B2810 408200AC */  bne     lbl_800B28BC
/* 0AD274 800B2814 3B970000 */  addi    r28, r23, 0
/* 0AD278 800B2818 38A00000 */  li      r5, 0
/* 0AD27C 800B281C 38800000 */  li      r4, 0
/* 0AD280 800B2820 48000048 */  b       lbl_800B2868
lbl_800B2824:
/* 0AD284 800B2824 7C600774 */  extsb   r0, r3
/* 0AD288 800B2828 2C00002E */  cmpwi   r0, 0x2e
/* 0AD28C 800B282C 4082002C */  bne     lbl_800B2858
/* 0AD290 800B2830 7C17E050 */  subf    r0, r23, r28
/* 0AD294 800B2834 2C000008 */  cmpwi   r0, 8
/* 0AD298 800B2838 4181000C */  bgt     lbl_800B2844
/* 0AD29C 800B283C 2C050001 */  cmpwi   r5, 1
/* 0AD2A0 800B2840 4082000C */  bne     lbl_800B284C
lbl_800B2844:
/* 0AD2A4 800B2844 38800001 */  li      r4, 1
/* 0AD2A8 800B2848 48000038 */  b       lbl_800B2880
lbl_800B284C:
/* 0AD2AC 800B284C 3B1C0001 */  addi    r24, r28, 1
/* 0AD2B0 800B2850 38A00001 */  li      r5, 1
/* 0AD2B4 800B2854 48000010 */  b       lbl_800B2864
lbl_800B2858:
/* 0AD2B8 800B2858 2C000020 */  cmpwi   r0, 0x20
/* 0AD2BC 800B285C 40820008 */  bne     lbl_800B2864
/* 0AD2C0 800B2860 38800001 */  li      r4, 1
lbl_800B2864:
/* 0AD2C4 800B2864 3B9C0001 */  addi    r28, r28, 1
lbl_800B2868:
/* 0AD2C8 800B2868 887C0000 */  lbz     r3, 0(r28)
/* 0AD2CC 800B286C 7C600775 */  extsb.  r0, r3
/* 0AD2D0 800B2870 41820010 */  beq     lbl_800B2880
/* 0AD2D4 800B2874 7C600774 */  extsb   r0, r3
/* 0AD2D8 800B2878 2C00002F */  cmpwi   r0, 0x2f
/* 0AD2DC 800B287C 4082FFA8 */  bne     lbl_800B2824
lbl_800B2880:
/* 0AD2E0 800B2880 2C050001 */  cmpwi   r5, 1
/* 0AD2E4 800B2884 40820014 */  bne     lbl_800B2898
/* 0AD2E8 800B2888 7C18E050 */  subf    r0, r24, r28
/* 0AD2EC 800B288C 2C000003 */  cmpwi   r0, 3
/* 0AD2F0 800B2890 40810008 */  ble     lbl_800B2898
/* 0AD2F4 800B2894 38800001 */  li      r4, 1
lbl_800B2898:
/* 0AD2F8 800B2898 2C040000 */  cmpwi   r4, 0
/* 0AD2FC 800B289C 41820044 */  beq     lbl_800B28E0
/* 0AD300 800B28A0 38BF0000 */  addi    r5, r31, 0
/* 0AD304 800B28A4 4CC63182 */  crclr   6
/* 0AD308 800B28A8 38D90000 */  addi    r6, r25, 0
/* 0AD30C 800B28AC 386D8810 */  addi    r3, r13, D_801354F0@sda21
/* 0AD310 800B28B0 3880017F */  li      r4, 0x17f
/* 0AD314 800B28B4 4BFEBDC5 */  bl      OSPanic
/* 0AD318 800B28B8 48000028 */  b       lbl_800B28E0
lbl_800B28BC:
/* 0AD31C 800B28BC 7EFCBB78 */  mr      r28, r23
/* 0AD320 800B28C0 48000008 */  b       lbl_800B28C8
lbl_800B28C4:
/* 0AD324 800B28C4 3B9C0001 */  addi    r28, r28, 1
lbl_800B28C8:
/* 0AD328 800B28C8 887C0000 */  lbz     r3, 0(r28)
/* 0AD32C 800B28CC 7C600775 */  extsb.  r0, r3
/* 0AD330 800B28D0 41820010 */  beq     lbl_800B28E0
/* 0AD334 800B28D4 7C600774 */  extsb   r0, r3
/* 0AD338 800B28D8 2C00002F */  cmpwi   r0, 0x2f
/* 0AD33C 800B28DC 4082FFE8 */  bne     lbl_800B28C4
lbl_800B28E0:
/* 0AD340 800B28E0 881C0000 */  lbz     r0, 0(r28)
/* 0AD344 800B28E4 7C000775 */  extsb.  r0, r0
/* 0AD348 800B28E8 4082000C */  bne     lbl_800B28F4
/* 0AD34C 800B28EC 3BC00000 */  li      r30, 0
/* 0AD350 800B28F0 48000008 */  b       lbl_800B28F8
lbl_800B28F4:
/* 0AD354 800B28F4 3BC00001 */  li      r30, 1
lbl_800B28F8:
/* 0AD358 800B28F8 1FBA000C */  mulli   r29, r26, 0xc
/* 0AD35C 800B28FC 7F77E050 */  subf    r27, r23, r28
/* 0AD360 800B2900 3B5A0001 */  addi    r26, r26, 1
/* 0AD364 800B2904 480000E4 */  b       lbl_800B29E8
lbl_800B2908:
/* 0AD368 800B2908 1F9A000C */  mulli   r28, r26, 0xc
/* 0AD36C 800B290C 7C83E02E */  lwzx    r4, r3, r28
/* 0AD370 800B2910 5480000F */  rlwinm. r0, r4, 0, 0, 7
/* 0AD374 800B2914 4082000C */  bne     lbl_800B2920
/* 0AD378 800B2918 38000000 */  li      r0, 0
/* 0AD37C 800B291C 48000008 */  b       lbl_800B2924
lbl_800B2920:
/* 0AD380 800B2920 38000001 */  li      r0, 1
lbl_800B2924:
/* 0AD384 800B2924 2C000000 */  cmpwi   r0, 0
/* 0AD388 800B2928 4082000C */  bne     lbl_800B2934
/* 0AD38C 800B292C 2C1E0001 */  cmpwi   r30, 1
/* 0AD390 800B2930 41820080 */  beq     lbl_800B29B0
lbl_800B2934:
/* 0AD394 800B2934 806D8D18 */  lwz     r3, FstStringStart@sda21(r13)
/* 0AD398 800B2938 5480023E */  clrlwi  r0, r4, 8
/* 0AD39C 800B293C 3AB70000 */  addi    r21, r23, 0
/* 0AD3A0 800B2940 7E830214 */  add     r20, r3, r0
/* 0AD3A4 800B2944 48000038 */  b       lbl_800B297C
lbl_800B2948:
/* 0AD3A8 800B2948 88140000 */  lbz     r0, 0(r20)
/* 0AD3AC 800B294C 3A940001 */  addi    r20, r20, 1
/* 0AD3B0 800B2950 7C030774 */  extsb   r3, r0
/* 0AD3B4 800B2954 4801BC7D */  bl      tolower
/* 0AD3B8 800B2958 88150000 */  lbz     r0, 0(r21)
/* 0AD3BC 800B295C 3AC30000 */  addi    r22, r3, 0
/* 0AD3C0 800B2960 3AB50001 */  addi    r21, r21, 1
/* 0AD3C4 800B2964 7C030774 */  extsb   r3, r0
/* 0AD3C8 800B2968 4801BC69 */  bl      tolower
/* 0AD3CC 800B296C 7C03B000 */  cmpw    r3, r22
/* 0AD3D0 800B2970 4182000C */  beq     lbl_800B297C
/* 0AD3D4 800B2974 38000000 */  li      r0, 0
/* 0AD3D8 800B2978 48000030 */  b       lbl_800B29A8
lbl_800B297C:
/* 0AD3DC 800B297C 88140000 */  lbz     r0, 0(r20)
/* 0AD3E0 800B2980 7C000775 */  extsb.  r0, r0
/* 0AD3E4 800B2984 4082FFC4 */  bne     lbl_800B2948
/* 0AD3E8 800B2988 88750000 */  lbz     r3, 0(r21)
/* 0AD3EC 800B298C 2C03002F */  cmpwi   r3, 0x2f
/* 0AD3F0 800B2990 4182000C */  beq     lbl_800B299C
/* 0AD3F4 800B2994 7C600775 */  extsb.  r0, r3
/* 0AD3F8 800B2998 4082000C */  bne     lbl_800B29A4
lbl_800B299C:
/* 0AD3FC 800B299C 38000001 */  li      r0, 1
/* 0AD400 800B29A0 48000008 */  b       lbl_800B29A8
lbl_800B29A4:
/* 0AD404 800B29A4 38000000 */  li      r0, 0
lbl_800B29A8:
/* 0AD408 800B29A8 2C000001 */  cmpwi   r0, 1
/* 0AD40C 800B29AC 41820058 */  beq     lbl_800B2A04
lbl_800B29B0:
/* 0AD410 800B29B0 800D8D14 */  lwz     r0, FstStart@sda21(r13)
/* 0AD414 800B29B4 7C60E214 */  add     r3, r0, r28
/* 0AD418 800B29B8 80030000 */  lwz     r0, 0(r3)
/* 0AD41C 800B29BC 5400000F */  rlwinm. r0, r0, 0, 0, 7
/* 0AD420 800B29C0 4082000C */  bne     lbl_800B29CC
/* 0AD424 800B29C4 38000000 */  li      r0, 0
/* 0AD428 800B29C8 48000008 */  b       lbl_800B29D0
lbl_800B29CC:
/* 0AD42C 800B29CC 38000001 */  li      r0, 1
lbl_800B29D0:
/* 0AD430 800B29D0 2C000000 */  cmpwi   r0, 0
/* 0AD434 800B29D4 4182000C */  beq     lbl_800B29E0
/* 0AD438 800B29D8 80030008 */  lwz     r0, 8(r3)
/* 0AD43C 800B29DC 48000008 */  b       lbl_800B29E4
lbl_800B29E0:
/* 0AD440 800B29E0 381A0001 */  addi    r0, r26, 1
lbl_800B29E4:
/* 0AD444 800B29E4 7C1A0378 */  mr      r26, r0
lbl_800B29E8:
/* 0AD448 800B29E8 806D8D14 */  lwz     r3, FstStart@sda21(r13)
/* 0AD44C 800B29EC 38030008 */  addi    r0, r3, 8
/* 0AD450 800B29F0 7C1D002E */  lwzx    r0, r29, r0
/* 0AD454 800B29F4 7C1A0040 */  cmplw   r26, r0
/* 0AD458 800B29F8 4180FF10 */  blt     lbl_800B2908
/* 0AD45C 800B29FC 3860FFFF */  li      r3, -1
/* 0AD460 800B2A00 48000020 */  b       lbl_800B2A20
lbl_800B2A04:
/* 0AD464 800B2A04 2C1E0000 */  cmpwi   r30, 0
/* 0AD468 800B2A08 4082000C */  bne     lbl_800B2A14
/* 0AD46C 800B2A0C 7F43D378 */  mr      r3, r26
/* 0AD470 800B2A10 48000010 */  b       lbl_800B2A20
lbl_800B2A14:
/* 0AD474 800B2A14 7EFBBA14 */  add     r23, r27, r23
/* 0AD478 800B2A18 3AF70001 */  addi    r23, r23, 1
/* 0AD47C 800B2A1C 4BFFFD48 */  b       lbl_800B2764
lbl_800B2A20:
/* 0AD480 800B2A20 BA810018 */  lmw     r20, 0x18(r1)
/* 0AD484 800B2A24 8001004C */  lwz     r0, 0x4c(r1)
/* 0AD488 800B2A28 38210048 */  addi    r1, r1, 0x48
/* 0AD48C 800B2A2C 7C0803A6 */  mtlr    r0
/* 0AD490 800B2A30 4E800020 */  blr     

glabel DVDOpen
/* 0AD494 800B2A34 7C0802A6 */  mflr    r0
/* 0AD498 800B2A38 90010004 */  stw     r0, 4(r1)
/* 0AD49C 800B2A3C 9421FF68 */  stwu    r1, -0x98(r1)
/* 0AD4A0 800B2A40 93E10094 */  stw     r31, 0x94(r1)
/* 0AD4A4 800B2A44 3BE40000 */  addi    r31, r4, 0
/* 0AD4A8 800B2A48 93C10090 */  stw     r30, 0x90(r1)
/* 0AD4AC 800B2A4C 3BC30000 */  addi    r30, r3, 0
/* 0AD4B0 800B2A50 4BFFFCF1 */  bl      DVDConvertPathToEntrynum
/* 0AD4B4 800B2A54 2C030000 */  cmpwi   r3, 0
/* 0AD4B8 800B2A58 40800030 */  bge     lbl_800B2A88
/* 0AD4BC 800B2A5C 38610010 */  addi    r3, r1, 0x10
/* 0AD4C0 800B2A60 38800080 */  li      r4, 0x80
/* 0AD4C4 800B2A64 4800021D */  bl      DVDGetCurrentDir
/* 0AD4C8 800B2A68 3C60800F */  lis     r3, D_800F23C0@ha
/* 0AD4CC 800B2A6C 4CC63182 */  crclr   6
/* 0AD4D0 800B2A70 386323C0 */  addi    r3, r3, D_800F23C0@l
/* 0AD4D4 800B2A74 389E0000 */  addi    r4, r30, 0
/* 0AD4D8 800B2A78 38A10010 */  addi    r5, r1, 0x10
/* 0AD4DC 800B2A7C 4BFEBB7D */  bl      OSReport
/* 0AD4E0 800B2A80 38600000 */  li      r3, 0
/* 0AD4E4 800B2A84 48000060 */  b       lbl_800B2AE4
lbl_800B2A88:
/* 0AD4E8 800B2A88 1CA3000C */  mulli   r5, r3, 0xc
/* 0AD4EC 800B2A8C 806D8D14 */  lwz     r3, FstStart@sda21(r13)
/* 0AD4F0 800B2A90 7C03282E */  lwzx    r0, r3, r5
/* 0AD4F4 800B2A94 5400000F */  rlwinm. r0, r0, 0, 0, 7
/* 0AD4F8 800B2A98 4082000C */  bne     lbl_800B2AA4
/* 0AD4FC 800B2A9C 38000000 */  li      r0, 0
/* 0AD500 800B2AA0 48000008 */  b       lbl_800B2AA8
lbl_800B2AA4:
/* 0AD504 800B2AA4 38000001 */  li      r0, 1
lbl_800B2AA8:
/* 0AD508 800B2AA8 2C000000 */  cmpwi   r0, 0
/* 0AD50C 800B2AAC 4182000C */  beq     lbl_800B2AB8
/* 0AD510 800B2AB0 38600000 */  li      r3, 0
/* 0AD514 800B2AB4 48000030 */  b       lbl_800B2AE4
lbl_800B2AB8:
/* 0AD518 800B2AB8 7C632A14 */  add     r3, r3, r5
/* 0AD51C 800B2ABC 80830004 */  lwz     r4, 4(r3)
/* 0AD520 800B2AC0 38000000 */  li      r0, 0
/* 0AD524 800B2AC4 38600001 */  li      r3, 1
/* 0AD528 800B2AC8 909F0030 */  stw     r4, 0x30(r31)
/* 0AD52C 800B2ACC 808D8D14 */  lwz     r4, FstStart@sda21(r13)
/* 0AD530 800B2AD0 7C842A14 */  add     r4, r4, r5
/* 0AD534 800B2AD4 80840008 */  lwz     r4, 8(r4)
/* 0AD538 800B2AD8 909F0034 */  stw     r4, 0x34(r31)
/* 0AD53C 800B2ADC 901F0038 */  stw     r0, 0x38(r31)
/* 0AD540 800B2AE0 901F000C */  stw     r0, 0xc(r31)
lbl_800B2AE4:
/* 0AD544 800B2AE4 8001009C */  lwz     r0, 0x9c(r1)
/* 0AD548 800B2AE8 83E10094 */  lwz     r31, 0x94(r1)
/* 0AD54C 800B2AEC 83C10090 */  lwz     r30, 0x90(r1)
/* 0AD550 800B2AF0 38210098 */  addi    r1, r1, 0x98
/* 0AD554 800B2AF4 7C0803A6 */  mtlr    r0
/* 0AD558 800B2AF8 4E800020 */  blr     

glabel DVDClose
/* 0AD55C 800B2AFC 7C0802A6 */  mflr    r0
/* 0AD560 800B2B00 90010004 */  stw     r0, 4(r1)
/* 0AD564 800B2B04 9421FFF8 */  stwu    r1, -8(r1)
/* 0AD568 800B2B08 48002879 */  bl      DVDCancel
/* 0AD56C 800B2B0C 38600001 */  li      r3, 1
/* 0AD570 800B2B10 8001000C */  lwz     r0, 0xc(r1)
/* 0AD574 800B2B14 38210008 */  addi    r1, r1, 8
/* 0AD578 800B2B18 7C0803A6 */  mtlr    r0
/* 0AD57C 800B2B1C 4E800020 */  blr     

entryToPath:
/* 0AD580 800B2B20 7C0802A6 */  mflr    r0
/* 0AD584 800B2B24 28030000 */  cmplwi  r3, 0
/* 0AD588 800B2B28 90010004 */  stw     r0, 4(r1)
/* 0AD58C 800B2B2C 9421FFD0 */  stwu    r1, -0x30(r1)
/* 0AD590 800B2B30 93E1002C */  stw     r31, 0x2c(r1)
/* 0AD594 800B2B34 93C10028 */  stw     r30, 0x28(r1)
/* 0AD598 800B2B38 3BC50000 */  addi    r30, r5, 0
/* 0AD59C 800B2B3C 93A10024 */  stw     r29, 0x24(r1)
/* 0AD5A0 800B2B40 3BA40000 */  addi    r29, r4, 0
/* 0AD5A4 800B2B44 93810020 */  stw     r28, 0x20(r1)
/* 0AD5A8 800B2B48 4082000C */  bne     lbl_800B2B54
/* 0AD5AC 800B2B4C 38600000 */  li      r3, 0
/* 0AD5B0 800B2B50 48000110 */  b       lbl_800B2C60
lbl_800B2B54:
/* 0AD5B4 800B2B54 808D8D14 */  lwz     r4, FstStart@sda21(r13)
/* 0AD5B8 800B2B58 1C63000C */  mulli   r3, r3, 0xc
/* 0AD5BC 800B2B5C 80CD8D18 */  lwz     r6, FstStringStart@sda21(r13)
/* 0AD5C0 800B2B60 38A40004 */  addi    r5, r4, 4
/* 0AD5C4 800B2B64 7C04182E */  lwzx    r0, r4, r3
/* 0AD5C8 800B2B68 7C65182E */  lwzx    r3, r5, r3
/* 0AD5CC 800B2B6C 5400023E */  clrlwi  r0, r0, 8
/* 0AD5D0 800B2B70 28030000 */  cmplwi  r3, 0
/* 0AD5D4 800B2B74 7FE60214 */  add     r31, r6, r0
/* 0AD5D8 800B2B78 4082000C */  bne     lbl_800B2B84
/* 0AD5DC 800B2B7C 38600000 */  li      r3, 0
/* 0AD5E0 800B2B80 48000080 */  b       lbl_800B2C00
lbl_800B2B84:
/* 0AD5E4 800B2B84 1C63000C */  mulli   r3, r3, 0xc
/* 0AD5E8 800B2B88 7C04182E */  lwzx    r0, r4, r3
/* 0AD5EC 800B2B8C 7FA4EB78 */  mr      r4, r29
/* 0AD5F0 800B2B90 7C65182E */  lwzx    r3, r5, r3
/* 0AD5F4 800B2B94 38BE0000 */  addi    r5, r30, 0
/* 0AD5F8 800B2B98 5400023E */  clrlwi  r0, r0, 8
/* 0AD5FC 800B2B9C 7F860214 */  add     r28, r6, r0
/* 0AD600 800B2BA0 4BFFFF81 */  bl      entryToPath
/* 0AD604 800B2BA4 7C03F040 */  cmplw   r3, r30
/* 0AD608 800B2BA8 40820008 */  bne     lbl_800B2BB0
/* 0AD60C 800B2BAC 48000054 */  b       lbl_800B2C00
lbl_800B2BB0:
/* 0AD610 800B2BB0 38030000 */  addi    r0, r3, 0
/* 0AD614 800B2BB4 38630001 */  addi    r3, r3, 1
/* 0AD618 800B2BB8 3880002F */  li      r4, 0x2f
/* 0AD61C 800B2BBC 7CC3F050 */  subf    r6, r3, r30
/* 0AD620 800B2BC0 7C9D01AE */  stbx    r4, r29, r0
/* 0AD624 800B2BC4 38860000 */  addi    r4, r6, 0
/* 0AD628 800B2BC8 7CBD1A14 */  add     r5, r29, r3
/* 0AD62C 800B2BCC 48000018 */  b       lbl_800B2BE4
lbl_800B2BD0:
/* 0AD630 800B2BD0 881C0000 */  lbz     r0, 0(r28)
/* 0AD634 800B2BD4 3B9C0001 */  addi    r28, r28, 1
/* 0AD638 800B2BD8 3884FFFF */  addi    r4, r4, -1
/* 0AD63C 800B2BDC 98050000 */  stb     r0, 0(r5)
/* 0AD640 800B2BE0 38A50001 */  addi    r5, r5, 1
lbl_800B2BE4:
/* 0AD644 800B2BE4 28040000 */  cmplwi  r4, 0
/* 0AD648 800B2BE8 41820010 */  beq     lbl_800B2BF8
/* 0AD64C 800B2BEC 881C0000 */  lbz     r0, 0(r28)
/* 0AD650 800B2BF0 7C000775 */  extsb.  r0, r0
/* 0AD654 800B2BF4 4082FFDC */  bne     lbl_800B2BD0
lbl_800B2BF8:
/* 0AD658 800B2BF8 7C043050 */  subf    r0, r4, r6
/* 0AD65C 800B2BFC 7C630214 */  add     r3, r3, r0
lbl_800B2C00:
/* 0AD660 800B2C00 7C03F040 */  cmplw   r3, r30
/* 0AD664 800B2C04 40820008 */  bne     lbl_800B2C0C
/* 0AD668 800B2C08 48000058 */  b       lbl_800B2C60
lbl_800B2C0C:
/* 0AD66C 800B2C0C 38030000 */  addi    r0, r3, 0
/* 0AD670 800B2C10 38630001 */  addi    r3, r3, 1
/* 0AD674 800B2C14 3880002F */  li      r4, 0x2f
/* 0AD678 800B2C18 7CE3F050 */  subf    r7, r3, r30
/* 0AD67C 800B2C1C 7C9D01AE */  stbx    r4, r29, r0
/* 0AD680 800B2C20 38DF0000 */  addi    r6, r31, 0
/* 0AD684 800B2C24 38870000 */  addi    r4, r7, 0
/* 0AD688 800B2C28 7CBD1A14 */  add     r5, r29, r3
/* 0AD68C 800B2C2C 48000018 */  b       lbl_800B2C44
lbl_800B2C30:
/* 0AD690 800B2C30 88060000 */  lbz     r0, 0(r6)
/* 0AD694 800B2C34 38C60001 */  addi    r6, r6, 1
/* 0AD698 800B2C38 3884FFFF */  addi    r4, r4, -1
/* 0AD69C 800B2C3C 98050000 */  stb     r0, 0(r5)
/* 0AD6A0 800B2C40 38A50001 */  addi    r5, r5, 1
lbl_800B2C44:
/* 0AD6A4 800B2C44 28040000 */  cmplwi  r4, 0
/* 0AD6A8 800B2C48 41820010 */  beq     lbl_800B2C58
/* 0AD6AC 800B2C4C 88060000 */  lbz     r0, 0(r6)
/* 0AD6B0 800B2C50 7C000775 */  extsb.  r0, r0
/* 0AD6B4 800B2C54 4082FFDC */  bne     lbl_800B2C30
lbl_800B2C58:
/* 0AD6B8 800B2C58 7C043850 */  subf    r0, r4, r7
/* 0AD6BC 800B2C5C 7C630214 */  add     r3, r3, r0
lbl_800B2C60:
/* 0AD6C0 800B2C60 80010034 */  lwz     r0, 0x34(r1)
/* 0AD6C4 800B2C64 83E1002C */  lwz     r31, 0x2c(r1)
/* 0AD6C8 800B2C68 83C10028 */  lwz     r30, 0x28(r1)
/* 0AD6CC 800B2C6C 83A10024 */  lwz     r29, 0x24(r1)
/* 0AD6D0 800B2C70 83810020 */  lwz     r28, 0x20(r1)
/* 0AD6D4 800B2C74 38210030 */  addi    r1, r1, 0x30
/* 0AD6D8 800B2C78 7C0803A6 */  mtlr    r0
/* 0AD6DC 800B2C7C 4E800020 */  blr     

glabel DVDGetCurrentDir
/* 0AD6E0 800B2C80 7C0802A6 */  mflr    r0
/* 0AD6E4 800B2C84 90010004 */  stw     r0, 4(r1)
/* 0AD6E8 800B2C88 9421FFE0 */  stwu    r1, -0x20(r1)
/* 0AD6EC 800B2C8C 93E1001C */  stw     r31, 0x1c(r1)
/* 0AD6F0 800B2C90 93C10018 */  stw     r30, 0x18(r1)
/* 0AD6F4 800B2C94 3BC40000 */  addi    r30, r4, 0
/* 0AD6F8 800B2C98 38BE0000 */  addi    r5, r30, 0
/* 0AD6FC 800B2C9C 93A10014 */  stw     r29, 0x14(r1)
/* 0AD700 800B2CA0 3BA30000 */  addi    r29, r3, 0
/* 0AD704 800B2CA4 389D0000 */  addi    r4, r29, 0
/* 0AD708 800B2CA8 83ED8D20 */  lwz     r31, currentDirectory@sda21(r13)
/* 0AD70C 800B2CAC 387F0000 */  addi    r3, r31, 0
/* 0AD710 800B2CB0 4BFFFE71 */  bl      entryToPath
/* 0AD714 800B2CB4 7C03F040 */  cmplw   r3, r30
/* 0AD718 800B2CB8 40820014 */  bne     lbl_800B2CCC
/* 0AD71C 800B2CBC 38000000 */  li      r0, 0
/* 0AD720 800B2CC0 7C7DF214 */  add     r3, r29, r30
/* 0AD724 800B2CC4 9803FFFF */  stb     r0, -1(r3)
/* 0AD728 800B2CC8 4800005C */  b       lbl_800B2D24
lbl_800B2CCC:
/* 0AD72C 800B2CCC 1C1F000C */  mulli   r0, r31, 0xc
/* 0AD730 800B2CD0 808D8D14 */  lwz     r4, FstStart@sda21(r13)
/* 0AD734 800B2CD4 7C04002E */  lwzx    r0, r4, r0
/* 0AD738 800B2CD8 5400000F */  rlwinm. r0, r0, 0, 0, 7
/* 0AD73C 800B2CDC 4082000C */  bne     lbl_800B2CE8
/* 0AD740 800B2CE0 38000000 */  li      r0, 0
/* 0AD744 800B2CE4 48000008 */  b       lbl_800B2CEC
lbl_800B2CE8:
/* 0AD748 800B2CE8 38000001 */  li      r0, 1
lbl_800B2CEC:
/* 0AD74C 800B2CEC 2C000000 */  cmpwi   r0, 0
/* 0AD750 800B2CF0 41820028 */  beq     lbl_800B2D18
/* 0AD754 800B2CF4 381EFFFF */  addi    r0, r30, -1
/* 0AD758 800B2CF8 7C030040 */  cmplw   r3, r0
/* 0AD75C 800B2CFC 40820010 */  bne     lbl_800B2D0C
/* 0AD760 800B2D00 38000000 */  li      r0, 0
/* 0AD764 800B2D04 7C1D19AE */  stbx    r0, r29, r3
/* 0AD768 800B2D08 4800001C */  b       lbl_800B2D24
lbl_800B2D0C:
/* 0AD76C 800B2D0C 3800002F */  li      r0, 0x2f
/* 0AD770 800B2D10 7C1D19AE */  stbx    r0, r29, r3
/* 0AD774 800B2D14 38630001 */  addi    r3, r3, 1
lbl_800B2D18:
/* 0AD778 800B2D18 38000000 */  li      r0, 0
/* 0AD77C 800B2D1C 7C1D19AE */  stbx    r0, r29, r3
/* 0AD780 800B2D20 38000001 */  li      r0, 1
lbl_800B2D24:
/* 0AD784 800B2D24 7C030378 */  mr      r3, r0
/* 0AD788 800B2D28 80010024 */  lwz     r0, 0x24(r1)
/* 0AD78C 800B2D2C 83E1001C */  lwz     r31, 0x1c(r1)
/* 0AD790 800B2D30 83C10018 */  lwz     r30, 0x18(r1)
/* 0AD794 800B2D34 83A10014 */  lwz     r29, 0x14(r1)
/* 0AD798 800B2D38 38210020 */  addi    r1, r1, 0x20
/* 0AD79C 800B2D3C 7C0803A6 */  mtlr    r0
/* 0AD7A0 800B2D40 4E800020 */  blr     

glabel DVDReadAsyncPrio
/* 0AD7A4 800B2D44 7C0802A6 */  mflr    r0
/* 0AD7A8 800B2D48 90010004 */  stw     r0, 4(r1)
/* 0AD7AC 800B2D4C 9421FFC8 */  stwu    r1, -0x38(r1)
/* 0AD7B0 800B2D50 BF410020 */  stmw    r26, 0x20(r1)
/* 0AD7B4 800B2D54 7CDD3379 */  or.     r29, r6, r6
/* 0AD7B8 800B2D58 3B430000 */  addi    r26, r3, 0
/* 0AD7BC 800B2D5C 3B640000 */  addi    r27, r4, 0
/* 0AD7C0 800B2D60 3B850000 */  addi    r28, r5, 0
/* 0AD7C4 800B2D64 3BC70000 */  addi    r30, r7, 0
/* 0AD7C8 800B2D68 3BE80000 */  addi    r31, r8, 0
/* 0AD7CC 800B2D6C 41800010 */  blt     lbl_800B2D7C
/* 0AD7D0 800B2D70 801A0034 */  lwz     r0, 0x34(r26)
/* 0AD7D4 800B2D74 7C1D0040 */  cmplw   r29, r0
/* 0AD7D8 800B2D78 4180001C */  blt     lbl_800B2D94
lbl_800B2D7C:
/* 0AD7DC 800B2D7C 3C60800F */  lis     r3, D_800F23F8@ha
/* 0AD7E0 800B2D80 4CC63182 */  crclr   6
/* 0AD7E4 800B2D84 38A323F8 */  addi    r5, r3, D_800F23F8@l
/* 0AD7E8 800B2D88 386D8810 */  addi    r3, r13, D_801354F0@sda21
/* 0AD7EC 800B2D8C 388002EA */  li      r4, 0x2ea
/* 0AD7F0 800B2D90 4BFEB8E9 */  bl      OSPanic
lbl_800B2D94:
/* 0AD7F4 800B2D94 7C9DE215 */  add.    r4, r29, r28
/* 0AD7F8 800B2D98 41800014 */  blt     lbl_800B2DAC
/* 0AD7FC 800B2D9C 807A0034 */  lwz     r3, 0x34(r26)
/* 0AD800 800B2DA0 38030020 */  addi    r0, r3, 0x20
/* 0AD804 800B2DA4 7C040040 */  cmplw   r4, r0
/* 0AD808 800B2DA8 4180001C */  blt     lbl_800B2DC4
lbl_800B2DAC:
/* 0AD80C 800B2DAC 3C60800F */  lis     r3, D_800F23F8@ha
/* 0AD810 800B2DB0 4CC63182 */  crclr   6
/* 0AD814 800B2DB4 38A323F8 */  addi    r5, r3, D_800F23F8@l
/* 0AD818 800B2DB8 386D8810 */  addi    r3, r13, D_801354F0@sda21
/* 0AD81C 800B2DBC 388002F0 */  li      r4, 0x2f0
/* 0AD820 800B2DC0 4BFEB8B9 */  bl      OSPanic
lbl_800B2DC4:
/* 0AD824 800B2DC4 93DA0038 */  stw     r30, 0x38(r26)
/* 0AD828 800B2DC8 3C60800B */  lis     r3, cbForReadAsync@ha
/* 0AD82C 800B2DCC 38E32E04 */  addi    r7, r3, cbForReadAsync@l
/* 0AD830 800B2DD0 801A0030 */  lwz     r0, 0x30(r26)
/* 0AD834 800B2DD4 387A0000 */  addi    r3, r26, 0
/* 0AD838 800B2DD8 389B0000 */  addi    r4, r27, 0
/* 0AD83C 800B2DDC 38BC0000 */  addi    r5, r28, 0
/* 0AD840 800B2DE0 391F0000 */  addi    r8, r31, 0
/* 0AD844 800B2DE4 7CC0EA14 */  add     r6, r0, r29
/* 0AD848 800B2DE8 48001D75 */  bl      DVDReadAbsAsyncPrio
/* 0AD84C 800B2DEC BB410020 */  lmw     r26, 0x20(r1)
/* 0AD850 800B2DF0 38600001 */  li      r3, 1
/* 0AD854 800B2DF4 8001003C */  lwz     r0, 0x3c(r1)
/* 0AD858 800B2DF8 38210038 */  addi    r1, r1, 0x38
/* 0AD85C 800B2DFC 7C0803A6 */  mtlr    r0
/* 0AD860 800B2E00 4E800020 */  blr     

cbForReadAsync:
/* 0AD864 800B2E04 7C0802A6 */  mflr    r0
/* 0AD868 800B2E08 90010004 */  stw     r0, 4(r1)
/* 0AD86C 800B2E0C 9421FFF8 */  stwu    r1, -8(r1)
/* 0AD870 800B2E10 81840038 */  lwz     r12, 0x38(r4)
/* 0AD874 800B2E14 280C0000 */  cmplwi  r12, 0
/* 0AD878 800B2E18 4182000C */  beq     lbl_800B2E24
/* 0AD87C 800B2E1C 7D8803A6 */  mtlr    r12
/* 0AD880 800B2E20 4E800021 */  blrl    
lbl_800B2E24:
/* 0AD884 800B2E24 8001000C */  lwz     r0, 0xc(r1)
/* 0AD888 800B2E28 38210008 */  addi    r1, r1, 8
/* 0AD88C 800B2E2C 7C0803A6 */  mtlr    r0
/* 0AD890 800B2E30 4E800020 */  blr     

glabel DVDReadPrio
/* 0AD894 800B2E34 7C0802A6 */  mflr    r0
/* 0AD898 800B2E38 90010004 */  stw     r0, 4(r1)
/* 0AD89C 800B2E3C 9421FFC8 */  stwu    r1, -0x38(r1)
/* 0AD8A0 800B2E40 BF610024 */  stmw    r27, 0x24(r1)
/* 0AD8A4 800B2E44 7CDD3379 */  or.     r29, r6, r6
/* 0AD8A8 800B2E48 3BE30000 */  addi    r31, r3, 0
/* 0AD8AC 800B2E4C 3B640000 */  addi    r27, r4, 0
/* 0AD8B0 800B2E50 3B850000 */  addi    r28, r5, 0
/* 0AD8B4 800B2E54 3BC70000 */  addi    r30, r7, 0
/* 0AD8B8 800B2E58 41800010 */  blt     lbl_800B2E68
/* 0AD8BC 800B2E5C 801F0034 */  lwz     r0, 0x34(r31)
/* 0AD8C0 800B2E60 7C1D0040 */  cmplw   r29, r0
/* 0AD8C4 800B2E64 4180001C */  blt     lbl_800B2E80
lbl_800B2E68:
/* 0AD8C8 800B2E68 3C60800F */  lis     r3, D_800F242C@ha
/* 0AD8CC 800B2E6C 4CC63182 */  crclr   6
/* 0AD8D0 800B2E70 38A3242C */  addi    r5, r3, D_800F242C@l
/* 0AD8D4 800B2E74 386D8810 */  addi    r3, r13, D_801354F0@sda21
/* 0AD8D8 800B2E78 38800330 */  li      r4, 0x330
/* 0AD8DC 800B2E7C 4BFEB7FD */  bl      OSPanic
lbl_800B2E80:
/* 0AD8E0 800B2E80 7C9DE215 */  add.    r4, r29, r28
/* 0AD8E4 800B2E84 41800014 */  blt     lbl_800B2E98
/* 0AD8E8 800B2E88 807F0034 */  lwz     r3, 0x34(r31)
/* 0AD8EC 800B2E8C 38030020 */  addi    r0, r3, 0x20
/* 0AD8F0 800B2E90 7C040040 */  cmplw   r4, r0
/* 0AD8F4 800B2E94 4180001C */  blt     lbl_800B2EB0
lbl_800B2E98:
/* 0AD8F8 800B2E98 3C60800F */  lis     r3, D_800F242C@ha
/* 0AD8FC 800B2E9C 4CC63182 */  crclr   6
/* 0AD900 800B2EA0 38A3242C */  addi    r5, r3, D_800F242C@l
/* 0AD904 800B2EA4 386D8810 */  addi    r3, r13, D_801354F0@sda21
/* 0AD908 800B2EA8 38800336 */  li      r4, 0x336
/* 0AD90C 800B2EAC 4BFEB7CD */  bl      OSPanic
lbl_800B2EB0:
/* 0AD910 800B2EB0 801F0030 */  lwz     r0, 0x30(r31)
/* 0AD914 800B2EB4 3C80800B */  lis     r4, cbForReadSync@ha
/* 0AD918 800B2EB8 38E42F4C */  addi    r7, r4, cbForReadSync@l
/* 0AD91C 800B2EBC 387F0000 */  addi    r3, r31, 0
/* 0AD920 800B2EC0 389B0000 */  addi    r4, r27, 0
/* 0AD924 800B2EC4 38BC0000 */  addi    r5, r28, 0
/* 0AD928 800B2EC8 391E0000 */  addi    r8, r30, 0
/* 0AD92C 800B2ECC 7CC0EA14 */  add     r6, r0, r29
/* 0AD930 800B2ED0 48001C8D */  bl      DVDReadAbsAsyncPrio
/* 0AD934 800B2ED4 2C030000 */  cmpwi   r3, 0
/* 0AD938 800B2ED8 4082000C */  bne     lbl_800B2EE4
/* 0AD93C 800B2EDC 3860FFFF */  li      r3, -1
/* 0AD940 800B2EE0 48000058 */  b       lbl_800B2F38
lbl_800B2EE4:
/* 0AD944 800B2EE4 4BFEBE19 */  bl      OSDisableInterrupts
/* 0AD948 800B2EE8 7C7E1B78 */  mr      r30, r3
lbl_800B2EEC:
/* 0AD94C 800B2EEC 801F000C */  lwz     r0, 0xc(r31)
/* 0AD950 800B2EF0 2C000000 */  cmpwi   r0, 0
/* 0AD954 800B2EF4 4082000C */  bne     lbl_800B2F00
/* 0AD958 800B2EF8 83FF0020 */  lwz     r31, 0x20(r31)
/* 0AD95C 800B2EFC 48000030 */  b       lbl_800B2F2C
lbl_800B2F00:
/* 0AD960 800B2F00 2C00FFFF */  cmpwi   r0, -1
/* 0AD964 800B2F04 4082000C */  bne     lbl_800B2F10
/* 0AD968 800B2F08 3BE0FFFF */  li      r31, -1
/* 0AD96C 800B2F0C 48000020 */  b       lbl_800B2F2C
lbl_800B2F10:
/* 0AD970 800B2F10 2C00000A */  cmpwi   r0, 0xa
/* 0AD974 800B2F14 4082000C */  bne     lbl_800B2F20
/* 0AD978 800B2F18 3BE0FFFD */  li      r31, -3
/* 0AD97C 800B2F1C 48000010 */  b       lbl_800B2F2C
lbl_800B2F20:
/* 0AD980 800B2F20 386D8D28 */  addi    r3, r13, __DVDThreadQueue@sda21
/* 0AD984 800B2F24 4BFEF0E9 */  bl      OSSleepThread
/* 0AD988 800B2F28 4BFFFFC4 */  b       lbl_800B2EEC
lbl_800B2F2C:
/* 0AD98C 800B2F2C 7FC3F378 */  mr      r3, r30
/* 0AD990 800B2F30 4BFEBDF5 */  bl      OSRestoreInterrupts
/* 0AD994 800B2F34 7FE3FB78 */  mr      r3, r31
lbl_800B2F38:
/* 0AD998 800B2F38 BB610024 */  lmw     r27, 0x24(r1)
/* 0AD99C 800B2F3C 8001003C */  lwz     r0, 0x3c(r1)
/* 0AD9A0 800B2F40 38210038 */  addi    r1, r1, 0x38
/* 0AD9A4 800B2F44 7C0803A6 */  mtlr    r0
/* 0AD9A8 800B2F48 4E800020 */  blr     

cbForReadSync:
/* 0AD9AC 800B2F4C 7C0802A6 */  mflr    r0
/* 0AD9B0 800B2F50 386D8D28 */  addi    r3, r13, __DVDThreadQueue@sda21
/* 0AD9B4 800B2F54 90010004 */  stw     r0, 4(r1)
/* 0AD9B8 800B2F58 9421FFF8 */  stwu    r1, -8(r1)
/* 0AD9BC 800B2F5C 4BFEF19D */  bl      OSWakeupThread
/* 0AD9C0 800B2F60 8001000C */  lwz     r0, 0xc(r1)
/* 0AD9C4 800B2F64 38210008 */  addi    r1, r1, 8
/* 0AD9C8 800B2F68 7C0803A6 */  mtlr    r0
/* 0AD9CC 800B2F6C 4E800020 */  blr     

.section .data, "wa"

.balign 8

/* 000EF378 800F22F8 00C8 */
D_800F22F8:
    .asciz "DVDConvertEntrynumToPath(possibly DVDOpen or DVDChangeDir or DVDOpenDir): specified directory or file (%s) doesn't match standard 8.3 format. This is a temporary restriction and will be removed soon\n"
    .balign 4

/* 000EF440 800F23C0 0037 */
D_800F23C0:
    .asciz "Warning: DVDOpen(): file '%s' was not found under %s.\n"
    .balign 4

/* 000EF478 800F23F8 0034 */
D_800F23F8:
    .asciz "DVDReadAsync(): specified area is out of the file  "
    .balign 4

/* 000EF4AC 800F242C 002F */
D_800F242C:
    .asciz "DVDRead(): specified area is out of the file  "
    .balign 4

.section .sdata, "wa"

.balign 8

/* 000F1770 801354F0 0008 */
D_801354F0:
    .asciz "dvdfs.c"
    .balign 4

.section .sbss, "wa"

.balign 8

/* 000F1C70 801359F0 0004 */
BootInfo:
    .skip 4

/* 000F1C74 801359F4 0004 */
FstStart:
    .skip 4

/* 000F1C78 801359F8 0004 */
FstStringStart:
    .skip 4

/* 000F1C7C 801359FC 0004 */
MaxEntryNum:
    .skip 4

/* 000F1C80 80135A00 0004 */
currentDirectory:
    .skip 4

/* 000F1C84 80135A04 0004 */
glabel __DVDLongFileNameFlag
    .skip 4

/* 000F1C88 80135A08 0008 */
glabel __DVDThreadQueue
    .skip 8
