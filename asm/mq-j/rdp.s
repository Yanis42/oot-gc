# rdp.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8006F6D0 - 0x80070DD4

glabel rdpEvent
/* 06C6D0 8006F6D0 7C0802A6 */  mflr      r0
/* 06C6D4 8006F6D4 2C040003 */  cmpwi     r4, 0x3
/* 06C6D8 8006F6D8 90010004 */  stw       r0, 0x4(r1)
/* 06C6DC 8006F6DC 9421FFE0 */  stwu      r1, -0x20(r1)
/* 06C6E0 8006F6E0 93E1001C */  stw       r31, 0x1c(r1)
/* 06C6E4 8006F6E4 3BE50000 */  addi      r31, r5, 0x0
/* 06C6E8 8006F6E8 93C10018 */  stw       r30, 0x18(r1)
/* 06C6EC 8006F6EC 3BC30000 */  addi      r30, r3, 0x0
/* 06C6F0 8006F6F0 4182015C */  beq       lbl_8006F84C
/* 06C6F4 8006F6F4 40800018 */  bge       lbl_8006F70C
/* 06C6F8 8006F6F8 2C040002 */  cmpwi     r4, 0x2
/* 06C6FC 8006F6FC 4080001C */  bge       lbl_8006F718
/* 06C700 8006F700 2C040000 */  cmpwi     r4, 0x0
/* 06C704 8006F704 40800148 */  bge       lbl_8006F84C
/* 06C708 8006F708 4800013C */  b         lbl_8006F844
lbl_8006F70C:
/* 06C70C 8006F70C 2C041002 */  cmpwi     r4, 0x1002
/* 06C710 8006F710 41820018 */  beq       lbl_8006F728
/* 06C714 8006F714 48000130 */  b         lbl_8006F844
lbl_8006F718:
/* 06C718 8006F718 93FE0008 */  stw       r31, 0x8(r30)
/* 06C71C 8006F71C 38000000 */  li        r0, 0x0
/* 06C720 8006F720 901E0004 */  stw       r0, 0x4(r30)
/* 06C724 8006F724 48000128 */  b         lbl_8006F84C
lbl_8006F728:
/* 06C728 8006F728 801F0000 */  lwz       r0, 0x0(r31)
/* 06C72C 8006F72C 2C000001 */  cmpwi     r0, 0x1
/* 06C730 8006F730 41820094 */  beq       lbl_8006F7C4
/* 06C734 8006F734 40800118 */  bge       lbl_8006F84C
/* 06C738 8006F738 2C000000 */  cmpwi     r0, 0x0
/* 06C73C 8006F73C 40800008 */  bge       lbl_8006F744
/* 06C740 8006F740 4800010C */  b         lbl_8006F84C
lbl_8006F744:
/* 06C744 8006F744 807E0008 */  lwz       r3, 0x8(r30)
/* 06C748 8006F748 3CA08007 */  lis       r5, rdpPut8@ha
/* 06C74C 8006F74C 3CC08007 */  lis       r6, rdpPut16@ha
/* 06C750 8006F750 3CE08007 */  lis       r7, rdpPut32@ha
/* 06C754 8006F754 80630024 */  lwz       r3, 0x24(r3)
/* 06C758 8006F758 3C808007 */  lis       r4, rdpPut64@ha
/* 06C75C 8006F75C 3904FA28 */  addi      r8, r4, rdpPut64@l
/* 06C760 8006F760 38A5FB3C */  addi      r5, r5, rdpPut8@l
/* 06C764 8006F764 38C6FB34 */  addi      r6, r6, rdpPut16@l
/* 06C768 8006F768 38E7FA30 */  addi      r7, r7, rdpPut32@l
/* 06C76C 8006F76C 389F0000 */  addi      r4, r31, 0x0
/* 06C770 8006F770 4BFC5175 */  bl        cpuSetDevicePut
/* 06C774 8006F774 2C030000 */  cmpwi     r3, 0x0
/* 06C778 8006F778 4082000C */  bne       lbl_8006F784
/* 06C77C 8006F77C 38600000 */  li        r3, 0x0
/* 06C780 8006F780 480000D0 */  b         lbl_8006F850
lbl_8006F784:
/* 06C784 8006F784 807E0008 */  lwz       r3, 0x8(r30)
/* 06C788 8006F788 3CA08007 */  lis       r5, rdpGet8@ha
/* 06C78C 8006F78C 3CC08007 */  lis       r6, rdpGet16@ha
/* 06C790 8006F790 3CE08007 */  lis       r7, rdpGet32@ha
/* 06C794 8006F794 80630024 */  lwz       r3, 0x24(r3)
/* 06C798 8006F798 3C808007 */  lis       r4, rdpGet64@ha
/* 06C79C 8006F79C 3904F96C */  addi      r8, r4, rdpGet64@l
/* 06C7A0 8006F7A0 38A5FA20 */  addi      r5, r5, rdpGet8@l
/* 06C7A4 8006F7A4 38C6FA18 */  addi      r6, r6, rdpGet16@l
/* 06C7A8 8006F7A8 38E7F974 */  addi      r7, r7, rdpGet32@l
/* 06C7AC 8006F7AC 389F0000 */  addi      r4, r31, 0x0
/* 06C7B0 8006F7B0 4BFC514D */  bl        cpuSetDeviceGet
/* 06C7B4 8006F7B4 2C030000 */  cmpwi     r3, 0x0
/* 06C7B8 8006F7B8 40820094 */  bne       lbl_8006F84C
/* 06C7BC 8006F7BC 38600000 */  li        r3, 0x0
/* 06C7C0 8006F7C0 48000090 */  b         lbl_8006F850
lbl_8006F7C4:
/* 06C7C4 8006F7C4 807E0008 */  lwz       r3, 0x8(r30)
/* 06C7C8 8006F7C8 3CA08007 */  lis       r5, rdpPutSpan8@ha
/* 06C7CC 8006F7CC 3CC08007 */  lis       r6, rdpPutSpan16@ha
/* 06C7D0 8006F7D0 3CE08007 */  lis       r7, rdpPutSpan32@ha
/* 06C7D4 8006F7D4 80630024 */  lwz       r3, 0x24(r3)
/* 06C7D8 8006F7D8 3C808007 */  lis       r4, rdpPutSpan64@ha
/* 06C7DC 8006F7DC 3904F8F0 */  addi      r8, r4, rdpPutSpan64@l
/* 06C7E0 8006F7E0 38A5F964 */  addi      r5, r5, rdpPutSpan8@l
/* 06C7E4 8006F7E4 38C6F95C */  addi      r6, r6, rdpPutSpan16@l
/* 06C7E8 8006F7E8 38E7F8F8 */  addi      r7, r7, rdpPutSpan32@l
/* 06C7EC 8006F7EC 389F0000 */  addi      r4, r31, 0x0
/* 06C7F0 8006F7F0 4BFC50F5 */  bl        cpuSetDevicePut
/* 06C7F4 8006F7F4 2C030000 */  cmpwi     r3, 0x0
/* 06C7F8 8006F7F8 4082000C */  bne       lbl_8006F804
/* 06C7FC 8006F7FC 38600000 */  li        r3, 0x0
/* 06C800 8006F800 48000050 */  b         lbl_8006F850
lbl_8006F804:
/* 06C804 8006F804 807E0008 */  lwz       r3, 0x8(r30)
/* 06C808 8006F808 3CA08007 */  lis       r5, rdpGetSpan8@ha
/* 06C80C 8006F80C 3CC08007 */  lis       r6, rdpGetSpan16@ha
/* 06C810 8006F810 3CE08007 */  lis       r7, rdpGetSpan32@ha
/* 06C814 8006F814 80630024 */  lwz       r3, 0x24(r3)
/* 06C818 8006F818 3C808007 */  lis       r4, rdpGetSpan64@ha
/* 06C81C 8006F81C 3904F868 */  addi      r8, r4, rdpGetSpan64@l
/* 06C820 8006F820 38A5F8E8 */  addi      r5, r5, rdpGetSpan8@l
/* 06C824 8006F824 38C6F8E0 */  addi      r6, r6, rdpGetSpan16@l
/* 06C828 8006F828 38E7F870 */  addi      r7, r7, rdpGetSpan32@l
/* 06C82C 8006F82C 389F0000 */  addi      r4, r31, 0x0
/* 06C830 8006F830 4BFC50CD */  bl        cpuSetDeviceGet
/* 06C834 8006F834 2C030000 */  cmpwi     r3, 0x0
/* 06C838 8006F838 40820014 */  bne       lbl_8006F84C
/* 06C83C 8006F83C 38600000 */  li        r3, 0x0
/* 06C840 8006F840 48000010 */  b         lbl_8006F850
lbl_8006F844:
/* 06C844 8006F844 38600000 */  li        r3, 0x0
/* 06C848 8006F848 48000008 */  b         lbl_8006F850
lbl_8006F84C:
/* 06C84C 8006F84C 38600001 */  li        r3, 0x1
lbl_8006F850:
/* 06C850 8006F850 80010024 */  lwz       r0, 0x24(r1)
/* 06C854 8006F854 83E1001C */  lwz       r31, 0x1c(r1)
/* 06C858 8006F858 83C10018 */  lwz       r30, 0x18(r1)
/* 06C85C 8006F85C 7C0803A6 */  mtlr      r0
/* 06C860 8006F860 38210020 */  addi      r1, r1, 0x20
/* 06C864 8006F864 4E800020 */  blr

glabel rdpGetSpan64
/* 06C868 8006F868 38600000 */  li        r3, 0x0
/* 06C86C 8006F86C 4E800020 */  blr

glabel rdpGetSpan32
/* 06C870 8006F870 5480073E */  clrlwi    r0, r4, 28
/* 06C874 8006F874 2800000C */  cmplwi    r0, 0xc
/* 06C878 8006F878 41810058 */  bgt       lbl_8006F8D0
/* 06C87C 8006F87C 3C80800F */  lis       r4, jtbl_800EF41C@ha
/* 06C880 8006F880 3884F41C */  addi      r4, r4, jtbl_800EF41C@l
/* 06C884 8006F884 5400103A */  slwi      r0, r0, 2
/* 06C888 8006F888 7C04002E */  lwzx      r0, r4, r0
/* 06C88C 8006F88C 7C0903A6 */  mtctr     r0
/* 06C890 8006F890 4E800420 */  bctr
lbl_8006F894:
/* 06C894 8006F894 80030000 */  lwz       r0, 0x0(r3)
/* 06C898 8006F898 5400057E */  clrlwi    r0, r0, 21
/* 06C89C 8006F89C 90050000 */  stw       r0, 0x0(r5)
/* 06C8A0 8006F8A0 48000038 */  b         lbl_8006F8D8
lbl_8006F8A4:
/* 06C8A4 8006F8A4 8003000C */  lwz       r0, 0xc(r3)
/* 06C8A8 8006F8A8 540007FE */  clrlwi    r0, r0, 31
/* 06C8AC 8006F8AC 90050000 */  stw       r0, 0x0(r5)
/* 06C8B0 8006F8B0 48000028 */  b         lbl_8006F8D8
lbl_8006F8B4:
/* 06C8B4 8006F8B4 80030014 */  lwz       r0, 0x14(r3)
/* 06C8B8 8006F8B8 5400067E */  clrlwi    r0, r0, 25
/* 06C8BC 8006F8BC 90050000 */  stw       r0, 0x0(r5)
/* 06C8C0 8006F8C0 48000018 */  b         lbl_8006F8D8
lbl_8006F8C4:
/* 06C8C4 8006F8C4 80030010 */  lwz       r0, 0x10(r3)
/* 06C8C8 8006F8C8 90050000 */  stw       r0, 0x0(r5)
/* 06C8CC 8006F8CC 4800000C */  b         lbl_8006F8D8
lbl_8006F8D0:
/* 06C8D0 8006F8D0 38600000 */  li        r3, 0x0
/* 06C8D4 8006F8D4 4E800020 */  blr
lbl_8006F8D8:
/* 06C8D8 8006F8D8 38600001 */  li        r3, 0x1
/* 06C8DC 8006F8DC 4E800020 */  blr

glabel rdpGetSpan16
/* 06C8E0 8006F8E0 38600000 */  li        r3, 0x0
/* 06C8E4 8006F8E4 4E800020 */  blr

glabel rdpGetSpan8
/* 06C8E8 8006F8E8 38600000 */  li        r3, 0x0
/* 06C8EC 8006F8EC 4E800020 */  blr

glabel rdpPutSpan64
/* 06C8F0 8006F8F0 38600000 */  li        r3, 0x0
/* 06C8F4 8006F8F4 4E800020 */  blr

glabel rdpPutSpan32
/* 06C8F8 8006F8F8 5480073E */  clrlwi    r0, r4, 28
/* 06C8FC 8006F8FC 2800000C */  cmplwi    r0, 0xc
/* 06C900 8006F900 41810054 */  bgt       lbl_8006F954
/* 06C904 8006F904 3C80800F */  lis       r4, jtbl_800EF450@ha
/* 06C908 8006F908 3884F450 */  addi      r4, r4, jtbl_800EF450@l
/* 06C90C 8006F90C 5400103A */  slwi      r0, r0, 2
/* 06C910 8006F910 7C04002E */  lwzx      r0, r4, r0
/* 06C914 8006F914 7C0903A6 */  mtctr     r0
/* 06C918 8006F918 4E800420 */  bctr
lbl_8006F91C:
/* 06C91C 8006F91C 80050000 */  lwz       r0, 0x0(r5)
/* 06C920 8006F920 5400057E */  clrlwi    r0, r0, 21
/* 06C924 8006F924 90030000 */  stw       r0, 0x0(r3)
/* 06C928 8006F928 4800002C */  b         lbl_8006F954
lbl_8006F92C:
/* 06C92C 8006F92C 80050000 */  lwz       r0, 0x0(r5)
/* 06C930 8006F930 540007FE */  clrlwi    r0, r0, 31
/* 06C934 8006F934 9003000C */  stw       r0, 0xc(r3)
/* 06C938 8006F938 4800001C */  b         lbl_8006F954
lbl_8006F93C:
/* 06C93C 8006F93C 80050000 */  lwz       r0, 0x0(r5)
/* 06C940 8006F940 5400067E */  clrlwi    r0, r0, 25
/* 06C944 8006F944 90030014 */  stw       r0, 0x14(r3)
/* 06C948 8006F948 4800000C */  b         lbl_8006F954
lbl_8006F94C:
/* 06C94C 8006F94C 80050000 */  lwz       r0, 0x0(r5)
/* 06C950 8006F950 90030010 */  stw       r0, 0x10(r3)
lbl_8006F954:
/* 06C954 8006F954 38600001 */  li        r3, 0x1
/* 06C958 8006F958 4E800020 */  blr

glabel rdpPutSpan16
/* 06C95C 8006F95C 38600000 */  li        r3, 0x0
/* 06C960 8006F960 4E800020 */  blr

glabel rdpPutSpan8
/* 06C964 8006F964 38600000 */  li        r3, 0x0
/* 06C968 8006F968 4E800020 */  blr

glabel rdpGet64
/* 06C96C 8006F96C 38600000 */  li        r3, 0x0
/* 06C970 8006F970 4E800020 */  blr

