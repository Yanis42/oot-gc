# GXMisc.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A97FC - 0x800A9ECC

glabel GXSetMisc
/* 0A67FC 800A97FC 2C030001 */  cmpwi     r3, 0x1
/* 0A6800 800A9800 41820014 */  beq       lbl_800A9814
/* 0A6804 800A9804 4D800020 */  bltlr
/* 0A6808 800A9808 2C030003 */  cmpwi     r3, 0x3
/* 0A680C 800A980C 4C800020 */  bgelr
/* 0A6810 800A9810 48000040 */  b         lbl_800A9850
lbl_800A9814:
/* 0A6814 800A9814 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A6818 800A9818 38000001 */  li        r0, 0x1
/* 0A681C 800A981C B0850004 */  sth       r4, 0x4(r5)
/* 0A6820 800A9820 A0650004 */  lhz       r3, 0x4(r5)
/* 0A6824 800A9824 7C630034 */  cntlzw    r3, r3
/* 0A6828 800A9828 5463DC3E */  extrwi    r3, r3, 16, 11
/* 0A682C 800A982C B0650000 */  sth       r3, 0x0(r5)
/* 0A6830 800A9830 B0050002 */  sth       r0, 0x2(r5)
/* 0A6834 800A9834 A0050004 */  lhz       r0, 0x4(r5)
/* 0A6838 800A9838 28000000 */  cmplwi    r0, 0x0
/* 0A683C 800A983C 4D820020 */  beqlr
/* 0A6840 800A9840 800504F4 */  lwz       r0, 0x4f4(r5)
/* 0A6844 800A9844 60000008 */  ori       r0, r0, 0x8
/* 0A6848 800A9848 900504F4 */  stw       r0, 0x4f4(r5)
/* 0A684C 800A984C 4E800020 */  blr
lbl_800A9850:
/* 0A6850 800A9850 7C8400D0 */  neg       r4, r4
/* 0A6854 800A9854 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6858 800A9858 3004FFFF */  subic     r0, r4, 0x1
/* 0A685C 800A985C 7C002110 */  subfe     r0, r0, r4
/* 0A6860 800A9860 980304F1 */  stb       r0, 0x4f1(r3)
/* 0A6864 800A9864 4E800020 */  blr

glabel fn_800A9868
/* 0A6868 800A9868 7C0802A6 */  mflr      r0
/* 0A686C 800A986C 90010004 */  stw       r0, 0x4(r1)
/* 0A6870 800A9870 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0A6874 800A9874 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6878 800A9878 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A687C 800A987C 28000000 */  cmplwi    r0, 0x0
/* 0A6880 800A9880 41820008 */  beq       lbl_800A9888
/* 0A6884 800A9884 48000649 */  bl        __GXSetDirtyState
lbl_800A9888:
/* 0A6888 800A9888 38000000 */  li        r0, 0x0
/* 0A688C 800A988C 3C60CC01 */  lis       r3, 0xcc01
/* 0A6890 800A9890 90038000 */  stw       r0, -0x8000(r3)
/* 0A6894 800A9894 90038000 */  stw       r0, -0x8000(r3)
/* 0A6898 800A9898 90038000 */  stw       r0, -0x8000(r3)
/* 0A689C 800A989C 90038000 */  stw       r0, -0x8000(r3)
/* 0A68A0 800A98A0 90038000 */  stw       r0, -0x8000(r3)
/* 0A68A4 800A98A4 90038000 */  stw       r0, -0x8000(r3)
/* 0A68A8 800A98A8 90038000 */  stw       r0, -0x8000(r3)
/* 0A68AC 800A98AC 90038000 */  stw       r0, -0x8000(r3)
/* 0A68B0 800A98B0 4BFF1A0D */  bl        fn_8009B2BC
/* 0A68B4 800A98B4 8001000C */  lwz       r0, 0xc(r1)
/* 0A68B8 800A98B8 38210008 */  addi      r1, r1, 0x8
/* 0A68BC 800A98BC 7C0803A6 */  mtlr      r0
/* 0A68C0 800A98C0 4E800020 */  blr

