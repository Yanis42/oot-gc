# dvdfs.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B154C - 0x800B1DB4

glabel __DVDFSInit
/* 0AE54C 800B154C 3C608000 */  lis       r3, 0x8000
/* 0AE550 800B1550 906D8CB0 */  stw       r3, BootInfo@sda21(r0)
/* 0AE554 800B1554 80030038 */  lwz       r0, 0x38(r3)
/* 0AE558 800B1558 900D8CB4 */  stw       r0, FstStart@sda21(r0)
/* 0AE55C 800B155C 806D8CB4 */  lwz       r3, FstStart@sda21(r0)
/* 0AE560 800B1560 28030000 */  cmplwi    r3, 0x0
/* 0AE564 800B1564 4D820020 */  beqlr
/* 0AE568 800B1568 80030008 */  lwz       r0, 0x8(r3)
/* 0AE56C 800B156C 900D8CBC */  stw       r0, MaxEntryNum@sda21(r0)
/* 0AE570 800B1570 800D8CBC */  lwz       r0, MaxEntryNum@sda21(r0)
/* 0AE574 800B1574 1C00000C */  mulli     r0, r0, 0xc
/* 0AE578 800B1578 7C030214 */  add       r0, r3, r0
/* 0AE57C 800B157C 900D8CB8 */  stw       r0, FstStringStart@sda21(r0)
/* 0AE580 800B1580 4E800020 */  blr

