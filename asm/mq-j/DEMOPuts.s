# DEMOPuts.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B564C - 0x800B5B84

glabel DEMOInitCaption
/* 0B264C 800B564C 7C0802A6 */  mflr      r0
/* 0B2650 800B5650 6CA58000 */  xoris     r5, r5, 0x8000
/* 0B2654 800B5654 90010004 */  stw       r0, 0x4(r1)
/* 0B2658 800B5658 6C808000 */  xoris     r0, r4, 0x8000
/* 0B265C 800B565C 3C808019 */  lis       r4, D_801889A8@ha
/* 0B2660 800B5660 9421FF18 */  stwu      r1, -0xe8(r1)
/* 0B2664 800B5664 93E100E4 */  stw       r31, 0xe4(r1)
/* 0B2668 800B5668 3FE04330 */  lis       r31, 0x4330
/* 0B266C 800B566C 93C100E0 */  stw       r30, 0xe0(r1)
/* 0B2670 800B5670 3BC489A8 */  addi      r30, r4, D_801889A8@l
/* 0B2674 800B5674 93A100DC */  stw       r29, 0xdc(r1)
/* 0B2678 800B5678 7C7D1B78 */  mr        r29, r3
/* 0B267C 800B567C 38610044 */  addi      r3, r1, 0x44
/* 0B2680 800B5680 C02284D8 */  lfs       f1, D_8018C418@sda21(r0)
/* 0B2684 800B5684 90A100D4 */  stw       r5, 0xd4(r1)
/* 0B2688 800B5688 C88284E8 */  lfd       f4, D_8018C428@sda21(r0)
/* 0B268C 800B568C FC600890 */  fmr       f3, f1
/* 0B2690 800B5690 900100CC */  stw       r0, 0xcc(r1)
/* 0B2694 800B5694 FCA00890 */  fmr       f5, f1
/* 0B2698 800B5698 C0C284F0 */  lfs       f6, D_8018C430@sda21(r0)
/* 0B269C 800B569C 93E100D0 */  stw       r31, 0xd0(r1)
/* 0B26A0 800B56A0 93E100C8 */  stw       r31, 0xc8(r1)
/* 0B26A4 800B56A4 C84100D0 */  lfd       f2, 0xd0(r1)
/* 0B26A8 800B56A8 C80100C8 */  lfd       f0, 0xc8(r1)
/* 0B26AC 800B56AC EC422028 */  fsubs     f2, f2, f4
/* 0B26B0 800B56B0 EC802028 */  fsubs     f4, f0, f4
/* 0B26B4 800B56B4 4BFF1515 */  bl        C_MTXOrtho
/* 0B26B8 800B56B8 38610044 */  addi      r3, r1, 0x44
/* 0B26BC 800B56BC 38800001 */  li        r4, 0x1
/* 0B26C0 800B56C0 4BFF7D15 */  bl        GXSetProjection
/* 0B26C4 800B56C4 38610084 */  addi      r3, r1, 0x84
/* 0B26C8 800B56C8 4BFF11E5 */  bl        PSMTXIdentity
/* 0B26CC 800B56CC 38610084 */  addi      r3, r1, 0x84
/* 0B26D0 800B56D0 38800000 */  li        r4, 0x0
/* 0B26D4 800B56D4 4BFF7E75 */  bl        fn_800AD548
/* 0B26D8 800B56D8 38600000 */  li        r3, 0x0
/* 0B26DC 800B56DC 4BFF7F0D */  bl        fn_800AD5E8
/* 0B26E0 800B56E0 38600001 */  li        r3, 0x1
/* 0B26E4 800B56E4 38800007 */  li        r4, 0x7
/* 0B26E8 800B56E8 38A00001 */  li        r5, 0x1
/* 0B26EC 800B56EC 4BFF7A6D */  bl        GXSetZMode
/* 0B26F0 800B56F0 38600000 */  li        r3, 0x0
/* 0B26F4 800B56F4 4BFF5A8D */  bl        GXSetNumChans
/* 0B26F8 800B56F8 38600001 */  li        r3, 0x1
/* 0B26FC 800B56FC 4BFF7509 */  bl        GXSetNumTevStages
/* 0B2700 800B5700 38600000 */  li        r3, 0x0
/* 0B2704 800B5704 38800003 */  li        r4, 0x3
/* 0B2708 800B5708 4BFF6D49 */  bl        GXSetTevOp
/* 0B270C 800B570C 38600000 */  li        r3, 0x0
/* 0B2710 800B5710 38800000 */  li        r4, 0x0
/* 0B2714 800B5714 38A00000 */  li        r5, 0x0
/* 0B2718 800B5718 38C000FF */  li        r6, 0xff
/* 0B271C 800B571C 4BFF7311 */  bl        GXSetTevOrder
/* 0B2720 800B5720 3C60800F */  lis       r3, D_800F3B80@ha
/* 0B2724 800B5724 38833B80 */  addi      r4, r3, D_800F3B80@l
/* 0B2728 800B5728 387E0000 */  addi      r3, r30, 0x0
/* 0B272C 800B572C 38A00040 */  li        r5, 0x40
/* 0B2730 800B5730 38C00060 */  li        r6, 0x60
/* 0B2734 800B5734 38E00000 */  li        r7, 0x0
/* 0B2738 800B5738 39000000 */  li        r8, 0x0
/* 0B273C 800B573C 39200000 */  li        r9, 0x0
/* 0B2740 800B5740 39400000 */  li        r10, 0x0
/* 0B2744 800B5744 4BFF5C15 */  bl        GXInitTexObj
/* 0B2748 800B5748 C02284D8 */  lfs       f1, D_8018C418@sda21(r0)
/* 0B274C 800B574C 387E0000 */  addi      r3, r30, 0x0
/* 0B2750 800B5750 38800000 */  li        r4, 0x0
/* 0B2754 800B5754 FC400890 */  fmr       f2, f1
/* 0B2758 800B5758 38A00000 */  li        r5, 0x0
/* 0B275C 800B575C FC600890 */  fmr       f3, f1
/* 0B2760 800B5760 38C00000 */  li        r6, 0x0
/* 0B2764 800B5764 38E00000 */  li        r7, 0x0
/* 0B2768 800B5768 39000000 */  li        r8, 0x0
/* 0B276C 800B576C 4BFF5EA9 */  bl        fn_800AB614
/* 0B2770 800B5770 38000000 */  li        r0, 0x0
/* 0B2774 800B5774 900D8D58 */  stw       r0, D_8018BCD8@sda21(r0)
/* 0B2778 800B5778 387E0000 */  addi      r3, r30, 0x0
/* 0B277C 800B577C 38800000 */  li        r4, 0x0
/* 0B2780 800B5780 4BFF61D5 */  bl        GXLoadTexObj
/* 0B2784 800B5784 38600040 */  li        r3, 0x40
/* 0B2788 800B5788 C84284E0 */  lfd       f2, D_8018C420@sda21(r0)
/* 0B278C 800B578C 906100C4 */  stw       r3, 0xc4(r1)
/* 0B2790 800B5790 38000060 */  li        r0, 0x60
/* 0B2794 800B5794 C06284DC */  lfs       f3, D_8018C41C@sda21(r0)
/* 0B2798 800B5798 38610014 */  addi      r3, r1, 0x14
/* 0B279C 800B579C 900100BC */  stw       r0, 0xbc(r1)
/* 0B27A0 800B57A0 93E100C0 */  stw       r31, 0xc0(r1)
/* 0B27A4 800B57A4 93E100B8 */  stw       r31, 0xb8(r1)
/* 0B27A8 800B57A8 C82100C0 */  lfd       f1, 0xc0(r1)
/* 0B27AC 800B57AC C80100B8 */  lfd       f0, 0xb8(r1)
/* 0B27B0 800B57B0 EC211028 */  fsubs     f1, f1, f2
/* 0B27B4 800B57B4 EC001028 */  fsubs     f0, f0, f2
/* 0B27B8 800B57B8 EC230824 */  fdivs     f1, f3, f1
/* 0B27BC 800B57BC EC430024 */  fdivs     f2, f3, f0
/* 0B27C0 800B57C0 4BFF1265 */  bl        PSMTXScale
/* 0B27C4 800B57C4 38610014 */  addi      r3, r1, 0x14
/* 0B27C8 800B57C8 3880001E */  li        r4, 0x1e
/* 0B27CC 800B57CC 38A00001 */  li        r5, 0x1
/* 0B27D0 800B57D0 4BFF7E51 */  bl        fn_800AD620
/* 0B27D4 800B57D4 38600001 */  li        r3, 0x1
/* 0B27D8 800B57D8 4BFF3FE5 */  bl        GXSetNumTexGens
/* 0B27DC 800B57DC 38600000 */  li        r3, 0x0
/* 0B27E0 800B57E0 38800001 */  li        r4, 0x1
/* 0B27E4 800B57E4 38A00004 */  li        r5, 0x4
/* 0B27E8 800B57E8 38C0001E */  li        r6, 0x1e
/* 0B27EC 800B57EC 38E00000 */  li        r7, 0x0
/* 0B27F0 800B57F0 3900007D */  li        r8, 0x7d
/* 0B27F4 800B57F4 4BFF3CF9 */  bl        fn_800A94EC
/* 0B27F8 800B57F8 2C1D0001 */  cmpwi     r29, 0x1
/* 0B27FC 800B57FC 41820018 */  beq       lbl_800B5814
/* 0B2800 800B5800 40800008 */  bge       lbl_800B5808
/* 0B2804 800B5804 48000040 */  b         lbl_800B5844
lbl_800B5808:
/* 0B2808 800B5808 2C1D0003 */  cmpwi     r29, 0x3
/* 0B280C 800B580C 40800038 */  bge       lbl_800B5844
/* 0B2810 800B5810 4800001C */  b         lbl_800B582C
lbl_800B5814:
/* 0B2814 800B5814 38600002 */  li        r3, 0x2
/* 0B2818 800B5818 38800000 */  li        r4, 0x0
/* 0B281C 800B581C 38A00000 */  li        r5, 0x0
/* 0B2820 800B5820 38C0000C */  li        r6, 0xc
/* 0B2824 800B5824 4BFF7889 */  bl        fn_800AD0AC
/* 0B2828 800B5828 48000030 */  b         lbl_800B5858
lbl_800B582C:
/* 0B282C 800B582C 38600001 */  li        r3, 0x1
/* 0B2830 800B5830 38800001 */  li        r4, 0x1
/* 0B2834 800B5834 38A00001 */  li        r5, 0x1
/* 0B2838 800B5838 38C00000 */  li        r6, 0x0
/* 0B283C 800B583C 4BFF7871 */  bl        fn_800AD0AC
/* 0B2840 800B5840 48000018 */  b         lbl_800B5858
lbl_800B5844:
/* 0B2844 800B5844 38600001 */  li        r3, 0x1
/* 0B2848 800B5848 38800001 */  li        r4, 0x1
/* 0B284C 800B584C 38A00000 */  li        r5, 0x0
/* 0B2850 800B5850 38C00000 */  li        r6, 0x0
/* 0B2854 800B5854 4BFF7859 */  bl        fn_800AD0AC
lbl_800B5858:
/* 0B2858 800B5858 800100EC */  lwz       r0, 0xec(r1)
/* 0B285C 800B585C 83E100E4 */  lwz       r31, 0xe4(r1)
/* 0B2860 800B5860 83C100E0 */  lwz       r30, 0xe0(r1)
/* 0B2864 800B5864 83A100DC */  lwz       r29, 0xdc(r1)
/* 0B2868 800B5868 382100E8 */  addi      r1, r1, 0xe8
/* 0B286C 800B586C 7C0803A6 */  mtlr      r0
/* 0B2870 800B5870 4E800020 */  blr