glabel fn_800A98C4
/* 0A68C4 800A98C4 7C0802A6 */  mflr      r0
/* 0A68C8 800A98C8 3C60CC00 */  lis       r3, 0xcc00
/* 0A68CC 800A98CC 90010004 */  stw       r0, 0x4(r1)
/* 0A68D0 800A98D0 38000001 */  li        r0, 0x1
/* 0A68D4 800A98D4 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0A68D8 800A98D8 BF61000C */  stmw      r27, 0xc(r1)
/* 0A68DC 800A98DC 3B633000 */  addi      r27, r3, 0x3000
/* 0A68E0 800A98E0 941B0018 */  stwu      r0, 0x18(r27)
/* 0A68E4 800A98E4 4BFF7BFD */  bl        OSGetTime
/* 0A68E8 800A98E8 38000000 */  li        r0, 0x0
/* 0A68EC 800A98EC 3BE40000 */  addi      r31, r4, 0x0
/* 0A68F0 800A98F0 3BC30000 */  addi      r30, r3, 0x0
/* 0A68F4 800A98F4 6C1C8000 */  xoris     r28, r0, 0x8000
/* 0A68F8 800A98F8 3BA00032 */  li        r29, 0x32
lbl_800A98FC:
/* 0A68FC 800A98FC 4BFF7BE5 */  bl        OSGetTime
/* 0A6900 800A9900 7C9F2010 */  subfc     r4, r31, r4
/* 0A6904 800A9904 7C1E1910 */  subfe     r0, r30, r3
/* 0A6908 800A9908 6C038000 */  xoris     r3, r0, 0x8000
/* 0A690C 800A990C 7C04E810 */  subfc     r0, r4, r29
/* 0A6910 800A9910 7C63E110 */  subfe     r3, r3, r28
/* 0A6914 800A9914 7C7CE110 */  subfe     r3, r28, r28
/* 0A6918 800A9918 7C6300D1 */  neg.      r3, r3
/* 0A691C 800A991C 4182FFE0 */  beq       lbl_800A98FC
/* 0A6920 800A9920 3BC00000 */  li        r30, 0x0
/* 0A6924 800A9924 93DB0000 */  stw       r30, 0x0(r27)
/* 0A6928 800A9928 4BFF7BB9 */  bl        OSGetTime
/* 0A692C 800A992C 3B840000 */  addi      r28, r4, 0x0
/* 0A6930 800A9930 3BA30000 */  addi      r29, r3, 0x0
/* 0A6934 800A9934 6FDF8000 */  xoris     r31, r30, 0x8000
/* 0A6938 800A9938 3BC00005 */  li        r30, 0x5
lbl_800A993C:
/* 0A693C 800A993C 4BFF7BA5 */  bl        OSGetTime
/* 0A6940 800A9940 7C9C2010 */  subfc     r4, r28, r4
/* 0A6944 800A9944 7C1D1910 */  subfe     r0, r29, r3
/* 0A6948 800A9948 6C038000 */  xoris     r3, r0, 0x8000
/* 0A694C 800A994C 7C04F010 */  subfc     r0, r4, r30
/* 0A6950 800A9950 7C63F910 */  subfe     r3, r3, r31
/* 0A6954 800A9954 7C7FF910 */  subfe     r3, r31, r31
/* 0A6958 800A9958 7C6300D1 */  neg.      r3, r3
/* 0A695C 800A995C 4182FFE0 */  beq       lbl_800A993C
/* 0A6960 800A9960 4BFFEC1D */  bl        fn_800A857C
/* 0A6964 800A9964 BB61000C */  lmw       r27, 0xc(r1)
/* 0A6968 800A9968 80010024 */  lwz       r0, 0x24(r1)
/* 0A696C 800A996C 38210020 */  addi      r1, r1, 0x20
/* 0A6970 800A9970 7C0803A6 */  mtlr      r0
/* 0A6974 800A9974 4E800020 */  blr

glabel GXSetDrawSync
/* 0A6978 800A9978 7C0802A6 */  mflr      r0
/* 0A697C 800A997C 90010004 */  stw       r0, 0x4(r1)
/* 0A6980 800A9980 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A6984 800A9984 93E10014 */  stw       r31, 0x14(r1)
/* 0A6988 800A9988 93C10010 */  stw       r30, 0x10(r1)
/* 0A698C 800A998C 7C7E1B78 */  mr        r30, r3
/* 0A6990 800A9990 4BFF48B9 */  bl        OSDisableInterrupts
/* 0A6994 800A9994 38C00061 */  li        r6, 0x61
/* 0A6998 800A9998 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A699C 800A999C 3CA0CC01 */  lis       r5, 0xcc01
/* 0A69A0 800A99A0 57C0043E */  clrlwi    r0, r30, 16
/* 0A69A4 800A99A4 98C58000 */  stb       r6, -0x8000(r5)
/* 0A69A8 800A99A8 64004800 */  oris      r0, r0, 0x4800
/* 0A69AC 800A99AC 90058000 */  stw       r0, -0x8000(r5)
/* 0A69B0 800A99B0 5400001E */  clrrwi    r0, r0, 16
/* 0A69B4 800A99B4 53C0043E */  rlwimi    r0, r30, 0, 16, 31
/* 0A69B8 800A99B8 5400023E */  clrlwi    r0, r0, 8
/* 0A69BC 800A99BC 98C58000 */  stb       r6, -0x8000(r5)
/* 0A69C0 800A99C0 64004700 */  oris      r0, r0, 0x4700
/* 0A69C4 800A99C4 90058000 */  stw       r0, -0x8000(r5)
/* 0A69C8 800A99C8 7C7E1B78 */  mr        r30, r3
/* 0A69CC 800A99CC 800404F4 */  lwz       r0, 0x4f4(r4)
/* 0A69D0 800A99D0 28000000 */  cmplwi    r0, 0x0
/* 0A69D4 800A99D4 41820008 */  beq       lbl_800A99DC
/* 0A69D8 800A99D8 480004F5 */  bl        __GXSetDirtyState
lbl_800A99DC:
/* 0A69DC 800A99DC 3BE00000 */  li        r31, 0x0
/* 0A69E0 800A99E0 3C60CC01 */  lis       r3, 0xcc01
/* 0A69E4 800A99E4 93E38000 */  stw       r31, -0x8000(r3)
/* 0A69E8 800A99E8 93E38000 */  stw       r31, -0x8000(r3)
/* 0A69EC 800A99EC 93E38000 */  stw       r31, -0x8000(r3)
/* 0A69F0 800A99F0 93E38000 */  stw       r31, -0x8000(r3)
/* 0A69F4 800A99F4 93E38000 */  stw       r31, -0x8000(r3)
/* 0A69F8 800A99F8 93E38000 */  stw       r31, -0x8000(r3)
/* 0A69FC 800A99FC 93E38000 */  stw       r31, -0x8000(r3)
/* 0A6A00 800A9A00 93E38000 */  stw       r31, -0x8000(r3)
/* 0A6A04 800A9A04 4BFF18B9 */  bl        fn_8009B2BC
/* 0A6A08 800A9A08 7FC3F378 */  mr        r3, r30
/* 0A6A0C 800A9A0C 4BFF4865 */  bl        OSRestoreInterrupts
/* 0A6A10 800A9A10 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6A14 800A9A14 B3E30002 */  sth       r31, 0x2(r3)
/* 0A6A18 800A9A18 8001001C */  lwz       r0, 0x1c(r1)
/* 0A6A1C 800A9A1C 83E10014 */  lwz       r31, 0x14(r1)
/* 0A6A20 800A9A20 83C10010 */  lwz       r30, 0x10(r1)
/* 0A6A24 800A9A24 38210018 */  addi      r1, r1, 0x18
/* 0A6A28 800A9A28 7C0803A6 */  mtlr      r0
/* 0A6A2C 800A9A2C 4E800020 */  blr