glabel DVDConvertPathToEntrynum
/* 0AE584 800B1584 7C0802A6 */  mflr      r0
/* 0AE588 800B1588 90010004 */  stw       r0, 0x4(r1)
/* 0AE58C 800B158C 9421FFB8 */  stwu      r1, -0x48(r1)
/* 0AE590 800B1590 BE810018 */  stmw      r20, 0x18(r1)
/* 0AE594 800B1594 7C771B78 */  mr        r23, r3
/* 0AE598 800B1598 3C60800F */  lis       r3, D_800F3660@ha
/* 0AE59C 800B159C 3B370000 */  addi      r25, r23, 0x0
/* 0AE5A0 800B15A0 3BE33660 */  addi      r31, r3, D_800F3660@l
/* 0AE5A4 800B15A4 834D8CC0 */  lwz       r26, D_8018BC40@sda21(r0)
lbl_800B15A8:
/* 0AE5A8 800B15A8 88770000 */  lbz       r3, 0x0(r23)
/* 0AE5AC 800B15AC 7C600775 */  extsb.    r0, r3
/* 0AE5B0 800B15B0 4082000C */  bne       lbl_800B15BC
/* 0AE5B4 800B15B4 7F43D378 */  mr        r3, r26
/* 0AE5B8 800B15B8 480002AC */  b         lbl_800B1864
lbl_800B15BC:
/* 0AE5BC 800B15BC 7C600774 */  extsb     r0, r3
/* 0AE5C0 800B15C0 2C00002F */  cmpwi     r0, 0x2f
/* 0AE5C4 800B15C4 40820010 */  bne       lbl_800B15D4
/* 0AE5C8 800B15C8 3B400000 */  li        r26, 0x0
/* 0AE5CC 800B15CC 3AF70001 */  addi      r23, r23, 0x1
/* 0AE5D0 800B15D0 4BFFFFD8 */  b         lbl_800B15A8
lbl_800B15D4:
/* 0AE5D4 800B15D4 2C00002E */  cmpwi     r0, 0x2e
/* 0AE5D8 800B15D8 40820074 */  bne       lbl_800B164C
/* 0AE5DC 800B15DC 88770001 */  lbz       r3, 0x1(r23)
/* 0AE5E0 800B15E0 7C600774 */  extsb     r0, r3
/* 0AE5E4 800B15E4 2C00002E */  cmpwi     r0, 0x2e
/* 0AE5E8 800B15E8 40820044 */  bne       lbl_800B162C
/* 0AE5EC 800B15EC 88770002 */  lbz       r3, 0x2(r23)
/* 0AE5F0 800B15F0 2C03002F */  cmpwi     r3, 0x2f
/* 0AE5F4 800B15F4 4082001C */  bne       lbl_800B1610
/* 0AE5F8 800B15F8 1C7A000C */  mulli     r3, r26, 0xc
/* 0AE5FC 800B15FC 808D8CB4 */  lwz       r4, FstStart@sda21(r0)
/* 0AE600 800B1600 38030004 */  addi      r0, r3, 0x4
/* 0AE604 800B1604 7F44002E */  lwzx      r26, r4, r0
/* 0AE608 800B1608 3AF70003 */  addi      r23, r23, 0x3
/* 0AE60C 800B160C 4BFFFF9C */  b         lbl_800B15A8
lbl_800B1610:
/* 0AE610 800B1610 7C600775 */  extsb.    r0, r3
/* 0AE614 800B1614 40820038 */  bne       lbl_800B164C
/* 0AE618 800B1618 1C1A000C */  mulli     r0, r26, 0xc
/* 0AE61C 800B161C 806D8CB4 */  lwz       r3, FstStart@sda21(r0)
/* 0AE620 800B1620 7C630214 */  add       r3, r3, r0
/* 0AE624 800B1624 80630004 */  lwz       r3, 0x4(r3)
/* 0AE628 800B1628 4800023C */  b         lbl_800B1864
lbl_800B162C:
/* 0AE62C 800B162C 2C00002F */  cmpwi     r0, 0x2f
/* 0AE630 800B1630 4082000C */  bne       lbl_800B163C
/* 0AE634 800B1634 3AF70002 */  addi      r23, r23, 0x2
/* 0AE638 800B1638 4BFFFF70 */  b         lbl_800B15A8
lbl_800B163C:
/* 0AE63C 800B163C 7C600775 */  extsb.    r0, r3
/* 0AE640 800B1640 4082000C */  bne       lbl_800B164C
/* 0AE644 800B1644 7F43D378 */  mr        r3, r26
/* 0AE648 800B1648 4800021C */  b         lbl_800B1864
lbl_800B164C:
/* 0AE64C 800B164C 800D8CC4 */  lwz       r0, __DVDLongFileNameFlag@sda21(r0)
/* 0AE650 800B1650 28000000 */  cmplwi    r0, 0x0
/* 0AE654 800B1654 408200AC */  bne       lbl_800B1700
/* 0AE658 800B1658 3B970000 */  addi      r28, r23, 0x0
/* 0AE65C 800B165C 38A00000 */  li        r5, 0x0
/* 0AE660 800B1660 38800000 */  li        r4, 0x0
/* 0AE664 800B1664 48000048 */  b         lbl_800B16AC
lbl_800B1668:
/* 0AE668 800B1668 7C600774 */  extsb     r0, r3
/* 0AE66C 800B166C 2C00002E */  cmpwi     r0, 0x2e
/* 0AE670 800B1670 4082002C */  bne       lbl_800B169C
/* 0AE674 800B1674 7C17E050 */  subf      r0, r23, r28
/* 0AE678 800B1678 2C000008 */  cmpwi     r0, 0x8
/* 0AE67C 800B167C 4181000C */  bgt       lbl_800B1688
/* 0AE680 800B1680 2C050001 */  cmpwi     r5, 0x1
/* 0AE684 800B1684 4082000C */  bne       lbl_800B1690
lbl_800B1688:
/* 0AE688 800B1688 38800001 */  li        r4, 0x1
/* 0AE68C 800B168C 48000038 */  b         lbl_800B16C4
lbl_800B1690:
/* 0AE690 800B1690 3B1C0001 */  addi      r24, r28, 0x1
/* 0AE694 800B1694 38A00001 */  li        r5, 0x1
/* 0AE698 800B1698 48000010 */  b         lbl_800B16A8
lbl_800B169C:
/* 0AE69C 800B169C 2C000020 */  cmpwi     r0, 0x20
/* 0AE6A0 800B16A0 40820008 */  bne       lbl_800B16A8
/* 0AE6A4 800B16A4 38800001 */  li        r4, 0x1
lbl_800B16A8:
/* 0AE6A8 800B16A8 3B9C0001 */  addi      r28, r28, 0x1
lbl_800B16AC:
/* 0AE6AC 800B16AC 887C0000 */  lbz       r3, 0x0(r28)
/* 0AE6B0 800B16B0 7C600775 */  extsb.    r0, r3
/* 0AE6B4 800B16B4 41820010 */  beq       lbl_800B16C4
/* 0AE6B8 800B16B8 7C600774 */  extsb     r0, r3
/* 0AE6BC 800B16BC 2C00002F */  cmpwi     r0, 0x2f
/* 0AE6C0 800B16C0 4082FFA8 */  bne       lbl_800B1668
lbl_800B16C4:
/* 0AE6C4 800B16C4 2C050001 */  cmpwi     r5, 0x1
/* 0AE6C8 800B16C8 40820014 */  bne       lbl_800B16DC
/* 0AE6CC 800B16CC 7C18E050 */  subf      r0, r24, r28
/* 0AE6D0 800B16D0 2C000003 */  cmpwi     r0, 0x3
/* 0AE6D4 800B16D4 40810008 */  ble       lbl_800B16DC
/* 0AE6D8 800B16D8 38800001 */  li        r4, 0x1
lbl_800B16DC:
/* 0AE6DC 800B16DC 2C040000 */  cmpwi     r4, 0x0
/* 0AE6E0 800B16E0 41820044 */  beq       lbl_800B1724
/* 0AE6E4 800B16E4 38BF0000 */  addi      r5, r31, 0x0
/* 0AE6E8 800B16E8 4CC63182 */  crclr     cr1eq
/* 0AE6EC 800B16EC 38D90000 */  addi      r6, r25, 0x0
/* 0AE6F0 800B16F0 386D87F8 */  li        r3, D_8018B778@sda21
/* 0AE6F4 800B16F4 3880017B */  li        r4, 0x17b
/* 0AE6F8 800B16F8 4BFEC4CD */  bl        OSPanic
/* 0AE6FC 800B16FC 48000028 */  b         lbl_800B1724
lbl_800B1700:
/* 0AE700 800B1700 7EFCBB78 */  mr        r28, r23
/* 0AE704 800B1704 48000008 */  b         lbl_800B170C
lbl_800B1708:
/* 0AE708 800B1708 3B9C0001 */  addi      r28, r28, 0x1
lbl_800B170C:
/* 0AE70C 800B170C 887C0000 */  lbz       r3, 0x0(r28)
/* 0AE710 800B1710 7C600775 */  extsb.    r0, r3
/* 0AE714 800B1714 41820010 */  beq       lbl_800B1724
/* 0AE718 800B1718 7C600774 */  extsb     r0, r3
/* 0AE71C 800B171C 2C00002F */  cmpwi     r0, 0x2f
/* 0AE720 800B1720 4082FFE8 */  bne       lbl_800B1708
lbl_800B1724:
/* 0AE724 800B1724 881C0000 */  lbz       r0, 0x0(r28)
/* 0AE728 800B1728 7C000775 */  extsb.    r0, r0
/* 0AE72C 800B172C 4082000C */  bne       lbl_800B1738
/* 0AE730 800B1730 3BC00000 */  li        r30, 0x0
/* 0AE734 800B1734 48000008 */  b         lbl_800B173C
lbl_800B1738:
/* 0AE738 800B1738 3BC00001 */  li        r30, 0x1
lbl_800B173C:
/* 0AE73C 800B173C 1FBA000C */  mulli     r29, r26, 0xc
/* 0AE740 800B1740 7F77E050 */  subf      r27, r23, r28
/* 0AE744 800B1744 3B5A0001 */  addi      r26, r26, 0x1
/* 0AE748 800B1748 480000E4 */  b         lbl_800B182C
lbl_800B174C:
/* 0AE74C 800B174C 1F9A000C */  mulli     r28, r26, 0xc
/* 0AE750 800B1750 7C83E02E */  lwzx      r4, r3, r28
/* 0AE754 800B1754 5480000F */  clrrwi.   r0, r4, 24
/* 0AE758 800B1758 4082000C */  bne       lbl_800B1764
/* 0AE75C 800B175C 38000000 */  li        r0, 0x0
/* 0AE760 800B1760 48000008 */  b         lbl_800B1768
lbl_800B1764:
/* 0AE764 800B1764 38000001 */  li        r0, 0x1
lbl_800B1768:
/* 0AE768 800B1768 2C000000 */  cmpwi     r0, 0x0
/* 0AE76C 800B176C 4082000C */  bne       lbl_800B1778
/* 0AE770 800B1770 2C1E0001 */  cmpwi     r30, 0x1
/* 0AE774 800B1774 41820080 */  beq       lbl_800B17F4
lbl_800B1778:
/* 0AE778 800B1778 806D8CB8 */  lwz       r3, FstStringStart@sda21(r0)
/* 0AE77C 800B177C 5480023E */  clrlwi    r0, r4, 8
/* 0AE780 800B1780 3AB70000 */  addi      r21, r23, 0x0
/* 0AE784 800B1784 7E830214 */  add       r20, r3, r0
/* 0AE788 800B1788 48000038 */  b         lbl_800B17C0
lbl_800B178C:
/* 0AE78C 800B178C 88140000 */  lbz       r0, 0x0(r20)
/* 0AE790 800B1790 3A940001 */  addi      r20, r20, 0x1
/* 0AE794 800B1794 7C030774 */  extsb     r3, r0
/* 0AE798 800B1798 4801BA11 */  bl        tolower
/* 0AE79C 800B179C 88150000 */  lbz       r0, 0x0(r21)
/* 0AE7A0 800B17A0 3AC30000 */  addi      r22, r3, 0x0
/* 0AE7A4 800B17A4 3AB50001 */  addi      r21, r21, 0x1
/* 0AE7A8 800B17A8 7C030774 */  extsb     r3, r0
/* 0AE7AC 800B17AC 4801B9FD */  bl        tolower
/* 0AE7B0 800B17B0 7C03B000 */  cmpw      r3, r22
/* 0AE7B4 800B17B4 4182000C */  beq       lbl_800B17C0
/* 0AE7B8 800B17B8 38000000 */  li        r0, 0x0
/* 0AE7BC 800B17BC 48000030 */  b         lbl_800B17EC
lbl_800B17C0:
/* 0AE7C0 800B17C0 88140000 */  lbz       r0, 0x0(r20)
/* 0AE7C4 800B17C4 7C000775 */  extsb.    r0, r0
/* 0AE7C8 800B17C8 4082FFC4 */  bne       lbl_800B178C
/* 0AE7CC 800B17CC 88750000 */  lbz       r3, 0x0(r21)
/* 0AE7D0 800B17D0 2C03002F */  cmpwi     r3, 0x2f
/* 0AE7D4 800B17D4 4182000C */  beq       lbl_800B17E0
/* 0AE7D8 800B17D8 7C600775 */  extsb.    r0, r3
/* 0AE7DC 800B17DC 4082000C */  bne       lbl_800B17E8
lbl_800B17E0:
/* 0AE7E0 800B17E0 38000001 */  li        r0, 0x1
/* 0AE7E4 800B17E4 48000008 */  b         lbl_800B17EC
lbl_800B17E8:
/* 0AE7E8 800B17E8 38000000 */  li        r0, 0x0
lbl_800B17EC:
/* 0AE7EC 800B17EC 2C000001 */  cmpwi     r0, 0x1
/* 0AE7F0 800B17F0 41820058 */  beq       lbl_800B1848
lbl_800B17F4:
/* 0AE7F4 800B17F4 800D8CB4 */  lwz       r0, FstStart@sda21(r0)
/* 0AE7F8 800B17F8 7C60E214 */  add       r3, r0, r28
/* 0AE7FC 800B17FC 80030000 */  lwz       r0, 0x0(r3)
/* 0AE800 800B1800 5400000F */  clrrwi.   r0, r0, 24
/* 0AE804 800B1804 4082000C */  bne       lbl_800B1810
/* 0AE808 800B1808 38000000 */  li        r0, 0x0
/* 0AE80C 800B180C 48000008 */  b         lbl_800B1814
lbl_800B1810:
/* 0AE810 800B1810 38000001 */  li        r0, 0x1
lbl_800B1814:
/* 0AE814 800B1814 2C000000 */  cmpwi     r0, 0x0
/* 0AE818 800B1818 4182000C */  beq       lbl_800B1824
/* 0AE81C 800B181C 80030008 */  lwz       r0, 0x8(r3)
/* 0AE820 800B1820 48000008 */  b         lbl_800B1828
lbl_800B1824:
/* 0AE824 800B1824 381A0001 */  addi      r0, r26, 0x1
lbl_800B1828:
/* 0AE828 800B1828 7C1A0378 */  mr        r26, r0
lbl_800B182C:
/* 0AE82C 800B182C 806D8CB4 */  lwz       r3, FstStart@sda21(r0)
/* 0AE830 800B1830 38030008 */  addi      r0, r3, 0x8
/* 0AE834 800B1834 7C1D002E */  lwzx      r0, r29, r0
/* 0AE838 800B1838 7C1A0040 */  cmplw     r26, r0
/* 0AE83C 800B183C 4180FF10 */  blt       lbl_800B174C
/* 0AE840 800B1840 3860FFFF */  li        r3, -0x1
/* 0AE844 800B1844 48000020 */  b         lbl_800B1864
lbl_800B1848:
/* 0AE848 800B1848 2C1E0000 */  cmpwi     r30, 0x0
/* 0AE84C 800B184C 4082000C */  bne       lbl_800B1858
/* 0AE850 800B1850 7F43D378 */  mr        r3, r26
/* 0AE854 800B1854 48000010 */  b         lbl_800B1864
lbl_800B1858:
/* 0AE858 800B1858 7EFBBA14 */  add       r23, r27, r23
/* 0AE85C 800B185C 3AF70001 */  addi      r23, r23, 0x1
/* 0AE860 800B1860 4BFFFD48 */  b         lbl_800B15A8
lbl_800B1864:
/* 0AE864 800B1864 BA810018 */  lmw       r20, 0x18(r1)
/* 0AE868 800B1868 8001004C */  lwz       r0, 0x4c(r1)
/* 0AE86C 800B186C 38210048 */  addi      r1, r1, 0x48
/* 0AE870 800B1870 7C0803A6 */  mtlr      r0
/* 0AE874 800B1874 4E800020 */  blr

