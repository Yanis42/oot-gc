# OSTime.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A14E0 - 0x800A1904

glabel OSGetTime
/* 09E4E0 800A14E0 7C6D42E6 */  mftb      r3, 269
/* 09E4E4 800A14E4 7C8C42E6 */  mftb      r4, 268
/* 09E4E8 800A14E8 7CAD42E6 */  mftb      r5, 269
/* 09E4EC 800A14EC 7C032800 */  cmpw      r3, r5
/* 09E4F0 800A14F0 4082FFF0 */  bne       OSGetTime
/* 09E4F4 800A14F4 4E800020 */  blr

glabel OSGetTick
/* 09E4F8 800A14F8 7C6C42E6 */  mftb      r3, 268
/* 09E4FC 800A14FC 4E800020 */  blr

glabel __OSGetSystemTime
/* 09E500 800A1500 7C0802A6 */  mflr      r0
/* 09E504 800A1504 90010004 */  stw       r0, 0x4(r1)
/* 09E508 800A1508 9421FFE0 */  stwu      r1, -0x20(r1)
/* 09E50C 800A150C 93E1001C */  stw       r31, 0x1c(r1)
/* 09E510 800A1510 93C10018 */  stw       r30, 0x18(r1)
/* 09E514 800A1514 93A10014 */  stw       r29, 0x14(r1)
/* 09E518 800A1518 4BFFCD31 */  bl        OSDisableInterrupts
/* 09E51C 800A151C 7C7F1B78 */  mr        r31, r3
/* 09E520 800A1520 4BFFFFC1 */  bl        OSGetTime
/* 09E524 800A1524 3CC08000 */  lis       r6, 0x8000
/* 09E528 800A1528 80A630DC */  lwz       r5, 0x30dc(r6)
/* 09E52C 800A152C 800630D8 */  lwz       r0, 0x30d8(r6)
/* 09E530 800A1530 7FA52014 */  addc      r29, r5, r4
/* 09E534 800A1534 7FC01914 */  adde      r30, r0, r3
/* 09E538 800A1538 7FE3FB78 */  mr        r3, r31
/* 09E53C 800A153C 4BFFCD35 */  bl        OSRestoreInterrupts
/* 09E540 800A1540 7FA4EB78 */  mr        r4, r29
/* 09E544 800A1544 7FC3F378 */  mr        r3, r30
/* 09E548 800A1548 80010024 */  lwz       r0, 0x24(r1)
/* 09E54C 800A154C 83E1001C */  lwz       r31, 0x1c(r1)
/* 09E550 800A1550 83C10018 */  lwz       r30, 0x18(r1)
/* 09E554 800A1554 83A10014 */  lwz       r29, 0x14(r1)
/* 09E558 800A1558 38210020 */  addi      r1, r1, 0x20
/* 09E55C 800A155C 7C0803A6 */  mtlr      r0
/* 09E560 800A1560 4E800020 */  blr