glabel fn_800A9A30
/* 0A6A30 800A9A30 806D8C00 */  lwz       r3, __peReg@sda21(r0)
/* 0A6A34 800A9A34 A063000E */  lhz       r3, 0xe(r3)
/* 0A6A38 800A9A38 4E800020 */  blr

glabel fn_800A9A3C
/* 0A6A3C 800A9A3C 7C0802A6 */  mflr      r0
/* 0A6A40 800A9A40 90010004 */  stw       r0, 0x4(r1)
/* 0A6A44 800A9A44 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A6A48 800A9A48 93E10014 */  stw       r31, 0x14(r1)
/* 0A6A4C 800A9A4C 93C10010 */  stw       r30, 0x10(r1)
/* 0A6A50 800A9A50 4BFF47F9 */  bl        OSDisableInterrupts
/* 0A6A54 800A9A54 38000061 */  li        r0, 0x61
/* 0A6A58 800A9A58 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A6A5C 800A9A5C 3CC0CC01 */  lis       r6, 0xcc01
/* 0A6A60 800A9A60 3CA04500 */  lis       r5, 0x4500
/* 0A6A64 800A9A64 98068000 */  stb       r0, -0x8000(r6)
/* 0A6A68 800A9A68 38050002 */  addi      r0, r5, 0x2
/* 0A6A6C 800A9A6C 90068000 */  stw       r0, -0x8000(r6)
/* 0A6A70 800A9A70 7C7E1B78 */  mr        r30, r3
/* 0A6A74 800A9A74 800404F4 */  lwz       r0, 0x4f4(r4)
/* 0A6A78 800A9A78 28000000 */  cmplwi    r0, 0x0
/* 0A6A7C 800A9A7C 41820008 */  beq       lbl_800A9A84
/* 0A6A80 800A9A80 4800044D */  bl        __GXSetDirtyState
lbl_800A9A84:
/* 0A6A84 800A9A84 3BE00000 */  li        r31, 0x0
/* 0A6A88 800A9A88 3C60CC01 */  lis       r3, 0xcc01
/* 0A6A8C 800A9A8C 93E38000 */  stw       r31, -0x8000(r3)
/* 0A6A90 800A9A90 93E38000 */  stw       r31, -0x8000(r3)
/* 0A6A94 800A9A94 93E38000 */  stw       r31, -0x8000(r3)
/* 0A6A98 800A9A98 93E38000 */  stw       r31, -0x8000(r3)
/* 0A6A9C 800A9A9C 93E38000 */  stw       r31, -0x8000(r3)
/* 0A6AA0 800A9AA0 93E38000 */  stw       r31, -0x8000(r3)
/* 0A6AA4 800A9AA4 93E38000 */  stw       r31, -0x8000(r3)
/* 0A6AA8 800A9AA8 93E38000 */  stw       r31, -0x8000(r3)
/* 0A6AAC 800A9AAC 4BFF1811 */  bl        fn_8009B2BC
/* 0A6AB0 800A9AB0 9BED8C30 */  stb       r31, D_8018BBB0@sda21(r0)
/* 0A6AB4 800A9AB4 7FC3F378 */  mr        r3, r30
/* 0A6AB8 800A9AB8 4BFF47B9 */  bl        OSRestoreInterrupts
/* 0A6ABC 800A9ABC 8001001C */  lwz       r0, 0x1c(r1)
/* 0A6AC0 800A9AC0 83E10014 */  lwz       r31, 0x14(r1)
/* 0A6AC4 800A9AC4 83C10010 */  lwz       r30, 0x10(r1)
/* 0A6AC8 800A9AC8 38210018 */  addi      r1, r1, 0x18
/* 0A6ACC 800A9ACC 7C0803A6 */  mtlr      r0
/* 0A6AD0 800A9AD0 4E800020 */  blr