glabel DVDOpen
/* 0AE878 800B1878 7C0802A6 */  mflr      r0
/* 0AE87C 800B187C 90010004 */  stw       r0, 0x4(r1)
/* 0AE880 800B1880 9421FF68 */  stwu      r1, -0x98(r1)
/* 0AE884 800B1884 93E10094 */  stw       r31, 0x94(r1)
/* 0AE888 800B1888 3BE40000 */  addi      r31, r4, 0x0
/* 0AE88C 800B188C 93C10090 */  stw       r30, 0x90(r1)
/* 0AE890 800B1890 3BC30000 */  addi      r30, r3, 0x0
/* 0AE894 800B1894 4BFFFCF1 */  bl        DVDConvertPathToEntrynum
/* 0AE898 800B1898 2C030000 */  cmpwi     r3, 0x0
/* 0AE89C 800B189C 40800030 */  bge       lbl_800B18CC
/* 0AE8A0 800B18A0 38610010 */  addi      r3, r1, 0x10
/* 0AE8A4 800B18A4 38800080 */  li        r4, 0x80
/* 0AE8A8 800B18A8 4800021D */  bl        DVDGetCurrentDir
/* 0AE8AC 800B18AC 3C60800F */  lis       r3, D_800F3728@ha
/* 0AE8B0 800B18B0 4CC63182 */  crclr     cr1eq
/* 0AE8B4 800B18B4 38633728 */  addi      r3, r3, D_800F3728@l
/* 0AE8B8 800B18B8 389E0000 */  addi      r4, r30, 0x0
/* 0AE8BC 800B18BC 38A10010 */  addi      r5, r1, 0x10
/* 0AE8C0 800B18C0 4BFEC285 */  bl        OSReport
/* 0AE8C4 800B18C4 38600000 */  li        r3, 0x0
/* 0AE8C8 800B18C8 48000060 */  b         lbl_800B1928
lbl_800B18CC:
/* 0AE8CC 800B18CC 1CA3000C */  mulli     r5, r3, 0xc
/* 0AE8D0 800B18D0 806D8CB4 */  lwz       r3, FstStart@sda21(r0)
/* 0AE8D4 800B18D4 7C03282E */  lwzx      r0, r3, r5
/* 0AE8D8 800B18D8 5400000F */  clrrwi.   r0, r0, 24
/* 0AE8DC 800B18DC 4082000C */  bne       lbl_800B18E8
/* 0AE8E0 800B18E0 38000000 */  li        r0, 0x0
/* 0AE8E4 800B18E4 48000008 */  b         lbl_800B18EC
lbl_800B18E8:
/* 0AE8E8 800B18E8 38000001 */  li        r0, 0x1
lbl_800B18EC:
/* 0AE8EC 800B18EC 2C000000 */  cmpwi     r0, 0x0
/* 0AE8F0 800B18F0 4182000C */  beq       lbl_800B18FC
/* 0AE8F4 800B18F4 38600000 */  li        r3, 0x0
/* 0AE8F8 800B18F8 48000030 */  b         lbl_800B1928
lbl_800B18FC:
/* 0AE8FC 800B18FC 7C632A14 */  add       r3, r3, r5
/* 0AE900 800B1900 80830004 */  lwz       r4, 0x4(r3)
/* 0AE904 800B1904 38000000 */  li        r0, 0x0
/* 0AE908 800B1908 38600001 */  li        r3, 0x1
/* 0AE90C 800B190C 909F0030 */  stw       r4, 0x30(r31)
/* 0AE910 800B1910 808D8CB4 */  lwz       r4, FstStart@sda21(r0)
/* 0AE914 800B1914 7C842A14 */  add       r4, r4, r5
/* 0AE918 800B1918 80840008 */  lwz       r4, 0x8(r4)
/* 0AE91C 800B191C 909F0034 */  stw       r4, 0x34(r31)
/* 0AE920 800B1920 901F0038 */  stw       r0, 0x38(r31)
/* 0AE924 800B1924 901F000C */  stw       r0, 0xc(r31)
lbl_800B1928:
/* 0AE928 800B1928 8001009C */  lwz       r0, 0x9c(r1)
/* 0AE92C 800B192C 83E10094 */  lwz       r31, 0x94(r1)
/* 0AE930 800B1930 83C10090 */  lwz       r30, 0x90(r1)
/* 0AE934 800B1934 38210098 */  addi      r1, r1, 0x98
/* 0AE938 800B1938 7C0803A6 */  mtlr      r0
/* 0AE93C 800B193C 4E800020 */  blr