glabel rdpGet32
/* 06C974 8006F974 548006FE */  clrlwi    r0, r4, 27
/* 06C978 8006F978 2800001C */  cmplwi    r0, 0x1c
/* 06C97C 8006F97C 4181008C */  bgt       lbl_8006FA08
/* 06C980 8006F980 3C80800F */  lis       r4, jtbl_800EF484@ha
/* 06C984 8006F984 3884F484 */  addi      r4, r4, jtbl_800EF484@l
/* 06C988 8006F988 5400103A */  slwi      r0, r0, 2
/* 06C98C 8006F98C 7C04002E */  lwzx      r0, r4, r0
/* 06C990 8006F990 7C0903A6 */  mtctr     r0
/* 06C994 8006F994 4E800420 */  bctr
lbl_8006F998:
/* 06C998 8006F998 80030018 */  lwz       r0, 0x18(r3)
/* 06C99C 8006F99C 90050000 */  stw       r0, 0x0(r5)
/* 06C9A0 8006F9A0 48000070 */  b         lbl_8006FA10
lbl_8006F9A4:
/* 06C9A4 8006F9A4 8003001C */  lwz       r0, 0x1c(r3)
/* 06C9A8 8006F9A8 90050000 */  stw       r0, 0x0(r5)
/* 06C9AC 8006F9AC 48000064 */  b         lbl_8006FA10
lbl_8006F9B0:
/* 06C9B0 8006F9B0 8003001C */  lwz       r0, 0x1c(r3)
/* 06C9B4 8006F9B4 90050000 */  stw       r0, 0x0(r5)
/* 06C9B8 8006F9B8 48000058 */  b         lbl_8006FA10
lbl_8006F9BC:
/* 06C9BC 8006F9BC 80030004 */  lwz       r0, 0x4(r3)
/* 06C9C0 8006F9C0 90050000 */  stw       r0, 0x0(r5)
/* 06C9C4 8006F9C4 4800004C */  b         lbl_8006FA10
lbl_8006F9C8:
/* 06C9C8 8006F9C8 80030020 */  lwz       r0, 0x20(r3)
/* 06C9CC 8006F9CC 5400023E */  clrlwi    r0, r0, 8
/* 06C9D0 8006F9D0 90050000 */  stw       r0, 0x0(r5)
/* 06C9D4 8006F9D4 4800003C */  b         lbl_8006FA10
lbl_8006F9D8:
/* 06C9D8 8006F9D8 80030024 */  lwz       r0, 0x24(r3)
/* 06C9DC 8006F9DC 5400023E */  clrlwi    r0, r0, 8
/* 06C9E0 8006F9E0 90050000 */  stw       r0, 0x0(r5)
/* 06C9E4 8006F9E4 4800002C */  b         lbl_8006FA10
lbl_8006F9E8:
/* 06C9E8 8006F9E8 80030028 */  lwz       r0, 0x28(r3)
/* 06C9EC 8006F9EC 5400023E */  clrlwi    r0, r0, 8
/* 06C9F0 8006F9F0 90050000 */  stw       r0, 0x0(r5)
/* 06C9F4 8006F9F4 4800001C */  b         lbl_8006FA10
lbl_8006F9F8:
/* 06C9F8 8006F9F8 8003002C */  lwz       r0, 0x2c(r3)
/* 06C9FC 8006F9FC 5400023E */  clrlwi    r0, r0, 8
/* 06CA00 8006FA00 90050000 */  stw       r0, 0x0(r5)
/* 06CA04 8006FA04 4800000C */  b         lbl_8006FA10
lbl_8006FA08:
/* 06CA08 8006FA08 38600000 */  li        r3, 0x0
/* 06CA0C 8006FA0C 4E800020 */  blr
lbl_8006FA10:
/* 06CA10 8006FA10 38600001 */  li        r3, 0x1
/* 06CA14 8006FA14 4E800020 */  blr

glabel rdpGet16
/* 06CA18 8006FA18 38600000 */  li        r3, 0x0
/* 06CA1C 8006FA1C 4E800020 */  blr

glabel rdpGet8
/* 06CA20 8006FA20 38600000 */  li        r3, 0x0
/* 06CA24 8006FA24 4E800020 */  blr

glabel rdpPut64
/* 06CA28 8006FA28 38600000 */  li        r3, 0x0
/* 06CA2C 8006FA2C 4E800020 */  blr

glabel rdpPut32
/* 06CA30 8006FA30 7C0802A6 */  mflr      r0
/* 06CA34 8006FA34 90010004 */  stw       r0, 0x4(r1)
/* 06CA38 8006FA38 548006FE */  clrlwi    r0, r4, 27
/* 06CA3C 8006FA3C 2800001C */  cmplwi    r0, 0x1c
/* 06CA40 8006FA40 9421FFF8 */  stwu      r1, -0x8(r1)
/* 06CA44 8006FA44 418100D4 */  bgt       lbl_8006FB18
/* 06CA48 8006FA48 3C80800F */  lis       r4, jtbl_800EF4F8@ha
/* 06CA4C 8006FA4C 3884F4F8 */  addi      r4, r4, jtbl_800EF4F8@l
/* 06CA50 8006FA50 5400103A */  slwi      r0, r0, 2
/* 06CA54 8006FA54 7C04002E */  lwzx      r0, r4, r0
/* 06CA58 8006FA58 7C0903A6 */  mtctr     r0
/* 06CA5C 8006FA5C 4E800420 */  bctr
lbl_8006FA60:
/* 06CA60 8006FA60 80050000 */  lwz       r0, 0x0(r5)
/* 06CA64 8006FA64 5400023E */  clrlwi    r0, r0, 8
/* 06CA68 8006FA68 90030018 */  stw       r0, 0x18(r3)
/* 06CA6C 8006FA6C 480000B4 */  b         lbl_8006FB20
lbl_8006FA70:
/* 06CA70 8006FA70 80050000 */  lwz       r0, 0x0(r5)
/* 06CA74 8006FA74 38801000 */  li        r4, 0x1000
/* 06CA78 8006FA78 38A0000A */  li        r5, 0xa
/* 06CA7C 8006FA7C 5400023E */  clrlwi    r0, r0, 8
/* 06CA80 8006FA80 9003001C */  stw       r0, 0x1c(r3)
/* 06CA84 8006FA84 80630008 */  lwz       r3, 0x8(r3)
/* 06CA88 8006FA88 4BF98145 */  bl        xlObjectEvent
/* 06CA8C 8006FA8C 48000094 */  b         lbl_8006FB20
lbl_8006FA90:
/* 06CA90 8006FA90 80850000 */  lwz       r4, 0x0(r5)
/* 06CA94 8006FA94 548007FF */  clrlwi.   r0, r4, 31
/* 06CA98 8006FA98 548405BE */  clrlwi    r4, r4, 22
/* 06CA9C 8006FA9C 41820010 */  beq       lbl_8006FAAC
/* 06CAA0 8006FAA0 80030004 */  lwz       r0, 0x4(r3)
/* 06CAA4 8006FAA4 5400003C */  clrrwi    r0, r0, 1
/* 06CAA8 8006FAA8 90030004 */  stw       r0, 0x4(r3)
lbl_8006FAAC:
/* 06CAAC 8006FAAC 548006F7 */  rlwinm.   r0, r4, 0, 27, 27
/* 06CAB0 8006FAB0 41820010 */  beq       lbl_8006FAC0
/* 06CAB4 8006FAB4 80030004 */  lwz       r0, 0x4(r3)
/* 06CAB8 8006FAB8 540007B8 */  rlwinm    r0, r0, 0, 30, 28
/* 06CABC 8006FABC 90030004 */  stw       r0, 0x4(r3)
lbl_8006FAC0:
/* 06CAC0 8006FAC0 548006B5 */  rlwinm.   r0, r4, 0, 26, 26
/* 06CAC4 8006FAC4 41820010 */  beq       lbl_8006FAD4
/* 06CAC8 8006FAC8 80030004 */  lwz       r0, 0x4(r3)
/* 06CACC 8006FACC 60000004 */  ori       r0, r0, 0x4
/* 06CAD0 8006FAD0 90030004 */  stw       r0, 0x4(r3)
lbl_8006FAD4:
/* 06CAD4 8006FAD4 54800673 */  rlwinm.   r0, r4, 0, 25, 25
/* 06CAD8 8006FAD8 4182000C */  beq       lbl_8006FAE4
/* 06CADC 8006FADC 38000000 */  li        r0, 0x0
/* 06CAE0 8006FAE0 9003002C */  stw       r0, 0x2c(r3)
lbl_8006FAE4:
/* 06CAE4 8006FAE4 54800631 */  rlwinm.   r0, r4, 0, 24, 24
/* 06CAE8 8006FAE8 4182000C */  beq       lbl_8006FAF4
/* 06CAEC 8006FAEC 38000000 */  li        r0, 0x0
/* 06CAF0 8006FAF0 90030028 */  stw       r0, 0x28(r3)
lbl_8006FAF4:
/* 06CAF4 8006FAF4 548005EF */  rlwinm.   r0, r4, 0, 23, 23
/* 06CAF8 8006FAF8 4182000C */  beq       lbl_8006FB04
/* 06CAFC 8006FAFC 38000000 */  li        r0, 0x0
/* 06CB00 8006FB00 90030024 */  stw       r0, 0x24(r3)
lbl_8006FB04:
/* 06CB04 8006FB04 548005AD */  rlwinm.   r0, r4, 0, 22, 22
/* 06CB08 8006FB08 41820018 */  beq       lbl_8006FB20
/* 06CB0C 8006FB0C 38000000 */  li        r0, 0x0
/* 06CB10 8006FB10 90030020 */  stw       r0, 0x20(r3)
/* 06CB14 8006FB14 4800000C */  b         lbl_8006FB20
lbl_8006FB18:
/* 06CB18 8006FB18 38600000 */  li        r3, 0x0
/* 06CB1C 8006FB1C 48000008 */  b         lbl_8006FB24
lbl_8006FB20:
/* 06CB20 8006FB20 38600001 */  li        r3, 0x1
lbl_8006FB24:
/* 06CB24 8006FB24 8001000C */  lwz       r0, 0xc(r1)
/* 06CB28 8006FB28 38210008 */  addi      r1, r1, 0x8
/* 06CB2C 8006FB2C 7C0803A6 */  mtlr      r0
/* 06CB30 8006FB30 4E800020 */  blr

glabel rdpPut16
/* 06CB34 8006FB34 38600000 */  li        r3, 0x0
/* 06CB38 8006FB38 4E800020 */  blr

glabel rdpPut8
/* 06CB3C 8006FB3C 38600000 */  li        r3, 0x0
/* 06CB40 8006FB40 4E800020 */  blr