glabel fn_800A9AD4
/* 0A6AD4 800A9AD4 7C0802A6 */  mflr      r0
/* 0A6AD8 800A9AD8 90010004 */  stw       r0, 0x4(r1)
/* 0A6ADC 800A9ADC 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A6AE0 800A9AE0 93E10014 */  stw       r31, 0x14(r1)
/* 0A6AE4 800A9AE4 4BFF4765 */  bl        OSDisableInterrupts
/* 0A6AE8 800A9AE8 38000061 */  li        r0, 0x61
/* 0A6AEC 800A9AEC 3CA0CC01 */  lis       r5, 0xcc01
/* 0A6AF0 800A9AF0 3C804500 */  lis       r4, 0x4500
/* 0A6AF4 800A9AF4 98058000 */  stb       r0, -0x8000(r5)
/* 0A6AF8 800A9AF8 38040002 */  addi      r0, r4, 0x2
/* 0A6AFC 800A9AFC 90058000 */  stw       r0, -0x8000(r5)
/* 0A6B00 800A9B00 7C7F1B78 */  mr        r31, r3
/* 0A6B04 800A9B04 4BFFFD65 */  bl        fn_800A9868
/* 0A6B08 800A9B08 38000000 */  li        r0, 0x0
/* 0A6B0C 800A9B0C 980D8C30 */  stb       r0, D_8018BBB0@sda21(r0)
/* 0A6B10 800A9B10 7FE3FB78 */  mr        r3, r31
/* 0A6B14 800A9B14 4BFF475D */  bl        OSRestoreInterrupts
/* 0A6B18 800A9B18 4BFF4731 */  bl        OSDisableInterrupts
/* 0A6B1C 800A9B1C 7C7F1B78 */  mr        r31, r3
/* 0A6B20 800A9B20 4800000C */  b         lbl_800A9B2C
lbl_800A9B24:
/* 0A6B24 800A9B24 386D8C34 */  li        r3, D_8018BBB4@sda21
/* 0A6B28 800A9B28 4BFF771D */  bl        OSSleepThread
lbl_800A9B2C:
/* 0A6B2C 800A9B2C 880D8C30 */  lbz       r0, D_8018BBB0@sda21(r0)
/* 0A6B30 800A9B30 28000000 */  cmplwi    r0, 0x0
/* 0A6B34 800A9B34 4182FFF0 */  beq       lbl_800A9B24
/* 0A6B38 800A9B38 7FE3FB78 */  mr        r3, r31
/* 0A6B3C 800A9B3C 4BFF4735 */  bl        OSRestoreInterrupts
/* 0A6B40 800A9B40 8001001C */  lwz       r0, 0x1c(r1)
/* 0A6B44 800A9B44 83E10014 */  lwz       r31, 0x14(r1)
/* 0A6B48 800A9B48 38210018 */  addi      r1, r1, 0x18
/* 0A6B4C 800A9B4C 7C0803A6 */  mtlr      r0
/* 0A6B50 800A9B50 4E800020 */  blr

glabel fn_800A9B54
/* 0A6B54 800A9B54 38000061 */  li        r0, 0x61
/* 0A6B58 800A9B58 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A6B5C 800A9B5C 3CA0CC01 */  lis       r5, 0xcc01
/* 0A6B60 800A9B60 98058000 */  stb       r0, -0x8000(r5)
/* 0A6B64 800A9B64 38000000 */  li        r0, 0x0
/* 0A6B68 800A9B68 806401DC */  lwz       r3, 0x1dc(r4)
/* 0A6B6C 800A9B6C 90658000 */  stw       r3, -0x8000(r5)
/* 0A6B70 800A9B70 B0040002 */  sth       r0, 0x2(r4)
/* 0A6B74 800A9B74 4E800020 */  blr

glabel fn_800A9B78
/* 0A6B78 800A9B78 80AD8C00 */  lwz       r5, __peReg@sda21(r0)
/* 0A6B7C 800A9B7C 5480063E */  clrlwi    r0, r4, 24
/* 0A6B80 800A9B80 5060402E */  rlwimi    r0, r3, 8, 0, 23
/* 0A6B84 800A9B84 B0050006 */  sth       r0, 0x6(r5)
/* 0A6B88 800A9B88 4E800020 */  blr