glabel DVDClose
/* 0AE940 800B1940 7C0802A6 */  mflr      r0
/* 0AE944 800B1944 90010004 */  stw       r0, 0x4(r1)
/* 0AE948 800B1948 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AE94C 800B194C 4800280D */  bl        DVDCancel
/* 0AE950 800B1950 38600001 */  li        r3, 0x1
/* 0AE954 800B1954 8001000C */  lwz       r0, 0xc(r1)
/* 0AE958 800B1958 38210008 */  addi      r1, r1, 0x8
/* 0AE95C 800B195C 7C0803A6 */  mtlr      r0
/* 0AE960 800B1960 4E800020 */  blr

glabel entryToPath
/* 0AE964 800B1964 7C0802A6 */  mflr      r0
/* 0AE968 800B1968 28030000 */  cmplwi    r3, 0x0
/* 0AE96C 800B196C 90010004 */  stw       r0, 0x4(r1)
/* 0AE970 800B1970 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0AE974 800B1974 93E1002C */  stw       r31, 0x2c(r1)
/* 0AE978 800B1978 93C10028 */  stw       r30, 0x28(r1)
/* 0AE97C 800B197C 3BC50000 */  addi      r30, r5, 0x0
/* 0AE980 800B1980 93A10024 */  stw       r29, 0x24(r1)
/* 0AE984 800B1984 3BA40000 */  addi      r29, r4, 0x0
/* 0AE988 800B1988 93810020 */  stw       r28, 0x20(r1)
/* 0AE98C 800B198C 4082000C */  bne       lbl_800B1998
/* 0AE990 800B1990 38600000 */  li        r3, 0x0
/* 0AE994 800B1994 48000110 */  b         lbl_800B1AA4
lbl_800B1998:
/* 0AE998 800B1998 808D8CB4 */  lwz       r4, FstStart@sda21(r0)
/* 0AE99C 800B199C 1C63000C */  mulli     r3, r3, 0xc
/* 0AE9A0 800B19A0 80CD8CB8 */  lwz       r6, FstStringStart@sda21(r0)
/* 0AE9A4 800B19A4 38A40004 */  addi      r5, r4, 0x4
/* 0AE9A8 800B19A8 7C04182E */  lwzx      r0, r4, r3
/* 0AE9AC 800B19AC 7C65182E */  lwzx      r3, r5, r3
/* 0AE9B0 800B19B0 5400023E */  clrlwi    r0, r0, 8
/* 0AE9B4 800B19B4 28030000 */  cmplwi    r3, 0x0
/* 0AE9B8 800B19B8 7FE60214 */  add       r31, r6, r0
/* 0AE9BC 800B19BC 4082000C */  bne       lbl_800B19C8
/* 0AE9C0 800B19C0 38600000 */  li        r3, 0x0
/* 0AE9C4 800B19C4 48000080 */  b         lbl_800B1A44
lbl_800B19C8:
/* 0AE9C8 800B19C8 1C63000C */  mulli     r3, r3, 0xc
/* 0AE9CC 800B19CC 7C04182E */  lwzx      r0, r4, r3
/* 0AE9D0 800B19D0 7FA4EB78 */  mr        r4, r29
/* 0AE9D4 800B19D4 7C65182E */  lwzx      r3, r5, r3
/* 0AE9D8 800B19D8 38BE0000 */  addi      r5, r30, 0x0
/* 0AE9DC 800B19DC 5400023E */  clrlwi    r0, r0, 8
/* 0AE9E0 800B19E0 7F860214 */  add       r28, r6, r0
/* 0AE9E4 800B19E4 4BFFFF81 */  bl        entryToPath
/* 0AE9E8 800B19E8 7C03F040 */  cmplw     r3, r30
/* 0AE9EC 800B19EC 40820008 */  bne       lbl_800B19F4
/* 0AE9F0 800B19F0 48000054 */  b         lbl_800B1A44
lbl_800B19F4:
/* 0AE9F4 800B19F4 38030000 */  addi      r0, r3, 0x0
/* 0AE9F8 800B19F8 38630001 */  addi      r3, r3, 0x1
/* 0AE9FC 800B19FC 3880002F */  li        r4, 0x2f
/* 0AEA00 800B1A00 7CC3F050 */  subf      r6, r3, r30
/* 0AEA04 800B1A04 7C9D01AE */  stbx      r4, r29, r0
/* 0AEA08 800B1A08 38860000 */  addi      r4, r6, 0x0
/* 0AEA0C 800B1A0C 7CBD1A14 */  add       r5, r29, r3
/* 0AEA10 800B1A10 48000018 */  b         lbl_800B1A28
lbl_800B1A14:
/* 0AEA14 800B1A14 881C0000 */  lbz       r0, 0x0(r28)
/* 0AEA18 800B1A18 3B9C0001 */  addi      r28, r28, 0x1
/* 0AEA1C 800B1A1C 3884FFFF */  subi      r4, r4, 0x1
/* 0AEA20 800B1A20 98050000 */  stb       r0, 0x0(r5)
/* 0AEA24 800B1A24 38A50001 */  addi      r5, r5, 0x1
lbl_800B1A28:
/* 0AEA28 800B1A28 28040000 */  cmplwi    r4, 0x0
/* 0AEA2C 800B1A2C 41820010 */  beq       lbl_800B1A3C
/* 0AEA30 800B1A30 881C0000 */  lbz       r0, 0x0(r28)
/* 0AEA34 800B1A34 7C000775 */  extsb.    r0, r0
/* 0AEA38 800B1A38 4082FFDC */  bne       lbl_800B1A14
lbl_800B1A3C:
/* 0AEA3C 800B1A3C 7C043050 */  subf      r0, r4, r6
/* 0AEA40 800B1A40 7C630214 */  add       r3, r3, r0
lbl_800B1A44:
/* 0AEA44 800B1A44 7C03F040 */  cmplw     r3, r30
/* 0AEA48 800B1A48 40820008 */  bne       lbl_800B1A50
/* 0AEA4C 800B1A4C 48000058 */  b         lbl_800B1AA4
lbl_800B1A50:
/* 0AEA50 800B1A50 38030000 */  addi      r0, r3, 0x0
/* 0AEA54 800B1A54 38630001 */  addi      r3, r3, 0x1
/* 0AEA58 800B1A58 3880002F */  li        r4, 0x2f
/* 0AEA5C 800B1A5C 7CE3F050 */  subf      r7, r3, r30
/* 0AEA60 800B1A60 7C9D01AE */  stbx      r4, r29, r0
/* 0AEA64 800B1A64 38DF0000 */  addi      r6, r31, 0x0
/* 0AEA68 800B1A68 38870000 */  addi      r4, r7, 0x0
/* 0AEA6C 800B1A6C 7CBD1A14 */  add       r5, r29, r3
/* 0AEA70 800B1A70 48000018 */  b         lbl_800B1A88
lbl_800B1A74:
/* 0AEA74 800B1A74 88060000 */  lbz       r0, 0x0(r6)
/* 0AEA78 800B1A78 38C60001 */  addi      r6, r6, 0x1
/* 0AEA7C 800B1A7C 3884FFFF */  subi      r4, r4, 0x1
/* 0AEA80 800B1A80 98050000 */  stb       r0, 0x0(r5)
/* 0AEA84 800B1A84 38A50001 */  addi      r5, r5, 0x1
lbl_800B1A88:
/* 0AEA88 800B1A88 28040000 */  cmplwi    r4, 0x0
/* 0AEA8C 800B1A8C 41820010 */  beq       lbl_800B1A9C
/* 0AEA90 800B1A90 88060000 */  lbz       r0, 0x0(r6)
/* 0AEA94 800B1A94 7C000775 */  extsb.    r0, r0
/* 0AEA98 800B1A98 4082FFDC */  bne       lbl_800B1A74
lbl_800B1A9C:
/* 0AEA9C 800B1A9C 7C043850 */  subf      r0, r4, r7
/* 0AEAA0 800B1AA0 7C630214 */  add       r3, r3, r0
lbl_800B1AA4:
/* 0AEAA4 800B1AA4 80010034 */  lwz       r0, 0x34(r1)
/* 0AEAA8 800B1AA8 83E1002C */  lwz       r31, 0x2c(r1)
/* 0AEAAC 800B1AAC 83C10028 */  lwz       r30, 0x28(r1)
/* 0AEAB0 800B1AB0 83A10024 */  lwz       r29, 0x24(r1)
/* 0AEAB4 800B1AB4 83810020 */  lwz       r28, 0x20(r1)
/* 0AEAB8 800B1AB8 38210030 */  addi      r1, r1, 0x30
/* 0AEABC 800B1ABC 7C0803A6 */  mtlr      r0
/* 0AEAC0 800B1AC0 4E800020 */  blr