glabel GetDates
/* 09E564 800A1564 3CA09249 */  lis       r5, 0x9249
/* 09E568 800A1568 38052493 */  addi      r0, r5, 0x2493
/* 09E56C 800A156C 38E30006 */  addi      r7, r3, 0x6
/* 09E570 800A1570 7CC03896 */  mulhw     r6, r0, r7
/* 09E574 800A1574 3CA0B38D */  lis       r5, 0xb38d
/* 09E578 800A1578 3805F9B1 */  subi      r0, r5, 0x64f
/* 09E57C 800A157C 7C001896 */  mulhw     r0, r0, r3
/* 09E580 800A1580 7CA63A14 */  add       r5, r6, r7
/* 09E584 800A1584 7CA51670 */  srawi     r5, r5, 2
/* 09E588 800A1588 54A60FFE */  srwi      r6, r5, 31
/* 09E58C 800A158C 7CA53214 */  add       r5, r5, r6
/* 09E590 800A1590 7C001A14 */  add       r0, r0, r3
/* 09E594 800A1594 1CC50007 */  mulli     r6, r5, 0x7
/* 09E598 800A1598 7C004670 */  srawi     r0, r0, 8
/* 09E59C 800A159C 54050FFE */  srwi      r5, r0, 31
/* 09E5A0 800A15A0 7CA02A14 */  add       r5, r0, r5
/* 09E5A4 800A15A4 7C063850 */  subf      r0, r6, r7
/* 09E5A8 800A15A8 1D65016D */  mulli     r11, r5, 0x16d
/* 09E5AC 800A15AC 90040018 */  stw       r0, 0x18(r4)
/* 09E5B0 800A15B0 48000004 */  b         lbl_800A15B4
lbl_800A15B4:
/* 09E5B4 800A15B4 3CC051EC */  lis       r6, 0x51ec
/* 09E5B8 800A15B8 3946851F */  subi      r10, r6, 0x7ae1
/* 09E5BC 800A15BC 48000004 */  b         lbl_800A15C0
lbl_800A15C0:
/* 09E5C0 800A15C0 4800000C */  b         lbl_800A15CC
lbl_800A15C4:
/* 09E5C4 800A15C4 396BFE93 */  subi      r11, r11, 0x16d
/* 09E5C8 800A15C8 38A5FFFF */  subi      r5, r5, 0x1
lbl_800A15CC:
/* 09E5CC 800A15CC 2C050001 */  cmpwi     r5, 0x1
/* 09E5D0 800A15D0 4080000C */  bge       lbl_800A15DC
/* 09E5D4 800A15D4 38000000 */  li        r0, 0x0
/* 09E5D8 800A15D8 48000038 */  b         lbl_800A1610
lbl_800A15DC:
/* 09E5DC 800A15DC 3805FFFF */  subi      r0, r5, 0x1
/* 09E5E0 800A15E0 7C0A0096 */  mulhw     r0, r10, r0
/* 09E5E4 800A15E4 7C083E70 */  srawi     r8, r0, 7
/* 09E5E8 800A15E8 7C062E70 */  srawi     r6, r0, 5
/* 09E5EC 800A15EC 38050003 */  addi      r0, r5, 0x3
/* 09E5F0 800A15F0 54C70FFE */  srwi      r7, r6, 31
/* 09E5F4 800A15F4 7C001670 */  srawi     r0, r0, 2
/* 09E5F8 800A15F8 55090FFE */  srwi      r9, r8, 31
/* 09E5FC 800A15FC 7CC63A14 */  add       r6, r6, r7
/* 09E600 800A1600 7C000194 */  addze     r0, r0
/* 09E604 800A1604 7CE84A14 */  add       r7, r8, r9
/* 09E608 800A1608 7C060050 */  subf      r0, r6, r0
/* 09E60C 800A160C 7C070214 */  add       r0, r7, r0
lbl_800A1610:
/* 09E610 800A1610 7C0B0214 */  add       r0, r11, r0
/* 09E614 800A1614 7C030000 */  cmpw      r3, r0
/* 09E618 800A1618 4180FFAC */  blt       lbl_800A15C4
/* 09E61C 800A161C 7CA61670 */  srawi     r6, r5, 2
/* 09E620 800A1620 90A40014 */  stw       r5, 0x14(r4)
/* 09E624 800A1624 7CC60194 */  addze     r6, r6
/* 09E628 800A1628 54C6103A */  slwi      r6, r6, 2
/* 09E62C 800A162C 7CC62810 */  subfc     r6, r6, r5
/* 09E630 800A1630 7C001850 */  subf      r0, r0, r3
/* 09E634 800A1634 2C060000 */  cmpwi     r6, 0x0
/* 09E638 800A1638 9004001C */  stw       r0, 0x1c(r4)
/* 09E63C 800A163C 38E00001 */  li        r7, 0x1
/* 09E640 800A1640 39000000 */  li        r8, 0x0
/* 09E644 800A1644 40820030 */  bne       lbl_800A1674
/* 09E648 800A1648 3C6051EC */  lis       r3, 0x51ec
/* 09E64C 800A164C 3863851F */  subi      r3, r3, 0x7ae1
/* 09E650 800A1650 7C632896 */  mulhw     r3, r3, r5
/* 09E654 800A1654 7C632E70 */  srawi     r3, r3, 5
/* 09E658 800A1658 54660FFE */  srwi      r6, r3, 31
/* 09E65C 800A165C 7C633214 */  add       r3, r3, r6
/* 09E660 800A1660 1C630064 */  mulli     r3, r3, 0x64
/* 09E664 800A1664 7C632850 */  subf      r3, r3, r5
/* 09E668 800A1668 2C030000 */  cmpwi     r3, 0x0
/* 09E66C 800A166C 41820008 */  beq       lbl_800A1674
/* 09E670 800A1670 7CE83B78 */  mr        r8, r7
lbl_800A1674:
/* 09E674 800A1674 2C080000 */  cmpwi     r8, 0x0
/* 09E678 800A1678 40820030 */  bne       lbl_800A16A8
/* 09E67C 800A167C 3C6051EC */  lis       r3, 0x51ec
/* 09E680 800A1680 3863851F */  subi      r3, r3, 0x7ae1
/* 09E684 800A1684 7C632896 */  mulhw     r3, r3, r5
/* 09E688 800A1688 7C633E70 */  srawi     r3, r3, 7
/* 09E68C 800A168C 54660FFE */  srwi      r6, r3, 31
/* 09E690 800A1690 7C633214 */  add       r3, r3, r6
/* 09E694 800A1694 1C630190 */  mulli     r3, r3, 0x190
/* 09E698 800A1698 7C632850 */  subf      r3, r3, r5
/* 09E69C 800A169C 2C030000 */  cmpwi     r3, 0x0
/* 09E6A0 800A16A0 41820008 */  beq       lbl_800A16A8
/* 09E6A4 800A16A4 38E00000 */  li        r7, 0x0
lbl_800A16A8:
/* 09E6A8 800A16A8 2C070000 */  cmpwi     r7, 0x0
/* 09E6AC 800A16AC 41820010 */  beq       lbl_800A16BC
/* 09E6B0 800A16B0 3C60800F */  lis       r3, D_800F28A0@ha
/* 09E6B4 800A16B4 38C328A0 */  addi      r6, r3, D_800F28A0@l
/* 09E6B8 800A16B8 4800000C */  b         lbl_800A16C4
lbl_800A16BC:
/* 09E6BC 800A16BC 3C60800F */  lis       r3, D_800F2870@ha
/* 09E6C0 800A16C0 38C32870 */  addi      r6, r3, D_800F2870@l
lbl_800A16C4:
/* 09E6C4 800A16C4 38E0000C */  li        r7, 0xc
/* 09E6C8 800A16C8 38600030 */  li        r3, 0x30
/* 09E6CC 800A16CC 48000004 */  b         lbl_800A16D0
lbl_800A16D0:
/* 09E6D0 800A16D0 48000004 */  b         lbl_800A16D4
lbl_800A16D4:
/* 09E6D4 800A16D4 3863FFFC */  subi      r3, r3, 0x4
/* 09E6D8 800A16D8 7CA6182E */  lwzx      r5, r6, r3
/* 09E6DC 800A16DC 38E7FFFF */  subi      r7, r7, 0x1
/* 09E6E0 800A16E0 7C002800 */  cmpw      r0, r5
/* 09E6E4 800A16E4 4180FFF0 */  blt       lbl_800A16D4
/* 09E6E8 800A16E8 90E40010 */  stw       r7, 0x10(r4)
/* 09E6EC 800A16EC 7C66182E */  lwzx      r3, r6, r3
/* 09E6F0 800A16F0 7C630050 */  subf      r3, r3, r0
/* 09E6F4 800A16F4 38030001 */  addi      r0, r3, 0x1
/* 09E6F8 800A16F8 9004000C */  stw       r0, 0xc(r4)
/* 09E6FC 800A16FC 4E800020 */  blr