glabel fn_800A9B8C
/* 0A6B8C 800A9B8C 546007B8 */  rlwinm    r0, r3, 0, 30, 28
/* 0A6B90 800A9B90 806D8C00 */  lwz       r3, __peReg@sda21(r0)
/* 0A6B94 800A9B94 60000004 */  ori       r0, r0, 0x4
/* 0A6B98 800A9B98 B0030008 */  sth       r0, 0x8(r3)
/* 0A6B9C 800A9B9C 4E800020 */  blr

glabel fn_800A9BA0
/* 0A6BA0 800A9BA0 808D8C00 */  lwz       r4, __peReg@sda21(r0)
/* 0A6BA4 800A9BA4 54602536 */  clrlslwi  r0, r3, 24, 4
/* 0A6BA8 800A9BA8 A4640002 */  lhzu      r3, 0x2(r4)
/* 0A6BAC 800A9BAC 54630734 */  rlwinm    r3, r3, 0, 28, 26
/* 0A6BB0 800A9BB0 7C600378 */  or        r0, r3, r0
/* 0A6BB4 800A9BB4 B0040000 */  sth       r0, 0x0(r4)
/* 0A6BB8 800A9BB8 4E800020 */  blr

glabel fn_800A9BBC
/* 0A6BBC 800A9BBC 80ED8C00 */  lwz       r7, __peReg@sda21(r0)
/* 0A6BC0 800A9BC0 2C030001 */  cmpwi     r3, 0x1
/* 0A6BC4 800A9BC4 39200001 */  li        r9, 0x1
/* 0A6BC8 800A9BC8 39470002 */  addi      r10, r7, 0x2
/* 0A6BCC 800A9BCC A0E70002 */  lhz       r7, 0x2(r7)
/* 0A6BD0 800A9BD0 41820010 */  beq       lbl_800A9BE0
/* 0A6BD4 800A9BD4 2C030003 */  cmpwi     r3, 0x3
/* 0A6BD8 800A9BD8 41820008 */  beq       lbl_800A9BE0
/* 0A6BDC 800A9BDC 39200000 */  li        r9, 0x0
lbl_800A9BE0:
/* 0A6BE0 800A9BE0 54E8003C */  clrrwi    r8, r7, 1
/* 0A6BE4 800A9BE4 20030003 */  subfic    r0, r3, 0x3
/* 0A6BE8 800A9BE8 7C070034 */  cntlzw    r7, r0
/* 0A6BEC 800A9BEC 20030002 */  subfic    r0, r3, 0x2
/* 0A6BF0 800A9BF0 7D084B78 */  or        r8, r8, r9
/* 0A6BF4 800A9BF4 7C000034 */  cntlzw    r0, r0
/* 0A6BF8 800A9BF8 55080566 */  rlwinm    r8, r8, 0, 21, 19
/* 0A6BFC 800A9BFC 54E33028 */  extlwi    r3, r7, 21, 6
/* 0A6C00 800A9C00 7D031B78 */  or        r3, r8, r3
/* 0A6C04 800A9C04 546307FA */  rlwinm    r3, r3, 0, 31, 29
/* 0A6C08 800A9C08 5400E13C */  rlwinm    r0, r0, 28, 4, 30
/* 0A6C0C 800A9C0C 7C600378 */  or        r0, r3, r0
/* 0A6C10 800A9C10 5403051E */  rlwinm    r3, r0, 0, 20, 15
/* 0A6C14 800A9C14 54C06026 */  slwi      r0, r6, 12
/* 0A6C18 800A9C18 7C600378 */  or        r0, r3, r0
/* 0A6C1C 800A9C1C 54030628 */  rlwinm    r3, r0, 0, 24, 20
/* 0A6C20 800A9C20 5480402E */  slwi      r0, r4, 8
/* 0A6C24 800A9C24 7C600378 */  or        r0, r3, r0
/* 0A6C28 800A9C28 540306EE */  rlwinm    r3, r0, 0, 27, 23
/* 0A6C2C 800A9C2C 54A02834 */  slwi      r0, r5, 5
/* 0A6C30 800A9C30 7C600378 */  or        r0, r3, r0
/* 0A6C34 800A9C34 5400023E */  clrlwi    r0, r0, 8
/* 0A6C38 800A9C38 64004100 */  oris      r0, r0, 0x4100
/* 0A6C3C 800A9C3C B00A0000 */  sth       r0, 0x0(r10)
/* 0A6C40 800A9C40 4E800020 */  blr

glabel fn_800A9C44
/* 0A6C44 800A9C44 808D8C00 */  lwz       r4, __peReg@sda21(r0)
/* 0A6C48 800A9C48 54601D78 */  clrlslwi  r0, r3, 24, 3
/* 0A6C4C 800A9C4C A4640002 */  lhzu      r3, 0x2(r4)
/* 0A6C50 800A9C50 54630776 */  rlwinm    r3, r3, 0, 29, 27
/* 0A6C54 800A9C54 7C600378 */  or        r0, r3, r0
/* 0A6C58 800A9C58 B0040000 */  sth       r0, 0x0(r4)
/* 0A6C5C 800A9C5C 4E800020 */  blr