glabel DVDGetCurrentDir
/* 0AEAC4 800B1AC4 7C0802A6 */  mflr      r0
/* 0AEAC8 800B1AC8 90010004 */  stw       r0, 0x4(r1)
/* 0AEACC 800B1ACC 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0AEAD0 800B1AD0 93E1001C */  stw       r31, 0x1c(r1)
/* 0AEAD4 800B1AD4 93C10018 */  stw       r30, 0x18(r1)
/* 0AEAD8 800B1AD8 3BC40000 */  addi      r30, r4, 0x0
/* 0AEADC 800B1ADC 38BE0000 */  addi      r5, r30, 0x0
/* 0AEAE0 800B1AE0 93A10014 */  stw       r29, 0x14(r1)
/* 0AEAE4 800B1AE4 3BA30000 */  addi      r29, r3, 0x0
/* 0AEAE8 800B1AE8 389D0000 */  addi      r4, r29, 0x0
/* 0AEAEC 800B1AEC 83ED8CC0 */  lwz       r31, D_8018BC40@sda21(r0)
/* 0AEAF0 800B1AF0 387F0000 */  addi      r3, r31, 0x0
/* 0AEAF4 800B1AF4 4BFFFE71 */  bl        entryToPath
/* 0AEAF8 800B1AF8 7C03F040 */  cmplw     r3, r30
/* 0AEAFC 800B1AFC 40820014 */  bne       lbl_800B1B10
/* 0AEB00 800B1B00 38000000 */  li        r0, 0x0
/* 0AEB04 800B1B04 7C7DF214 */  add       r3, r29, r30
/* 0AEB08 800B1B08 9803FFFF */  stb       r0, -0x1(r3)
/* 0AEB0C 800B1B0C 4800005C */  b         lbl_800B1B68
lbl_800B1B10:
/* 0AEB10 800B1B10 1C1F000C */  mulli     r0, r31, 0xc
/* 0AEB14 800B1B14 808D8CB4 */  lwz       r4, FstStart@sda21(r0)
/* 0AEB18 800B1B18 7C04002E */  lwzx      r0, r4, r0
/* 0AEB1C 800B1B1C 5400000F */  clrrwi.   r0, r0, 24
/* 0AEB20 800B1B20 4082000C */  bne       lbl_800B1B2C
/* 0AEB24 800B1B24 38000000 */  li        r0, 0x0
/* 0AEB28 800B1B28 48000008 */  b         lbl_800B1B30
lbl_800B1B2C:
/* 0AEB2C 800B1B2C 38000001 */  li        r0, 0x1
lbl_800B1B30:
/* 0AEB30 800B1B30 2C000000 */  cmpwi     r0, 0x0
/* 0AEB34 800B1B34 41820028 */  beq       lbl_800B1B5C
/* 0AEB38 800B1B38 381EFFFF */  subi      r0, r30, 0x1
/* 0AEB3C 800B1B3C 7C030040 */  cmplw     r3, r0
/* 0AEB40 800B1B40 40820010 */  bne       lbl_800B1B50
/* 0AEB44 800B1B44 38000000 */  li        r0, 0x0
/* 0AEB48 800B1B48 7C1D19AE */  stbx      r0, r29, r3
/* 0AEB4C 800B1B4C 4800001C */  b         lbl_800B1B68
lbl_800B1B50:
/* 0AEB50 800B1B50 3800002F */  li        r0, 0x2f
/* 0AEB54 800B1B54 7C1D19AE */  stbx      r0, r29, r3
/* 0AEB58 800B1B58 38630001 */  addi      r3, r3, 0x1
lbl_800B1B5C:
/* 0AEB5C 800B1B5C 38000000 */  li        r0, 0x0
/* 0AEB60 800B1B60 7C1D19AE */  stbx      r0, r29, r3
/* 0AEB64 800B1B64 38000001 */  li        r0, 0x1
lbl_800B1B68:
/* 0AEB68 800B1B68 7C030378 */  mr        r3, r0
/* 0AEB6C 800B1B6C 80010024 */  lwz       r0, 0x24(r1)
/* 0AEB70 800B1B70 83E1001C */  lwz       r31, 0x1c(r1)
/* 0AEB74 800B1B74 83C10018 */  lwz       r30, 0x18(r1)
/* 0AEB78 800B1B78 83A10014 */  lwz       r29, 0x14(r1)
/* 0AEB7C 800B1B7C 38210020 */  addi      r1, r1, 0x20
/* 0AEB80 800B1B80 7C0803A6 */  mtlr      r0
/* 0AEB84 800B1B84 4E800020 */  blr