glabel DEMOPuts
/* 0B2874 800B5874 7C0802A6 */  mflr      r0
/* 0B2878 800B5878 90010004 */  stw       r0, 0x4(r1)
/* 0B287C 800B587C 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0B2880 800B5880 BF010018 */  stmw      r24, 0x18(r1)
/* 0B2884 800B5884 3B060000 */  addi      r24, r6, 0x0
/* 0B2888 800B5888 3B230000 */  addi      r25, r3, 0x0
/* 0B288C 800B588C 3B640000 */  addi      r27, r4, 0x0
/* 0B2890 800B5890 3B850000 */  addi      r28, r5, 0x0
/* 0B2894 800B5894 3BD80000 */  addi      r30, r24, 0x0
/* 0B2898 800B5898 4BFF3415 */  bl        GXClearVtxDesc
/* 0B289C 800B589C 38600009 */  li        r3, 0x9
/* 0B28A0 800B58A0 38800001 */  li        r4, 0x1
/* 0B28A4 800B58A4 4BFF2F41 */  bl        GXSetVtxDesc
/* 0B28A8 800B58A8 3860000D */  li        r3, 0xd
/* 0B28AC 800B58AC 38800001 */  li        r4, 0x1
/* 0B28B0 800B58B0 4BFF2F35 */  bl        GXSetVtxDesc
/* 0B28B4 800B58B4 38600000 */  li        r3, 0x0
/* 0B28B8 800B58B8 38800009 */  li        r4, 0x9
/* 0B28BC 800B58BC 38A00001 */  li        r5, 0x1
/* 0B28C0 800B58C0 38C00003 */  li        r6, 0x3
/* 0B28C4 800B58C4 38E00000 */  li        r7, 0x0
/* 0B28C8 800B58C8 4BFF341D */  bl        GXSetVtxAttrFmt
/* 0B28CC 800B58CC 38600000 */  li        r3, 0x0
/* 0B28D0 800B58D0 3880000D */  li        r4, 0xd
/* 0B28D4 800B58D4 38A00001 */  li        r5, 0x1
/* 0B28D8 800B58D8 38C00003 */  li        r6, 0x3
/* 0B28DC 800B58DC 38E00001 */  li        r7, 0x1
/* 0B28E0 800B58E0 4BFF3405 */  bl        GXSetVtxAttrFmt
/* 0B28E4 800B58E4 7F3F0734 */  extsh     r31, r25
/* 0B28E8 800B58E8 3B200000 */  li        r25, 0x0
/* 0B28EC 800B58EC 3F40CC01 */  lis       r26, 0xcc01
lbl_800B58F0:
/* 0B28F0 800B58F0 881E0000 */  lbz       r0, 0x0(r30)
/* 0B28F4 800B58F4 3BDE0001 */  addi      r30, r30, 0x1
/* 0B28F8 800B58F8 7C1D0774 */  extsb     r29, r0
/* 0B28FC 800B58FC 2C1D0020 */  cmpwi     r29, 0x20
/* 0B2900 800B5900 41800014 */  blt       lbl_800B5914
/* 0B2904 800B5904 2C1D007F */  cmpwi     r29, 0x7f
/* 0B2908 800B5908 4181000C */  bgt       lbl_800B5914
/* 0B290C 800B590C 3B390001 */  addi      r25, r25, 0x1
/* 0B2910 800B5910 4BFFFFE0 */  b         lbl_800B58F0
lbl_800B5914:
/* 0B2914 800B5914 2C190000 */  cmpwi     r25, 0x0
/* 0B2918 800B5918 40810244 */  ble       lbl_800B5B5C
/* 0B291C 800B591C 5725143A */  clrlslwi  r5, r25, 18, 2
/* 0B2920 800B5920 38600080 */  li        r3, 0x80
/* 0B2924 800B5924 38800000 */  li        r4, 0x0
/* 0B2928 800B5928 4BFF4645 */  bl        GXBegin
/* 0B292C 800B592C 7F630734 */  extsh     r3, r27
/* 0B2930 800B5930 818D8D58 */  lwz       r12, D_8018BCD8@sda21(r0)
/* 0B2934 800B5934 38030008 */  addi      r0, r3, 0x8
/* 0B2938 800B5938 2C190000 */  cmpwi     r25, 0x0
/* 0B293C 800B593C 397F0000 */  addi      r11, r31, 0x0
/* 0B2940 800B5940 38980000 */  addi      r4, r24, 0x0
/* 0B2944 800B5944 38790000 */  addi      r3, r25, 0x0
/* 0B2948 800B5948 7C050734 */  extsh     r5, r0
/* 0B294C 800B594C 4081020C */  ble       lbl_800B5B58
/* 0B2950 800B5950 5460F87F */  srwi.     r0, r3, 1
/* 0B2954 800B5954 7C0903A6 */  mtctr     r0
/* 0B2958 800B5958 41820154 */  beq       lbl_800B5AAC
lbl_800B595C:
/* 0B295C 800B595C 88040000 */  lbz       r0, 0x0(r4)
/* 0B2960 800B5960 7D6A0734 */  extsh     r10, r11
/* 0B2964 800B5964 38EB0008 */  addi      r7, r11, 0x8
/* 0B2968 800B5968 7C060774 */  extsb     r6, r0
/* 0B296C 800B596C B15A8000 */  sth       r10, -0x8000(r26)
/* 0B2970 800B5970 3906FFE0 */  subi      r8, r6, 0x20
/* 0B2974 800B5974 7D001E70 */  srawi     r0, r8, 3
/* 0B2978 800B5978 B37A8000 */  sth       r27, -0x8000(r26)
/* 0B297C 800B597C 7C000194 */  addze     r0, r0
/* 0B2980 800B5980 54001838 */  slwi      r0, r0, 3
/* 0B2984 800B5984 B39A8000 */  sth       r28, -0x8000(r26)
/* 0B2988 800B5988 7C004010 */  subfc     r0, r0, r8
/* 0B298C 800B598C 54002036 */  slwi      r0, r0, 4
/* 0B2990 800B5990 7CCC0214 */  add       r6, r12, r0
/* 0B2994 800B5994 7D001E70 */  srawi     r0, r8, 3
/* 0B2998 800B5998 7CC90734 */  extsh     r9, r6
/* 0B299C 800B599C 7C000194 */  addze     r0, r0
/* 0B29A0 800B59A0 B13A8000 */  sth       r9, -0x8000(r26)
/* 0B29A4 800B59A4 54002036 */  slwi      r0, r0, 4
/* 0B29A8 800B59A8 7F2C0214 */  add       r25, r12, r0
/* 0B29AC 800B59AC 7F280734 */  extsh     r8, r25
/* 0B29B0 800B59B0 B11A8000 */  sth       r8, -0x8000(r26)
/* 0B29B4 800B59B4 38C60010 */  addi      r6, r6, 0x10
/* 0B29B8 800B59B8 38190010 */  addi      r0, r25, 0x10
/* 0B29BC 800B59BC B0FA8000 */  sth       r7, -0x8000(r26)
/* 0B29C0 800B59C0 B37A8000 */  sth       r27, -0x8000(r26)
/* 0B29C4 800B59C4 B39A8000 */  sth       r28, -0x8000(r26)
/* 0B29C8 800B59C8 B0DA8000 */  sth       r6, -0x8000(r26)
/* 0B29CC 800B59CC B11A8000 */  sth       r8, -0x8000(r26)
/* 0B29D0 800B59D0 B0FA8000 */  sth       r7, -0x8000(r26)
/* 0B29D4 800B59D4 38EB0010 */  addi      r7, r11, 0x10
/* 0B29D8 800B59D8 396B0008 */  addi      r11, r11, 0x8
/* 0B29DC 800B59DC B0BA8000 */  sth       r5, -0x8000(r26)
/* 0B29E0 800B59E0 B39A8000 */  sth       r28, -0x8000(r26)
/* 0B29E4 800B59E4 B0DA8000 */  sth       r6, -0x8000(r26)
/* 0B29E8 800B59E8 B01A8000 */  sth       r0, -0x8000(r26)
/* 0B29EC 800B59EC B15A8000 */  sth       r10, -0x8000(r26)
/* 0B29F0 800B59F0 7D6A0734 */  extsh     r10, r11
/* 0B29F4 800B59F4 396B0008 */  addi      r11, r11, 0x8
/* 0B29F8 800B59F8 B0BA8000 */  sth       r5, -0x8000(r26)
/* 0B29FC 800B59FC B39A8000 */  sth       r28, -0x8000(r26)
/* 0B2A00 800B5A00 B13A8000 */  sth       r9, -0x8000(r26)
/* 0B2A04 800B5A04 B01A8000 */  sth       r0, -0x8000(r26)
/* 0B2A08 800B5A08 88040001 */  lbz       r0, 0x1(r4)
/* 0B2A0C 800B5A0C 38840002 */  addi      r4, r4, 0x2
/* 0B2A10 800B5A10 7C060774 */  extsb     r6, r0
/* 0B2A14 800B5A14 B15A8000 */  sth       r10, -0x8000(r26)
/* 0B2A18 800B5A18 3906FFE0 */  subi      r8, r6, 0x20
/* 0B2A1C 800B5A1C 7D001E70 */  srawi     r0, r8, 3
/* 0B2A20 800B5A20 B37A8000 */  sth       r27, -0x8000(r26)
/* 0B2A24 800B5A24 7C000194 */  addze     r0, r0
/* 0B2A28 800B5A28 54001838 */  slwi      r0, r0, 3
/* 0B2A2C 800B5A2C B39A8000 */  sth       r28, -0x8000(r26)
/* 0B2A30 800B5A30 7C004010 */  subfc     r0, r0, r8
/* 0B2A34 800B5A34 54002036 */  slwi      r0, r0, 4
/* 0B2A38 800B5A38 7CCC0214 */  add       r6, r12, r0
/* 0B2A3C 800B5A3C 7CC90734 */  extsh     r9, r6
/* 0B2A40 800B5A40 7D001E70 */  srawi     r0, r8, 3
/* 0B2A44 800B5A44 B13A8000 */  sth       r9, -0x8000(r26)
/* 0B2A48 800B5A48 7C000194 */  addze     r0, r0
/* 0B2A4C 800B5A4C 54002036 */  slwi      r0, r0, 4
/* 0B2A50 800B5A50 7F2C0214 */  add       r25, r12, r0
/* 0B2A54 800B5A54 7F280734 */  extsh     r8, r25
/* 0B2A58 800B5A58 B11A8000 */  sth       r8, -0x8000(r26)
/* 0B2A5C 800B5A5C 38C60010 */  addi      r6, r6, 0x10
/* 0B2A60 800B5A60 38190010 */  addi      r0, r25, 0x10
/* 0B2A64 800B5A64 B0FA8000 */  sth       r7, -0x8000(r26)
/* 0B2A68 800B5A68 B37A8000 */  sth       r27, -0x8000(r26)
/* 0B2A6C 800B5A6C B39A8000 */  sth       r28, -0x8000(r26)
/* 0B2A70 800B5A70 B0DA8000 */  sth       r6, -0x8000(r26)
/* 0B2A74 800B5A74 B11A8000 */  sth       r8, -0x8000(r26)
/* 0B2A78 800B5A78 B0FA8000 */  sth       r7, -0x8000(r26)
/* 0B2A7C 800B5A7C B0BA8000 */  sth       r5, -0x8000(r26)
/* 0B2A80 800B5A80 B39A8000 */  sth       r28, -0x8000(r26)
/* 0B2A84 800B5A84 B0DA8000 */  sth       r6, -0x8000(r26)
/* 0B2A88 800B5A88 B01A8000 */  sth       r0, -0x8000(r26)
/* 0B2A8C 800B5A8C B15A8000 */  sth       r10, -0x8000(r26)
/* 0B2A90 800B5A90 B0BA8000 */  sth       r5, -0x8000(r26)
/* 0B2A94 800B5A94 B39A8000 */  sth       r28, -0x8000(r26)
/* 0B2A98 800B5A98 B13A8000 */  sth       r9, -0x8000(r26)
/* 0B2A9C 800B5A9C B01A8000 */  sth       r0, -0x8000(r26)
/* 0B2AA0 800B5AA0 4200FEBC */  bdnz      lbl_800B595C
/* 0B2AA4 800B5AA4 70630001 */  andi.     r3, r3, 0x1
/* 0B2AA8 800B5AA8 418200B0 */  beq       lbl_800B5B58
lbl_800B5AAC:
/* 0B2AAC 800B5AAC 7C6903A6 */  mtctr     r3
lbl_800B5AB0:
/* 0B2AB0 800B5AB0 88040000 */  lbz       r0, 0x0(r4)
/* 0B2AB4 800B5AB4 7D6A0734 */  extsh     r10, r11
/* 0B2AB8 800B5AB8 38EB0008 */  addi      r7, r11, 0x8
/* 0B2ABC 800B5ABC 7C060774 */  extsb     r6, r0
/* 0B2AC0 800B5AC0 B15A8000 */  sth       r10, -0x8000(r26)
/* 0B2AC4 800B5AC4 3906FFE0 */  subi      r8, r6, 0x20
/* 0B2AC8 800B5AC8 7D001E70 */  srawi     r0, r8, 3
/* 0B2ACC 800B5ACC B37A8000 */  sth       r27, -0x8000(r26)
/* 0B2AD0 800B5AD0 7C000194 */  addze     r0, r0
/* 0B2AD4 800B5AD4 54001838 */  slwi      r0, r0, 3
/* 0B2AD8 800B5AD8 B39A8000 */  sth       r28, -0x8000(r26)
/* 0B2ADC 800B5ADC 7C004010 */  subfc     r0, r0, r8
/* 0B2AE0 800B5AE0 54002036 */  slwi      r0, r0, 4
/* 0B2AE4 800B5AE4 7CCC0214 */  add       r6, r12, r0
/* 0B2AE8 800B5AE8 7D001E70 */  srawi     r0, r8, 3
/* 0B2AEC 800B5AEC 7CC90734 */  extsh     r9, r6
/* 0B2AF0 800B5AF0 7C000194 */  addze     r0, r0
/* 0B2AF4 800B5AF4 B13A8000 */  sth       r9, -0x8000(r26)
/* 0B2AF8 800B5AF8 54002036 */  slwi      r0, r0, 4
/* 0B2AFC 800B5AFC 7F2C0214 */  add       r25, r12, r0
/* 0B2B00 800B5B00 7F280734 */  extsh     r8, r25
/* 0B2B04 800B5B04 B11A8000 */  sth       r8, -0x8000(r26)
/* 0B2B08 800B5B08 38C60010 */  addi      r6, r6, 0x10
/* 0B2B0C 800B5B0C 38190010 */  addi      r0, r25, 0x10
/* 0B2B10 800B5B10 B0FA8000 */  sth       r7, -0x8000(r26)
/* 0B2B14 800B5B14 396B0008 */  addi      r11, r11, 0x8
/* 0B2B18 800B5B18 38840001 */  addi      r4, r4, 0x1
/* 0B2B1C 800B5B1C B37A8000 */  sth       r27, -0x8000(r26)
/* 0B2B20 800B5B20 B39A8000 */  sth       r28, -0x8000(r26)
/* 0B2B24 800B5B24 B0DA8000 */  sth       r6, -0x8000(r26)
/* 0B2B28 800B5B28 B11A8000 */  sth       r8, -0x8000(r26)
/* 0B2B2C 800B5B2C B0FA8000 */  sth       r7, -0x8000(r26)
/* 0B2B30 800B5B30 B0BA8000 */  sth       r5, -0x8000(r26)
/* 0B2B34 800B5B34 B39A8000 */  sth       r28, -0x8000(r26)
/* 0B2B38 800B5B38 B0DA8000 */  sth       r6, -0x8000(r26)
/* 0B2B3C 800B5B3C B01A8000 */  sth       r0, -0x8000(r26)
/* 0B2B40 800B5B40 B15A8000 */  sth       r10, -0x8000(r26)
/* 0B2B44 800B5B44 B0BA8000 */  sth       r5, -0x8000(r26)
/* 0B2B48 800B5B48 B39A8000 */  sth       r28, -0x8000(r26)
/* 0B2B4C 800B5B4C B13A8000 */  sth       r9, -0x8000(r26)
/* 0B2B50 800B5B50 B01A8000 */  sth       r0, -0x8000(r26)
/* 0B2B54 800B5B54 4200FF5C */  bdnz      lbl_800B5AB0
lbl_800B5B58:
/* 0B2B58 800B5B58 3B200000 */  li        r25, 0x0
lbl_800B5B5C:
/* 0B2B5C 800B5B5C 2C1D000A */  cmpwi     r29, 0xa
/* 0B2B60 800B5B60 3B1E0000 */  addi      r24, r30, 0x0
/* 0B2B64 800B5B64 4082000C */  bne       lbl_800B5B70
/* 0B2B68 800B5B68 3B7B0008 */  addi      r27, r27, 0x8
/* 0B2B6C 800B5B6C 4BFFFD84 */  b         lbl_800B58F0
lbl_800B5B70:
/* 0B2B70 800B5B70 BB010018 */  lmw       r24, 0x18(r1)
/* 0B2B74 800B5B74 8001003C */  lwz       r0, 0x3c(r1)
/* 0B2B78 800B5B78 38210038 */  addi      r1, r1, 0x38
/* 0B2B7C 800B5B7C 7C0803A6 */  mtlr      r0
/* 0B2B80 800B5B80 4E800020 */  blr

# 0x801889A8 - 0x801889C8
.section .bss, "wa"

glabel D_801889A8
	.skip 0x20

# 0x8018BCD8 - 0x8018BCE0
.section .sbss, "wa"

glabel D_8018BCD8
	.skip 0x8

# 0x8018C418 - 0x8018C438
.section .sdata2, "a"

glabel D_8018C418
	.float 0

glabel D_8018C41C
	.float 1

glabel D_8018C420
	.double 4503599627370496

glabel D_8018C428
	.double 4503601774854144

glabel D_8018C430
	.float -100
	.float 0