glabel rdpParseGBI
/* 06CB44 8006FB44 7C0802A6 */  mflr      r0
/* 06CB48 8006FB48 90010004 */  stw       r0, 0x4(r1)
/* 06CB4C 8006FB4C 9421FEE0 */  stwu      r1, -0x120(r1)
/* 06CB50 8006FB50 DBE10118 */  stfd      f31, 0x118(r1)
/* 06CB54 8006FB54 DBC10110 */  stfd      f30, 0x110(r1)
/* 06CB58 8006FB58 DBA10108 */  stfd      f29, 0x108(r1)
/* 06CB5C 8006FB5C DB810100 */  stfd      f28, 0x100(r1)
/* 06CB60 8006FB60 BF2100E4 */  stmw      r25, 0xe4(r1)
/* 06CB64 8006FB64 7C9A2378 */  mr        r26, r4
/* 06CB68 8006FB68 7C791B78 */  mr        r25, r3
/* 06CB6C 8006FB6C 80040000 */  lwz       r0, 0x0(r4)
/* 06CB70 8006FB70 9001009C */  stw       r0, 0x9c(r1)
/* 06CB74 8006FB74 80A1009C */  lwz       r5, 0x9c(r1)
/* 06CB78 8006FB78 80830008 */  lwz       r4, 0x8(r3)
/* 06CB7C 8006FB7C 80650000 */  lwz       r3, 0x0(r5)
/* 06CB80 8006FB80 38050008 */  addi      r0, r5, 0x8
/* 06CB84 8006FB84 83C40000 */  lwz       r30, 0x0(r4)
/* 06CB88 8006FB88 90610094 */  stw       r3, 0x94(r1)
/* 06CB8C 8006FB8C 80650004 */  lwz       r3, 0x4(r5)
/* 06CB90 8006FB90 90610098 */  stw       r3, 0x98(r1)
/* 06CB94 8006FB94 9001009C */  stw       r0, 0x9c(r1)
/* 06CB98 8006FB98 901A0000 */  stw       r0, 0x0(r26)
/* 06CB9C 8006FB9C 8001009C */  lwz       r0, 0x9c(r1)
/* 06CBA0 8006FBA0 901E0078 */  stw       r0, 0x78(r30)
/* 06CBA4 8006FBA4 80A10094 */  lwz       r5, 0x94(r1)
/* 06CBA8 8006FBA8 54A7463E */  srwi      r7, r5, 24
/* 06CBAC 8006FBAC 3807FF40 */  subi      r0, r7, 0xc0
/* 06CBB0 8006FBB0 2800003F */  cmplwi    r0, 0x3f
/* 06CBB4 8006FBB4 418111F0 */  bgt       lbl_80070DA4
/* 06CBB8 8006FBB8 3C60800F */  lis       r3, jtbl_800EF56C@ha
/* 06CBBC 8006FBBC 3863F56C */  addi      r3, r3, jtbl_800EF56C@l
/* 06CBC0 8006FBC0 5400103A */  slwi      r0, r0, 2
/* 06CBC4 8006FBC4 7C03002E */  lwzx      r0, r3, r0
/* 06CBC8 8006FBC8 7C0903A6 */  mtctr     r0
/* 06CBCC 8006FBCC 4E800420 */  bctr
lbl_8006FBD0:
/* 06CBD0 8006FBD0 54A05F7E */  extrwi    r0, r5, 3, 8
/* 06CBD4 8006FBD4 901E010C */  stw       r0, 0x10c(r30)
/* 06CBD8 8006FBD8 3B7E0104 */  addi      r27, r30, 0x104
/* 06CBDC 8006FBDC 389B000C */  addi      r4, r27, 0xc
/* 06CBE0 8006FBE0 80010094 */  lwz       r0, 0x94(r1)
/* 06CBE4 8006FBE4 3BE00000 */  li        r31, 0x0
/* 06CBE8 8006FBE8 3B800000 */  li        r28, 0x0
/* 06CBEC 8006FBEC 54006FBE */  extrwi    r0, r0, 2, 11
/* 06CBF0 8006FBF0 901E0104 */  stw       r0, 0x104(r30)
/* 06CBF4 8006FBF4 38C00000 */  li        r6, 0x0
/* 06CBF8 8006FBF8 80010094 */  lwz       r0, 0x94(r1)
/* 06CBFC 8006FBFC 5403053E */  clrlwi    r3, r0, 20
/* 06CC00 8006FC00 38030001 */  addi      r0, r3, 0x1
/* 06CC04 8006FC04 901E0108 */  stw       r0, 0x108(r30)
/* 06CC08 8006FC08 80E10098 */  lwz       r7, 0x98(r1)
/* 06CC0C 8006FC0C 80B90008 */  lwz       r5, 0x8(r25)
/* 06CC10 8006FC10 54E356BA */  rlwinm    r3, r7, 10, 26, 29
/* 06CC14 8006FC14 80A50034 */  lwz       r5, 0x34(r5)
/* 06CC18 8006FC18 38033928 */  addi      r0, r3, 0x3928
/* 06CC1C 8006FC1C 7C65002E */  lwzx      r3, r5, r0
/* 06CC20 8006FC20 54E0023E */  clrlwi    r0, r7, 8
/* 06CC24 8006FC24 7FA30214 */  add       r29, r3, r0
/* 06CC28 8006FC28 93BE0114 */  stw       r29, 0x114(r30)
/* 06CC2C 8006FC2C 7FA5EB78 */  mr        r5, r29
/* 06CC30 8006FC30 80790008 */  lwz       r3, 0x8(r25)
/* 06CC34 8006FC34 8063002C */  lwz       r3, 0x2c(r3)
/* 06CC38 8006FC38 4BFFCCD9 */  bl        ramGetBuffer
/* 06CC3C 8006FC3C 2C030000 */  cmpwi     r3, 0x0
/* 06CC40 8006FC40 4082000C */  bne       lbl_8006FC4C
/* 06CC44 8006FC44 38600000 */  li        r3, 0x0
/* 06CC48 8006FC48 48001168 */  b         lbl_80070DB0
lbl_8006FC4C:
/* 06CC4C 8006FC4C 387E0000 */  addi      r3, r30, 0x0
/* 06CC50 8006FC50 38800003 */  li        r4, 0x3
/* 06CC54 8006FC54 4BFAD955 */  bl        frameSetBuffer
/* 06CC58 8006FC58 2C030000 */  cmpwi     r3, 0x0
/* 06CC5C 8006FC5C 4082000C */  bne       lbl_8006FC68
/* 06CC60 8006FC60 38600000 */  li        r3, 0x0
/* 06CC64 8006FC64 4800114C */  b         lbl_80070DB0
lbl_8006FC68:
/* 06CC68 8006FC68 A09E0020 */  lhz       r4, 0x20(r30)
/* 06CC6C 8006FC6C 387E0000 */  addi      r3, r30, 0x0
/* 06CC70 8006FC70 38A00000 */  li        r5, 0x0
/* 06CC74 8006FC74 48000020 */  b         lbl_8006FC94
lbl_8006FC78:
/* 06CC78 8006FC78 80030000 */  lwz       r0, 0x0(r3)
/* 06CC7C 8006FC7C 7C1D0040 */  cmplw     r29, r0
/* 06CC80 8006FC80 4082000C */  bne       lbl_8006FC8C
/* 06CC84 8006FC84 3BE00001 */  li        r31, 0x1
/* 06CC88 8006FC88 4800001C */  b         lbl_8006FCA4
lbl_8006FC8C:
/* 06CC8C 8006FC8C 38630004 */  addi      r3, r3, 0x4
/* 06CC90 8006FC90 38A50001 */  addi      r5, r5, 0x1
lbl_8006FC94:
/* 06CC94 8006FC94 7C052000 */  cmpw      r5, r4
/* 06CC98 8006FC98 4080000C */  bge       lbl_8006FCA4
/* 06CC9C 8006FC9C 2C050008 */  cmpwi     r5, 0x8
/* 06CCA0 8006FCA0 4180FFD8 */  blt       lbl_8006FC78
lbl_8006FCA4:
/* 06CCA4 8006FCA4 2C1F0000 */  cmpwi     r31, 0x0
/* 06CCA8 8006FCA8 40820018 */  bne       lbl_8006FCC0
/* 06CCAC 8006FCAC 54A0103A */  slwi      r0, r5, 2
/* 06CCB0 8006FCB0 7FBE012E */  stwx      r29, r30, r0
/* 06CCB4 8006FCB4 A07E0020 */  lhz       r3, 0x20(r30)
/* 06CCB8 8006FCB8 38030001 */  addi      r0, r3, 0x1
/* 06CCBC 8006FCBC B01E0020 */  sth       r0, 0x20(r30)
lbl_8006FCC0:
/* 06CCC0 8006FCC0 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 06CCC4 8006FCC4 80030020 */  lwz       r0, 0x20(r3)
/* 06CCC8 8006FCC8 2C000007 */  cmpwi     r0, 0x7
/* 06CCCC 8006FCCC 41820258 */  beq       lbl_8006FF24
/* 06CCD0 8006FCD0 4080001C */  bge       lbl_8006FCEC
/* 06CCD4 8006FCD4 2C000005 */  cmpwi     r0, 0x5
/* 06CCD8 8006FCD8 41820048 */  beq       lbl_8006FD20
/* 06CCDC 8006FCDC 408010D0 */  bge       lbl_80070DAC
/* 06CCE0 8006FCE0 2C000004 */  cmpwi     r0, 0x4
/* 06CCE4 8006FCE4 40800014 */  bge       lbl_8006FCF8
/* 06CCE8 8006FCE8 480010C4 */  b         lbl_80070DAC
lbl_8006FCEC:
/* 06CCEC 8006FCEC 2C00000B */  cmpwi     r0, 0xb
/* 06CCF0 8006FCF0 4182026C */  beq       lbl_8006FF5C
/* 06CCF4 8006FCF4 480010B8 */  b         lbl_80070DAC
lbl_8006FCF8:
/* 06CCF8 8006FCF8 80A1009C */  lwz       r5, 0x9c(r1)
/* 06CCFC 8006FCFC 7FC3F378 */  mr        r3, r30
/* 06CD00 8006FD00 80C10098 */  lwz       r6, 0x98(r1)
/* 06CD04 8006FD04 7F64DB78 */  mr        r4, r27
/* 06CD08 8006FD08 80E10094 */  lwz       r7, 0x94(r1)
/* 06CD0C 8006FD0C 4BFB3551 */  bl        frameHackCIMG_Zelda
/* 06CD10 8006FD10 2C030000 */  cmpwi     r3, 0x0
/* 06CD14 8006FD14 40821098 */  bne       lbl_80070DAC
/* 06CD18 8006FD18 38600000 */  li        r3, 0x0
/* 06CD1C 8006FD1C 48001094 */  b         lbl_80070DB0
lbl_8006FD20:
/* 06CD20 8006FD20 3C1DFFBE */  subis     r0, r29, 0x42
/* 06CD24 8006FD24 2800EEC0 */  cmplwi    r0, 0xeec0
/* 06CD28 8006FD28 41820018 */  beq       lbl_8006FD40
/* 06CD2C 8006FD2C 3C1DFFC6 */  subis     r0, r29, 0x3a
/* 06CD30 8006FD30 28009480 */  cmplwi    r0, 0x9480
/* 06CD34 8006FD34 4182000C */  beq       lbl_8006FD40
/* 06CD38 8006FD38 280092C0 */  cmplwi    r0, 0x92c0
/* 06CD3C 8006FD3C 4082000C */  bne       lbl_8006FD48
lbl_8006FD40:
/* 06CD40 8006FD40 800D8A80 */  lwz       r0, D_8018BA00@sda21(r0)
/* 06CD44 8006FD44 900D8A84 */  stw       r0, D_8018BA04@sda21(r0)
lbl_8006FD48:
/* 06CD48 8006FD48 3C1DFF88 */  subis     r0, r29, 0x78
/* 06CD4C 8006FD4C 28000000 */  cmplwi    r0, 0x0
/* 06CD50 8006FD50 4082000C */  bne       lbl_8006FD5C
/* 06CD54 8006FD54 800D8A80 */  lwz       r0, D_8018BA00@sda21(r0)
/* 06CD58 8006FD58 900D8A88 */  stw       r0, D_8018BA08@sda21(r0)
lbl_8006FD5C:
/* 06CD5C 8006FD5C 3C1DFFC0 */  subis     r0, r29, 0x40
/* 06CD60 8006FD60 280096C0 */  cmplwi    r0, 0x96c0
/* 06CD64 8006FD64 41820034 */  beq       lbl_8006FD98
/* 06CD68 8006FD68 3C1DFFC8 */  subis     r0, r29, 0x38
/* 06CD6C 8006FD6C 28003C80 */  cmplwi    r0, 0x3c80
/* 06CD70 8006FD70 41820028 */  beq       lbl_8006FD98
/* 06CD74 8006FD74 28003AC0 */  cmplwi    r0, 0x3ac0
/* 06CD78 8006FD78 41820020 */  beq       lbl_8006FD98
/* 06CD7C 8006FD7C 801E0038 */  lwz       r0, 0x38(r30)
/* 06CD80 8006FD80 2C000000 */  cmpwi     r0, 0x0
/* 06CD84 8006FD84 41820014 */  beq       lbl_8006FD98
/* 06CD88 8006FD88 806D8A8C */  lwz       r3, D_8018BA0C@sda21(r0)
/* 06CD8C 8006FD8C 38030001 */  addi      r0, r3, 0x1
/* 06CD90 8006FD90 900D8A8C */  stw       r0, D_8018BA0C@sda21(r0)
/* 06CD94 8006FD94 48000010 */  b         lbl_8006FDA4
lbl_8006FD98:
/* 06CD98 8006FD98 38000000 */  li        r0, 0x0
/* 06CD9C 8006FD9C 900D8A8C */  stw       r0, D_8018BA0C@sda21(r0)
/* 06CDA0 8006FDA0 901E0038 */  stw       r0, 0x38(r30)
lbl_8006FDA4:
/* 06CDA4 8006FDA4 3C1DFFC0 */  subis     r0, r29, 0x40
/* 06CDA8 8006FDA8 280096C0 */  cmplwi    r0, 0x96c0
/* 06CDAC 8006FDAC 41820018 */  beq       lbl_8006FDC4
/* 06CDB0 8006FDB0 3C1DFFC8 */  subis     r0, r29, 0x38
/* 06CDB4 8006FDB4 28003C80 */  cmplwi    r0, 0x3c80
/* 06CDB8 8006FDB8 4182000C */  beq       lbl_8006FDC4
/* 06CDBC 8006FDBC 28003AC0 */  cmplwi    r0, 0x3ac0
/* 06CDC0 8006FDC0 40820018 */  bne       lbl_8006FDD8
lbl_8006FDC4:
/* 06CDC4 8006FDC4 800D8A80 */  lwz       r0, D_8018BA00@sda21(r0)
/* 06CDC8 8006FDC8 900D8A90 */  stw       r0, D_8018BA10@sda21(r0)
/* 06CDCC 8006FDCC 807E0060 */  lwz       r3, 0x60(r30)
/* 06CDD0 8006FDD0 38030001 */  addi      r0, r3, 0x1
/* 06CDD4 8006FDD4 901E0060 */  stw       r0, 0x60(r30)
lbl_8006FDD8:
/* 06CDD8 8006FDD8 3C1DFF88 */  subis     r0, r29, 0x78
/* 06CDDC 8006FDDC 28004600 */  cmplwi    r0, 0x4600
/* 06CDE0 8006FDE0 4082007C */  bne       lbl_8006FE5C
/* 06CDE4 8006FDE4 80C1009C */  lwz       r6, 0x9c(r1)
/* 06CDE8 8006FDE8 3C60800F */  lis       r3, D_800EF410@ha
/* 06CDEC 8006FDEC 3883F410 */  addi      r4, r3, D_800EF410@l
/* 06CDF0 8006FDF0 80660000 */  lwz       r3, 0x0(r6)
/* 06CDF4 8006FDF4 38E00000 */  li        r7, 0x0
/* 06CDF8 8006FDF8 80040000 */  lwz       r0, 0x0(r4)
/* 06CDFC 8006FDFC 7C030040 */  cmplw     r3, r0
/* 06CE00 8006FE00 40820034 */  bne       lbl_8006FE34
/* 06CE04 8006FE04 84040004 */  lwzu      r0, 0x4(r4)
/* 06CE08 8006FE08 38A60004 */  addi      r5, r6, 0x4
/* 06CE0C 8006FE0C 80660004 */  lwz       r3, 0x4(r6)
/* 06CE10 8006FE10 38E00001 */  li        r7, 0x1
/* 06CE14 8006FE14 7C030040 */  cmplw     r3, r0
/* 06CE18 8006FE18 4082001C */  bne       lbl_8006FE34
/* 06CE1C 8006FE1C 80040004 */  lwz       r0, 0x4(r4)
/* 06CE20 8006FE20 38E00002 */  li        r7, 0x2
/* 06CE24 8006FE24 80650004 */  lwz       r3, 0x4(r5)
/* 06CE28 8006FE28 7C030040 */  cmplw     r3, r0
/* 06CE2C 8006FE2C 40820008 */  bne       lbl_8006FE34
/* 06CE30 8006FE30 38E00003 */  li        r7, 0x3
lbl_8006FE34:
/* 06CE34 8006FE34 2C070003 */  cmpwi     r7, 0x3
/* 06CE38 8006FE38 40820010 */  bne       lbl_8006FE48
/* 06CE3C 8006FE3C 38000001 */  li        r0, 0x1
/* 06CE40 8006FE40 901E0048 */  stw       r0, 0x48(r30)
/* 06CE44 8006FE44 3B800001 */  li        r28, 0x1
lbl_8006FE48:
/* 06CE48 8006FE48 80660000 */  lwz       r3, 0x0(r6)
/* 06CE4C 8006FE4C 3C030270 */  addis     r0, r3, 0x270
/* 06CE50 8006FE50 28000000 */  cmplwi    r0, 0x0
/* 06CE54 8006FE54 40820008 */  bne       lbl_8006FE5C
/* 06CE58 8006FE58 3B800001 */  li        r28, 0x1
lbl_8006FE5C:
/* 06CE5C 8006FE5C 800D8A8C */  lwz       r0, D_8018BA0C@sda21(r0)
/* 06CE60 8006FE60 2C00000B */  cmpwi     r0, 0xb
/* 06CE64 8006FE64 4081000C */  ble       lbl_8006FE70
/* 06CE68 8006FE68 38000001 */  li        r0, 0x1
/* 06CE6C 8006FE6C 901E0034 */  stw       r0, 0x34(r30)
lbl_8006FE70:
/* 06CE70 8006FE70 806D8A88 */  lwz       r3, D_8018BA08@sda21(r0)
/* 06CE74 8006FE74 800D8A80 */  lwz       r0, D_8018BA00@sda21(r0)
/* 06CE78 8006FE78 7C030050 */  subf      r0, r3, r0
/* 06CE7C 8006FE7C 2C00000B */  cmpwi     r0, 0xb
/* 06CE80 8006FE80 40800010 */  bge       lbl_8006FE90
/* 06CE84 8006FE84 38000001 */  li        r0, 0x1
/* 06CE88 8006FE88 901E003C */  stw       r0, 0x3c(r30)
/* 06CE8C 8006FE8C 4800000C */  b         lbl_8006FE98
lbl_8006FE90:
/* 06CE90 8006FE90 38000000 */  li        r0, 0x0
/* 06CE94 8006FE94 901E003C */  stw       r0, 0x3c(r30)
lbl_8006FE98:
/* 06CE98 8006FE98 806D8A84 */  lwz       r3, D_8018BA04@sda21(r0)
/* 06CE9C 8006FE9C 800D8A80 */  lwz       r0, D_8018BA00@sda21(r0)
/* 06CEA0 8006FEA0 7C030050 */  subf      r0, r3, r0
/* 06CEA4 8006FEA4 2C00000B */  cmpwi     r0, 0xb
/* 06CEA8 8006FEA8 40800010 */  bge       lbl_8006FEB8
/* 06CEAC 8006FEAC 38000001 */  li        r0, 0x1
/* 06CEB0 8006FEB0 901E0024 */  stw       r0, 0x24(r30)
/* 06CEB4 8006FEB4 4800000C */  b         lbl_8006FEC0
lbl_8006FEB8:
/* 06CEB8 8006FEB8 38000000 */  li        r0, 0x0
/* 06CEBC 8006FEBC 901E0024 */  stw       r0, 0x24(r30)
lbl_8006FEC0:
/* 06CEC0 8006FEC0 80CD8A80 */  lwz       r6, D_8018BA00@sda21(r0)
/* 06CEC4 8006FEC4 7FC3F378 */  mr        r3, r30
/* 06CEC8 8006FEC8 80A1009C */  lwz       r5, 0x9c(r1)
/* 06CECC 8006FECC 389B0000 */  addi      r4, r27, 0x0
/* 06CED0 8006FED0 38060001 */  addi      r0, r6, 0x1
/* 06CED4 8006FED4 900D8A80 */  stw       r0, D_8018BA00@sda21(r0)
/* 06CED8 8006FED8 80C10098 */  lwz       r6, 0x98(r1)
/* 06CEDC 8006FEDC 80E10094 */  lwz       r7, 0x94(r1)
/* 06CEE0 8006FEE0 4BFB37BD */  bl        frameHackCIMG_Zelda2
/* 06CEE4 8006FEE4 2C030000 */  cmpwi     r3, 0x0
/* 06CEE8 8006FEE8 4082000C */  bne       lbl_8006FEF4
/* 06CEEC 8006FEEC 38600000 */  li        r3, 0x0
/* 06CEF0 8006FEF0 48000EC0 */  b         lbl_80070DB0
lbl_8006FEF4:
/* 06CEF4 8006FEF4 38790000 */  addi      r3, r25, 0x0
/* 06CEF8 8006FEF8 389E0000 */  addi      r4, r30, 0x0
/* 06CEFC 8006FEFC 38BA0000 */  addi      r5, r26, 0x0
/* 06CF00 8006FF00 4BFB31E9 */  bl        frameHackCIMG_Zelda2_Shrink
/* 06CF04 8006FF04 2C1C0000 */  cmpwi     r28, 0x0
/* 06CF08 8006FF08 40820EA4 */  bne       lbl_80070DAC
/* 06CF0C 8006FF0C 387E0000 */  addi      r3, r30, 0x0
/* 06CF10 8006FF10 389B0000 */  addi      r4, r27, 0x0
/* 06CF14 8006FF14 38A00000 */  li        r5, 0x0
/* 06CF18 8006FF18 38C00000 */  li        r6, 0x0
/* 06CF1C 8006FF1C 4BFB3099 */  bl        frameHackCIMG_Zelda2_Camera
/* 06CF20 8006FF20 48000E8C */  b         lbl_80070DAC
lbl_8006FF24:
/* 06CF24 8006FF24 3C1DFFDD */  subis     r0, r29, 0x23
/* 06CF28 8006FF28 2800E800 */  cmplwi    r0, 0xe800
/* 06CF2C 8006FF2C 4182001C */  beq       lbl_8006FF48
/* 06CF30 8006FF30 3C1DFFDC */  subis     r0, r29, 0x24
/* 06CF34 8006FF34 28005D00 */  cmplwi    r0, 0x5d00
/* 06CF38 8006FF38 41820010 */  beq       lbl_8006FF48
/* 06CF3C 8006FF3C 3C1DFFCB */  subis     r0, r29, 0x35
/* 06CF40 8006FF40 28008800 */  cmplwi    r0, 0x8800
/* 06CF44 8006FF44 40820018 */  bne       lbl_8006FF5C
lbl_8006FF48:
/* 06CF48 8006FF48 38790000 */  addi      r3, r25, 0x0
/* 06CF4C 8006FF4C 389E0000 */  addi      r4, r30, 0x0
/* 06CF50 8006FF50 38BB0000 */  addi      r5, r27, 0x0
/* 06CF54 8006FF54 38DA0000 */  addi      r6, r26, 0x0
/* 06CF58 8006FF58 4BFB1551 */  bl        frameHackCIMG_Panel
lbl_8006FF5C:
/* 06CF5C 8006FF5C 3C1DFFC5 */  subis     r0, r29, 0x3b
/* 06CF60 8006FF60 28005000 */  cmplwi    r0, 0x5000
/* 06CF64 8006FF64 41820E48 */  beq       lbl_80070DAC
/* 06CF68 8006FF68 3C1DFFC3 */  subis     r0, r29, 0x3d
/* 06CF6C 8006FF6C 2800A800 */  cmplwi    r0, 0xa800
/* 06CF70 8006FF70 41820E3C */  beq       lbl_80070DAC
/* 06CF74 8006FF74 38000001 */  li        r0, 0x1
/* 06CF78 8006FF78 901E0074 */  stw       r0, 0x74(r30)
/* 06CF7C 8006FF7C 48000E30 */  b         lbl_80070DAC
lbl_8006FF80:
/* 06CF80 8006FF80 54A05F7E */  extrwi    r0, r5, 3, 8
/* 06CF84 8006FF84 901E00D0 */  stw       r0, 0xd0(r30)
/* 06CF88 8006FF88 391E00C8 */  addi      r8, r30, 0xc8
/* 06CF8C 8006FF8C 3888000C */  addi      r4, r8, 0xc
/* 06CF90 8006FF90 80010094 */  lwz       r0, 0x94(r1)
/* 06CF94 8006FF94 38C00000 */  li        r6, 0x0
/* 06CF98 8006FF98 54006FBE */  extrwi    r0, r0, 2, 11
/* 06CF9C 8006FF9C 901E00C8 */  stw       r0, 0xc8(r30)
/* 06CFA0 8006FFA0 80010094 */  lwz       r0, 0x94(r1)
/* 06CFA4 8006FFA4 5403053E */  clrlwi    r3, r0, 20
/* 06CFA8 8006FFA8 38030001 */  addi      r0, r3, 0x1
/* 06CFAC 8006FFAC 901E00CC */  stw       r0, 0xcc(r30)
/* 06CFB0 8006FFB0 80E10098 */  lwz       r7, 0x98(r1)
/* 06CFB4 8006FFB4 80B90008 */  lwz       r5, 0x8(r25)
/* 06CFB8 8006FFB8 54E356BA */  rlwinm    r3, r7, 10, 26, 29
/* 06CFBC 8006FFBC 80A50034 */  lwz       r5, 0x34(r5)
/* 06CFC0 8006FFC0 38033928 */  addi      r0, r3, 0x3928
/* 06CFC4 8006FFC4 7C65002E */  lwzx      r3, r5, r0
/* 06CFC8 8006FFC8 54E0023E */  clrlwi    r0, r7, 8
/* 06CFCC 8006FFCC 7CA30214 */  add       r5, r3, r0
/* 06CFD0 8006FFD0 90BE00D8 */  stw       r5, 0xd8(r30)
/* 06CFD4 8006FFD4 80790008 */  lwz       r3, 0x8(r25)
/* 06CFD8 8006FFD8 8063002C */  lwz       r3, 0x2c(r3)
/* 06CFDC 8006FFDC 4BFFC935 */  bl        ramGetBuffer
/* 06CFE0 8006FFE0 2C030000 */  cmpwi     r3, 0x0
/* 06CFE4 8006FFE4 4082000C */  bne       lbl_8006FFF0
/* 06CFE8 8006FFE8 38600000 */  li        r3, 0x0
/* 06CFEC 8006FFEC 48000DC4 */  b         lbl_80070DB0
lbl_8006FFF0:
/* 06CFF0 8006FFF0 387E0000 */  addi      r3, r30, 0x0
/* 06CFF4 8006FFF4 38800000 */  li        r4, 0x0
/* 06CFF8 8006FFF8 4BFAD5B1 */  bl        frameSetBuffer
/* 06CFFC 8006FFFC 2C030000 */  cmpwi     r3, 0x0
/* 06D000 80070000 40820DAC */  bne       lbl_80070DAC
/* 06D004 80070004 38600000 */  li        r3, 0x0
/* 06D008 80070008 48000DA8 */  b         lbl_80070DB0
lbl_8007000C:
/* 06D00C 8007000C 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 06D010 80070010 3B7E00DC */  addi      r27, r30, 0xdc
/* 06D014 80070014 80030020 */  lwz       r0, 0x20(r3)
/* 06D018 80070018 2C000005 */  cmpwi     r0, 0x5
/* 06D01C 8007001C 41820038 */  beq       lbl_80070054
/* 06D020 80070020 40800058 */  bge       lbl_80070078
/* 06D024 80070024 2C000004 */  cmpwi     r0, 0x4
/* 06D028 80070028 40800008 */  bge       lbl_80070030
/* 06D02C 8007002C 4800004C */  b         lbl_80070078
lbl_80070030:
/* 06D030 80070030 387E0000 */  addi      r3, r30, 0x0
/* 06D034 80070034 3881009C */  addi      r4, r1, 0x9c
/* 06D038 80070038 38A10098 */  addi      r5, r1, 0x98
/* 06D03C 8007003C 38C10094 */  addi      r6, r1, 0x94
/* 06D040 80070040 4BFB3C65 */  bl        frameHackTIMG_Zelda
/* 06D044 80070044 2C030000 */  cmpwi     r3, 0x0
/* 06D048 80070048 40820030 */  bne       lbl_80070078
/* 06D04C 8007004C 38600000 */  li        r3, 0x0
/* 06D050 80070050 48000D60 */  b         lbl_80070DB0
lbl_80070054:
/* 06D054 80070054 387E0000 */  addi      r3, r30, 0x0
/* 06D058 80070058 3881009C */  addi      r4, r1, 0x9c
/* 06D05C 8007005C 38A10098 */  addi      r5, r1, 0x98
/* 06D060 80070060 38C10094 */  addi      r6, r1, 0x94
/* 06D064 80070064 4BFB3C41 */  bl        frameHackTIMG_Zelda
/* 06D068 80070068 2C030000 */  cmpwi     r3, 0x0
/* 06D06C 8007006C 4082000C */  bne       lbl_80070078
/* 06D070 80070070 38600000 */  li        r3, 0x0
/* 06D074 80070074 48000D3C */  b         lbl_80070DB0
lbl_80070078:
/* 06D078 80070078 80010094 */  lwz       r0, 0x94(r1)
/* 06D07C 8007007C 389B000C */  addi      r4, r27, 0xc
/* 06D080 80070080 38C00000 */  li        r6, 0x0
/* 06D084 80070084 54005F7E */  extrwi    r0, r0, 3, 8
/* 06D088 80070088 901B0008 */  stw       r0, 0x8(r27)
/* 06D08C 8007008C 80010094 */  lwz       r0, 0x94(r1)
/* 06D090 80070090 54006FBE */  extrwi    r0, r0, 2, 11
/* 06D094 80070094 901B0000 */  stw       r0, 0x0(r27)
/* 06D098 80070098 80010094 */  lwz       r0, 0x94(r1)
/* 06D09C 8007009C 5403053E */  clrlwi    r3, r0, 20
/* 06D0A0 800700A0 38030001 */  addi      r0, r3, 0x1
/* 06D0A4 800700A4 901B0004 */  stw       r0, 0x4(r27)
/* 06D0A8 800700A8 80010098 */  lwz       r0, 0x98(r1)
/* 06D0AC 800700AC 901B0010 */  stw       r0, 0x10(r27)
/* 06D0B0 800700B0 80E10098 */  lwz       r7, 0x98(r1)
/* 06D0B4 800700B4 81190008 */  lwz       r8, 0x8(r25)
/* 06D0B8 800700B8 54E356BA */  rlwinm    r3, r7, 10, 26, 29
/* 06D0BC 800700BC 38033928 */  addi      r0, r3, 0x3928
/* 06D0C0 800700C0 80A80034 */  lwz       r5, 0x34(r8)
/* 06D0C4 800700C4 8068002C */  lwz       r3, 0x2c(r8)
/* 06D0C8 800700C8 7CA5002E */  lwzx      r5, r5, r0
/* 06D0CC 800700CC 54E0023E */  clrlwi    r0, r7, 8
/* 06D0D0 800700D0 7CA50214 */  add       r5, r5, r0
/* 06D0D4 800700D4 4BFFC83D */  bl        ramGetBuffer
/* 06D0D8 800700D8 2C030000 */  cmpwi     r3, 0x0
/* 06D0DC 800700DC 4082000C */  bne       lbl_800700E8
/* 06D0E0 800700E0 38600000 */  li        r3, 0x0
/* 06D0E4 800700E4 48000CCC */  b         lbl_80070DB0
lbl_800700E8:
/* 06D0E8 800700E8 387E0000 */  addi      r3, r30, 0x0
/* 06D0EC 800700EC 38800001 */  li        r4, 0x1
/* 06D0F0 800700F0 4BFAD4B9 */  bl        frameSetBuffer
/* 06D0F4 800700F4 2C030000 */  cmpwi     r3, 0x0
/* 06D0F8 800700F8 4082000C */  bne       lbl_80070104
/* 06D0FC 800700FC 38600000 */  li        r3, 0x0
/* 06D100 80070100 48000CB0 */  b         lbl_80070DB0
lbl_80070104:
/* 06D104 80070104 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 06D108 80070108 80030020 */  lwz       r0, 0x20(r3)
/* 06D10C 8007010C 2C000007 */  cmpwi     r0, 0x7
/* 06D110 80070110 41820008 */  beq       lbl_80070118
/* 06D114 80070114 48000C98 */  b         lbl_80070DAC
lbl_80070118:
/* 06D118 80070118 387E0000 */  addi      r3, r30, 0x0
/* 06D11C 8007011C 389B0000 */  addi      r4, r27, 0x0
/* 06D120 80070120 4BFB2BD5 */  bl        frameHackTIMG_Panel
/* 06D124 80070124 48000C88 */  b         lbl_80070DAC
lbl_80070128:
/* 06D128 80070128 54A4673E */  extrwi    r4, r5, 4, 8
/* 06D12C 8007012C 2804000F */  cmplwi    r4, 0xf
/* 06D130 80070130 40820008 */  bne       lbl_80070138
/* 06D134 80070134 3880001F */  li        r4, 0x1f
lbl_80070138:
/* 06D138 80070138 80010098 */  lwz       r0, 0x98(r1)
/* 06D13C 8007013C 5403273E */  srwi      r3, r0, 28
/* 06D140 80070140 2803000F */  cmplwi    r3, 0xf
/* 06D144 80070144 40820008 */  bne       lbl_8007014C
/* 06D148 80070148 3860001F */  li        r3, 0x1f
lbl_8007014C:
/* 06D14C 8007014C 54A58EFE */  extrwi    r5, r5, 5, 12
/* 06D150 80070150 2805001F */  cmplwi    r5, 0x1f
/* 06D154 80070154 40820008 */  bne       lbl_8007015C
/* 06D158 80070158 38A0001F */  li        r5, 0x1f
lbl_8007015C:
/* 06D15C 8007015C 54068F7E */  extrwi    r6, r0, 3, 14
/* 06D160 80070160 28060007 */  cmplwi    r6, 0x7
/* 06D164 80070164 40820008 */  bne       lbl_8007016C
/* 06D168 80070168 38C0001F */  li        r6, 0x1f
lbl_8007016C:
/* 06D16C 8007016C 5460402E */  slwi      r0, r3, 8
/* 06D170 80070170 54A3801E */  slwi      r3, r5, 16
/* 06D174 80070174 7C800378 */  or        r0, r4, r0
/* 06D178 80070178 54C4C00E */  slwi      r4, r6, 24
/* 06D17C 8007017C 7C600378 */  or        r0, r3, r0
/* 06D180 80070180 387E0000 */  addi      r3, r30, 0x0
/* 06D184 80070184 7C850378 */  or        r5, r4, r0
/* 06D188 80070188 38800006 */  li        r4, 0x6
/* 06D18C 8007018C 4BFAFC39 */  bl        frameSetMode
/* 06D190 80070190 2C030000 */  cmpwi     r3, 0x0
/* 06D194 80070194 4082000C */  bne       lbl_800701A0
/* 06D198 80070198 38600000 */  li        r3, 0x0
/* 06D19C 8007019C 48000C14 */  b         lbl_80070DB0
lbl_800701A0:
/* 06D1A0 800701A0 80010094 */  lwz       r0, 0x94(r1)
/* 06D1A4 800701A4 5404A77E */  extrwi    r4, r0, 3, 17
/* 06D1A8 800701A8 28040007 */  cmplwi    r4, 0x7
/* 06D1AC 800701AC 40820008 */  bne       lbl_800701B4
/* 06D1B0 800701B0 38800007 */  li        r4, 0x7
lbl_800701B4:
/* 06D1B4 800701B4 80610098 */  lwz       r3, 0x98(r1)
/* 06D1B8 800701B8 5465A77E */  extrwi    r5, r3, 3, 17
/* 06D1BC 800701BC 28050007 */  cmplwi    r5, 0x7
/* 06D1C0 800701C0 40820008 */  bne       lbl_800701C8
/* 06D1C4 800701C4 38A00007 */  li        r5, 0x7
lbl_800701C8:
/* 06D1C8 800701C8 5406BF7E */  extrwi    r6, r0, 3, 20
/* 06D1CC 800701CC 28060007 */  cmplwi    r6, 0x7
/* 06D1D0 800701D0 40820008 */  bne       lbl_800701D8
/* 06D1D4 800701D4 38C00007 */  li        r6, 0x7
lbl_800701D8:
/* 06D1D8 800701D8 5467BF7E */  extrwi    r7, r3, 3, 20
/* 06D1DC 800701DC 28070007 */  cmplwi    r7, 0x7
/* 06D1E0 800701E0 40820008 */  bne       lbl_800701E8
/* 06D1E4 800701E4 38E00007 */  li        r7, 0x7
lbl_800701E8:
/* 06D1E8 800701E8 54A0402E */  slwi      r0, r5, 8
/* 06D1EC 800701EC 54C3801E */  slwi      r3, r6, 16
/* 06D1F0 800701F0 7C800378 */  or        r0, r4, r0
/* 06D1F4 800701F4 54E4C00E */  slwi      r4, r7, 24
/* 06D1F8 800701F8 7C600378 */  or        r0, r3, r0
/* 06D1FC 800701FC 387E0000 */  addi      r3, r30, 0x0
/* 06D200 80070200 7C850378 */  or        r5, r4, r0
/* 06D204 80070204 38800008 */  li        r4, 0x8
/* 06D208 80070208 4BFAFBBD */  bl        frameSetMode
/* 06D20C 8007020C 2C030000 */  cmpwi     r3, 0x0
/* 06D210 80070210 4082000C */  bne       lbl_8007021C
/* 06D214 80070214 38600000 */  li        r3, 0x0
/* 06D218 80070218 48000B98 */  b         lbl_80070DB0
lbl_8007021C:
/* 06D21C 8007021C 80010094 */  lwz       r0, 0x94(r1)
/* 06D220 80070220 5404DF3E */  extrwi    r4, r0, 4, 23
/* 06D224 80070224 2804000F */  cmplwi    r4, 0xf
/* 06D228 80070228 40820008 */  bne       lbl_80070230
/* 06D22C 8007022C 3880001F */  li        r4, 0x1f
lbl_80070230:
/* 06D230 80070230 80610098 */  lwz       r3, 0x98(r1)
/* 06D234 80070234 5465473E */  extrwi    r5, r3, 4, 4
/* 06D238 80070238 2805000F */  cmplwi    r5, 0xf
/* 06D23C 8007023C 40820008 */  bne       lbl_80070244
/* 06D240 80070240 38A0001F */  li        r5, 0x1f
lbl_80070244:
/* 06D244 80070244 540606FE */  clrlwi    r6, r0, 27
/* 06D248 80070248 2806001F */  cmplwi    r6, 0x1f
/* 06D24C 8007024C 40820008 */  bne       lbl_80070254
/* 06D250 80070250 38C0001F */  li        r6, 0x1f
lbl_80070254:
/* 06D254 80070254 5467D77E */  extrwi    r7, r3, 3, 23
/* 06D258 80070258 28070007 */  cmplwi    r7, 0x7
/* 06D25C 8007025C 40820008 */  bne       lbl_80070264
/* 06D260 80070260 38E0001F */  li        r7, 0x1f
lbl_80070264:
/* 06D264 80070264 54A0402E */  slwi      r0, r5, 8
/* 06D268 80070268 54C3801E */  slwi      r3, r6, 16
/* 06D26C 8007026C 7C800378 */  or        r0, r4, r0
/* 06D270 80070270 54E4C00E */  slwi      r4, r7, 24
/* 06D274 80070274 7C600378 */  or        r0, r3, r0
/* 06D278 80070278 387E0000 */  addi      r3, r30, 0x0
/* 06D27C 8007027C 7C850378 */  or        r5, r4, r0
/* 06D280 80070280 38800007 */  li        r4, 0x7
/* 06D284 80070284 4BFAFB41 */  bl        frameSetMode
/* 06D288 80070288 2C030000 */  cmpwi     r3, 0x0
/* 06D28C 8007028C 4082000C */  bne       lbl_80070298
/* 06D290 80070290 38600000 */  li        r3, 0x0
/* 06D294 80070294 48000B1C */  b         lbl_80070DB0
lbl_80070298:
/* 06D298 80070298 80010098 */  lwz       r0, 0x98(r1)
/* 06D29C 8007029C 54045F7E */  extrwi    r4, r0, 3, 8
/* 06D2A0 800702A0 28040007 */  cmplwi    r4, 0x7
/* 06D2A4 800702A4 40820008 */  bne       lbl_800702AC
/* 06D2A8 800702A8 38800007 */  li        r4, 0x7
lbl_800702AC:
/* 06D2AC 800702AC 5403EF7E */  extrwi    r3, r0, 3, 26
/* 06D2B0 800702B0 28030007 */  cmplwi    r3, 0x7
/* 06D2B4 800702B4 40820008 */  bne       lbl_800702BC
/* 06D2B8 800702B8 38600007 */  li        r3, 0x7
lbl_800702BC:
/* 06D2BC 800702BC 5405777E */  extrwi    r5, r0, 3, 11
/* 06D2C0 800702C0 28050007 */  cmplwi    r5, 0x7
/* 06D2C4 800702C4 40820008 */  bne       lbl_800702CC
/* 06D2C8 800702C8 38A00007 */  li        r5, 0x7
lbl_800702CC:
/* 06D2CC 800702CC 5406077E */  clrlwi    r6, r0, 29
/* 06D2D0 800702D0 28060007 */  cmplwi    r6, 0x7
/* 06D2D4 800702D4 40820008 */  bne       lbl_800702DC
/* 06D2D8 800702D8 38C00007 */  li        r6, 0x7
lbl_800702DC:
/* 06D2DC 800702DC 5460402E */  slwi      r0, r3, 8
/* 06D2E0 800702E0 54A3801E */  slwi      r3, r5, 16
/* 06D2E4 800702E4 7C800378 */  or        r0, r4, r0
/* 06D2E8 800702E8 54C4C00E */  slwi      r4, r6, 24
/* 06D2EC 800702EC 7C600378 */  or        r0, r3, r0
/* 06D2F0 800702F0 387E0000 */  addi      r3, r30, 0x0
/* 06D2F4 800702F4 7C850378 */  or        r5, r4, r0
/* 06D2F8 800702F8 38800009 */  li        r4, 0x9
/* 06D2FC 800702FC 4BFAFAC9 */  bl        frameSetMode
/* 06D300 80070300 2C030000 */  cmpwi     r3, 0x0
/* 06D304 80070304 40820AA8 */  bne       lbl_80070DAC
/* 06D308 80070308 38600000 */  li        r3, 0x0
/* 06D30C 8007030C 48000AA4 */  b         lbl_80070DB0
lbl_80070310:
/* 06D310 80070310 80A10098 */  lwz       r5, 0x98(r1)
/* 06D314 80070314 387E0000 */  addi      r3, r30, 0x0
/* 06D318 80070318 38800004 */  li        r4, 0x4
/* 06D31C 8007031C 4BFB5831 */  bl        frameSetColor
/* 06D320 80070320 2C030000 */  cmpwi     r3, 0x0
/* 06D324 80070324 40820A88 */  bne       lbl_80070DAC
/* 06D328 80070328 38600000 */  li        r3, 0x0
/* 06D32C 8007032C 48000A84 */  b         lbl_80070DB0
lbl_80070330:
/* 06D330 80070330 3CDE0004 */  addis     r6, r30, 0x4
/* 06D334 80070334 98A6D121 */  stb       r5, -0x2edf(r6)
/* 06D338 80070338 387E0000 */  addi      r3, r30, 0x0
/* 06D33C 8007033C 38800003 */  li        r4, 0x3
/* 06D340 80070340 80010094 */  lwz       r0, 0x94(r1)
/* 06D344 80070344 5400C63E */  extrwi    r0, r0, 8, 16
/* 06D348 80070348 9806D120 */  stb       r0, -0x2ee0(r6)
/* 06D34C 8007034C 80A10098 */  lwz       r5, 0x98(r1)
/* 06D350 80070350 4BFB57FD */  bl        frameSetColor
/* 06D354 80070354 2C030000 */  cmpwi     r3, 0x0
/* 06D358 80070358 40820A54 */  bne       lbl_80070DAC
/* 06D35C 8007035C 38600000 */  li        r3, 0x0
/* 06D360 80070360 48000A50 */  b         lbl_80070DB0
lbl_80070364:
/* 06D364 80070364 80A10098 */  lwz       r5, 0x98(r1)
/* 06D368 80070368 387E0000 */  addi      r3, r30, 0x0
/* 06D36C 8007036C 38800002 */  li        r4, 0x2
/* 06D370 80070370 4BFB57DD */  bl        frameSetColor
/* 06D374 80070374 2C030000 */  cmpwi     r3, 0x0
/* 06D378 80070378 40820A34 */  bne       lbl_80070DAC
/* 06D37C 8007037C 38600000 */  li        r3, 0x0
/* 06D380 80070380 48000A30 */  b         lbl_80070DB0
lbl_80070384:
/* 06D384 80070384 80A10098 */  lwz       r5, 0x98(r1)
/* 06D388 80070388 387E0000 */  addi      r3, r30, 0x0
/* 06D38C 8007038C 38800000 */  li        r4, 0x0
/* 06D390 80070390 4BFB57BD */  bl        frameSetColor
/* 06D394 80070394 2C030000 */  cmpwi     r3, 0x0
/* 06D398 80070398 40820A14 */  bne       lbl_80070DAC
/* 06D39C 8007039C 38600000 */  li        r3, 0x0
/* 06D3A0 800703A0 48000A10 */  b         lbl_80070DB0
lbl_800703A4:
/* 06D3A4 800703A4 80C10098 */  lwz       r6, 0x98(r1)
/* 06D3A8 800703A8 387E0000 */  addi      r3, r30, 0x0
/* 06D3AC 800703AC 38800001 */  li        r4, 0x1
/* 06D3B0 800703B0 54C06A18 */  rlwinm    r0, r6, 13, 8, 12
/* 06D3B4 800703B4 50C08008 */  rlwimi    r0, r6, 16, 0, 4
/* 06D3B8 800703B8 50C05428 */  rlwimi    r0, r6, 10, 16, 20
/* 06D3BC 800703BC 7C050378 */  mr        r5, r0
/* 06D3C0 800703C0 50C53E30 */  rlwimi    r5, r6, 7, 24, 24
/* 06D3C4 800703C4 4BFB5789 */  bl        frameSetColor
/* 06D3C8 800703C8 2C030000 */  cmpwi     r3, 0x0
/* 06D3CC 800703CC 408209E0 */  bne       lbl_80070DAC
/* 06D3D0 800703D0 38600000 */  li        r3, 0x0
/* 06D3D4 800703D4 480009DC */  b         lbl_80070DB0
lbl_800703D8:
/* 06D3D8 800703D8 54A095BE */  extrwi    r0, r5, 10, 8
/* 06D3DC 800703DC 9001007C */  stw       r0, 0x7c(r1)
/* 06D3E0 800703E0 54A0F5BE */  extrwi    r0, r5, 10, 20
/* 06D3E4 800703E4 90010080 */  stw       r0, 0x80(r1)
/* 06D3E8 800703E8 80C10098 */  lwz       r6, 0x98(r1)
/* 06D3EC 800703EC 54C095BE */  extrwi    r0, r6, 10, 8
/* 06D3F0 800703F0 90010074 */  stw       r0, 0x74(r1)
/* 06D3F4 800703F4 54C0F5BE */  extrwi    r0, r6, 10, 20
/* 06D3F8 800703F8 90010078 */  stw       r0, 0x78(r1)
/* 06D3FC 800703FC 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 06D400 80070400 80030020 */  lwz       r0, 0x20(r3)
/* 06D404 80070404 2C000005 */  cmpwi     r0, 0x5
/* 06D408 80070408 40820030 */  bne       lbl_80070438
/* 06D40C 8007040C 80010080 */  lwz       r0, 0x80(r1)
/* 06D410 80070410 2C0000EF */  cmpwi     r0, 0xef
/* 06D414 80070414 40820018 */  bne       lbl_8007042C
/* 06D418 80070418 80610078 */  lwz       r3, 0x78(r1)
/* 06D41C 8007041C 2C030000 */  cmpwi     r3, 0x0
/* 06D420 80070420 4081000C */  ble       lbl_8007042C
/* 06D424 80070424 3803FFFF */  subi      r0, r3, 0x1
/* 06D428 80070428 90010078 */  stw       r0, 0x78(r1)
lbl_8007042C:
/* 06D42C 8007042C 387E0000 */  addi      r3, r30, 0x0
/* 06D430 80070430 38800000 */  li        r4, 0x0
/* 06D434 80070434 4BFB2B81 */  bl        frameHackCIMG_Zelda2_Camera
lbl_80070438:
/* 06D438 80070438 819E0134 */  lwz       r12, 0x134(r30)
/* 06D43C 8007043C 387E0000 */  addi      r3, r30, 0x0
/* 06D440 80070440 3881006C */  addi      r4, r1, 0x6c
/* 06D444 80070444 7D8803A6 */  mtlr      r12
/* 06D448 80070448 4E800021 */  blrl
/* 06D44C 8007044C 2C030000 */  cmpwi     r3, 0x0
/* 06D450 80070450 4082095C */  bne       lbl_80070DAC
/* 06D454 80070454 38600000 */  li        r3, 0x0
/* 06D458 80070458 48000958 */  b         lbl_80070DB0
lbl_8007045C:
/* 06D45C 8007045C 80010098 */  lwz       r0, 0x98(r1)
/* 06D460 80070460 54A36FBE */  extrwi    r3, r5, 2, 11
/* 06D464 80070464 3CDE0004 */  addis     r6, r30, 0x4
/* 06D468 80070468 5400477E */  extrwi    r0, r0, 3, 5
/* 06D46C 8007046C 1C80002C */  mulli     r4, r0, 0x2c
/* 06D470 80070470 3CA40004 */  addis     r5, r4, 0x4
/* 06D474 80070474 38A5C358 */  subi      r5, r5, 0x3ca8
/* 06D478 80070478 7CBE2A14 */  add       r5, r30, r5
/* 06D47C 8007047C 90650000 */  stw       r3, 0x0(r5)
/* 06D480 80070480 387E0000 */  addi      r3, r30, 0x0
/* 06D484 80070484 38800001 */  li        r4, 0x1
/* 06D488 80070488 80E10094 */  lwz       r7, 0x94(r1)
/* 06D48C 8007048C 54E705FE */  clrlwi    r7, r7, 23
/* 06D490 80070490 90E50004 */  stw       r7, 0x4(r5)
/* 06D494 80070494 80E10098 */  lwz       r7, 0x98(r1)
/* 06D498 80070498 54E7673E */  extrwi    r7, r7, 4, 8
/* 06D49C 8007049C 90E50008 */  stw       r7, 0x8(r5)
/* 06D4A0 800704A0 80E10094 */  lwz       r7, 0x94(r1)
/* 06D4A4 800704A4 54E7BDFE */  extrwi    r7, r7, 9, 14
/* 06D4A8 800704A8 90E5000C */  stw       r7, 0xc(r5)
/* 06D4AC 800704AC 80E10094 */  lwz       r7, 0x94(r1)
/* 06D4B0 800704B0 54E75F7E */  extrwi    r7, r7, 3, 8
/* 06D4B4 800704B4 90E50010 */  stw       r7, 0x10(r5)
/* 06D4B8 800704B8 80E10098 */  lwz       r7, 0x98(r1)
/* 06D4BC 800704BC 54E7E73E */  extrwi    r7, r7, 4, 24
/* 06D4C0 800704C0 B0E50014 */  sth       r7, 0x14(r5)
/* 06D4C4 800704C4 80E10098 */  lwz       r7, 0x98(r1)
/* 06D4C8 800704C8 54E7973E */  extrwi    r7, r7, 4, 14
/* 06D4CC 800704CC B0E50016 */  sth       r7, 0x16(r5)
/* 06D4D0 800704D0 80E10098 */  lwz       r7, 0x98(r1)
/* 06D4D4 800704D4 54E7C7BE */  extrwi    r7, r7, 2, 22
/* 06D4D8 800704D8 B0E50018 */  sth       r7, 0x18(r5)
/* 06D4DC 800704DC 80E10098 */  lwz       r7, 0x98(r1)
/* 06D4E0 800704E0 54E777BE */  extrwi    r7, r7, 2, 12
/* 06D4E4 800704E4 B0E5001A */  sth       r7, 0x1a(r5)
/* 06D4E8 800704E8 80E10098 */  lwz       r7, 0x98(r1)
/* 06D4EC 800704EC 54E7073E */  clrlwi    r7, r7, 28
/* 06D4F0 800704F0 B0E5001C */  sth       r7, 0x1c(r5)
/* 06D4F4 800704F4 80E10098 */  lwz       r7, 0x98(r1)
/* 06D4F8 800704F8 54E7B73E */  extrwi    r7, r7, 4, 18
/* 06D4FC 800704FC B0E5001E */  sth       r7, 0x1e(r5)
/* 06D500 80070500 80FE21FC */  lwz       r7, 0x21fc(r30)
/* 06D504 80070504 90E50028 */  stw       r7, 0x28(r5)
/* 06D508 80070508 9806D122 */  stb       r0, -0x2ede(r6)
/* 06D50C 8007050C 4BFAFBA1 */  bl        frameDrawReset
/* 06D510 80070510 2C030000 */  cmpwi     r3, 0x0
/* 06D514 80070514 40820898 */  bne       lbl_80070DAC
/* 06D518 80070518 38600000 */  li        r3, 0x0
/* 06D51C 8007051C 48000894 */  b         lbl_80070DB0
lbl_80070520:
/* 06D520 80070520 80010098 */  lwz       r0, 0x98(r1)
/* 06D524 80070524 3FFE0004 */  addis     r31, r30, 0x4
/* 06D528 80070528 3C6000FC */  lis       r3, 0xfc
/* 06D52C 8007052C 5406477E */  extrwi    r6, r0, 3, 5
/* 06D530 80070530 1C86002C */  mulli     r4, r6, 0x2c
/* 06D534 80070534 54A0A53E */  extrwi    r0, r5, 12, 8
/* 06D538 80070538 7CFF2214 */  add       r7, r31, r4
/* 06D53C 8007053C B007C378 */  sth       r0, -0x3c88(r7)
/* 06D540 80070540 7D1F2214 */  add       r8, r31, r4
/* 06D544 80070544 7D3F2214 */  add       r9, r31, r4
/* 06D548 80070548 80010094 */  lwz       r0, 0x94(r1)
/* 06D54C 8007054C 7D5F2214 */  add       r10, r31, r4
/* 06D550 80070550 38A60000 */  addi      r5, r6, 0x0
/* 06D554 80070554 5400053E */  clrlwi    r0, r0, 20
/* 06D558 80070558 B008C37A */  sth       r0, -0x3c86(r8)
/* 06D55C 8007055C 38031034 */  addi      r0, r3, 0x1034
/* 06D560 80070560 387E0000 */  addi      r3, r30, 0x0
/* 06D564 80070564 80810098 */  lwz       r4, 0x98(r1)
/* 06D568 80070568 5484A53E */  extrwi    r4, r4, 12, 8
/* 06D56C 8007056C B089C37C */  sth       r4, -0x3c84(r9)
/* 06D570 80070570 38800000 */  li        r4, 0x0
/* 06D574 80070574 80C10098 */  lwz       r6, 0x98(r1)
/* 06D578 80070578 54C6053E */  clrlwi    r6, r6, 20
/* 06D57C 8007057C B0CAC37E */  sth       r6, -0x3c82(r10)
/* 06D580 80070580 901FC344 */  stw       r0, -0x3cbc(r31)
/* 06D584 80070584 A807C378 */  lha       r0, -0x3c88(r7)
/* 06D588 80070588 901FC348 */  stw       r0, -0x3cb8(r31)
/* 06D58C 8007058C A808C37A */  lha       r0, -0x3c86(r8)
/* 06D590 80070590 901FC34C */  stw       r0, -0x3cb4(r31)
/* 06D594 80070594 A809C37C */  lha       r0, -0x3c84(r9)
/* 06D598 80070598 901FC350 */  stw       r0, -0x3cb0(r31)
/* 06D59C 8007059C A80AC37E */  lha       r0, -0x3c82(r10)
/* 06D5A0 800705A0 901FC354 */  stw       r0, -0x3cac(r31)
/* 06D5A4 800705A4 4BFAD465 */  bl        frameLoadTMEM
/* 06D5A8 800705A8 2C030000 */  cmpwi     r3, 0x0
/* 06D5AC 800705AC 4082000C */  bne       lbl_800705B8
/* 06D5B0 800705B0 38600000 */  li        r3, 0x0
/* 06D5B4 800705B4 480007FC */  b         lbl_80070DB0
lbl_800705B8:
/* 06D5B8 800705B8 881FD122 */  lbz       r0, -0x2ede(r31)
/* 06D5BC 800705BC 809E21FC */  lwz       r4, 0x21fc(r30)
/* 06D5C0 800705C0 1C00002C */  mulli     r0, r0, 0x2c
/* 06D5C4 800705C4 7C7F0214 */  add       r3, r31, r0
/* 06D5C8 800705C8 9083C380 */  stw       r4, -0x3c80(r3)
/* 06D5CC 800705CC 480007E0 */  b         lbl_80070DAC
lbl_800705D0:
/* 06D5D0 800705D0 80610098 */  lwz       r3, 0x98(r1)
/* 06D5D4 800705D4 54A0A53E */  extrwi    r0, r5, 12, 8
/* 06D5D8 800705D8 3D1E0004 */  addis     r8, r30, 0x4
/* 06D5DC 800705DC 5465477E */  extrwi    r5, r3, 3, 5
/* 06D5E0 800705E0 1C65002C */  mulli     r3, r5, 0x2c
/* 06D5E4 800705E4 7CE81A14 */  add       r7, r8, r3
/* 06D5E8 800705E8 B007C378 */  sth       r0, -0x3c88(r7)
/* 06D5EC 800705EC 38001033 */  li        r0, 0x1033
/* 06D5F0 800705F0 387E0000 */  addi      r3, r30, 0x0
/* 06D5F4 800705F4 80C10094 */  lwz       r6, 0x94(r1)
/* 06D5F8 800705F8 38800001 */  li        r4, 0x1
/* 06D5FC 800705FC 54C6053E */  clrlwi    r6, r6, 20
/* 06D600 80070600 B0C7C37A */  sth       r6, -0x3c86(r7)
/* 06D604 80070604 80C10098 */  lwz       r6, 0x98(r1)
/* 06D608 80070608 54C6A53E */  extrwi    r6, r6, 12, 8
/* 06D60C 8007060C B0C7C37C */  sth       r6, -0x3c84(r7)
/* 06D610 80070610 80C10098 */  lwz       r6, 0x98(r1)
/* 06D614 80070614 54C6053E */  clrlwi    r6, r6, 20
/* 06D618 80070618 B0C7C37E */  sth       r6, -0x3c82(r7)
/* 06D61C 8007061C 9008C344 */  stw       r0, -0x3cbc(r8)
/* 06D620 80070620 4BFAD3E9 */  bl        frameLoadTMEM
/* 06D624 80070624 2C030000 */  cmpwi     r3, 0x0
/* 06D628 80070628 40820784 */  bne       lbl_80070DAC
/* 06D62C 8007062C 38600000 */  li        r3, 0x0
/* 06D630 80070630 48000780 */  b         lbl_80070DB0
lbl_80070634:
/* 06D634 80070634 80810098 */  lwz       r4, 0x98(r1)
/* 06D638 80070638 54A0A53E */  extrwi    r0, r5, 12, 8
/* 06D63C 8007063C 387E0000 */  addi      r3, r30, 0x0
/* 06D640 80070640 5484477E */  extrwi    r4, r4, 3, 5
/* 06D644 80070644 1C84002C */  mulli     r4, r4, 0x2c
/* 06D648 80070648 3CA40004 */  addis     r5, r4, 0x4
/* 06D64C 8007064C 38A5C358 */  subi      r5, r5, 0x3ca8
/* 06D650 80070650 7CBE2A14 */  add       r5, r30, r5
/* 06D654 80070654 B0050020 */  sth       r0, 0x20(r5)
/* 06D658 80070658 38800001 */  li        r4, 0x1
/* 06D65C 8007065C 80010094 */  lwz       r0, 0x94(r1)
/* 06D660 80070660 5400053E */  clrlwi    r0, r0, 20
/* 06D664 80070664 B0050022 */  sth       r0, 0x22(r5)
/* 06D668 80070668 80010098 */  lwz       r0, 0x98(r1)
/* 06D66C 8007066C 5400A53E */  extrwi    r0, r0, 12, 8
/* 06D670 80070670 B0050024 */  sth       r0, 0x24(r5)
/* 06D674 80070674 80010098 */  lwz       r0, 0x98(r1)
/* 06D678 80070678 5400053E */  clrlwi    r0, r0, 20
/* 06D67C 8007067C B0050026 */  sth       r0, 0x26(r5)
/* 06D680 80070680 4BFAFA2D */  bl        frameDrawReset
/* 06D684 80070684 2C030000 */  cmpwi     r3, 0x0
/* 06D688 80070688 40820724 */  bne       lbl_80070DAC
/* 06D68C 8007068C 38600000 */  li        r3, 0x0
/* 06D690 80070690 48000720 */  b         lbl_80070DB0
lbl_80070694:
/* 06D694 80070694 80010098 */  lwz       r0, 0x98(r1)
/* 06D698 80070698 387E0000 */  addi      r3, r30, 0x0
/* 06D69C 8007069C 5405477E */  extrwi    r5, r0, 3, 5
/* 06D6A0 800706A0 540495BE */  extrwi    r4, r0, 10, 8
/* 06D6A4 800706A4 4BFAE2AD */  bl        frameLoadTLUT
/* 06D6A8 800706A8 2C030000 */  cmpwi     r3, 0x0
/* 06D6AC 800706AC 40820700 */  bne       lbl_80070DAC
/* 06D6B0 800706B0 38600000 */  li        r3, 0x0
/* 06D6B4 800706B4 480006FC */  b         lbl_80070DB0
lbl_800706B8:
/* 06D6B8 800706B8 80A10098 */  lwz       r5, 0x98(r1)
/* 06D6BC 800706BC 387E0000 */  addi      r3, r30, 0x0
/* 06D6C0 800706C0 38800004 */  li        r4, 0x4
/* 06D6C4 800706C4 4BFAF701 */  bl        frameSetMode
/* 06D6C8 800706C8 2C030000 */  cmpwi     r3, 0x0
/* 06D6CC 800706CC 4082000C */  bne       lbl_800706D8
/* 06D6D0 800706D0 38600000 */  li        r3, 0x0
/* 06D6D4 800706D4 480006DC */  b         lbl_80070DB0
lbl_800706D8:
/* 06D6D8 800706D8 80A10094 */  lwz       r5, 0x94(r1)
/* 06D6DC 800706DC 387E0000 */  addi      r3, r30, 0x0
/* 06D6E0 800706E0 38800005 */  li        r4, 0x5
/* 06D6E4 800706E4 4BFAF6E1 */  bl        frameSetMode
/* 06D6E8 800706E8 2C030000 */  cmpwi     r3, 0x0
/* 06D6EC 800706EC 408206C0 */  bne       lbl_80070DAC
/* 06D6F0 800706F0 38600000 */  li        r3, 0x0
/* 06D6F4 800706F4 480006BC */  b         lbl_80070DB0
lbl_800706F8:
/* 06D6F8 800706F8 80010098 */  lwz       r0, 0x98(r1)
/* 06D6FC 800706FC 3C804330 */  lis       r4, 0x4330
/* 06D700 80070700 C8A28328 */  lfd       f5, D_8018C268@sda21(r0)
/* 06D704 80070704 387E0000 */  addi      r3, r30, 0x0
/* 06D708 80070708 5405847E */  extrwi    r5, r0, 15, 1
/* 06D70C 8007070C 5400043E */  clrlwi    r0, r0, 16
/* 06D710 80070710 90A100DC */  stw       r5, 0xdc(r1)
/* 06D714 80070714 C0628308 */  lfs       f3, D_8018C248@sda21(r0)
/* 06D718 80070718 900100D4 */  stw       r0, 0xd4(r1)
/* 06D71C 8007071C C002830C */  lfs       f0, D_8018C24C@sda21(r0)
/* 06D720 80070720 908100D8 */  stw       r4, 0xd8(r1)
/* 06D724 80070724 908100D0 */  stw       r4, 0xd0(r1)
/* 06D728 80070728 C84100D8 */  lfd       f2, 0xd8(r1)
/* 06D72C 8007072C C82100D0 */  lfd       f1, 0xd0(r1)
/* 06D730 80070730 EC822828 */  fsubs     f4, f2, f5
/* 06D734 80070734 EC412828 */  fsubs     f2, f1, f5
/* 06D738 80070738 EC241824 */  fdivs     f1, f4, f3
/* 06D73C 8007073C EC420024 */  fdivs     f2, f2, f0
/* 06D740 80070740 4BFB5509 */  bl        frameSetDepth
/* 06D744 80070744 2C030000 */  cmpwi     r3, 0x0
/* 06D748 80070748 40820664 */  bne       lbl_80070DAC
/* 06D74C 8007074C 38600000 */  li        r3, 0x0
/* 06D750 80070750 48000660 */  b         lbl_80070DB0
lbl_80070754:
/* 06D754 80070754 54A0A53E */  extrwi    r0, r5, 12, 8
/* 06D758 80070758 80610098 */  lwz       r3, 0x98(r1)
/* 06D75C 8007075C 90010048 */  stw       r0, 0x48(r1)
/* 06D760 80070760 54A0053E */  clrlwi    r0, r5, 20
/* 06D764 80070764 5464A53E */  extrwi    r4, r3, 12, 8
/* 06D768 80070768 9001004C */  stw       r0, 0x4c(r1)
/* 06D76C 8007076C 5460053E */  clrlwi    r0, r3, 20
/* 06D770 80070770 387E0000 */  addi      r3, r30, 0x0
/* 06D774 80070774 90810050 */  stw       r4, 0x50(r1)
/* 06D778 80070778 38810040 */  addi      r4, r1, 0x40
/* 06D77C 8007077C 90010054 */  stw       r0, 0x54(r1)
/* 06D780 80070780 4BFB54D9 */  bl        frameSetScissor
/* 06D784 80070784 2C030000 */  cmpwi     r3, 0x0
/* 06D788 80070788 40820624 */  bne       lbl_80070DAC
/* 06D78C 8007078C 38600000 */  li        r3, 0x0
/* 06D790 80070790 48000620 */  b         lbl_80070DB0
lbl_80070794:
/* 06D794 80070794 80610098 */  lwz       r3, 0x98(r1)
/* 06D798 80070798 54A6A53E */  extrwi    r6, r5, 12, 8
/* 06D79C 8007079C 54A4053E */  clrlwi    r4, r5, 20
/* 06D7A0 800707A0 5460A53E */  extrwi    r0, r3, 12, 8
/* 06D7A4 800707A4 9001001C */  stw       r0, 0x1c(r1)
/* 06D7A8 800707A8 5460053E */  clrlwi    r0, r3, 20
/* 06D7AC 800707AC 280700E5 */  cmplwi    r7, 0xe5
/* 06D7B0 800707B0 90010020 */  stw       r0, 0x20(r1)
/* 06D7B4 800707B4 5460477E */  extrwi    r0, r3, 3, 5
/* 06D7B8 800707B8 3D004330 */  lis       r8, 0x4330
/* 06D7BC 800707BC 90C10024 */  stw       r6, 0x24(r1)
/* 06D7C0 800707C0 90810028 */  stw       r4, 0x28(r1)
/* 06D7C4 800707C4 8081001C */  lwz       r4, 0x1c(r1)
/* 06D7C8 800707C8 80E10024 */  lwz       r7, 0x24(r1)
/* 06D7CC 800707CC 38840003 */  addi      r4, r4, 0x3
/* 06D7D0 800707D0 80C10020 */  lwz       r6, 0x20(r1)
/* 06D7D4 800707D4 7C891670 */  srawi     r9, r4, 2
/* 06D7D8 800707D8 80810028 */  lwz       r4, 0x28(r1)
/* 06D7DC 800707DC 38E70003 */  addi      r7, r7, 0x3
/* 06D7E0 800707E0 C8428330 */  lfd       f2, D_8018C270@sda21(r0)
/* 06D7E4 800707E4 7CE71670 */  srawi     r7, r7, 2
/* 06D7E8 800707E8 38C60003 */  addi      r6, r6, 0x3
/* 06D7EC 800707EC 90010018 */  stw       r0, 0x18(r1)
/* 06D7F0 800707F0 38040003 */  addi      r0, r4, 0x3
/* 06D7F4 800707F4 7CC61670 */  srawi     r6, r6, 2
/* 06D7F8 800707F8 6D248000 */  xoris     r4, r9, 0x8000
/* 06D7FC 800707FC 908100D4 */  stw       r4, 0xd4(r1)
/* 06D800 80070800 6CE78000 */  xoris     r7, r7, 0x8000
/* 06D804 80070804 7C001670 */  srawi     r0, r0, 2
/* 06D808 80070808 90E100DC */  stw       r7, 0xdc(r1)
/* 06D80C 8007080C 6CC48000 */  xoris     r4, r6, 0x8000
/* 06D810 80070810 6C008000 */  xoris     r0, r0, 0x8000
/* 06D814 80070814 908100CC */  stw       r4, 0xcc(r1)
/* 06D818 80070818 900100C4 */  stw       r0, 0xc4(r1)
/* 06D81C 8007081C 910100D0 */  stw       r8, 0xd0(r1)
/* 06D820 80070820 910100D8 */  stw       r8, 0xd8(r1)
/* 06D824 80070824 C82100D0 */  lfd       f1, 0xd0(r1)
/* 06D828 80070828 C80100D8 */  lfd       f0, 0xd8(r1)
/* 06D82C 8007082C 910100C8 */  stw       r8, 0xc8(r1)
/* 06D830 80070830 EFE11028 */  fsubs     f31, f1, f2
/* 06D834 80070834 EFA01028 */  fsubs     f29, f0, f2
/* 06D838 80070838 910100C0 */  stw       r8, 0xc0(r1)
/* 06D83C 8007083C C82100C8 */  lfd       f1, 0xc8(r1)
/* 06D840 80070840 C80100C0 */  lfd       f0, 0xc0(r1)
/* 06D844 80070844 EFC11028 */  fsubs     f30, f1, f2
/* 06D848 80070848 EF801028 */  fsubs     f28, f0, f2
/* 06D84C 8007084C 4082000C */  bne       lbl_80070858
/* 06D850 80070850 38000001 */  li        r0, 0x1
/* 06D854 80070854 48000008 */  b         lbl_8007085C
lbl_80070858:
/* 06D858 80070858 38000000 */  li        r0, 0x0
lbl_8007085C:
/* 06D85C 8007085C 90010014 */  stw       r0, 0x14(r1)
/* 06D860 80070860 808D8914 */  lwz       r4, gpSystem@sda21(r0)
/* 06D864 80070864 80040020 */  lwz       r0, 0x20(r4)
/* 06D868 80070868 2C000005 */  cmpwi     r0, 0x5
/* 06D86C 8007086C 40820030 */  bne       lbl_8007089C
/* 06D870 80070870 809E0044 */  lwz       r4, 0x44(r30)
/* 06D874 80070874 5480073F */  clrlwi.   r0, r4, 28
/* 06D878 80070878 41820024 */  beq       lbl_8007089C
/* 06D87C 8007087C 3C051BC4 */  addis     r0, r5, 0x1bc4
/* 06D880 80070880 2800023C */  cmplwi    r0, 0x23c
/* 06D884 80070884 40820018 */  bne       lbl_8007089C
/* 06D888 80070888 3C03FFEC */  subis     r0, r3, 0x14
/* 06D88C 8007088C 2800021C */  cmplwi    r0, 0x21c
/* 06D890 80070890 4082000C */  bne       lbl_8007089C
/* 06D894 80070894 60800100 */  ori       r0, r4, 0x100
/* 06D898 80070898 901E0044 */  stw       r0, 0x44(r30)
lbl_8007089C:
/* 06D89C 8007089C 8081009C */  lwz       r4, 0x9c(r1)
/* 06D8A0 800708A0 80640000 */  lwz       r3, 0x0(r4)
/* 06D8A4 800708A4 38040008 */  addi      r0, r4, 0x8
/* 06D8A8 800708A8 90610094 */  stw       r3, 0x94(r1)
/* 06D8AC 800708AC 80640004 */  lwz       r3, 0x4(r4)
/* 06D8B0 800708B0 90610098 */  stw       r3, 0x98(r1)
/* 06D8B4 800708B4 9001009C */  stw       r0, 0x9c(r1)
/* 06D8B8 800708B8 901A0000 */  stw       r0, 0x0(r26)
/* 06D8BC 800708BC 80810094 */  lwz       r4, 0x94(r1)
/* 06D8C0 800708C0 5480463E */  srwi      r0, r4, 24
/* 06D8C4 800708C4 280000B4 */  cmplwi    r0, 0xb4
/* 06D8C8 800708C8 41820014 */  beq       lbl_800708DC
/* 06D8CC 800708CC 280000E1 */  cmplwi    r0, 0xe1
/* 06D8D0 800708D0 4182000C */  beq       lbl_800708DC
/* 06D8D4 800708D4 280000B3 */  cmplwi    r0, 0xb3
/* 06D8D8 800708D8 40820150 */  bne       lbl_80070A28
lbl_800708DC:
/* 06D8DC 800708DC 80A10098 */  lwz       r5, 0x98(r1)
/* 06D8E0 800708E0 3C004330 */  lis       r0, 0x4330
/* 06D8E4 800708E4 80C1009C */  lwz       r6, 0x9c(r1)
/* 06D8E8 800708E8 54A3843E */  srwi      r3, r5, 16
/* 06D8EC 800708EC C8628330 */  lfd       f3, D_8018C270@sda21(r0)
/* 06D8F0 800708F0 7C630734 */  extsh     r3, r3
/* 06D8F4 800708F4 C0428310 */  lfs       f2, D_8018C250@sda21(r0)
/* 06D8F8 800708F8 6C648000 */  xoris     r4, r3, 0x8000
/* 06D8FC 800708FC 54A3043E */  clrlwi    r3, r5, 16
/* 06D900 80070900 908100C4 */  stw       r4, 0xc4(r1)
/* 06D904 80070904 7C630734 */  extsh     r3, r3
/* 06D908 80070908 6C648000 */  xoris     r4, r3, 0x8000
/* 06D90C 8007090C 900100C0 */  stw       r0, 0xc0(r1)
/* 06D910 80070910 38660008 */  addi      r3, r6, 0x8
/* 06D914 80070914 908100CC */  stw       r4, 0xcc(r1)
/* 06D918 80070918 C80100C0 */  lfd       f0, 0xc0(r1)
/* 06D91C 8007091C 900100C8 */  stw       r0, 0xc8(r1)
/* 06D920 80070920 EC201828 */  fsubs     f1, f0, f3
/* 06D924 80070924 C80100C8 */  lfd       f0, 0xc8(r1)
/* 06D928 80070928 EC001828 */  fsubs     f0, f0, f3
/* 06D92C 8007092C EC2100B2 */  fmuls     f1, f1, f2
/* 06D930 80070930 EC0000B2 */  fmuls     f0, f0, f2
/* 06D934 80070934 D021002C */  stfs      f1, 0x2c(r1)
/* 06D938 80070938 D0010030 */  stfs      f0, 0x30(r1)
/* 06D93C 8007093C 80860000 */  lwz       r4, 0x0(r6)
/* 06D940 80070940 90810094 */  stw       r4, 0x94(r1)
/* 06D944 80070944 80860004 */  lwz       r4, 0x4(r6)
/* 06D948 80070948 90810098 */  stw       r4, 0x98(r1)
/* 06D94C 8007094C 9061009C */  stw       r3, 0x9c(r1)
/* 06D950 80070950 907A0000 */  stw       r3, 0x0(r26)
/* 06D954 80070954 80A10098 */  lwz       r5, 0x98(r1)
/* 06D958 80070958 C0428314 */  lfs       f2, D_8018C254@sda21(r0)
/* 06D95C 8007095C 54A3843E */  srwi      r3, r5, 16
/* 06D960 80070960 7C630734 */  extsh     r3, r3
/* 06D964 80070964 6C648000 */  xoris     r4, r3, 0x8000
/* 06D968 80070968 54A3043E */  clrlwi    r3, r5, 16
/* 06D96C 8007096C 908100D4 */  stw       r4, 0xd4(r1)
/* 06D970 80070970 7C630734 */  extsh     r3, r3
/* 06D974 80070974 6C638000 */  xoris     r3, r3, 0x8000
/* 06D978 80070978 900100D0 */  stw       r0, 0xd0(r1)
/* 06D97C 8007097C 906100DC */  stw       r3, 0xdc(r1)
/* 06D980 80070980 C80100D0 */  lfd       f0, 0xd0(r1)
/* 06D984 80070984 900100D8 */  stw       r0, 0xd8(r1)
/* 06D988 80070988 EC201828 */  fsubs     f1, f0, f3
/* 06D98C 8007098C C80100D8 */  lfd       f0, 0xd8(r1)
/* 06D990 80070990 EC001828 */  fsubs     f0, f0, f3
/* 06D994 80070994 EC2100B2 */  fmuls     f1, f1, f2
/* 06D998 80070998 EC0000B2 */  fmuls     f0, f0, f2
/* 06D99C 8007099C D0210034 */  stfs      f1, 0x34(r1)
/* 06D9A0 800709A0 D0010038 */  stfs      f0, 0x38(r1)
/* 06D9A4 800709A4 8061001C */  lwz       r3, 0x1c(r1)
/* 06D9A8 800709A8 80A10024 */  lwz       r5, 0x24(r1)
/* 06D9AC 800709AC 38630003 */  addi      r3, r3, 0x3
/* 06D9B0 800709B0 80810020 */  lwz       r4, 0x20(r1)
/* 06D9B4 800709B4 7C661670 */  srawi     r6, r3, 2
/* 06D9B8 800709B8 80610028 */  lwz       r3, 0x28(r1)
/* 06D9BC 800709BC 38A50003 */  addi      r5, r5, 0x3
/* 06D9C0 800709C0 7CA51670 */  srawi     r5, r5, 2
/* 06D9C4 800709C4 38840003 */  addi      r4, r4, 0x3
/* 06D9C8 800709C8 7C841670 */  srawi     r4, r4, 2
/* 06D9CC 800709CC 38630003 */  addi      r3, r3, 0x3
/* 06D9D0 800709D0 7C631670 */  srawi     r3, r3, 2
/* 06D9D4 800709D4 6CC68000 */  xoris     r6, r6, 0x8000
/* 06D9D8 800709D8 6CA58000 */  xoris     r5, r5, 0x8000
/* 06D9DC 800709DC 90C100BC */  stw       r6, 0xbc(r1)
/* 06D9E0 800709E0 6C848000 */  xoris     r4, r4, 0x8000
/* 06D9E4 800709E4 6C638000 */  xoris     r3, r3, 0x8000
/* 06D9E8 800709E8 90A100B4 */  stw       r5, 0xb4(r1)
/* 06D9EC 800709EC 908100AC */  stw       r4, 0xac(r1)
/* 06D9F0 800709F0 906100A4 */  stw       r3, 0xa4(r1)
/* 06D9F4 800709F4 900100B8 */  stw       r0, 0xb8(r1)
/* 06D9F8 800709F8 900100B0 */  stw       r0, 0xb0(r1)
/* 06D9FC 800709FC C82100B8 */  lfd       f1, 0xb8(r1)
/* 06DA00 80070A00 900100A8 */  stw       r0, 0xa8(r1)
/* 06DA04 80070A04 C80100B0 */  lfd       f0, 0xb0(r1)
/* 06DA08 80070A08 EFE11828 */  fsubs     f31, f1, f3
/* 06DA0C 80070A0C 900100A0 */  stw       r0, 0xa0(r1)
/* 06DA10 80070A10 C82100A8 */  lfd       f1, 0xa8(r1)
/* 06DA14 80070A14 EFA01828 */  fsubs     f29, f0, f3
/* 06DA18 80070A18 C80100A0 */  lfd       f0, 0xa0(r1)
/* 06DA1C 80070A1C EFC11828 */  fsubs     f30, f1, f3
/* 06DA20 80070A20 EF801828 */  fsubs     f28, f0, f3
/* 06DA24 80070A24 480000A8 */  b         lbl_80070ACC
lbl_80070A28:
/* 06DA28 80070A28 5480843E */  srwi      r0, r4, 16
/* 06DA2C 80070A2C 80A10098 */  lwz       r5, 0x98(r1)
/* 06DA30 80070A30 7C000734 */  extsh     r0, r0
/* 06DA34 80070A34 C8C28330 */  lfd       f6, D_8018C270@sda21(r0)
/* 06DA38 80070A38 6C038000 */  xoris     r3, r0, 0x8000
/* 06DA3C 80070A3C C0A28310 */  lfs       f5, D_8018C250@sda21(r0)
/* 06DA40 80070A40 5480043E */  clrlwi    r0, r4, 16
/* 06DA44 80070A44 906100A4 */  stw       r3, 0xa4(r1)
/* 06DA48 80070A48 7C000734 */  extsh     r0, r0
/* 06DA4C 80070A4C C0428314 */  lfs       f2, D_8018C254@sda21(r0)
/* 06DA50 80070A50 6C038000 */  xoris     r3, r0, 0x8000
/* 06DA54 80070A54 54A0843E */  srwi      r0, r5, 16
/* 06DA58 80070A58 906100AC */  stw       r3, 0xac(r1)
/* 06DA5C 80070A5C 3C804330 */  lis       r4, 0x4330
/* 06DA60 80070A60 908100A0 */  stw       r4, 0xa0(r1)
/* 06DA64 80070A64 7C000734 */  extsh     r0, r0
/* 06DA68 80070A68 6C038000 */  xoris     r3, r0, 0x8000
/* 06DA6C 80070A6C 54A0043E */  clrlwi    r0, r5, 16
/* 06DA70 80070A70 908100A8 */  stw       r4, 0xa8(r1)
/* 06DA74 80070A74 7C000734 */  extsh     r0, r0
/* 06DA78 80070A78 C80100A0 */  lfd       f0, 0xa0(r1)
/* 06DA7C 80070A7C 906100B4 */  stw       r3, 0xb4(r1)
/* 06DA80 80070A80 6C008000 */  xoris     r0, r0, 0x8000
/* 06DA84 80070A84 EC203028 */  fsubs     f1, f0, f6
/* 06DA88 80070A88 C80100A8 */  lfd       f0, 0xa8(r1)
/* 06DA8C 80070A8C 908100B0 */  stw       r4, 0xb0(r1)
/* 06DA90 80070A90 EC603028 */  fsubs     f3, f0, f6
/* 06DA94 80070A94 900100BC */  stw       r0, 0xbc(r1)
/* 06DA98 80070A98 C80100B0 */  lfd       f0, 0xb0(r1)
/* 06DA9C 80070A9C EC810172 */  fmuls     f4, f1, f5
/* 06DAA0 80070AA0 908100B8 */  stw       r4, 0xb8(r1)
/* 06DAA4 80070AA4 EC203028 */  fsubs     f1, f0, f6
/* 06DAA8 80070AA8 C80100B8 */  lfd       f0, 0xb8(r1)
/* 06DAAC 80070AAC EC630172 */  fmuls     f3, f3, f5
/* 06DAB0 80070AB0 D081002C */  stfs      f4, 0x2c(r1)
/* 06DAB4 80070AB4 EC003028 */  fsubs     f0, f0, f6
/* 06DAB8 80070AB8 EC2100B2 */  fmuls     f1, f1, f2
/* 06DABC 80070ABC D0610030 */  stfs      f3, 0x30(r1)
/* 06DAC0 80070AC0 EC0000B2 */  fmuls     f0, f0, f2
/* 06DAC4 80070AC4 D0210034 */  stfs      f1, 0x34(r1)
/* 06DAC8 80070AC8 D0010038 */  stfs      f0, 0x38(r1)
lbl_80070ACC:
/* 06DACC 80070ACC 3C7E0004 */  addis     r3, r30, 0x4
/* 06DAD0 80070AD0 80010018 */  lwz       r0, 0x18(r1)
/* 06DAD4 80070AD4 8863D123 */  lbz       r3, -0x2edd(r3)
/* 06DAD8 80070AD8 7C030000 */  cmpw      r3, r0
/* 06DADC 80070ADC 41820010 */  beq       lbl_80070AEC
/* 06DAE0 80070AE0 387E0000 */  addi      r3, r30, 0x0
/* 06DAE4 80070AE4 38800001 */  li        r4, 0x1
/* 06DAE8 80070AE8 4BFAF5C5 */  bl        frameDrawReset
lbl_80070AEC:
/* 06DAEC 80070AEC 80010018 */  lwz       r0, 0x18(r1)
/* 06DAF0 80070AF0 3C7E0004 */  addis     r3, r30, 0x4
/* 06DAF4 80070AF4 9803D123 */  stb       r0, -0x2edd(r3)
/* 06DAF8 80070AF8 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 06DAFC 80070AFC 80030020 */  lwz       r0, 0x20(r3)
/* 06DB00 80070B00 2C000005 */  cmpwi     r0, 0x5
/* 06DB04 80070B04 408201F4 */  bne       lbl_80070CF8
/* 06DB08 80070B08 C0228318 */  lfs       f1, D_8018C258@sda21(r0)
/* 06DB0C 80070B0C FC01F800 */  fcmpu     cr0, f1, f31
/* 06DB10 80070B10 408201E8 */  bne       lbl_80070CF8
/* 06DB14 80070B14 C002831C */  lfs       f0, D_8018C25C@sda21(r0)
/* 06DB18 80070B18 FC00E800 */  fcmpu     cr0, f0, f29
/* 06DB1C 80070B1C 408201DC */  bne       lbl_80070CF8
/* 06DB20 80070B20 FC01F000 */  fcmpu     cr0, f1, f30
/* 06DB24 80070B24 408201D4 */  bne       lbl_80070CF8
/* 06DB28 80070B28 C0028320 */  lfs       f0, D_8018C260@sda21(r0)
/* 06DB2C 80070B2C FC00E000 */  fcmpu     cr0, f0, f28
/* 06DB30 80070B30 408201C8 */  bne       lbl_80070CF8
/* 06DB34 80070B34 801E0048 */  lwz       r0, 0x48(r30)
/* 06DB38 80070B38 2C000000 */  cmpwi     r0, 0x0
/* 06DB3C 80070B3C 418201BC */  beq       lbl_80070CF8
/* 06DB40 80070B40 8321009C */  lwz       r25, 0x9c(r1)
/* 06DB44 80070B44 80790010 */  lwz       r3, 0x10(r25)
/* 06DB48 80070B48 3C030800 */  addis     r0, r3, 0x800
/* 06DB4C 80070B4C 28000000 */  cmplwi    r0, 0x0
/* 06DB50 80070B50 40820040 */  bne       lbl_80070B90
/* 06DB54 80070B54 38600000 */  li        r3, 0x0
/* 06DB58 80070B58 38800000 */  li        r4, 0x0
/* 06DB5C 80070B5C 38A00000 */  li        r5, 0x0
/* 06DB60 80070B60 38C00000 */  li        r6, 0x0
/* 06DB64 80070B64 48039EE1 */  bl        GXSetCopyFilter
/* 06DB68 80070B68 80CD88BC */  lwz       r6, rmode@sda21(r0)
/* 06DB6C 80070B6C 38A00001 */  li        r5, 0x1
/* 06DB70 80070B70 88660019 */  lbz       r3, 0x19(r6)
/* 06DB74 80070B74 3886001A */  addi      r4, r6, 0x1a
/* 06DB78 80070B78 38C60032 */  addi      r6, r6, 0x32
/* 06DB7C 80070B7C 48039EC9 */  bl        GXSetCopyFilter
/* 06DB80 80070B80 38600000 */  li        r3, 0x0
/* 06DB84 80070B84 4803C57D */  bl        fn_800AD100
/* 06DB88 80070B88 38000001 */  li        r0, 0x1
/* 06DB8C 80070B8C 901E0058 */  stw       r0, 0x58(r30)
lbl_80070B90:
/* 06DB90 80070B90 80790010 */  lwz       r3, 0x10(r25)
/* 06DB94 80070B94 3C030700 */  addis     r0, r3, 0x700
/* 06DB98 80070B98 28000000 */  cmplwi    r0, 0x0
/* 06DB9C 80070B9C 4082015C */  bne       lbl_80070CF8
/* 06DBA0 80070BA0 38600000 */  li        r3, 0x0
/* 06DBA4 80070BA4 4803C55D */  bl        fn_800AD100
/* 06DBA8 80070BA8 809E00A8 */  lwz       r4, 0xa8(r30)
/* 06DBAC 80070BAC 3C04E0FD */  subis     r0, r4, 0x1f03
/* 06DBB0 80070BB0 28001F01 */  cmplwi    r0, 0x1f01
/* 06DBB4 80070BB4 40820058 */  bne       lbl_80070C0C
/* 06DBB8 80070BB8 807E00B0 */  lwz       r3, 0xb0(r30)
/* 06DBBC 80070BBC 3C03F8FD */  subis     r0, r3, 0x703
/* 06DBC0 80070BC0 28000701 */  cmplwi    r0, 0x701
/* 06DBC4 80070BC4 40820048 */  bne       lbl_80070C0C
/* 06DBC8 80070BC8 807E00AC */  lwz       r3, 0xac(r30)
/* 06DBCC 80070BCC 3C03E0FD */  subis     r0, r3, 0x1f03
/* 06DBD0 80070BD0 28001F01 */  cmplwi    r0, 0x1f01
/* 06DBD4 80070BD4 40820038 */  bne       lbl_80070C0C
/* 06DBD8 80070BD8 807E00B4 */  lwz       r3, 0xb4(r30)
/* 06DBDC 80070BDC 3C03F8FD */  subis     r0, r3, 0x703
/* 06DBE0 80070BE0 28000701 */  cmplwi    r0, 0x701
/* 06DBE4 80070BE4 40820028 */  bne       lbl_80070C0C
/* 06DBE8 80070BE8 3C601F03 */  lis       r3, 0x1f03
/* 06DBEC 80070BEC 38830106 */  addi      r4, r3, 0x106
/* 06DBF0 80070BF0 3C600703 */  lis       r3, 0x703
/* 06DBF4 80070BF4 909E00A8 */  stw       r4, 0xa8(r30)
/* 06DBF8 80070BF8 38030106 */  addi      r0, r3, 0x106
/* 06DBFC 80070BFC 901E00B0 */  stw       r0, 0xb0(r30)
/* 06DC00 80070C00 909E00AC */  stw       r4, 0xac(r30)
/* 06DC04 80070C04 901E00B4 */  stw       r0, 0xb4(r30)
/* 06DC08 80070C08 48000060 */  b         lbl_80070C68
lbl_80070C0C:
/* 06DC0C 80070C0C 3C04E0FD */  subis     r0, r4, 0x1f03
/* 06DC10 80070C10 28000106 */  cmplwi    r0, 0x106
/* 06DC14 80070C14 40820054 */  bne       lbl_80070C68
/* 06DC18 80070C18 807E00B0 */  lwz       r3, 0xb0(r30)
/* 06DC1C 80070C1C 3C03F8FD */  subis     r0, r3, 0x703
/* 06DC20 80070C20 28000106 */  cmplwi    r0, 0x106
/* 06DC24 80070C24 40820044 */  bne       lbl_80070C68
/* 06DC28 80070C28 807E00AC */  lwz       r3, 0xac(r30)
/* 06DC2C 80070C2C 3C03E0FD */  subis     r0, r3, 0x1f03
/* 06DC30 80070C30 28000106 */  cmplwi    r0, 0x106
/* 06DC34 80070C34 40820034 */  bne       lbl_80070C68
/* 06DC38 80070C38 807E00B4 */  lwz       r3, 0xb4(r30)
/* 06DC3C 80070C3C 3C03F8FD */  subis     r0, r3, 0x703
/* 06DC40 80070C40 28000106 */  cmplwi    r0, 0x106
/* 06DC44 80070C44 40820024 */  bne       lbl_80070C68
/* 06DC48 80070C48 3C601F03 */  lis       r3, 0x1f03
/* 06DC4C 80070C4C 38831F01 */  addi      r4, r3, 0x1f01
/* 06DC50 80070C50 3C600703 */  lis       r3, 0x703
/* 06DC54 80070C54 909E00A8 */  stw       r4, 0xa8(r30)
/* 06DC58 80070C58 38030701 */  addi      r0, r3, 0x701
/* 06DC5C 80070C5C 901E00B0 */  stw       r0, 0xb0(r30)
/* 06DC60 80070C60 909E00AC */  stw       r4, 0xac(r30)
/* 06DC64 80070C64 901E00B4 */  stw       r0, 0xb4(r30)
lbl_80070C68:
/* 06DC68 80070C68 387E0000 */  addi      r3, r30, 0x0
/* 06DC6C 80070C6C 38800003 */  li        r4, 0x3
/* 06DC70 80070C70 38A000FF */  li        r5, 0xff
/* 06DC74 80070C74 4BFB4ED9 */  bl        frameSetColor
/* 06DC78 80070C78 2C030000 */  cmpwi     r3, 0x0
/* 06DC7C 80070C7C 4082000C */  bne       lbl_80070C88
/* 06DC80 80070C80 38600000 */  li        r3, 0x0
/* 06DC84 80070C84 4800012C */  b         lbl_80070DB0
lbl_80070C88:
/* 06DC88 80070C88 387E0000 */  addi      r3, r30, 0x0
/* 06DC8C 80070C8C 38800002 */  li        r4, 0x2
/* 06DC90 80070C90 38A00008 */  li        r5, 0x8
/* 06DC94 80070C94 4BFB4EB9 */  bl        frameSetColor
/* 06DC98 80070C98 2C030000 */  cmpwi     r3, 0x0
/* 06DC9C 80070C9C 4082000C */  bne       lbl_80070CA8
/* 06DCA0 80070CA0 38600000 */  li        r3, 0x0
/* 06DCA4 80070CA4 4800010C */  b         lbl_80070DB0
lbl_80070CA8:
/* 06DCA8 80070CA8 3CBE0004 */  addis     r5, r30, 0x4
/* 06DCAC 80070CAC 38C00000 */  li        r6, 0x0
/* 06DCB0 80070CB0 98C5D121 */  stb       r6, -0x2edf(r5)
/* 06DCB4 80070CB4 3C60AF50 */  lis       r3, 0xaf50
/* 06DCB8 80070CB8 3C80EF00 */  lis       r4, 0xef00
/* 06DCBC 80070CBC 98C5D120 */  stb       r6, -0x2ee0(r5)
/* 06DCC0 80070CC0 38034365 */  addi      r0, r3, 0x4365
/* 06DCC4 80070CC4 3C600C12 */  lis       r3, 0xc12
/* 06DCC8 80070CC8 901E00A0 */  stw       r0, 0xa0(r30)
/* 06DCCC 80070CCC 38042C30 */  addi      r0, r4, 0x2c30
/* 06DCD0 80070CD0 38800001 */  li        r4, 0x1
/* 06DCD4 80070CD4 901E00A4 */  stw       r0, 0xa4(r30)
/* 06DCD8 80070CD8 380303F0 */  addi      r0, r3, 0x3f0
/* 06DCDC 80070CDC 90DE0090 */  stw       r6, 0x90(r30)
/* 06DCE0 80070CE0 90DE0094 */  stw       r6, 0x94(r30)
/* 06DCE4 80070CE4 90DE0098 */  stw       r6, 0x98(r30)
/* 06DCE8 80070CE8 90DE009C */  stw       r6, 0x9c(r30)
/* 06DCEC 80070CEC 909E005C */  stw       r4, 0x5c(r30)
/* 06DCF0 80070CF0 909E0058 */  stw       r4, 0x58(r30)
/* 06DCF4 80070CF4 901E008C */  stw       r0, 0x8c(r30)
lbl_80070CF8:
/* 06DCF8 80070CF8 819E0138 */  lwz       r12, 0x138(r30)
/* 06DCFC 80070CFC 387E0000 */  addi      r3, r30, 0x0
/* 06DD00 80070D00 38810014 */  addi      r4, r1, 0x14
/* 06DD04 80070D04 7D8803A6 */  mtlr      r12
/* 06DD08 80070D08 4E800021 */  blrl
/* 06DD0C 80070D0C 2C030000 */  cmpwi     r3, 0x0
/* 06DD10 80070D10 4082000C */  bne       lbl_80070D1C
/* 06DD14 80070D14 38600000 */  li        r3, 0x0
/* 06DD18 80070D18 48000098 */  b         lbl_80070DB0
lbl_80070D1C:
/* 06DD1C 80070D1C 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 06DD20 80070D20 8081009C */  lwz       r4, 0x9c(r1)
/* 06DD24 80070D24 80030020 */  lwz       r0, 0x20(r3)
/* 06DD28 80070D28 2C000005 */  cmpwi     r0, 0x5
/* 06DD2C 80070D2C 4082006C */  bne       lbl_80070D98
/* 06DD30 80070D30 C0228318 */  lfs       f1, D_8018C258@sda21(r0)
/* 06DD34 80070D34 FC01F800 */  fcmpu     cr0, f1, f31
/* 06DD38 80070D38 40820060 */  bne       lbl_80070D98
/* 06DD3C 80070D3C C002831C */  lfs       f0, D_8018C25C@sda21(r0)
/* 06DD40 80070D40 FC00E800 */  fcmpu     cr0, f0, f29
/* 06DD44 80070D44 40820054 */  bne       lbl_80070D98
/* 06DD48 80070D48 FC01F000 */  fcmpu     cr0, f1, f30
/* 06DD4C 80070D4C 4082004C */  bne       lbl_80070D98
/* 06DD50 80070D50 C0028320 */  lfs       f0, D_8018C260@sda21(r0)
/* 06DD54 80070D54 FC00E000 */  fcmpu     cr0, f0, f28
/* 06DD58 80070D58 40820040 */  bne       lbl_80070D98
/* 06DD5C 80070D5C 801E0048 */  lwz       r0, 0x48(r30)
/* 06DD60 80070D60 2C000000 */  cmpwi     r0, 0x0
/* 06DD64 80070D64 41820034 */  beq       lbl_80070D98
/* 06DD68 80070D68 80640010 */  lwz       r3, 0x10(r4)
/* 06DD6C 80070D6C 3C030800 */  addis     r0, r3, 0x800
/* 06DD70 80070D70 28000000 */  cmplwi    r0, 0x0
/* 06DD74 80070D74 40820010 */  bne       lbl_80070D84
/* 06DD78 80070D78 38000000 */  li        r0, 0x0
/* 06DD7C 80070D7C 901E005C */  stw       r0, 0x5c(r30)
/* 06DD80 80070D80 48000018 */  b         lbl_80070D98
lbl_80070D84:
/* 06DD84 80070D84 3C030700 */  addis     r0, r3, 0x700
/* 06DD88 80070D88 28000000 */  cmplwi    r0, 0x0
/* 06DD8C 80070D8C 4082000C */  bne       lbl_80070D98
/* 06DD90 80070D90 38000000 */  li        r0, 0x0
/* 06DD94 80070D94 901E005C */  stw       r0, 0x5c(r30)
lbl_80070D98:
/* 06DD98 80070D98 38600001 */  li        r3, 0x1
/* 06DD9C 80070D9C 4803C365 */  bl        fn_800AD100
/* 06DDA0 80070DA0 4800000C */  b         lbl_80070DAC
lbl_80070DA4:
/* 06DDA4 80070DA4 38600000 */  li        r3, 0x0
/* 06DDA8 80070DA8 48000008 */  b         lbl_80070DB0
lbl_80070DAC:
/* 06DDAC 80070DAC 38600001 */  li        r3, 0x1
lbl_80070DB0:
/* 06DDB0 80070DB0 BB2100E4 */  lmw       r25, 0xe4(r1)
/* 06DDB4 80070DB4 80010124 */  lwz       r0, 0x124(r1)
/* 06DDB8 80070DB8 CBE10118 */  lfd       f31, 0x118(r1)
/* 06DDBC 80070DBC CBC10110 */  lfd       f30, 0x110(r1)
/* 06DDC0 80070DC0 7C0803A6 */  mtlr      r0
/* 06DDC4 80070DC4 CBA10108 */  lfd       f29, 0x108(r1)
/* 06DDC8 80070DC8 CB810100 */  lfd       f28, 0x100(r1)
/* 06DDCC 80070DCC 38210120 */  addi      r1, r1, 0x120
/* 06DDD0 80070DD0 4E800020 */  blr