glabel DVDReadAsyncPrio
/* 0AEB88 800B1B88 7C0802A6 */  mflr      r0
/* 0AEB8C 800B1B8C 90010004 */  stw       r0, 0x4(r1)
/* 0AEB90 800B1B90 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0AEB94 800B1B94 BF410020 */  stmw      r26, 0x20(r1)
/* 0AEB98 800B1B98 7CDD3379 */  mr.       r29, r6
/* 0AEB9C 800B1B9C 3B430000 */  addi      r26, r3, 0x0
/* 0AEBA0 800B1BA0 3B640000 */  addi      r27, r4, 0x0
/* 0AEBA4 800B1BA4 3B850000 */  addi      r28, r5, 0x0
/* 0AEBA8 800B1BA8 3BC70000 */  addi      r30, r7, 0x0
/* 0AEBAC 800B1BAC 3BE80000 */  addi      r31, r8, 0x0
/* 0AEBB0 800B1BB0 41800010 */  blt       lbl_800B1BC0
/* 0AEBB4 800B1BB4 801A0034 */  lwz       r0, 0x34(r26)
/* 0AEBB8 800B1BB8 7C1D0040 */  cmplw     r29, r0
/* 0AEBBC 800B1BBC 4180001C */  blt       lbl_800B1BD8
lbl_800B1BC0:
/* 0AEBC0 800B1BC0 3C60800F */  lis       r3, D_800F3760@ha
/* 0AEBC4 800B1BC4 4CC63182 */  crclr     cr1eq
/* 0AEBC8 800B1BC8 38A33760 */  addi      r5, r3, D_800F3760@l
/* 0AEBCC 800B1BCC 386D87F8 */  li        r3, D_8018B778@sda21
/* 0AEBD0 800B1BD0 388002E6 */  li        r4, 0x2e6
/* 0AEBD4 800B1BD4 4BFEBFF1 */  bl        OSPanic
lbl_800B1BD8:
/* 0AEBD8 800B1BD8 7C9DE215 */  add.      r4, r29, r28
/* 0AEBDC 800B1BDC 41800014 */  blt       lbl_800B1BF0
/* 0AEBE0 800B1BE0 807A0034 */  lwz       r3, 0x34(r26)
/* 0AEBE4 800B1BE4 38030020 */  addi      r0, r3, 0x20
/* 0AEBE8 800B1BE8 7C040040 */  cmplw     r4, r0
/* 0AEBEC 800B1BEC 4180001C */  blt       lbl_800B1C08
lbl_800B1BF0:
/* 0AEBF0 800B1BF0 3C60800F */  lis       r3, D_800F3760@ha
/* 0AEBF4 800B1BF4 4CC63182 */  crclr     cr1eq
/* 0AEBF8 800B1BF8 38A33760 */  addi      r5, r3, D_800F3760@l
/* 0AEBFC 800B1BFC 386D87F8 */  li        r3, D_8018B778@sda21
/* 0AEC00 800B1C00 388002EC */  li        r4, 0x2ec
/* 0AEC04 800B1C04 4BFEBFC1 */  bl        OSPanic
lbl_800B1C08:
/* 0AEC08 800B1C08 93DA0038 */  stw       r30, 0x38(r26)
/* 0AEC0C 800B1C0C 3C60800B */  lis       r3, cbForReadAsync@ha
/* 0AEC10 800B1C10 38E31C48 */  addi      r7, r3, cbForReadAsync@l
/* 0AEC14 800B1C14 801A0030 */  lwz       r0, 0x30(r26)
/* 0AEC18 800B1C18 387A0000 */  addi      r3, r26, 0x0
/* 0AEC1C 800B1C1C 389B0000 */  addi      r4, r27, 0x0
/* 0AEC20 800B1C20 38BC0000 */  addi      r5, r28, 0x0
/* 0AEC24 800B1C24 391F0000 */  addi      r8, r31, 0x0
/* 0AEC28 800B1C28 7CC0EA14 */  add       r6, r0, r29
/* 0AEC2C 800B1C2C 48001E21 */  bl        fn_800B3A4C
/* 0AEC30 800B1C30 BB410020 */  lmw       r26, 0x20(r1)
/* 0AEC34 800B1C34 38600001 */  li        r3, 0x1
/* 0AEC38 800B1C38 8001003C */  lwz       r0, 0x3c(r1)
/* 0AEC3C 800B1C3C 38210038 */  addi      r1, r1, 0x38
/* 0AEC40 800B1C40 7C0803A6 */  mtlr      r0
/* 0AEC44 800B1C44 4E800020 */  blr