glabel fn_800A9C60
/* 0A6C60 800A9C60 80AD8C00 */  lwz       r5, __peReg@sda21(r0)
/* 0A6C64 800A9C64 5460442E */  clrlslwi  r0, r3, 24, 8
/* 0A6C68 800A9C68 5080063E */  rlwimi    r0, r4, 0, 24, 31
/* 0A6C6C 800A9C6C B0050004 */  sth       r0, 0x4(r5)
/* 0A6C70 800A9C70 4E800020 */  blr

glabel fn_800A9C74
/* 0A6C74 800A9C74 808D8C00 */  lwz       r4, __peReg@sda21(r0)
/* 0A6C78 800A9C78 546015BA */  clrlslwi  r0, r3, 24, 2
/* 0A6C7C 800A9C7C A4640002 */  lhzu      r3, 0x2(r4)
/* 0A6C80 800A9C80 546307B8 */  rlwinm    r3, r3, 0, 30, 28
/* 0A6C84 800A9C84 7C600378 */  or        r0, r3, r0
/* 0A6C88 800A9C88 B0040000 */  sth       r0, 0x0(r4)
/* 0A6C8C 800A9C8C 4E800020 */  blr

glabel fn_800A9C90
/* 0A6C90 800A9C90 5460063E */  clrlwi    r0, r3, 24
/* 0A6C94 800A9C94 806D8C00 */  lwz       r3, __peReg@sda21(r0)
/* 0A6C98 800A9C98 540607F6 */  rlwinm    r6, r0, 0, 31, 27
/* 0A6C9C 800A9C9C 5480083C */  slwi      r0, r4, 1
/* 0A6CA0 800A9CA0 7CC00378 */  or        r0, r6, r0
/* 0A6CA4 800A9CA4 54040734 */  rlwinm    r4, r0, 0, 28, 26
/* 0A6CA8 800A9CA8 54A02536 */  clrlslwi  r0, r5, 24, 4
/* 0A6CAC 800A9CAC 7C800378 */  or        r0, r4, r0
/* 0A6CB0 800A9CB0 B0030000 */  sth       r0, 0x0(r3)
/* 0A6CB4 800A9CB4 4E800020 */  blr

glabel fn_800A9CB8
/* 0A6CB8 800A9CB8 7C0802A6 */  mflr      r0
/* 0A6CBC 800A9CBC 90010004 */  stw       r0, 0x4(r1)
/* 0A6CC0 800A9CC0 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A6CC4 800A9CC4 93E10014 */  stw       r31, 0x14(r1)
/* 0A6CC8 800A9CC8 93C10010 */  stw       r30, 0x10(r1)
/* 0A6CCC 800A9CCC 7C7E1B78 */  mr        r30, r3
/* 0A6CD0 800A9CD0 83ED8C28 */  lwz       r31, D_8018BBA8@sda21(r0)
/* 0A6CD4 800A9CD4 4BFF4575 */  bl        OSDisableInterrupts
/* 0A6CD8 800A9CD8 93CD8C28 */  stw       r30, D_8018BBA8@sda21(r0)
/* 0A6CDC 800A9CDC 4BFF4595 */  bl        OSRestoreInterrupts
/* 0A6CE0 800A9CE0 7FE3FB78 */  mr        r3, r31
/* 0A6CE4 800A9CE4 8001001C */  lwz       r0, 0x1c(r1)
/* 0A6CE8 800A9CE8 83E10014 */  lwz       r31, 0x14(r1)
/* 0A6CEC 800A9CEC 83C10010 */  lwz       r30, 0x10(r1)
/* 0A6CF0 800A9CF0 38210018 */  addi      r1, r1, 0x18
/* 0A6CF4 800A9CF4 7C0803A6 */  mtlr      r0
/* 0A6CF8 800A9CF8 4E800020 */  blr