# 0x800EF400 - 0x800EF670
.section .data, "wa"

.balign 8

glabel gClassRDP
	.long D_8018B540
	.long 0x00000030
	.long 0x00000000
	.long rdpEvent

glabel D_800EF410
	.long 0xED000000
	.long 0x005003C0
	.long 0xDE010000

jtbl_800EF41C:
	.long rdpGetSpan32, lbl_8006F894
	.long rdpGetSpan32, lbl_8006F8D0
	.long rdpGetSpan32, lbl_8006F8D0
	.long rdpGetSpan32, lbl_8006F8D0
	.long rdpGetSpan32, lbl_8006F8A4
	.long rdpGetSpan32, lbl_8006F8D0
	.long rdpGetSpan32, lbl_8006F8D0
	.long rdpGetSpan32, lbl_8006F8D0
	.long rdpGetSpan32, lbl_8006F8B4
	.long rdpGetSpan32, lbl_8006F8D0
	.long rdpGetSpan32, lbl_8006F8D0
	.long rdpGetSpan32, lbl_8006F8D0
	.long rdpGetSpan32, lbl_8006F8C4

jtbl_800EF450:
	.long rdpPutSpan32, lbl_8006F91C
	.long rdpPutSpan32, lbl_8006F954
	.long rdpPutSpan32, lbl_8006F954
	.long rdpPutSpan32, lbl_8006F954
	.long rdpPutSpan32, lbl_8006F92C
	.long rdpPutSpan32, lbl_8006F954
	.long rdpPutSpan32, lbl_8006F954
	.long rdpPutSpan32, lbl_8006F954
	.long rdpPutSpan32, lbl_8006F93C
	.long rdpPutSpan32, lbl_8006F954
	.long rdpPutSpan32, lbl_8006F954
	.long rdpPutSpan32, lbl_8006F954
	.long rdpPutSpan32, lbl_8006F94C