glabel cbForReadAsync
/* 0AEC48 800B1C48 7C0802A6 */  mflr      r0
/* 0AEC4C 800B1C4C 90010004 */  stw       r0, 0x4(r1)
/* 0AEC50 800B1C50 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AEC54 800B1C54 81840038 */  lwz       r12, 0x38(r4)
/* 0AEC58 800B1C58 280C0000 */  cmplwi    r12, 0x0
/* 0AEC5C 800B1C5C 4182000C */  beq       lbl_800B1C68
/* 0AEC60 800B1C60 7D8803A6 */  mtlr      r12
/* 0AEC64 800B1C64 4E800021 */  blrl
lbl_800B1C68:
/* 0AEC68 800B1C68 8001000C */  lwz       r0, 0xc(r1)
/* 0AEC6C 800B1C6C 38210008 */  addi      r1, r1, 0x8
/* 0AEC70 800B1C70 7C0803A6 */  mtlr      r0
/* 0AEC74 800B1C74 4E800020 */  blr

glabel DVDReadPrio
/* 0AEC78 800B1C78 7C0802A6 */  mflr      r0
/* 0AEC7C 800B1C7C 90010004 */  stw       r0, 0x4(r1)
/* 0AEC80 800B1C80 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0AEC84 800B1C84 BF610024 */  stmw      r27, 0x24(r1)
/* 0AEC88 800B1C88 7CDD3379 */  mr.       r29, r6
/* 0AEC8C 800B1C8C 3BE30000 */  addi      r31, r3, 0x0
/* 0AEC90 800B1C90 3B640000 */  addi      r27, r4, 0x0
/* 0AEC94 800B1C94 3B850000 */  addi      r28, r5, 0x0
/* 0AEC98 800B1C98 3BC70000 */  addi      r30, r7, 0x0
/* 0AEC9C 800B1C9C 41800010 */  blt       lbl_800B1CAC
/* 0AECA0 800B1CA0 801F0034 */  lwz       r0, 0x34(r31)
/* 0AECA4 800B1CA4 7C1D0040 */  cmplw     r29, r0
/* 0AECA8 800B1CA8 4180001C */  blt       lbl_800B1CC4
lbl_800B1CAC:
/* 0AECAC 800B1CAC 3C60800F */  lis       r3, D_800F3794@ha
/* 0AECB0 800B1CB0 4CC63182 */  crclr     cr1eq
/* 0AECB4 800B1CB4 38A33794 */  addi      r5, r3, D_800F3794@l
/* 0AECB8 800B1CB8 386D87F8 */  li        r3, D_8018B778@sda21
/* 0AECBC 800B1CBC 3880032C */  li        r4, 0x32c
/* 0AECC0 800B1CC0 4BFEBF05 */  bl        OSPanic
lbl_800B1CC4:
/* 0AECC4 800B1CC4 7C9DE215 */  add.      r4, r29, r28
/* 0AECC8 800B1CC8 41800014 */  blt       lbl_800B1CDC
/* 0AECCC 800B1CCC 807F0034 */  lwz       r3, 0x34(r31)
/* 0AECD0 800B1CD0 38030020 */  addi      r0, r3, 0x20
/* 0AECD4 800B1CD4 7C040040 */  cmplw     r4, r0
/* 0AECD8 800B1CD8 4180001C */  blt       lbl_800B1CF4
lbl_800B1CDC:
/* 0AECDC 800B1CDC 3C60800F */  lis       r3, D_800F3794@ha
/* 0AECE0 800B1CE0 4CC63182 */  crclr     cr1eq
/* 0AECE4 800B1CE4 38A33794 */  addi      r5, r3, D_800F3794@l
/* 0AECE8 800B1CE8 386D87F8 */  li        r3, D_8018B778@sda21
/* 0AECEC 800B1CEC 38800332 */  li        r4, 0x332
/* 0AECF0 800B1CF0 4BFEBED5 */  bl        OSPanic
lbl_800B1CF4:
/* 0AECF4 800B1CF4 801F0030 */  lwz       r0, 0x30(r31)
/* 0AECF8 800B1CF8 3C80800B */  lis       r4, cbForReadSync@ha
/* 0AECFC 800B1CFC 38E41D90 */  addi      r7, r4, cbForReadSync@l
/* 0AED00 800B1D00 387F0000 */  addi      r3, r31, 0x0
/* 0AED04 800B1D04 389B0000 */  addi      r4, r27, 0x0
/* 0AED08 800B1D08 38BC0000 */  addi      r5, r28, 0x0
/* 0AED0C 800B1D0C 391E0000 */  addi      r8, r30, 0x0
/* 0AED10 800B1D10 7CC0EA14 */  add       r6, r0, r29
/* 0AED14 800B1D14 48001D39 */  bl        fn_800B3A4C
/* 0AED18 800B1D18 2C030000 */  cmpwi     r3, 0x0
/* 0AED1C 800B1D1C 4082000C */  bne       lbl_800B1D28
/* 0AED20 800B1D20 3860FFFF */  li        r3, -0x1
/* 0AED24 800B1D24 48000058 */  b         lbl_800B1D7C
lbl_800B1D28:
/* 0AED28 800B1D28 4BFEC521 */  bl        OSDisableInterrupts
/* 0AED2C 800B1D2C 7C7E1B78 */  mr        r30, r3
lbl_800B1D30:
/* 0AED30 800B1D30 801F000C */  lwz       r0, 0xc(r31)
/* 0AED34 800B1D34 2C000000 */  cmpwi     r0, 0x0
/* 0AED38 800B1D38 4082000C */  bne       lbl_800B1D44
/* 0AED3C 800B1D3C 83FF0020 */  lwz       r31, 0x20(r31)
/* 0AED40 800B1D40 48000030 */  b         lbl_800B1D70
lbl_800B1D44:
/* 0AED44 800B1D44 2C00FFFF */  cmpwi     r0, -0x1
/* 0AED48 800B1D48 4082000C */  bne       lbl_800B1D54
/* 0AED4C 800B1D4C 3BE0FFFF */  li        r31, -0x1
/* 0AED50 800B1D50 48000020 */  b         lbl_800B1D70
lbl_800B1D54:
/* 0AED54 800B1D54 2C00000A */  cmpwi     r0, 0xa
/* 0AED58 800B1D58 4082000C */  bne       lbl_800B1D64
/* 0AED5C 800B1D5C 3BE0FFFD */  li        r31, -0x3
/* 0AED60 800B1D60 48000010 */  b         lbl_800B1D70
lbl_800B1D64:
/* 0AED64 800B1D64 386D8CC8 */  li        r3, __DVDThreadQueue@sda21
/* 0AED68 800B1D68 4BFEF4DD */  bl        OSSleepThread
/* 0AED6C 800B1D6C 4BFFFFC4 */  b         lbl_800B1D30
lbl_800B1D70:
/* 0AED70 800B1D70 7FC3F378 */  mr        r3, r30
/* 0AED74 800B1D74 4BFEC4FD */  bl        OSRestoreInterrupts
/* 0AED78 800B1D78 7FE3FB78 */  mr        r3, r31
lbl_800B1D7C:
/* 0AED7C 800B1D7C BB610024 */  lmw       r27, 0x24(r1)
/* 0AED80 800B1D80 8001003C */  lwz       r0, 0x3c(r1)
/* 0AED84 800B1D84 38210038 */  addi      r1, r1, 0x38
/* 0AED88 800B1D88 7C0803A6 */  mtlr      r0
/* 0AED8C 800B1D8C 4E800020 */  blr