glabel fn_800A9CFC
/* 0A6CFC 800A9CFC 7C0802A6 */  mflr      r0
/* 0A6D00 800A9D00 90010004 */  stw       r0, 0x4(r1)
/* 0A6D04 800A9D04 9421FD20 */  stwu      r1, -0x2e0(r1)
/* 0A6D08 800A9D08 93E102DC */  stw       r31, 0x2dc(r1)
/* 0A6D0C 800A9D0C 93C102D8 */  stw       r30, 0x2d8(r1)
/* 0A6D10 800A9D10 7C9E2378 */  mr        r30, r4
/* 0A6D14 800A9D14 800D8C28 */  lwz       r0, D_8018BBA8@sda21(r0)
/* 0A6D18 800A9D18 806D8C00 */  lwz       r3, __peReg@sda21(r0)
/* 0A6D1C 800A9D1C 28000000 */  cmplwi    r0, 0x0
/* 0A6D20 800A9D20 A3E3000E */  lhz       r31, 0xe(r3)
/* 0A6D24 800A9D24 41820034 */  beq       lbl_800A9D58
/* 0A6D28 800A9D28 38610010 */  addi      r3, r1, 0x10
/* 0A6D2C 800A9D2C 4BFF39C5 */  bl        OSClearContext
/* 0A6D30 800A9D30 38610010 */  addi      r3, r1, 0x10
/* 0A6D34 800A9D34 4BFF37F5 */  bl        OSSetCurrentContext
/* 0A6D38 800A9D38 818D8C28 */  lwz       r12, D_8018BBA8@sda21(r0)
/* 0A6D3C 800A9D3C 387F0000 */  addi      r3, r31, 0x0
/* 0A6D40 800A9D40 7D8803A6 */  mtlr      r12
/* 0A6D44 800A9D44 4E800021 */  blrl
/* 0A6D48 800A9D48 38610010 */  addi      r3, r1, 0x10
/* 0A6D4C 800A9D4C 4BFF39A5 */  bl        OSClearContext
/* 0A6D50 800A9D50 7FC3F378 */  mr        r3, r30
/* 0A6D54 800A9D54 4BFF37D5 */  bl        OSSetCurrentContext
lbl_800A9D58:
/* 0A6D58 800A9D58 806D8C00 */  lwz       r3, __peReg@sda21(r0)
/* 0A6D5C 800A9D5C A403000A */  lhzu      r0, 0xa(r3)
/* 0A6D60 800A9D60 540007B8 */  rlwinm    r0, r0, 0, 30, 28
/* 0A6D64 800A9D64 60000004 */  ori       r0, r0, 0x4
/* 0A6D68 800A9D68 B0030000 */  sth       r0, 0x0(r3)
/* 0A6D6C 800A9D6C 800102E4 */  lwz       r0, 0x2e4(r1)
/* 0A6D70 800A9D70 83E102DC */  lwz       r31, 0x2dc(r1)
/* 0A6D74 800A9D74 83C102D8 */  lwz       r30, 0x2d8(r1)
/* 0A6D78 800A9D78 382102E0 */  addi      r1, r1, 0x2e0
/* 0A6D7C 800A9D7C 7C0803A6 */  mtlr      r0
/* 0A6D80 800A9D80 4E800020 */  blr

glabel fn_800A9D84
/* 0A6D84 800A9D84 7C0802A6 */  mflr      r0
/* 0A6D88 800A9D88 90010004 */  stw       r0, 0x4(r1)
/* 0A6D8C 800A9D8C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A6D90 800A9D90 93E10014 */  stw       r31, 0x14(r1)
/* 0A6D94 800A9D94 93C10010 */  stw       r30, 0x10(r1)
/* 0A6D98 800A9D98 7C7E1B78 */  mr        r30, r3
/* 0A6D9C 800A9D9C 83ED8C2C */  lwz       r31, D_8018BBAC@sda21(r0)
/* 0A6DA0 800A9DA0 4BFF44A9 */  bl        OSDisableInterrupts
/* 0A6DA4 800A9DA4 93CD8C2C */  stw       r30, D_8018BBAC@sda21(r0)
/* 0A6DA8 800A9DA8 4BFF44C9 */  bl        OSRestoreInterrupts
/* 0A6DAC 800A9DAC 7FE3FB78 */  mr        r3, r31
/* 0A6DB0 800A9DB0 8001001C */  lwz       r0, 0x1c(r1)
/* 0A6DB4 800A9DB4 83E10014 */  lwz       r31, 0x14(r1)
/* 0A6DB8 800A9DB8 83C10010 */  lwz       r30, 0x10(r1)
/* 0A6DBC 800A9DBC 38210018 */  addi      r1, r1, 0x18
/* 0A6DC0 800A9DC0 7C0803A6 */  mtlr      r0
/* 0A6DC4 800A9DC4 4E800020 */  blr