glabel OSTicksToCalendarTime
/* 09E700 800A1700 7C0802A6 */  mflr      r0
/* 09E704 800A1704 90010004 */  stw       r0, 0x4(r1)
/* 09E708 800A1708 9421FFC8 */  stwu      r1, -0x38(r1)
/* 09E70C 800A170C BF21001C */  stmw      r25, 0x1c(r1)
/* 09E710 800A1710 7C7D1B78 */  mr        r29, r3
/* 09E714 800A1714 7C9E2378 */  mr        r30, r4
/* 09E718 800A1718 7CBF2B78 */  mr        r31, r5
/* 09E71C 800A171C 3F608000 */  lis       r27, 0x8000
/* 09E720 800A1720 801B00F8 */  lwz       r0, 0xf8(r27)
/* 09E724 800A1724 7FA3EB78 */  mr        r3, r29
/* 09E728 800A1728 7FC4F378 */  mr        r4, r30
/* 09E72C 800A172C 5406F0BE */  srwi      r6, r0, 2
/* 09E730 800A1730 38A00000 */  li        r5, 0x0
/* 09E734 800A1734 4802B0DD */  bl        __mod2i
/* 09E738 800A1738 7C7A1B78 */  mr        r26, r3
/* 09E73C 800A173C 38A00000 */  li        r5, 0x0
/* 09E740 800A1740 7C992378 */  mr        r25, r4
/* 09E744 800A1744 6F448000 */  xoris     r4, r26, 0x8000
/* 09E748 800A1748 6CA38000 */  xoris     r3, r5, 0x8000
/* 09E74C 800A174C 7C05C810 */  subfc     r0, r5, r25
/* 09E750 800A1750 7C632110 */  subfe     r3, r3, r4
/* 09E754 800A1754 7C642110 */  subfe     r3, r4, r4
/* 09E758 800A1758 7C6300D0 */  neg       r3, r3
/* 09E75C 800A175C 2C030000 */  cmpwi     r3, 0x0
/* 09E760 800A1760 41820014 */  beq       lbl_800A1774
/* 09E764 800A1764 801B00F8 */  lwz       r0, 0xf8(r27)
/* 09E768 800A1768 5400F0BE */  srwi      r0, r0, 2
/* 09E76C 800A176C 7F390014 */  addc      r25, r25, r0
/* 09E770 800A1770 7F5A2914 */  adde      r26, r26, r5
lbl_800A1774:
/* 09E774 800A1774 38800008 */  li        r4, 0x8
/* 09E778 800A1778 7C7A21D6 */  mullw     r3, r26, r4
/* 09E77C 800A177C 7C192016 */  mulhwu    r0, r25, r4
/* 09E780 800A1780 3F608000 */  lis       r27, 0x8000
/* 09E784 800A1784 80DB00F8 */  lwz       r6, 0xf8(r27)
/* 09E788 800A1788 3CA0431C */  lis       r5, 0x431c
/* 09E78C 800A178C 38A5DE83 */  subi      r5, r5, 0x217d
/* 09E790 800A1790 54C6F0BE */  srwi      r6, r6, 2
/* 09E794 800A1794 7CA53016 */  mulhwu    r5, r5, r6
/* 09E798 800A1798 54A68BFE */  srwi      r6, r5, 15
/* 09E79C 800A179C 3B800000 */  li        r28, 0x0
/* 09E7A0 800A17A0 7C630214 */  add       r3, r3, r0
/* 09E7A4 800A17A4 7C19E1D6 */  mullw     r0, r25, r28
/* 09E7A8 800A17A8 7C9921D6 */  mullw     r4, r25, r4
/* 09E7AC 800A17AC 7C630214 */  add       r3, r3, r0
/* 09E7B0 800A17B0 38A00000 */  li        r5, 0x0
/* 09E7B4 800A17B4 4802AE41 */  bl        __div2i
/* 09E7B8 800A17B8 38A00000 */  li        r5, 0x0
/* 09E7BC 800A17BC 38C003E8 */  li        r6, 0x3e8
/* 09E7C0 800A17C0 4802B051 */  bl        __mod2i
/* 09E7C4 800A17C4 909F0024 */  stw       r4, 0x24(r31)
/* 09E7C8 800A17C8 3C601062 */  lis       r3, 0x1062
/* 09E7CC 800A17CC 38A34DD3 */  addi      r5, r3, 0x4dd3
/* 09E7D0 800A17D0 801B00F8 */  lwz       r0, 0xf8(r27)
/* 09E7D4 800A17D4 7F43D378 */  mr        r3, r26
/* 09E7D8 800A17D8 7F24CB78 */  mr        r4, r25
/* 09E7DC 800A17DC 5400F0BE */  srwi      r0, r0, 2
/* 09E7E0 800A17E0 7C050016 */  mulhwu    r0, r5, r0
/* 09E7E4 800A17E4 5406D1BE */  srwi      r6, r0, 6
/* 09E7E8 800A17E8 38A00000 */  li        r5, 0x0
/* 09E7EC 800A17EC 4802AE09 */  bl        __div2i
/* 09E7F0 800A17F0 38A00000 */  li        r5, 0x0
/* 09E7F4 800A17F4 38C003E8 */  li        r6, 0x3e8
/* 09E7F8 800A17F8 4802B019 */  bl        __mod2i
/* 09E7FC 800A17FC 909F0020 */  stw       r4, 0x20(r31)
/* 09E800 800A1800 7FD9F010 */  subfc     r30, r25, r30
/* 09E804 800A1804 7FBAE910 */  subfe     r29, r26, r29
/* 09E808 800A1808 801B00F8 */  lwz       r0, 0xf8(r27)
/* 09E80C 800A180C 3CA00001 */  lis       r5, 0x1
/* 09E810 800A1810 3B255180 */  addi      r25, r5, 0x5180
/* 09E814 800A1814 7FA3EB78 */  mr        r3, r29
/* 09E818 800A1818 5406F0BE */  srwi      r6, r0, 2
/* 09E81C 800A181C 7FC4F378 */  mr        r4, r30
/* 09E820 800A1820 38A00000 */  li        r5, 0x0
/* 09E824 800A1824 4802ADD1 */  bl        __div2i
/* 09E828 800A1828 7F26CB78 */  mr        r6, r25
/* 09E82C 800A182C 38A00000 */  li        r5, 0x0
/* 09E830 800A1830 4802ADC5 */  bl        __div2i
/* 09E834 800A1834 3CA0000B */  lis       r5, 0xb
/* 09E838 800A1838 801B00F8 */  lwz       r0, 0xf8(r27)
/* 09E83C 800A183C 38A52575 */  addi      r5, r5, 0x2575
/* 09E840 800A1840 7F442814 */  addc      r26, r4, r5
/* 09E844 800A1844 5406F0BE */  srwi      r6, r0, 2
/* 09E848 800A1848 7C03E114 */  adde      r0, r3, r28
/* 09E84C 800A184C 7FA3EB78 */  mr        r3, r29
/* 09E850 800A1850 7FC4F378 */  mr        r4, r30
/* 09E854 800A1854 38A00000 */  li        r5, 0x0
/* 09E858 800A1858 4802AD9D */  bl        __div2i
/* 09E85C 800A185C 7F26CB78 */  mr        r6, r25
/* 09E860 800A1860 38A00000 */  li        r5, 0x0
/* 09E864 800A1864 4802AFAD */  bl        __mod2i
/* 09E868 800A1868 7C9B2378 */  mr        r27, r4
/* 09E86C 800A186C 2C1B0000 */  cmpwi     r27, 0x0
/* 09E870 800A1870 40800010 */  bge       lbl_800A1880
/* 09E874 800A1874 3F7B0001 */  addis     r27, r27, 0x1
/* 09E878 800A1878 3B5AFFFF */  subi      r26, r26, 0x1
/* 09E87C 800A187C 3B7B5180 */  addi      r27, r27, 0x5180
lbl_800A1880:
/* 09E880 800A1880 7F43D378 */  mr        r3, r26
/* 09E884 800A1884 7FE4FB78 */  mr        r4, r31
/* 09E888 800A1888 4BFFFCDD */  bl        GetDates
/* 09E88C 800A188C 3C608889 */  lis       r3, 0x8889
/* 09E890 800A1890 38A38889 */  subi      r5, r3, 0x7777
/* 09E894 800A1894 7C05D896 */  mulhw     r0, r5, r27
/* 09E898 800A1898 7C80DA14 */  add       r4, r0, r27
/* 09E89C 800A189C 7C802E70 */  srawi     r0, r4, 5
/* 09E8A0 800A18A0 54030FFE */  srwi      r3, r0, 31
/* 09E8A4 800A18A4 7CE01A14 */  add       r7, r0, r3
/* 09E8A8 800A18A8 7C053896 */  mulhw     r0, r5, r7
/* 09E8AC 800A18AC 7C003A14 */  add       r0, r0, r7
/* 09E8B0 800A18B0 7C052E70 */  srawi     r5, r0, 5
/* 09E8B4 800A18B4 7C002E70 */  srawi     r0, r0, 5
/* 09E8B8 800A18B8 54030FFE */  srwi      r3, r0, 31
/* 09E8BC 800A18BC 7C601A14 */  add       r3, r0, r3
/* 09E8C0 800A18C0 7C802E70 */  srawi     r0, r4, 5
/* 09E8C4 800A18C4 54A60FFE */  srwi      r6, r5, 31
/* 09E8C8 800A18C8 1C83003C */  mulli     r4, r3, 0x3c
/* 09E8CC 800A18CC 54030FFE */  srwi      r3, r0, 31
/* 09E8D0 800A18D0 7CA53214 */  add       r5, r5, r6
/* 09E8D4 800A18D4 7C001A14 */  add       r0, r0, r3
/* 09E8D8 800A18D8 90BF0008 */  stw       r5, 0x8(r31)
/* 09E8DC 800A18DC 1C00003C */  mulli     r0, r0, 0x3c
/* 09E8E0 800A18E0 7C643850 */  subf      r3, r4, r7
/* 09E8E4 800A18E4 907F0004 */  stw       r3, 0x4(r31)
/* 09E8E8 800A18E8 7C00D850 */  subf      r0, r0, r27
/* 09E8EC 800A18EC 901F0000 */  stw       r0, 0x0(r31)
/* 09E8F0 800A18F0 BB21001C */  lmw       r25, 0x1c(r1)
/* 09E8F4 800A18F4 8001003C */  lwz       r0, 0x3c(r1)
/* 09E8F8 800A18F8 38210038 */  addi      r1, r1, 0x38
/* 09E8FC 800A18FC 7C0803A6 */  mtlr      r0
/* 09E900 800A1900 4E800020 */  blr

# 0x800F2870 - 0x800F28D0
.section .data, "wa"

.balign 8

glabel D_800F2870
	.long 0x00000000
	.long 0x0000001F
	.long 0x0000003B
	.long 0x0000005A
	.long 0x00000078
	.long 0x00000097
	.long 0x000000B5
	.long 0x000000D4
	.long 0x000000F3
	.long 0x00000111
	.long 0x00000130
	.long 0x0000014E

glabel D_800F28A0
	.long 0x00000000
	.long 0x0000001F
	.long 0x0000003C
	.long 0x0000005B
	.long 0x00000079
	.long 0x00000098
	.long 0x000000B6
	.long 0x000000D5
	.long 0x000000F4
	.long 0x00000112
	.long 0x00000131
	.long 0x0000014F