glabel cbForReadSync
/* 0AED90 800B1D90 7C0802A6 */  mflr      r0
/* 0AED94 800B1D94 386D8CC8 */  li        r3, __DVDThreadQueue@sda21
/* 0AED98 800B1D98 90010004 */  stw       r0, 0x4(r1)
/* 0AED9C 800B1D9C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AEDA0 800B1DA0 4BFEF591 */  bl        OSWakeupThread
/* 0AEDA4 800B1DA4 8001000C */  lwz       r0, 0xc(r1)
/* 0AEDA8 800B1DA8 38210008 */  addi      r1, r1, 0x8
/* 0AEDAC 800B1DAC 7C0803A6 */  mtlr      r0
/* 0AEDB0 800B1DB0 4E800020 */  blr

# 0x800F3660 - 0x800F37C8
.section .data, "wa"

.balign 8

glabel D_800F3660
	.string "DVDConvertEntrynumToPath(possibly DVDOpen or DVDChangeDir or DVDOpenDir): specified directory or file (%s) doesn't match standard 8.3 format. This is a temporary restriction and will be removed soon\n"

glabel D_800F3728
	.string "Warning: DVDOpen(): file '%s' was not found under %s.\n\000"

glabel D_800F3760
	.string "DVDReadAsync(): specified area is out of the file  "

glabel D_800F3794
	.ascii "DVDRead(): specified area is out of the file  "

glabel gap_05_800F37C2_data
.hidden gap_05_800F37C2_data
	.long 0x00000000
	.2byte 0x0000

# 0x8018B778 - 0x8018B780
.section .sdata, "wa"

glabel D_8018B778
	.string "dvdfs.c"

# 0x8018BC30 - 0x8018BC50
.section .sbss, "wa"

BootInfo:
	.skip 0x4

FstStart:
	.skip 0x4

FstStringStart:
	.skip 0x4

MaxEntryNum:
	.skip 0x4

glabel D_8018BC40
	.skip 0x4

glabel __DVDLongFileNameFlag
	.skip 0x4

glabel __DVDThreadQueue
	.skip 0x8