glabel fn_800A9DC8
/* 0A6DC8 800A9DC8 7C0802A6 */  mflr      r0
/* 0A6DCC 800A9DCC 38600001 */  li        r3, 0x1
/* 0A6DD0 800A9DD0 90010004 */  stw       r0, 0x4(r1)
/* 0A6DD4 800A9DD4 9421FD20 */  stwu      r1, -0x2e0(r1)
/* 0A6DD8 800A9DD8 93E102DC */  stw       r31, 0x2dc(r1)
/* 0A6DDC 800A9DDC 3BE40000 */  addi      r31, r4, 0x0
/* 0A6DE0 800A9DE0 80AD8C00 */  lwz       r5, __peReg@sda21(r0)
/* 0A6DE4 800A9DE4 A005000A */  lhz       r0, 0xa(r5)
/* 0A6DE8 800A9DE8 54000776 */  rlwinm    r0, r0, 0, 29, 27
/* 0A6DEC 800A9DEC 60000008 */  ori       r0, r0, 0x8
/* 0A6DF0 800A9DF0 B005000A */  sth       r0, 0xa(r5)
/* 0A6DF4 800A9DF4 800D8C2C */  lwz       r0, D_8018BBAC@sda21(r0)
/* 0A6DF8 800A9DF8 986D8C30 */  stb       r3, D_8018BBB0@sda21(r0)
/* 0A6DFC 800A9DFC 28000000 */  cmplwi    r0, 0x0
/* 0A6E00 800A9E00 41820030 */  beq       lbl_800A9E30
/* 0A6E04 800A9E04 38610010 */  addi      r3, r1, 0x10
/* 0A6E08 800A9E08 4BFF38E9 */  bl        OSClearContext
/* 0A6E0C 800A9E0C 38610010 */  addi      r3, r1, 0x10
/* 0A6E10 800A9E10 4BFF3719 */  bl        OSSetCurrentContext
/* 0A6E14 800A9E14 818D8C2C */  lwz       r12, D_8018BBAC@sda21(r0)
/* 0A6E18 800A9E18 7D8803A6 */  mtlr      r12
/* 0A6E1C 800A9E1C 4E800021 */  blrl
/* 0A6E20 800A9E20 38610010 */  addi      r3, r1, 0x10
/* 0A6E24 800A9E24 4BFF38CD */  bl        OSClearContext
/* 0A6E28 800A9E28 7FE3FB78 */  mr        r3, r31
/* 0A6E2C 800A9E2C 4BFF36FD */  bl        OSSetCurrentContext
lbl_800A9E30:
/* 0A6E30 800A9E30 386D8C34 */  li        r3, D_8018BBB4@sda21
/* 0A6E34 800A9E34 4BFF74FD */  bl        OSWakeupThread
/* 0A6E38 800A9E38 800102E4 */  lwz       r0, 0x2e4(r1)
/* 0A6E3C 800A9E3C 83E102DC */  lwz       r31, 0x2dc(r1)
/* 0A6E40 800A9E40 382102E0 */  addi      r1, r1, 0x2e0
/* 0A6E44 800A9E44 7C0803A6 */  mtlr      r0
/* 0A6E48 800A9E48 4E800020 */  blr

glabel __GXPEInit
/* 0A6E4C 800A9E4C 7C0802A6 */  mflr      r0
/* 0A6E50 800A9E50 3C60800B */  lis       r3, fn_800A9CFC@ha
/* 0A6E54 800A9E54 90010004 */  stw       r0, 0x4(r1)
/* 0A6E58 800A9E58 38839CFC */  addi      r4, r3, fn_800A9CFC@l
/* 0A6E5C 800A9E5C 38600012 */  li        r3, 0x12
/* 0A6E60 800A9E60 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0A6E64 800A9E64 4BFF4431 */  bl        __OSSetInterruptHandler
/* 0A6E68 800A9E68 3C60800B */  lis       r3, fn_800A9DC8@ha
/* 0A6E6C 800A9E6C 38839DC8 */  addi      r4, r3, fn_800A9DC8@l
/* 0A6E70 800A9E70 38600013 */  li        r3, 0x13
/* 0A6E74 800A9E74 4BFF4421 */  bl        __OSSetInterruptHandler
/* 0A6E78 800A9E78 386D8C34 */  li        r3, D_8018BBB4@sda21
/* 0A6E7C 800A9E7C 4BFF65F1 */  bl        OSInitThreadQueue
/* 0A6E80 800A9E80 38602000 */  li        r3, 0x2000
/* 0A6E84 800A9E84 4BFF4815 */  bl        __OSUnmaskInterrupts
/* 0A6E88 800A9E88 38601000 */  li        r3, 0x1000
/* 0A6E8C 800A9E8C 4BFF480D */  bl        __OSUnmaskInterrupts
/* 0A6E90 800A9E90 806D8C00 */  lwz       r3, __peReg@sda21(r0)
/* 0A6E94 800A9E94 A403000A */  lhzu      r0, 0xa(r3)
/* 0A6E98 800A9E98 540007B8 */  rlwinm    r0, r0, 0, 30, 28
/* 0A6E9C 800A9E9C 60000004 */  ori       r0, r0, 0x4
/* 0A6EA0 800A9EA0 54000776 */  rlwinm    r0, r0, 0, 29, 27
/* 0A6EA4 800A9EA4 60000008 */  ori       r0, r0, 0x8
/* 0A6EA8 800A9EA8 5400003C */  clrrwi    r0, r0, 1
/* 0A6EAC 800A9EAC 60000001 */  ori       r0, r0, 0x1
/* 0A6EB0 800A9EB0 540007FA */  rlwinm    r0, r0, 0, 31, 29
/* 0A6EB4 800A9EB4 60000002 */  ori       r0, r0, 0x2
/* 0A6EB8 800A9EB8 B0030000 */  sth       r0, 0x0(r3)
/* 0A6EBC 800A9EBC 8001000C */  lwz       r0, 0xc(r1)
/* 0A6EC0 800A9EC0 38210008 */  addi      r1, r1, 0x8
/* 0A6EC4 800A9EC4 7C0803A6 */  mtlr      r0
/* 0A6EC8 800A9EC8 4E800020 */  blr

# 0x8018BBA8 - 0x8018BBC0
.section .sbss, "wa"

glabel D_8018BBA8
	.skip 0x4

glabel D_8018BBAC
	.skip 0x4

glabel D_8018BBB0
	.skip 0x1

glabel gap_08_8018BBB1_sbss
.hidden gap_08_8018BBB1_sbss
	.skip 0x3

glabel D_8018BBB4
	.skip 0xC