jtbl_800EF484:
	.long rdpGet32, lbl_8006F998
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006F9A4
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006F9B0
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006F9BC
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006F9C8
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006F9D8
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006F9E8
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006FA08
	.long rdpGet32, lbl_8006F9F8

jtbl_800EF4F8:
	.long rdpPut32, lbl_8006FA60
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FA70
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB20
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FA90
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB20
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB20
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB20
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB18
	.long rdpPut32, lbl_8006FB20

jtbl_800EF56C:
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070794
	.long rdpParseGBI, lbl_80070794
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070DAC
	.long rdpParseGBI, lbl_80070754
	.long rdpParseGBI, lbl_800706F8
	.long rdpParseGBI, lbl_800706B8
	.long rdpParseGBI, lbl_80070694
	.long rdpParseGBI, lbl_80070DA4
	.long rdpParseGBI, lbl_80070634
	.long rdpParseGBI, lbl_800705D0
	.long rdpParseGBI, lbl_80070520
	.long rdpParseGBI, lbl_8007045C
	.long rdpParseGBI, lbl_800703D8
	.long rdpParseGBI, lbl_800703A4
	.long rdpParseGBI, lbl_80070384
	.long rdpParseGBI, lbl_80070364
	.long rdpParseGBI, lbl_80070330
	.long rdpParseGBI, lbl_80070310
	.long rdpParseGBI, lbl_80070128
	.long rdpParseGBI, lbl_8007000C
	.long rdpParseGBI, lbl_8006FF80
	.long rdpParseGBI, lbl_8006FBD0

glabel gap_05_800EF66C_data
.hidden gap_05_800EF66C_data
	.long 0x00000000

# 0x8018B540 - 0x8018B548
.section .sdata, "wa"

glabel D_8018B540
	.long 0x52445000
	.long 0x00000000

# 0x8018BA00 - 0x8018BA18
.section .sbss, "wa"

glabel D_8018BA00
	.skip 0x4

glabel D_8018BA04
	.skip 0x4

glabel D_8018BA08
	.skip 0x4

glabel D_8018BA0C
	.skip 0x4

glabel D_8018BA10
	.skip 0x8

# 0x8018C248 - 0x8018C278
.section .sdata2, "a"

glabel D_8018C248
	.float 32768

glabel D_8018C24C
	.float 65536

glabel D_8018C250
	.float 0.03125

glabel D_8018C254
	.float 0.0009765625

glabel D_8018C258
	.float 0

glabel D_8018C25C
	.float 320

glabel D_8018C260
	.float 240

glabel gap_09_8018C264_sdata2
.hidden gap_09_8018C264_sdata2
	.long 0x00000000

glabel D_8018C268
	.double 4503599627370496

glabel D_8018C270
	.double 4503601774854144
