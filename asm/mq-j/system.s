# system.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8002C67C - 0x80030724

glabel systemEvent
/* 02967C 8002C67C 7C0802A6 */  mflr      r0
/* 029680 8002C680 2C040008 */  cmpwi     r4, 0x8
/* 029684 8002C684 90010004 */  stw       r0, 0x4(r1)
/* 029688 8002C688 9421FF40 */  stwu      r1, -0xc0(r1)
/* 02968C 8002C68C BDC10078 */  stmw      r14, 0x78(r1)
/* 029690 8002C690 3BE30000 */  addi      r31, r3, 0x0
/* 029694 8002C694 3B450000 */  addi      r26, r5, 0x0
/* 029698 8002C698 40800030 */  bge       lbl_8002C6C8
/* 02969C 8002C69C 2C040003 */  cmpwi     r4, 0x3
/* 0296A0 8002C6A0 41820704 */  beq       lbl_8002CDA4
/* 0296A4 8002C6A4 40800018 */  bge       lbl_8002C6BC
/* 0296A8 8002C6A8 2C040002 */  cmpwi     r4, 0x2
/* 0296AC 8002C6AC 40800040 */  bge       lbl_8002C6EC
/* 0296B0 8002C6B0 2C040000 */  cmpwi     r4, 0x0
/* 0296B4 8002C6B4 40800880 */  bge       lbl_8002CF34
/* 0296B8 8002C6B8 48000874 */  b         lbl_8002CF2C
lbl_8002C6BC:
/* 0296BC 8002C6BC 2C040005 */  cmpwi     r4, 0x5
/* 0296C0 8002C6C0 40800874 */  bge       lbl_8002CF34
/* 0296C4 8002C6C4 48000868 */  b         lbl_8002CF2C
lbl_8002C6C8:
/* 0296C8 8002C6C8 2C041001 */  cmpwi     r4, 0x1001
/* 0296CC 8002C6CC 41820778 */  beq       lbl_8002CE44
/* 0296D0 8002C6D0 40800010 */  bge       lbl_8002C6E0
/* 0296D4 8002C6D4 2C041000 */  cmpwi     r4, 0x1000
/* 0296D8 8002C6D8 408007A4 */  bge       lbl_8002CE7C
/* 0296DC 8002C6DC 48000850 */  b         lbl_8002CF2C
lbl_8002C6E0:
/* 0296E0 8002C6E0 2C041003 */  cmpwi     r4, 0x1003
/* 0296E4 8002C6E4 40800848 */  bge       lbl_8002CF2C
/* 0296E8 8002C6E8 480007C8 */  b         lbl_8002CEB0
lbl_8002C6EC:
/* 0296EC 8002C6EC 38000001 */  li        r0, 0x1
/* 0296F0 8002C6F0 901F000C */  stw       r0, 0xc(r31)
/* 0296F4 8002C6F4 3800FFFF */  li        r0, -0x1
/* 0296F8 8002C6F8 3D00800F */  lis       r8, gClassRDP@ha
/* 0296FC 8002C6FC 901F0020 */  stw       r0, 0x20(r31)
/* 029700 8002C700 3DE0800F */  lis       r15, gClassRSP@ha
/* 029704 8002C704 3E00800F */  lis       r16, gClassROM@ha
/* 029708 8002C708 901F006C */  stw       r0, 0x6c(r31)
/* 02970C 8002C70C 3E40800F */  lis       r18, gClassRAM@ha
/* 029710 8002C710 3E20800F */  lis       r17, gClassPIF@ha
/* 029714 8002C714 901F0068 */  stw       r0, 0x68(r31)
/* 029718 8002C718 3BA00000 */  li        r29, 0x0
/* 02971C 8002C71C 3E60800F */  lis       r19, jtbl_800EC918@ha
/* 029720 8002C720 93BF0084 */  stw       r29, 0x84(r31)
/* 029724 8002C724 3E80800F */  lis       r20, gClassCPU@ha
/* 029728 8002C728 3AF2EB90 */  addi      r23, r18, gClassRAM@l
/* 02972C 8002C72C 93BF0010 */  stw       r29, 0x10(r31)
/* 029730 8002C730 3B11EB80 */  addi      r24, r17, gClassPIF@l
/* 029734 8002C734 3B53C918 */  addi      r26, r19, jtbl_800EC918@l
/* 029738 8002C738 800D891C */  lwz       r0, gpFrame@sda21(r0)
/* 02973C 8002C73C 3B34CB20 */  addi      r25, r20, gClassCPU@l
/* 029740 8002C740 3D20800F */  lis       r9, gClassRdb@ha
/* 029744 8002C744 901F0000 */  stw       r0, 0x0(r31)
/* 029748 8002C748 3D40800F */  lis       r10, gClassPeripheral@ha
/* 02974C 8002C74C 3D60800F */  lis       r11, gClassLibrary@ha
/* 029750 8002C750 800D8918 */  lwz       r0, gpSound@sda21(r0)
/* 029754 8002C754 3D80800F */  lis       r12, gClassSerial@ha
/* 029758 8002C758 3C80800F */  lis       r4, gClassVideo@ha
/* 02975C 8002C75C 901F0004 */  stw       r0, 0x4(r31)
/* 029760 8002C760 3809F670 */  addi      r0, r9, gClassRdb@l
/* 029764 8002C764 3CA0800F */  lis       r5, gClassAudio@ha
/* 029768 8002C768 93BF0024 */  stw       r29, 0x24(r31)
/* 02976C 8002C76C 3CC0800F */  lis       r6, gClassDisk@ha
/* 029770 8002C770 3CE0800F */  lis       r7, gClassMips@ha
/* 029774 8002C774 93BF0028 */  stw       r29, 0x28(r31)
/* 029778 8002C778 39C8F400 */  addi      r14, r8, gClassRDP@l
/* 02977C 8002C77C 39EFF6E0 */  addi      r15, r15, gClassRSP@l
/* 029780 8002C780 93BF002C */  stw       r29, 0x2c(r31)
/* 029784 8002C784 3A10EDB0 */  addi      r16, r16, gClassROM@l
/* 029788 8002C788 3B800000 */  li        r28, 0x0
/* 02978C 8002C78C 93BF0030 */  stw       r29, 0x30(r31)
/* 029790 8002C790 3E200420 */  lis       r17, 0x420
/* 029794 8002C794 3E400410 */  lis       r18, 0x410
/* 029798 8002C798 93BF0034 */  stw       r29, 0x34(r31)
/* 02979C 8002C79C 3F601FC0 */  lis       r27, 0x1fc0
/* 0297A0 8002C7A0 3E601FF1 */  lis       r19, 0x1ff1
/* 0297A4 8002C7A4 93BF0038 */  stw       r29, 0x38(r31)
/* 0297A8 8002C7A8 3EC003F0 */  lis       r22, 0x3f0
/* 0297AC 8002C7AC 3EA00400 */  lis       r21, 0x400
/* 0297B0 8002C7B0 93BF003C */  stw       r29, 0x3c(r31)
/* 0297B4 8002C7B4 3E800480 */  lis       r20, 0x480
/* 0297B8 8002C7B8 93BF0040 */  stw       r29, 0x40(r31)
/* 0297BC 8002C7BC 93BF0044 */  stw       r29, 0x44(r31)
/* 0297C0 8002C7C0 93BF0048 */  stw       r29, 0x48(r31)
/* 0297C4 8002C7C4 93BF004C */  stw       r29, 0x4c(r31)
/* 0297C8 8002C7C8 93BF0050 */  stw       r29, 0x50(r31)
/* 0297CC 8002C7CC 93BF0054 */  stw       r29, 0x54(r31)
/* 0297D0 8002C7D0 93BF0058 */  stw       r29, 0x58(r31)
/* 0297D4 8002C7D4 93BF005C */  stw       r29, 0x5c(r31)
/* 0297D8 8002C7D8 93BF0060 */  stw       r29, 0x60(r31)
/* 0297DC 8002C7DC 93BF0008 */  stw       r29, 0x8(r31)
/* 0297E0 8002C7E0 9BBF0074 */  stb       r29, 0x74(r31)
/* 0297E4 8002C7E4 9BBF0075 */  stb       r29, 0x75(r31)
/* 0297E8 8002C7E8 9BBF0076 */  stb       r29, 0x76(r31)
/* 0297EC 8002C7EC 9BBF0077 */  stb       r29, 0x77(r31)
/* 0297F0 8002C7F0 9BBF0078 */  stb       r29, 0x78(r31)
/* 0297F4 8002C7F4 9BBF0079 */  stb       r29, 0x79(r31)
/* 0297F8 8002C7F8 9BBF007A */  stb       r29, 0x7a(r31)
/* 0297FC 8002C7FC 9001006C */  stw       r0, 0x6c(r1)
/* 029800 8002C800 380A147C */  addi      r0, r10, gClassPeripheral@l
/* 029804 8002C804 9BBF007B */  stb       r29, 0x7b(r31)
/* 029808 8002C808 90010064 */  stw       r0, 0x64(r1)
/* 02980C 8002C80C 380BFFCC */  addi      r0, r11, gClassLibrary@l
/* 029810 8002C810 90010060 */  stw       r0, 0x60(r1)
/* 029814 8002C814 380CFEE8 */  addi      r0, r12, gClassSerial@l
/* 029818 8002C818 9BBF007C */  stb       r29, 0x7c(r31)
/* 02981C 8002C81C 90010058 */  stw       r0, 0x58(r1)
/* 029820 8002C820 3804FD30 */  addi      r0, r4, gClassVideo@l
/* 029824 8002C824 90010050 */  stw       r0, 0x50(r1)
/* 029828 8002C828 3805FC38 */  addi      r0, r5, gClassAudio@l
/* 02982C 8002C82C 9BBF007D */  stb       r29, 0x7d(r31)
/* 029830 8002C830 90010048 */  stw       r0, 0x48(r1)
/* 029834 8002C834 3806FC08 */  addi      r0, r6, gClassDisk@l
/* 029838 8002C838 9001003C */  stw       r0, 0x3c(r1)
/* 02983C 8002C83C 3807FB90 */  addi      r0, r7, gClassMips@l
/* 029840 8002C840 9BBF007E */  stb       r29, 0x7e(r31)
/* 029844 8002C844 90010034 */  stw       r0, 0x34(r1)
/* 029848 8002C848 3C000491 */  lis       r0, 0x491
/* 02984C 8002C84C 90010070 */  stw       r0, 0x70(r1)
/* 029850 8002C850 3C000470 */  lis       r0, 0x470
/* 029854 8002C854 9BBF007F */  stb       r29, 0x7f(r31)
/* 029858 8002C858 90010068 */  stw       r0, 0x68(r1)
/* 02985C 8002C85C 3C000490 */  lis       r0, 0x490
/* 029860 8002C860 9001005C */  stw       r0, 0x5c(r1)
/* 029864 8002C864 3C000450 */  lis       r0, 0x450
/* 029868 8002C868 9BBF0080 */  stb       r29, 0x80(r31)
/* 02986C 8002C86C 90010054 */  stw       r0, 0x54(r1)
/* 029870 8002C870 3C000460 */  lis       r0, 0x460
/* 029874 8002C874 9001004C */  stw       r0, 0x4c(r1)
/* 029878 8002C878 3C000600 */  lis       r0, 0x600
/* 02987C 8002C87C 9BBF0081 */  stb       r29, 0x81(r31)
/* 029880 8002C880 90010040 */  stw       r0, 0x40(r1)
/* 029884 8002C884 3C000700 */  lis       r0, 0x700
/* 029888 8002C888 90010044 */  stw       r0, 0x44(r1)
/* 02988C 8002C88C 3C000440 */  lis       r0, 0x440
/* 029890 8002C890 9BBF0082 */  stb       r29, 0x82(r31)
/* 029894 8002C894 90010038 */  stw       r0, 0x38(r1)
/* 029898 8002C898 3C000430 */  lis       r0, 0x430
/* 02989C 8002C89C 90010030 */  stw       r0, 0x30(r1)
/* 0298A0 8002C8A0 9BBF0083 */  stb       r29, 0x83(r31)
lbl_8002C8A4:
/* 0298A4 8002C8A4 281C000F */  cmplwi    r28, 0xf
/* 0298A8 8002C8A8 418104E0 */  bgt       lbl_8002CD88
/* 0298AC 8002C8AC 7C1AE82E */  lwzx      r0, r26, r29
/* 0298B0 8002C8B0 7C0903A6 */  mtctr     r0
/* 0298B4 8002C8B4 4E800420 */  bctr
lbl_8002C8B8:
/* 0298B8 8002C8B8 389F0000 */  addi      r4, r31, 0x0
/* 0298BC 8002C8BC 38B90000 */  addi      r5, r25, 0x0
/* 0298C0 8002C8C0 387F0024 */  addi      r3, r31, 0x24
/* 0298C4 8002C8C4 4BFDB4C1 */  bl        xlObjectMake
/* 0298C8 8002C8C8 2C030000 */  cmpwi     r3, 0x0
/* 0298CC 8002C8CC 4082000C */  bne       lbl_8002C8D8
/* 0298D0 8002C8D0 38600000 */  li        r3, 0x0
/* 0298D4 8002C8D4 48000664 */  b         lbl_8002CF38
lbl_8002C8D8:
/* 0298D8 8002C8D8 83DF0024 */  lwz       r30, 0x24(r31)
/* 0298DC 8002C8DC 389F0000 */  addi      r4, r31, 0x0
/* 0298E0 8002C8E0 38A00000 */  li        r5, 0x0
/* 0298E4 8002C8E4 387E0000 */  addi      r3, r30, 0x0
/* 0298E8 8002C8E8 38C0FFFF */  li        r6, -0x1
/* 0298EC 8002C8EC 38E00000 */  li        r7, 0x0
/* 0298F0 8002C8F0 48008025 */  bl        cpuMapObject
/* 0298F4 8002C8F4 2C030000 */  cmpwi     r3, 0x0
/* 0298F8 8002C8F8 40820498 */  bne       lbl_8002CD90
/* 0298FC 8002C8FC 38600000 */  li        r3, 0x0
/* 029900 8002C900 48000638 */  b         lbl_8002CF38
lbl_8002C904:
/* 029904 8002C904 389F0000 */  addi      r4, r31, 0x0
/* 029908 8002C908 38B80000 */  addi      r5, r24, 0x0
/* 02990C 8002C90C 387F0028 */  addi      r3, r31, 0x28
/* 029910 8002C910 4BFDB475 */  bl        xlObjectMake
/* 029914 8002C914 2C030000 */  cmpwi     r3, 0x0
/* 029918 8002C918 4082000C */  bne       lbl_8002C924
/* 02991C 8002C91C 38600000 */  li        r3, 0x0
/* 029920 8002C920 48000618 */  b         lbl_8002CF38
lbl_8002C924:
/* 029924 8002C924 809F0028 */  lwz       r4, 0x28(r31)
/* 029928 8002C928 387E0000 */  addi      r3, r30, 0x0
/* 02992C 8002C92C 38DB07FF */  addi      r6, r27, 0x7ff
/* 029930 8002C930 3CA01FC0 */  lis       r5, 0x1fc0
/* 029934 8002C934 38E00000 */  li        r7, 0x0
/* 029938 8002C938 48007FDD */  bl        cpuMapObject
/* 02993C 8002C93C 2C030000 */  cmpwi     r3, 0x0
/* 029940 8002C940 40820450 */  bne       lbl_8002CD90
/* 029944 8002C944 38600000 */  li        r3, 0x0
/* 029948 8002C948 480005F0 */  b         lbl_8002CF38
lbl_8002C94C:
/* 02994C 8002C94C 389F0000 */  addi      r4, r31, 0x0
/* 029950 8002C950 38B70000 */  addi      r5, r23, 0x0
/* 029954 8002C954 387F002C */  addi      r3, r31, 0x2c
/* 029958 8002C958 4BFDB42D */  bl        xlObjectMake
/* 02995C 8002C95C 2C030000 */  cmpwi     r3, 0x0
/* 029960 8002C960 4082000C */  bne       lbl_8002C96C
/* 029964 8002C964 38600000 */  li        r3, 0x0
/* 029968 8002C968 480005D0 */  b         lbl_8002CF38
lbl_8002C96C:
/* 02996C 8002C96C 809F002C */  lwz       r4, 0x2c(r31)
/* 029970 8002C970 387E0000 */  addi      r3, r30, 0x0
/* 029974 8002C974 38D6FFFF */  subi      r6, r22, 0x1
/* 029978 8002C978 38A00000 */  li        r5, 0x0
/* 02997C 8002C97C 38E00100 */  li        r7, 0x100
/* 029980 8002C980 48007F95 */  bl        cpuMapObject
/* 029984 8002C984 2C030000 */  cmpwi     r3, 0x0
/* 029988 8002C988 4082000C */  bne       lbl_8002C994
/* 02998C 8002C98C 38600000 */  li        r3, 0x0
/* 029990 8002C990 480005A8 */  b         lbl_8002CF38
lbl_8002C994:
/* 029994 8002C994 809F002C */  lwz       r4, 0x2c(r31)
/* 029998 8002C998 387E0000 */  addi      r3, r30, 0x0
/* 02999C 8002C99C 38D5FFFF */  subi      r6, r21, 0x1
/* 0299A0 8002C9A0 3CA003F0 */  lis       r5, 0x3f0
/* 0299A4 8002C9A4 38E00002 */  li        r7, 0x2
/* 0299A8 8002C9A8 48007F6D */  bl        cpuMapObject
/* 0299AC 8002C9AC 2C030000 */  cmpwi     r3, 0x0
/* 0299B0 8002C9B0 4082000C */  bne       lbl_8002C9BC
/* 0299B4 8002C9B4 38600000 */  li        r3, 0x0
/* 0299B8 8002C9B8 48000580 */  b         lbl_8002CF38
lbl_8002C9BC:
/* 0299BC 8002C9BC 809F002C */  lwz       r4, 0x2c(r31)
/* 0299C0 8002C9C0 387E0000 */  addi      r3, r30, 0x0
/* 0299C4 8002C9C4 38D4FFFF */  subi      r6, r20, 0x1
/* 0299C8 8002C9C8 3CA00470 */  lis       r5, 0x470
/* 0299CC 8002C9CC 38E00001 */  li        r7, 0x1
/* 0299D0 8002C9D0 48007F45 */  bl        cpuMapObject
/* 0299D4 8002C9D4 2C030000 */  cmpwi     r3, 0x0
/* 0299D8 8002C9D8 408203B8 */  bne       lbl_8002CD90
/* 0299DC 8002C9DC 38600000 */  li        r3, 0x0
/* 0299E0 8002C9E0 48000558 */  b         lbl_8002CF38
lbl_8002C9E4:
/* 0299E4 8002C9E4 389F0000 */  addi      r4, r31, 0x0
/* 0299E8 8002C9E8 38B00000 */  addi      r5, r16, 0x0
/* 0299EC 8002C9EC 387F0030 */  addi      r3, r31, 0x30
/* 0299F0 8002C9F0 4BFDB395 */  bl        xlObjectMake
/* 0299F4 8002C9F4 2C030000 */  cmpwi     r3, 0x0
/* 0299F8 8002C9F8 4082000C */  bne       lbl_8002CA04
/* 0299FC 8002C9FC 38600000 */  li        r3, 0x0
/* 029A00 8002CA00 48000538 */  b         lbl_8002CF38
lbl_8002CA04:
/* 029A04 8002CA04 809F0030 */  lwz       r4, 0x30(r31)
/* 029A08 8002CA08 387E0000 */  addi      r3, r30, 0x0
/* 029A0C 8002CA0C 38DBFFFF */  subi      r6, r27, 0x1
/* 029A10 8002CA10 3CA01000 */  lis       r5, 0x1000
/* 029A14 8002CA14 38E00000 */  li        r7, 0x0
/* 029A18 8002CA18 48007EFD */  bl        cpuMapObject
/* 029A1C 8002CA1C 2C030000 */  cmpwi     r3, 0x0
/* 029A20 8002CA20 4082000C */  bne       lbl_8002CA2C
/* 029A24 8002CA24 38600000 */  li        r3, 0x0
/* 029A28 8002CA28 48000510 */  b         lbl_8002CF38
lbl_8002CA2C:
/* 029A2C 8002CA2C 809F0030 */  lwz       r4, 0x30(r31)
/* 029A30 8002CA30 387E0000 */  addi      r3, r30, 0x0
/* 029A34 8002CA34 38D3FFFF */  subi      r6, r19, 0x1
/* 029A38 8002CA38 3CA01FF0 */  lis       r5, 0x1ff0
/* 029A3C 8002CA3C 38E00001 */  li        r7, 0x1
/* 029A40 8002CA40 48007ED5 */  bl        cpuMapObject
/* 029A44 8002CA44 2C030000 */  cmpwi     r3, 0x0
/* 029A48 8002CA48 40820348 */  bne       lbl_8002CD90
/* 029A4C 8002CA4C 38600000 */  li        r3, 0x0
/* 029A50 8002CA50 480004E8 */  b         lbl_8002CF38
lbl_8002CA54:
/* 029A54 8002CA54 389F0000 */  addi      r4, r31, 0x0
/* 029A58 8002CA58 38AF0000 */  addi      r5, r15, 0x0
/* 029A5C 8002CA5C 387F0034 */  addi      r3, r31, 0x34
/* 029A60 8002CA60 4BFDB325 */  bl        xlObjectMake
/* 029A64 8002CA64 2C030000 */  cmpwi     r3, 0x0
/* 029A68 8002CA68 4082000C */  bne       lbl_8002CA74
/* 029A6C 8002CA6C 38600000 */  li        r3, 0x0
/* 029A70 8002CA70 480004C8 */  b         lbl_8002CF38
lbl_8002CA74:
/* 029A74 8002CA74 809F0034 */  lwz       r4, 0x34(r31)
/* 029A78 8002CA78 387E0000 */  addi      r3, r30, 0x0
/* 029A7C 8002CA7C 38D2FFFF */  subi      r6, r18, 0x1
/* 029A80 8002CA80 3CA00400 */  lis       r5, 0x400
/* 029A84 8002CA84 38E00000 */  li        r7, 0x0
/* 029A88 8002CA88 48007E8D */  bl        cpuMapObject
/* 029A8C 8002CA8C 2C030000 */  cmpwi     r3, 0x0
/* 029A90 8002CA90 40820300 */  bne       lbl_8002CD90
/* 029A94 8002CA94 38600000 */  li        r3, 0x0
/* 029A98 8002CA98 480004A0 */  b         lbl_8002CF38
lbl_8002CA9C:
/* 029A9C 8002CA9C 389F0000 */  addi      r4, r31, 0x0
/* 029AA0 8002CAA0 38AE0000 */  addi      r5, r14, 0x0
/* 029AA4 8002CAA4 387F0038 */  addi      r3, r31, 0x38
/* 029AA8 8002CAA8 4BFDB2DD */  bl        xlObjectMake
/* 029AAC 8002CAAC 2C030000 */  cmpwi     r3, 0x0
/* 029AB0 8002CAB0 4082000C */  bne       lbl_8002CABC
/* 029AB4 8002CAB4 38600000 */  li        r3, 0x0
/* 029AB8 8002CAB8 48000480 */  b         lbl_8002CF38
lbl_8002CABC:
/* 029ABC 8002CABC 809F0038 */  lwz       r4, 0x38(r31)
/* 029AC0 8002CAC0 387E0000 */  addi      r3, r30, 0x0
/* 029AC4 8002CAC4 38D1FFFF */  subi      r6, r17, 0x1
/* 029AC8 8002CAC8 3CA00410 */  lis       r5, 0x410
/* 029ACC 8002CACC 38E00000 */  li        r7, 0x0
/* 029AD0 8002CAD0 48007E45 */  bl        cpuMapObject
/* 029AD4 8002CAD4 2C030000 */  cmpwi     r3, 0x0
/* 029AD8 8002CAD8 4082000C */  bne       lbl_8002CAE4
/* 029ADC 8002CADC 38600000 */  li        r3, 0x0
/* 029AE0 8002CAE0 48000458 */  b         lbl_8002CF38
lbl_8002CAE4:
/* 029AE4 8002CAE4 80A10030 */  lwz       r5, 0x30(r1)
/* 029AE8 8002CAE8 7FC3F378 */  mr        r3, r30
/* 029AEC 8002CAEC 809F0038 */  lwz       r4, 0x38(r31)
/* 029AF0 8002CAF0 38E00001 */  li        r7, 0x1
/* 029AF4 8002CAF4 38C5FFFF */  subi      r6, r5, 0x1
/* 029AF8 8002CAF8 3CA00420 */  lis       r5, 0x420
/* 029AFC 8002CAFC 48007E19 */  bl        cpuMapObject
/* 029B00 8002CB00 2C030000 */  cmpwi     r3, 0x0
/* 029B04 8002CB04 4082028C */  bne       lbl_8002CD90
/* 029B08 8002CB08 38600000 */  li        r3, 0x0
/* 029B0C 8002CB0C 4800042C */  b         lbl_8002CF38
lbl_8002CB10:
/* 029B10 8002CB10 80A10034 */  lwz       r5, 0x34(r1)
/* 029B14 8002CB14 7FE4FB78 */  mr        r4, r31
/* 029B18 8002CB18 387F003C */  addi      r3, r31, 0x3c
/* 029B1C 8002CB1C 4BFDB269 */  bl        xlObjectMake
/* 029B20 8002CB20 2C030000 */  cmpwi     r3, 0x0
/* 029B24 8002CB24 4082000C */  bne       lbl_8002CB30
/* 029B28 8002CB28 38600000 */  li        r3, 0x0
/* 029B2C 8002CB2C 4800040C */  b         lbl_8002CF38
lbl_8002CB30:
/* 029B30 8002CB30 80A10038 */  lwz       r5, 0x38(r1)
/* 029B34 8002CB34 7FC3F378 */  mr        r3, r30
/* 029B38 8002CB38 809F003C */  lwz       r4, 0x3c(r31)
/* 029B3C 8002CB3C 38E00000 */  li        r7, 0x0
/* 029B40 8002CB40 38C5FFFF */  subi      r6, r5, 0x1
/* 029B44 8002CB44 3CA00430 */  lis       r5, 0x430
/* 029B48 8002CB48 48007DCD */  bl        cpuMapObject
/* 029B4C 8002CB4C 2C030000 */  cmpwi     r3, 0x0
/* 029B50 8002CB50 40820240 */  bne       lbl_8002CD90
/* 029B54 8002CB54 38600000 */  li        r3, 0x0
/* 029B58 8002CB58 480003E0 */  b         lbl_8002CF38
lbl_8002CB5C:
/* 029B5C 8002CB5C 80A1003C */  lwz       r5, 0x3c(r1)
/* 029B60 8002CB60 7FE4FB78 */  mr        r4, r31
/* 029B64 8002CB64 387F0040 */  addi      r3, r31, 0x40
/* 029B68 8002CB68 4BFDB21D */  bl        xlObjectMake
/* 029B6C 8002CB6C 2C030000 */  cmpwi     r3, 0x0
/* 029B70 8002CB70 4082000C */  bne       lbl_8002CB7C
/* 029B74 8002CB74 38600000 */  li        r3, 0x0
/* 029B78 8002CB78 480003C0 */  b         lbl_8002CF38
lbl_8002CB7C:
/* 029B7C 8002CB7C 80A10040 */  lwz       r5, 0x40(r1)
/* 029B80 8002CB80 7FC3F378 */  mr        r3, r30
/* 029B84 8002CB84 809F0040 */  lwz       r4, 0x40(r31)
/* 029B88 8002CB88 38E00000 */  li        r7, 0x0
/* 029B8C 8002CB8C 38C5FFFF */  subi      r6, r5, 0x1
/* 029B90 8002CB90 3CA00500 */  lis       r5, 0x500
/* 029B94 8002CB94 48007D81 */  bl        cpuMapObject
/* 029B98 8002CB98 2C030000 */  cmpwi     r3, 0x0
/* 029B9C 8002CB9C 4082000C */  bne       lbl_8002CBA8
/* 029BA0 8002CBA0 38600000 */  li        r3, 0x0
/* 029BA4 8002CBA4 48000394 */  b         lbl_8002CF38
lbl_8002CBA8:
/* 029BA8 8002CBA8 80A10044 */  lwz       r5, 0x44(r1)
/* 029BAC 8002CBAC 7FC3F378 */  mr        r3, r30
/* 029BB0 8002CBB0 809F0040 */  lwz       r4, 0x40(r31)
/* 029BB4 8002CBB4 38E00001 */  li        r7, 0x1
/* 029BB8 8002CBB8 38C5FFFF */  subi      r6, r5, 0x1
/* 029BBC 8002CBBC 3CA00600 */  lis       r5, 0x600
/* 029BC0 8002CBC0 48007D55 */  bl        cpuMapObject
/* 029BC4 8002CBC4 2C030000 */  cmpwi     r3, 0x0
/* 029BC8 8002CBC8 408201C8 */  bne       lbl_8002CD90
/* 029BCC 8002CBCC 38600000 */  li        r3, 0x0
/* 029BD0 8002CBD0 48000368 */  b         lbl_8002CF38
lbl_8002CBD4:
/* 029BD4 8002CBD4 38000000 */  li        r0, 0x0
/* 029BD8 8002CBD8 901F0044 */  stw       r0, 0x44(r31)
/* 029BDC 8002CBDC 480001B4 */  b         lbl_8002CD90
lbl_8002CBE0:
/* 029BE0 8002CBE0 38000000 */  li        r0, 0x0
/* 029BE4 8002CBE4 901F0048 */  stw       r0, 0x48(r31)
/* 029BE8 8002CBE8 480001A8 */  b         lbl_8002CD90
lbl_8002CBEC:
/* 029BEC 8002CBEC 80A10048 */  lwz       r5, 0x48(r1)
/* 029BF0 8002CBF0 7FE4FB78 */  mr        r4, r31
/* 029BF4 8002CBF4 387F004C */  addi      r3, r31, 0x4c
/* 029BF8 8002CBF8 4BFDB18D */  bl        xlObjectMake
/* 029BFC 8002CBFC 2C030000 */  cmpwi     r3, 0x0
/* 029C00 8002CC00 4082000C */  bne       lbl_8002CC0C
/* 029C04 8002CC04 38600000 */  li        r3, 0x0
/* 029C08 8002CC08 48000330 */  b         lbl_8002CF38
lbl_8002CC0C:
/* 029C0C 8002CC0C 80A1004C */  lwz       r5, 0x4c(r1)
/* 029C10 8002CC10 7FC3F378 */  mr        r3, r30
/* 029C14 8002CC14 809F004C */  lwz       r4, 0x4c(r31)
/* 029C18 8002CC18 38E00000 */  li        r7, 0x0
/* 029C1C 8002CC1C 38C5FFFF */  subi      r6, r5, 0x1
/* 029C20 8002CC20 3CA00450 */  lis       r5, 0x450
/* 029C24 8002CC24 48007CF1 */  bl        cpuMapObject
/* 029C28 8002CC28 2C030000 */  cmpwi     r3, 0x0
/* 029C2C 8002CC2C 40820164 */  bne       lbl_8002CD90
/* 029C30 8002CC30 38600000 */  li        r3, 0x0
/* 029C34 8002CC34 48000304 */  b         lbl_8002CF38
lbl_8002CC38:
/* 029C38 8002CC38 80A10050 */  lwz       r5, 0x50(r1)
/* 029C3C 8002CC3C 7FE4FB78 */  mr        r4, r31
/* 029C40 8002CC40 387F0050 */  addi      r3, r31, 0x50
/* 029C44 8002CC44 4BFDB141 */  bl        xlObjectMake
/* 029C48 8002CC48 2C030000 */  cmpwi     r3, 0x0
/* 029C4C 8002CC4C 4082000C */  bne       lbl_8002CC58
/* 029C50 8002CC50 38600000 */  li        r3, 0x0
/* 029C54 8002CC54 480002E4 */  b         lbl_8002CF38
lbl_8002CC58:
/* 029C58 8002CC58 80A10054 */  lwz       r5, 0x54(r1)
/* 029C5C 8002CC5C 7FC3F378 */  mr        r3, r30
/* 029C60 8002CC60 809F0050 */  lwz       r4, 0x50(r31)
/* 029C64 8002CC64 38E00000 */  li        r7, 0x0
/* 029C68 8002CC68 38C5FFFF */  subi      r6, r5, 0x1
/* 029C6C 8002CC6C 3CA00440 */  lis       r5, 0x440
/* 029C70 8002CC70 48007CA5 */  bl        cpuMapObject
/* 029C74 8002CC74 2C030000 */  cmpwi     r3, 0x0
/* 029C78 8002CC78 40820118 */  bne       lbl_8002CD90
/* 029C7C 8002CC7C 38600000 */  li        r3, 0x0
/* 029C80 8002CC80 480002B8 */  b         lbl_8002CF38
lbl_8002CC84:
/* 029C84 8002CC84 80A10058 */  lwz       r5, 0x58(r1)
/* 029C88 8002CC88 7FE4FB78 */  mr        r4, r31
/* 029C8C 8002CC8C 387F0054 */  addi      r3, r31, 0x54
/* 029C90 8002CC90 4BFDB0F5 */  bl        xlObjectMake
/* 029C94 8002CC94 2C030000 */  cmpwi     r3, 0x0
/* 029C98 8002CC98 4082000C */  bne       lbl_8002CCA4
/* 029C9C 8002CC9C 38600000 */  li        r3, 0x0
/* 029CA0 8002CCA0 48000298 */  b         lbl_8002CF38
lbl_8002CCA4:
/* 029CA4 8002CCA4 80A1005C */  lwz       r5, 0x5c(r1)
/* 029CA8 8002CCA8 7FC3F378 */  mr        r3, r30
/* 029CAC 8002CCAC 809F0054 */  lwz       r4, 0x54(r31)
/* 029CB0 8002CCB0 38E00000 */  li        r7, 0x0
/* 029CB4 8002CCB4 38C5FFFF */  subi      r6, r5, 0x1
/* 029CB8 8002CCB8 3CA00480 */  lis       r5, 0x480
/* 029CBC 8002CCBC 48007C59 */  bl        cpuMapObject
/* 029CC0 8002CCC0 2C030000 */  cmpwi     r3, 0x0
/* 029CC4 8002CCC4 408200CC */  bne       lbl_8002CD90
/* 029CC8 8002CCC8 38600000 */  li        r3, 0x0
/* 029CCC 8002CCCC 4800026C */  b         lbl_8002CF38
lbl_8002CCD0:
/* 029CD0 8002CCD0 80A10060 */  lwz       r5, 0x60(r1)
/* 029CD4 8002CCD4 7FE4FB78 */  mr        r4, r31
/* 029CD8 8002CCD8 387F0058 */  addi      r3, r31, 0x58
/* 029CDC 8002CCDC 4BFDB0A9 */  bl        xlObjectMake
/* 029CE0 8002CCE0 2C030000 */  cmpwi     r3, 0x0
/* 029CE4 8002CCE4 408200AC */  bne       lbl_8002CD90
/* 029CE8 8002CCE8 38600000 */  li        r3, 0x0
/* 029CEC 8002CCEC 4800024C */  b         lbl_8002CF38
lbl_8002CCF0:
/* 029CF0 8002CCF0 80A10064 */  lwz       r5, 0x64(r1)
/* 029CF4 8002CCF4 7FE4FB78 */  mr        r4, r31
/* 029CF8 8002CCF8 387F005C */  addi      r3, r31, 0x5c
/* 029CFC 8002CCFC 4BFDB089 */  bl        xlObjectMake
/* 029D00 8002CD00 2C030000 */  cmpwi     r3, 0x0
/* 029D04 8002CD04 4082000C */  bne       lbl_8002CD10
/* 029D08 8002CD08 38600000 */  li        r3, 0x0
/* 029D0C 8002CD0C 4800022C */  b         lbl_8002CF38
lbl_8002CD10:
/* 029D10 8002CD10 80A10068 */  lwz       r5, 0x68(r1)
/* 029D14 8002CD14 7FC3F378 */  mr        r3, r30
/* 029D18 8002CD18 809F005C */  lwz       r4, 0x5c(r31)
/* 029D1C 8002CD1C 38E00000 */  li        r7, 0x0
/* 029D20 8002CD20 38C5FFFF */  subi      r6, r5, 0x1
/* 029D24 8002CD24 3CA00460 */  lis       r5, 0x460
/* 029D28 8002CD28 48007BED */  bl        cpuMapObject
/* 029D2C 8002CD2C 2C030000 */  cmpwi     r3, 0x0
/* 029D30 8002CD30 40820060 */  bne       lbl_8002CD90
/* 029D34 8002CD34 38600000 */  li        r3, 0x0
/* 029D38 8002CD38 48000200 */  b         lbl_8002CF38
lbl_8002CD3C:
/* 029D3C 8002CD3C 80A1006C */  lwz       r5, 0x6c(r1)
/* 029D40 8002CD40 7FE4FB78 */  mr        r4, r31
/* 029D44 8002CD44 387F0060 */  addi      r3, r31, 0x60
/* 029D48 8002CD48 4BFDB03D */  bl        xlObjectMake
/* 029D4C 8002CD4C 2C030000 */  cmpwi     r3, 0x0
/* 029D50 8002CD50 4082000C */  bne       lbl_8002CD5C
/* 029D54 8002CD54 38600000 */  li        r3, 0x0
/* 029D58 8002CD58 480001E0 */  b         lbl_8002CF38
lbl_8002CD5C:
/* 029D5C 8002CD5C 80A10070 */  lwz       r5, 0x70(r1)
/* 029D60 8002CD60 7FC3F378 */  mr        r3, r30
/* 029D64 8002CD64 809F0060 */  lwz       r4, 0x60(r31)
/* 029D68 8002CD68 38E00000 */  li        r7, 0x0
/* 029D6C 8002CD6C 38C5FFFF */  subi      r6, r5, 0x1
/* 029D70 8002CD70 3CA00490 */  lis       r5, 0x490
/* 029D74 8002CD74 48007BA1 */  bl        cpuMapObject
/* 029D78 8002CD78 2C030000 */  cmpwi     r3, 0x0
/* 029D7C 8002CD7C 40820014 */  bne       lbl_8002CD90
/* 029D80 8002CD80 38600000 */  li        r3, 0x0
/* 029D84 8002CD84 480001B4 */  b         lbl_8002CF38
lbl_8002CD88:
/* 029D88 8002CD88 38600000 */  li        r3, 0x0
/* 029D8C 8002CD8C 480001AC */  b         lbl_8002CF38
lbl_8002CD90:
/* 029D90 8002CD90 3B9C0001 */  addi      r28, r28, 0x1
/* 029D94 8002CD94 2C1C0010 */  cmpwi     r28, 0x10
/* 029D98 8002CD98 3BBD0004 */  addi      r29, r29, 0x4
/* 029D9C 8002CD9C 4180FB08 */  blt       lbl_8002C8A4
/* 029DA0 8002CDA0 48000194 */  b         lbl_8002CF34
lbl_8002CDA4:
/* 029DA4 8002CDA4 3BC00000 */  li        r30, 0x0
/* 029DA8 8002CDA8 3B800000 */  li        r28, 0x0
lbl_8002CDAC:
/* 029DAC 8002CDAC 2C1E0008 */  cmpwi     r30, 0x8
/* 029DB0 8002CDB0 41820028 */  beq       lbl_8002CDD8
/* 029DB4 8002CDB4 2C1E0009 */  cmpwi     r30, 0x9
/* 029DB8 8002CDB8 41820020 */  beq       lbl_8002CDD8
/* 029DBC 8002CDBC 387C0024 */  addi      r3, r28, 0x24
/* 029DC0 8002CDC0 7C7F1A14 */  add       r3, r31, r3
/* 029DC4 8002CDC4 4BFDAF29 */  bl        xlObjectFree
/* 029DC8 8002CDC8 2C030000 */  cmpwi     r3, 0x0
/* 029DCC 8002CDCC 40820064 */  bne       lbl_8002CE30
/* 029DD0 8002CDD0 38600000 */  li        r3, 0x0
/* 029DD4 8002CDD4 48000164 */  b         lbl_8002CF38
lbl_8002CDD8:
/* 029DD8 8002CDD8 2C1E0008 */  cmpwi     r30, 0x8
/* 029DDC 8002CDDC 40820028 */  bne       lbl_8002CE04
/* 029DE0 8002CDE0 801F0070 */  lwz       r0, 0x70(r31)
/* 029DE4 8002CDE4 2C000008 */  cmpwi     r0, 0x8
/* 029DE8 8002CDE8 40820048 */  bne       lbl_8002CE30
/* 029DEC 8002CDEC 387F0044 */  addi      r3, r31, 0x44
/* 029DF0 8002CDF0 4BFDAEFD */  bl        xlObjectFree
/* 029DF4 8002CDF4 2C030000 */  cmpwi     r3, 0x0
/* 029DF8 8002CDF8 40820038 */  bne       lbl_8002CE30
/* 029DFC 8002CDFC 38600000 */  li        r3, 0x0
/* 029E00 8002CE00 48000138 */  b         lbl_8002CF38
lbl_8002CE04:
/* 029E04 8002CE04 2C1E0009 */  cmpwi     r30, 0x9
/* 029E08 8002CE08 40820028 */  bne       lbl_8002CE30
/* 029E0C 8002CE0C 801F0070 */  lwz       r0, 0x70(r31)
/* 029E10 8002CE10 2C000009 */  cmpwi     r0, 0x9
/* 029E14 8002CE14 4082001C */  bne       lbl_8002CE30
/* 029E18 8002CE18 387F0048 */  addi      r3, r31, 0x48
/* 029E1C 8002CE1C 4BFDAED1 */  bl        xlObjectFree
/* 029E20 8002CE20 2C030000 */  cmpwi     r3, 0x0
/* 029E24 8002CE24 4082000C */  bne       lbl_8002CE30
/* 029E28 8002CE28 38600000 */  li        r3, 0x0
/* 029E2C 8002CE2C 4800010C */  b         lbl_8002CF38
lbl_8002CE30:
/* 029E30 8002CE30 3BDE0001 */  addi      r30, r30, 0x1
/* 029E34 8002CE34 2C1E0010 */  cmpwi     r30, 0x10
/* 029E38 8002CE38 3B9C0004 */  addi      r28, r28, 0x4
/* 029E3C 8002CE3C 4180FF70 */  blt       lbl_8002CDAC
/* 029E40 8002CE40 480000F4 */  b         lbl_8002CF34
lbl_8002CE44:
/* 029E44 8002CE44 387F0000 */  addi      r3, r31, 0x0
/* 029E48 8002CE48 389A0000 */  addi      r4, r26, 0x0
/* 029E4C 8002CE4C 38A1001C */  addi      r5, r1, 0x1c
/* 029E50 8002CE50 48000931 */  bl        systemGetException
/* 029E54 8002CE54 2C030000 */  cmpwi     r3, 0x0
/* 029E58 8002CE58 4082000C */  bne       lbl_8002CE64
/* 029E5C 8002CE5C 38600000 */  li        r3, 0x0
/* 029E60 8002CE60 480000D8 */  b         lbl_8002CF38
lbl_8002CE64:
/* 029E64 8002CE64 8081002C */  lwz       r4, 0x2c(r1)
/* 029E68 8002CE68 2C04FFFF */  cmpwi     r4, -0x1
/* 029E6C 8002CE6C 418200C8 */  beq       lbl_8002CF34
/* 029E70 8002CE70 807F003C */  lwz       r3, 0x3c(r31)
/* 029E74 8002CE74 4805FF45 */  bl        mipsResetInterrupt
/* 029E78 8002CE78 480000BC */  b         lbl_8002CF34
lbl_8002CE7C:
/* 029E7C 8002CE7C 2C1AFFFF */  cmpwi     r26, -0x1
/* 029E80 8002CE80 40810028 */  ble       lbl_8002CEA8
/* 029E84 8002CE84 2C1A0010 */  cmpwi     r26, 0x10
/* 029E88 8002CE88 40800020 */  bge       lbl_8002CEA8
/* 029E8C 8002CE8C 38000001 */  li        r0, 0x1
/* 029E90 8002CE90 901F0008 */  stw       r0, 0x8(r31)
/* 029E94 8002CE94 7C9FD214 */  add       r4, r31, r26
/* 029E98 8002CE98 88640074 */  lbz       r3, 0x74(r4)
/* 029E9C 8002CE9C 38030001 */  addi      r0, r3, 0x1
/* 029EA0 8002CEA0 98040074 */  stb       r0, 0x74(r4)
/* 029EA4 8002CEA4 48000090 */  b         lbl_8002CF34
lbl_8002CEA8:
/* 029EA8 8002CEA8 38600000 */  li        r3, 0x0
/* 029EAC 8002CEAC 4800008C */  b         lbl_8002CF38
lbl_8002CEB0:
/* 029EB0 8002CEB0 3CA08003 */  lis       r5, systemPut8@ha
/* 029EB4 8002CEB4 807F0024 */  lwz       r3, 0x24(r31)
/* 029EB8 8002CEB8 3CC08003 */  lis       r6, systemPut16@ha
/* 029EBC 8002CEBC 3CE08003 */  lis       r7, systemPut32@ha
/* 029EC0 8002CEC0 3C808003 */  lis       r4, systemPut64@ha
/* 029EC4 8002CEC4 3904D71C */  addi      r8, r4, systemPut64@l
/* 029EC8 8002CEC8 3A3F0024 */  addi      r17, r31, 0x24
/* 029ECC 8002CECC 38A5D734 */  addi      r5, r5, systemPut8@l
/* 029ED0 8002CED0 38C6D72C */  addi      r6, r6, systemPut16@l
/* 029ED4 8002CED4 38E7D724 */  addi      r7, r7, systemPut32@l
/* 029ED8 8002CED8 389A0000 */  addi      r4, r26, 0x0
/* 029EDC 8002CEDC 48007A09 */  bl        cpuSetDevicePut
/* 029EE0 8002CEE0 2C030000 */  cmpwi     r3, 0x0
/* 029EE4 8002CEE4 4082000C */  bne       lbl_8002CEF0
/* 029EE8 8002CEE8 38600000 */  li        r3, 0x0
/* 029EEC 8002CEEC 4800004C */  b         lbl_8002CF38
lbl_8002CEF0:
/* 029EF0 8002CEF0 3CA08003 */  lis       r5, systemGet8@ha
/* 029EF4 8002CEF4 80710000 */  lwz       r3, 0x0(r17)
/* 029EF8 8002CEF8 3CC08003 */  lis       r6, systemGet16@ha
/* 029EFC 8002CEFC 3CE08003 */  lis       r7, systemGet32@ha
/* 029F00 8002CF00 3C808003 */  lis       r4, systemGet64@ha
/* 029F04 8002CF04 3904D73C */  addi      r8, r4, systemGet64@l
/* 029F08 8002CF08 38A5D770 */  addi      r5, r5, systemGet8@l
/* 029F0C 8002CF0C 38C6D760 */  addi      r6, r6, systemGet16@l
/* 029F10 8002CF10 38E7D750 */  addi      r7, r7, systemGet32@l
/* 029F14 8002CF14 389A0000 */  addi      r4, r26, 0x0
/* 029F18 8002CF18 480079E5 */  bl        cpuSetDeviceGet
/* 029F1C 8002CF1C 2C030000 */  cmpwi     r3, 0x0
/* 029F20 8002CF20 40820014 */  bne       lbl_8002CF34
/* 029F24 8002CF24 38600000 */  li        r3, 0x0
/* 029F28 8002CF28 48000010 */  b         lbl_8002CF38
lbl_8002CF2C:
/* 029F2C 8002CF2C 38600000 */  li        r3, 0x0
/* 029F30 8002CF30 48000008 */  b         lbl_8002CF38
lbl_8002CF34:
/* 029F34 8002CF34 38600001 */  li        r3, 0x1
lbl_8002CF38:
/* 029F38 8002CF38 B9C10078 */  lmw       r14, 0x78(r1)
/* 029F3C 8002CF3C 800100C4 */  lwz       r0, 0xc4(r1)
/* 029F40 8002CF40 382100C0 */  addi      r1, r1, 0xc0
/* 029F44 8002CF44 7C0803A6 */  mtlr      r0
/* 029F48 8002CF48 4E800020 */  blr

glabel systemExceptionPending
/* 029F4C 8002CF4C 2C04FFFF */  cmpwi     r4, -0x1
/* 029F50 8002CF50 4081002C */  ble       lbl_8002CF7C
/* 029F54 8002CF54 2C040010 */  cmpwi     r4, 0x10
/* 029F58 8002CF58 40800024 */  bge       lbl_8002CF7C
/* 029F5C 8002CF5C 7C632214 */  add       r3, r3, r4
/* 029F60 8002CF60 88030074 */  lbz       r0, 0x74(r3)
/* 029F64 8002CF64 28000000 */  cmplwi    r0, 0x0
/* 029F68 8002CF68 4182000C */  beq       lbl_8002CF74
/* 029F6C 8002CF6C 38600001 */  li        r3, 0x1
/* 029F70 8002CF70 4E800020 */  blr
lbl_8002CF74:
/* 029F74 8002CF74 38600000 */  li        r3, 0x0
/* 029F78 8002CF78 4E800020 */  blr
lbl_8002CF7C:
/* 029F7C 8002CF7C 38600000 */  li        r3, 0x0
/* 029F80 8002CF80 4E800020 */  blr

glabel systemCheckInterrupts
/* 029F84 8002CF84 7C0802A6 */  mflr      r0
/* 029F88 8002CF88 90010004 */  stw       r0, 0x4(r1)
/* 029F8C 8002CF8C 38000000 */  li        r0, 0x0
/* 029F90 8002CF90 9421FFC0 */  stwu      r1, -0x40(r1)
/* 029F94 8002CF94 BF210024 */  stmw      r25, 0x24(r1)
/* 029F98 8002CF98 3B230000 */  addi      r25, r3, 0x0
/* 029F9C 8002CF9C 3BA00000 */  li        r29, 0x0
/* 029FA0 8002CFA0 3B40FFFF */  li        r26, -0x1
/* 029FA4 8002CFA4 3B600000 */  li        r27, 0x0
/* 029FA8 8002CFA8 3BC00000 */  li        r30, 0x0
/* 029FAC 8002CFAC 90030008 */  stw       r0, 0x8(r3)
lbl_8002CFB0:
/* 029FB0 8002CFB0 3BFE0074 */  addi      r31, r30, 0x74
/* 029FB4 8002CFB4 7FF9FA14 */  add       r31, r25, r31
/* 029FB8 8002CFB8 881F0000 */  lbz       r0, 0x0(r31)
/* 029FBC 8002CFBC 28000000 */  cmplwi    r0, 0x0
/* 029FC0 8002CFC0 418200A8 */  beq       lbl_8002D068
/* 029FC4 8002CFC4 38000001 */  li        r0, 0x1
/* 029FC8 8002CFC8 2C1B0000 */  cmpwi     r27, 0x0
/* 029FCC 8002CFCC 90190008 */  stw       r0, 0x8(r25)
/* 029FD0 8002CFD0 40820098 */  bne       lbl_8002D068
/* 029FD4 8002CFD4 38790000 */  addi      r3, r25, 0x0
/* 029FD8 8002CFD8 389E0000 */  addi      r4, r30, 0x0
/* 029FDC 8002CFDC 38A1000C */  addi      r5, r1, 0xc
/* 029FE0 8002CFE0 480007A1 */  bl        systemGetException
/* 029FE4 8002CFE4 2C030000 */  cmpwi     r3, 0x0
/* 029FE8 8002CFE8 4082000C */  bne       lbl_8002CFF4
/* 029FEC 8002CFEC 38600000 */  li        r3, 0x0
/* 029FF0 8002CFF0 480000D8 */  b         lbl_8002D0C8
lbl_8002CFF4:
/* 029FF4 8002CFF4 80010014 */  lwz       r0, 0x14(r1)
/* 029FF8 8002CFF8 3B800000 */  li        r28, 0x0
/* 029FFC 8002CFFC 2C000000 */  cmpwi     r0, 0x0
/* 02A000 8002D000 4082003C */  bne       lbl_8002D03C
/* 02A004 8002D004 80790024 */  lwz       r3, 0x24(r25)
/* 02A008 8002D008 80810010 */  lwz       r4, 0x10(r1)
/* 02A00C 8002D00C 48008BAD */  bl        cpuTestInterrupt
/* 02A010 8002D010 2C030000 */  cmpwi     r3, 0x0
/* 02A014 8002D014 4182003C */  beq       lbl_8002D050
/* 02A018 8002D018 8081001C */  lwz       r4, 0x1c(r1)
/* 02A01C 8002D01C 2C04FFFF */  cmpwi     r4, -0x1
/* 02A020 8002D020 41820014 */  beq       lbl_8002D034
/* 02A024 8002D024 8079003C */  lwz       r3, 0x3c(r25)
/* 02A028 8002D028 4805FE35 */  bl        mipsSetInterrupt
/* 02A02C 8002D02C 2C030000 */  cmpwi     r3, 0x0
/* 02A030 8002D030 41820020 */  beq       lbl_8002D050
lbl_8002D034:
/* 02A034 8002D034 3B800001 */  li        r28, 0x1
/* 02A038 8002D038 48000018 */  b         lbl_8002D050
lbl_8002D03C:
/* 02A03C 8002D03C 2C1D0000 */  cmpwi     r29, 0x0
/* 02A040 8002D040 3B600001 */  li        r27, 0x1
/* 02A044 8002D044 4082000C */  bne       lbl_8002D050
/* 02A048 8002D048 3B800001 */  li        r28, 0x1
/* 02A04C 8002D04C 7C1A0378 */  mr        r26, r0
lbl_8002D050:
/* 02A050 8002D050 2C1C0000 */  cmpwi     r28, 0x0
/* 02A054 8002D054 41820014 */  beq       lbl_8002D068
/* 02A058 8002D058 80610010 */  lwz       r3, 0x10(r1)
/* 02A05C 8002D05C 38000000 */  li        r0, 0x0
/* 02A060 8002D060 981F0000 */  stb       r0, 0x0(r31)
/* 02A064 8002D064 7FBD1B78 */  or        r29, r29, r3
lbl_8002D068:
/* 02A068 8002D068 3BDE0001 */  addi      r30, r30, 0x1
/* 02A06C 8002D06C 2C1E0010 */  cmpwi     r30, 0x10
/* 02A070 8002D070 4180FF40 */  blt       lbl_8002CFB0
/* 02A074 8002D074 2C1D0000 */  cmpwi     r29, 0x0
/* 02A078 8002D078 41820024 */  beq       lbl_8002D09C
/* 02A07C 8002D07C 80790024 */  lwz       r3, 0x24(r25)
/* 02A080 8002D080 38BD0000 */  addi      r5, r29, 0x0
/* 02A084 8002D084 38800000 */  li        r4, 0x0
/* 02A088 8002D088 48008871 */  bl        cpuException
/* 02A08C 8002D08C 2C030000 */  cmpwi     r3, 0x0
/* 02A090 8002D090 40820034 */  bne       lbl_8002D0C4
/* 02A094 8002D094 38600000 */  li        r3, 0x0
/* 02A098 8002D098 48000030 */  b         lbl_8002D0C8
lbl_8002D09C:
/* 02A09C 8002D09C 2C1AFFFF */  cmpwi     r26, -0x1
/* 02A0A0 8002D0A0 41820024 */  beq       lbl_8002D0C4
/* 02A0A4 8002D0A4 80790024 */  lwz       r3, 0x24(r25)
/* 02A0A8 8002D0A8 389A0000 */  addi      r4, r26, 0x0
/* 02A0AC 8002D0AC 38A00000 */  li        r5, 0x0
/* 02A0B0 8002D0B0 48008849 */  bl        cpuException
/* 02A0B4 8002D0B4 2C030000 */  cmpwi     r3, 0x0
/* 02A0B8 8002D0B8 4082000C */  bne       lbl_8002D0C4
/* 02A0BC 8002D0BC 38600000 */  li        r3, 0x0
/* 02A0C0 8002D0C0 48000008 */  b         lbl_8002D0C8
lbl_8002D0C4:
/* 02A0C4 8002D0C4 38600001 */  li        r3, 0x1
lbl_8002D0C8:
/* 02A0C8 8002D0C8 BB210024 */  lmw       r25, 0x24(r1)
/* 02A0CC 8002D0CC 80010044 */  lwz       r0, 0x44(r1)
/* 02A0D0 8002D0D0 38210040 */  addi      r1, r1, 0x40
/* 02A0D4 8002D0D4 7C0803A6 */  mtlr      r0
/* 02A0D8 8002D0D8 4E800020 */  blr

glabel systemExecute
/* 02A0DC 8002D0DC 7C0802A6 */  mflr      r0
/* 02A0E0 8002D0E0 90010004 */  stw       r0, 0x4(r1)
/* 02A0E4 8002D0E4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 02A0E8 8002D0E8 93E10014 */  stw       r31, 0x14(r1)
/* 02A0EC 8002D0EC 3BE30000 */  addi      r31, r3, 0x0
/* 02A0F0 8002D0F0 93C10010 */  stw       r30, 0x10(r1)
/* 02A0F4 8002D0F4 3BDF0024 */  addi      r30, r31, 0x24
/* 02A0F8 8002D0F8 80A30068 */  lwz       r5, 0x68(r3)
/* 02A0FC 8002D0FC 80630024 */  lwz       r3, 0x24(r3)
/* 02A100 8002D100 80DF006C */  lwz       r6, 0x6c(r31)
/* 02A104 8002D104 48009019 */  bl        cpuExecute
/* 02A108 8002D108 2C030000 */  cmpwi     r3, 0x0
/* 02A10C 8002D10C 40820050 */  bne       lbl_8002D15C
/* 02A110 8002D110 3C60800F */  lis       r3, gClassSystem@ha
/* 02A114 8002D114 3883C7C8 */  addi      r4, r3, gClassSystem@l
/* 02A118 8002D118 387F0000 */  addi      r3, r31, 0x0
/* 02A11C 8002D11C 4BFDAB69 */  bl        xlObjectTest
/* 02A120 8002D120 2C030000 */  cmpwi     r3, 0x0
/* 02A124 8002D124 4182001C */  beq       lbl_8002D140
/* 02A128 8002D128 38600001 */  li        r3, 0x1
/* 02A12C 8002D12C 907F000C */  stw       r3, 0xc(r31)
/* 02A130 8002D130 3800FFFF */  li        r0, -0x1
/* 02A134 8002D134 901F006C */  stw       r0, 0x6c(r31)
/* 02A138 8002D138 901F0068 */  stw       r0, 0x68(r31)
/* 02A13C 8002D13C 48000008 */  b         lbl_8002D144
lbl_8002D140:
/* 02A140 8002D140 38600000 */  li        r3, 0x0
lbl_8002D144:
/* 02A144 8002D144 2C030000 */  cmpwi     r3, 0x0
/* 02A148 8002D148 4082000C */  bne       lbl_8002D154
/* 02A14C 8002D14C 38600000 */  li        r3, 0x0
/* 02A150 8002D150 48000070 */  b         lbl_8002D1C0
lbl_8002D154:
/* 02A154 8002D154 38600000 */  li        r3, 0x0
/* 02A158 8002D158 48000068 */  b         lbl_8002D1C0
lbl_8002D15C:
/* 02A15C 8002D15C 807E0000 */  lwz       r3, 0x0(r30)
/* 02A160 8002D160 3BC00000 */  li        r30, 0x0
/* 02A164 8002D164 801F0068 */  lwz       r0, 0x68(r31)
/* 02A168 8002D168 809F006C */  lwz       r4, 0x6c(r31)
/* 02A16C 8002D16C 80630028 */  lwz       r3, 0x28(r3)
/* 02A170 8002D170 7C00F278 */  xor       r0, r0, r30
/* 02A174 8002D174 7C831A78 */  xor       r3, r4, r3
/* 02A178 8002D178 7C600379 */  or.       r0, r3, r0
/* 02A17C 8002D17C 40820040 */  bne       lbl_8002D1BC
/* 02A180 8002D180 3C60800F */  lis       r3, gClassSystem@ha
/* 02A184 8002D184 3883C7C8 */  addi      r4, r3, gClassSystem@l
/* 02A188 8002D188 387F0000 */  addi      r3, r31, 0x0
/* 02A18C 8002D18C 4BFDAAF9 */  bl        xlObjectTest
/* 02A190 8002D190 2C030000 */  cmpwi     r3, 0x0
/* 02A194 8002D194 41820018 */  beq       lbl_8002D1AC
/* 02A198 8002D198 3BC00001 */  li        r30, 0x1
/* 02A19C 8002D19C 93DF000C */  stw       r30, 0xc(r31)
/* 02A1A0 8002D1A0 3800FFFF */  li        r0, -0x1
/* 02A1A4 8002D1A4 901F006C */  stw       r0, 0x6c(r31)
/* 02A1A8 8002D1A8 901F0068 */  stw       r0, 0x68(r31)
lbl_8002D1AC:
/* 02A1AC 8002D1AC 2C1E0000 */  cmpwi     r30, 0x0
/* 02A1B0 8002D1B0 4082000C */  bne       lbl_8002D1BC
/* 02A1B4 8002D1B4 38600000 */  li        r3, 0x0
/* 02A1B8 8002D1B8 48000008 */  b         lbl_8002D1C0
lbl_8002D1BC:
/* 02A1BC 8002D1BC 38600001 */  li        r3, 0x1
lbl_8002D1C0:
/* 02A1C0 8002D1C0 8001001C */  lwz       r0, 0x1c(r1)
/* 02A1C4 8002D1C4 83E10014 */  lwz       r31, 0x14(r1)
/* 02A1C8 8002D1C8 83C10010 */  lwz       r30, 0x10(r1)
/* 02A1CC 8002D1CC 7C0803A6 */  mtlr      r0
/* 02A1D0 8002D1D0 38210018 */  addi      r1, r1, 0x18
/* 02A1D4 8002D1D4 4E800020 */  blr

glabel systemReset
/* 02A1D8 8002D1D8 7C0802A6 */  mflr      r0
/* 02A1DC 8002D1DC 38800000 */  li        r4, 0x0
/* 02A1E0 8002D1E0 90010004 */  stw       r0, 0x4(r1)
/* 02A1E4 8002D1E4 3800FFFF */  li        r0, -0x1
/* 02A1E8 8002D1E8 9421FFE0 */  stwu      r1, -0x20(r1)
/* 02A1EC 8002D1EC 93E1001C */  stw       r31, 0x1c(r1)
/* 02A1F0 8002D1F0 93C10018 */  stw       r30, 0x18(r1)
/* 02A1F4 8002D1F4 3BC30000 */  addi      r30, r3, 0x0
/* 02A1F8 8002D1F8 3BFE0030 */  addi      r31, r30, 0x30
/* 02A1FC 8002D1FC 9003006C */  stw       r0, 0x6c(r3)
/* 02A200 8002D200 90030068 */  stw       r0, 0x68(r3)
/* 02A204 8002D204 80630030 */  lwz       r3, 0x30(r3)
/* 02A208 8002D208 4803FC35 */  bl        romGetImage
/* 02A20C 8002D20C 2C030000 */  cmpwi     r3, 0x0
/* 02A210 8002D210 418200F0 */  beq       lbl_8002D300
/* 02A214 8002D214 7FC3F378 */  mr        r3, r30
/* 02A218 8002D218 480031D5 */  bl        systemSetupGameRAM
/* 02A21C 8002D21C 2C030000 */  cmpwi     r3, 0x0
/* 02A220 8002D220 4082000C */  bne       lbl_8002D22C
/* 02A224 8002D224 38600000 */  li        r3, 0x0
/* 02A228 8002D228 480000DC */  b         lbl_8002D304
lbl_8002D22C:
/* 02A22C 8002D22C 807E002C */  lwz       r3, 0x2c(r30)
/* 02A230 8002D230 4803F699 */  bl        ramWipe
/* 02A234 8002D234 2C030000 */  cmpwi     r3, 0x0
/* 02A238 8002D238 4082000C */  bne       lbl_8002D244
/* 02A23C 8002D23C 38600000 */  li        r3, 0x0
/* 02A240 8002D240 480000C4 */  b         lbl_8002D304
lbl_8002D244:
/* 02A244 8002D244 807F0000 */  lwz       r3, 0x0(r31)
/* 02A248 8002D248 38810010 */  addi      r4, r1, 0x10
/* 02A24C 8002D24C 480407F1 */  bl        romGetPC
/* 02A250 8002D250 2C030000 */  cmpwi     r3, 0x0
/* 02A254 8002D254 4082000C */  bne       lbl_8002D260
/* 02A258 8002D258 38600000 */  li        r3, 0x0
/* 02A25C 8002D25C 480000A8 */  b         lbl_8002D304
lbl_8002D260:
/* 02A260 8002D260 3C600100 */  lis       r3, 0x100
/* 02A264 8002D264 80810014 */  lwz       r4, 0x14(r1)
/* 02A268 8002D268 3803FFFF */  subi      r0, r3, 0x1
/* 02A26C 8002D26C 7C840038 */  and       r4, r4, r0
/* 02A270 8002D270 387E0000 */  addi      r3, r30, 0x0
/* 02A274 8002D274 38A01000 */  li        r5, 0x1000
/* 02A278 8002D278 3CC00010 */  lis       r6, 0x10
/* 02A27C 8002D27C 38E00000 */  li        r7, 0x0
/* 02A280 8002D280 48000271 */  bl        systemCopyROM
/* 02A284 8002D284 2C030000 */  cmpwi     r3, 0x0
/* 02A288 8002D288 4082000C */  bne       lbl_8002D294
/* 02A28C 8002D28C 38600000 */  li        r3, 0x0
/* 02A290 8002D290 48000074 */  b         lbl_8002D304
lbl_8002D294:
/* 02A294 8002D294 3BFE0024 */  addi      r31, r30, 0x24
/* 02A298 8002D298 807E0024 */  lwz       r3, 0x24(r30)
/* 02A29C 8002D29C 480070F9 */  bl        cpuReset
/* 02A2A0 8002D2A0 2C030000 */  cmpwi     r3, 0x0
/* 02A2A4 8002D2A4 4082000C */  bne       lbl_8002D2B0
/* 02A2A8 8002D2A8 38600000 */  li        r3, 0x0
/* 02A2AC 8002D2AC 48000058 */  b         lbl_8002D304
lbl_8002D2B0:
/* 02A2B0 8002D2B0 807F0000 */  lwz       r3, 0x0(r31)
/* 02A2B4 8002D2B4 39000000 */  li        r8, 0x0
/* 02A2B8 8002D2B8 80A10010 */  lwz       r5, 0x10(r1)
/* 02A2BC 8002D2BC 38E00000 */  li        r7, 0x0
/* 02A2C0 8002D2C0 80C10014 */  lwz       r6, 0x14(r1)
/* 02A2C4 8002D2C4 39400000 */  li        r10, 0x0
/* 02A2C8 8002D2C8 39200000 */  li        r9, 0x0
/* 02A2CC 8002D2CC 4800704D */  bl        cpuSetXPC
/* 02A2D0 8002D2D0 7FC3F378 */  mr        r3, r30
/* 02A2D4 8002D2D4 48000689 */  bl        systemSetupGameALL
/* 02A2D8 8002D2D8 2C030000 */  cmpwi     r3, 0x0
/* 02A2DC 8002D2DC 4082000C */  bne       lbl_8002D2E8
/* 02A2E0 8002D2E0 38600000 */  li        r3, 0x0
/* 02A2E4 8002D2E4 48000020 */  b         lbl_8002D304
lbl_8002D2E8:
/* 02A2E8 8002D2E8 807E0058 */  lwz       r3, 0x58(r30)
/* 02A2EC 8002D2EC 48061781 */  bl        libraryUpdate
/* 02A2F0 8002D2F0 2C030000 */  cmpwi     r3, 0x0
/* 02A2F4 8002D2F4 4082000C */  bne       lbl_8002D300
/* 02A2F8 8002D2F8 38600000 */  li        r3, 0x0
/* 02A2FC 8002D2FC 48000008 */  b         lbl_8002D304
lbl_8002D300:
/* 02A300 8002D300 38600001 */  li        r3, 0x1
lbl_8002D304:
/* 02A304 8002D304 80010024 */  lwz       r0, 0x24(r1)
/* 02A308 8002D308 83E1001C */  lwz       r31, 0x1c(r1)
/* 02A30C 8002D30C 83C10018 */  lwz       r30, 0x18(r1)
/* 02A310 8002D310 7C0803A6 */  mtlr      r0
/* 02A314 8002D314 38210020 */  addi      r1, r1, 0x20
/* 02A318 8002D318 4E800020 */  blr

glabel systemGetStorageDevice
/* 02A31C 8002D31C 80030070 */  lwz       r0, 0x70(r3)
/* 02A320 8002D320 38600001 */  li        r3, 0x1
/* 02A324 8002D324 90040000 */  stw       r0, 0x0(r4)
/* 02A328 8002D328 4E800020 */  blr

glabel systemSetStorageDevice
/* 02A32C 8002D32C 7C0802A6 */  mflr      r0
/* 02A330 8002D330 90010004 */  stw       r0, 0x4(r1)
/* 02A334 8002D334 9421FFE8 */  stwu      r1, -0x18(r1)
/* 02A338 8002D338 93E10014 */  stw       r31, 0x14(r1)
/* 02A33C 8002D33C 3BE40000 */  addi      r31, r4, 0x0
/* 02A340 8002D340 2C1F0008 */  cmpwi     r31, 0x8
/* 02A344 8002D344 93C10010 */  stw       r30, 0x10(r1)
/* 02A348 8002D348 3BC30000 */  addi      r30, r3, 0x0
/* 02A34C 8002D34C 93E30070 */  stw       r31, 0x70(r3)
/* 02A350 8002D350 40820054 */  bne       lbl_8002D3A4
/* 02A354 8002D354 3C60800F */  lis       r3, gClassFlash@ha
/* 02A358 8002D358 38A3FC18 */  addi      r5, r3, gClassFlash@l
/* 02A35C 8002D35C 389E0000 */  addi      r4, r30, 0x0
/* 02A360 8002D360 387E0044 */  addi      r3, r30, 0x44
/* 02A364 8002D364 4BFDAA21 */  bl        xlObjectMake
/* 02A368 8002D368 2C030000 */  cmpwi     r3, 0x0
/* 02A36C 8002D36C 4082000C */  bne       lbl_8002D378
/* 02A370 8002D370 38600000 */  li        r3, 0x0
/* 02A374 8002D374 4800008C */  b         lbl_8002D400
lbl_8002D378:
/* 02A378 8002D378 3CA00802 */  lis       r5, 0x802
/* 02A37C 8002D37C 807E0024 */  lwz       r3, 0x24(r30)
/* 02A380 8002D380 809E0044 */  lwz       r4, 0x44(r30)
/* 02A384 8002D384 38C5FFFF */  subi      r6, r5, 0x1
/* 02A388 8002D388 3CA00800 */  lis       r5, 0x800
/* 02A38C 8002D38C 38E00000 */  li        r7, 0x0
/* 02A390 8002D390 48007585 */  bl        cpuMapObject
/* 02A394 8002D394 2C030000 */  cmpwi     r3, 0x0
/* 02A398 8002D398 4082000C */  bne       lbl_8002D3A4
/* 02A39C 8002D39C 38600000 */  li        r3, 0x0
/* 02A3A0 8002D3A0 48000060 */  b         lbl_8002D400
lbl_8002D3A4:
/* 02A3A4 8002D3A4 2C1F0009 */  cmpwi     r31, 0x9
/* 02A3A8 8002D3A8 40820054 */  bne       lbl_8002D3FC
/* 02A3AC 8002D3AC 3C60800F */  lis       r3, gClassSram@ha
/* 02A3B0 8002D3B0 38A3FC28 */  addi      r5, r3, gClassSram@l
/* 02A3B4 8002D3B4 389E0000 */  addi      r4, r30, 0x0
/* 02A3B8 8002D3B8 387E0048 */  addi      r3, r30, 0x48
/* 02A3BC 8002D3BC 4BFDA9C9 */  bl        xlObjectMake
/* 02A3C0 8002D3C0 2C030000 */  cmpwi     r3, 0x0
/* 02A3C4 8002D3C4 4082000C */  bne       lbl_8002D3D0
/* 02A3C8 8002D3C8 38600000 */  li        r3, 0x0
/* 02A3CC 8002D3CC 48000034 */  b         lbl_8002D400
lbl_8002D3D0:
/* 02A3D0 8002D3D0 3CA00800 */  lis       r5, 0x800
/* 02A3D4 8002D3D4 807E0024 */  lwz       r3, 0x24(r30)
/* 02A3D8 8002D3D8 809E0048 */  lwz       r4, 0x48(r30)
/* 02A3DC 8002D3DC 38C57FFF */  addi      r6, r5, 0x7fff
/* 02A3E0 8002D3E0 3CA00800 */  lis       r5, 0x800
/* 02A3E4 8002D3E4 38E00000 */  li        r7, 0x0
/* 02A3E8 8002D3E8 4800752D */  bl        cpuMapObject
/* 02A3EC 8002D3EC 2C030000 */  cmpwi     r3, 0x0
/* 02A3F0 8002D3F0 4082000C */  bne       lbl_8002D3FC
/* 02A3F4 8002D3F4 38600000 */  li        r3, 0x0
/* 02A3F8 8002D3F8 48000008 */  b         lbl_8002D400
lbl_8002D3FC:
/* 02A3FC 8002D3FC 38600001 */  li        r3, 0x1
lbl_8002D400:
/* 02A400 8002D400 8001001C */  lwz       r0, 0x1c(r1)
/* 02A404 8002D404 83E10014 */  lwz       r31, 0x14(r1)
/* 02A408 8002D408 83C10010 */  lwz       r30, 0x10(r1)
/* 02A40C 8002D40C 7C0803A6 */  mtlr      r0
/* 02A410 8002D410 38210018 */  addi      r1, r1, 0x18
/* 02A414 8002D414 4E800020 */  blr

glabel systemGetMode
/* 02A418 8002D418 7C0802A6 */  mflr      r0
/* 02A41C 8002D41C 3CA0800F */  lis       r5, gClassSystem@ha
/* 02A420 8002D420 90010004 */  stw       r0, 0x4(r1)
/* 02A424 8002D424 3805C7C8 */  addi      r0, r5, gClassSystem@l
/* 02A428 8002D428 9421FFE8 */  stwu      r1, -0x18(r1)
/* 02A42C 8002D42C 93E10014 */  stw       r31, 0x14(r1)
/* 02A430 8002D430 3BE40000 */  addi      r31, r4, 0x0
/* 02A434 8002D434 7C040378 */  mr        r4, r0
/* 02A438 8002D438 93C10010 */  stw       r30, 0x10(r1)
/* 02A43C 8002D43C 3BC30000 */  addi      r30, r3, 0x0
/* 02A440 8002D440 4BFDA845 */  bl        xlObjectTest
/* 02A444 8002D444 2C030000 */  cmpwi     r3, 0x0
/* 02A448 8002D448 4182001C */  beq       lbl_8002D464
/* 02A44C 8002D44C 281F0000 */  cmplwi    r31, 0x0
/* 02A450 8002D450 41820014 */  beq       lbl_8002D464
/* 02A454 8002D454 801E000C */  lwz       r0, 0xc(r30)
/* 02A458 8002D458 38600001 */  li        r3, 0x1
/* 02A45C 8002D45C 901F0000 */  stw       r0, 0x0(r31)
/* 02A460 8002D460 48000008 */  b         lbl_8002D468
lbl_8002D464:
/* 02A464 8002D464 38600000 */  li        r3, 0x0
lbl_8002D468:
/* 02A468 8002D468 8001001C */  lwz       r0, 0x1c(r1)
/* 02A46C 8002D46C 83E10014 */  lwz       r31, 0x14(r1)
/* 02A470 8002D470 83C10010 */  lwz       r30, 0x10(r1)
/* 02A474 8002D474 7C0803A6 */  mtlr      r0
/* 02A478 8002D478 38210018 */  addi      r1, r1, 0x18
/* 02A47C 8002D47C 4E800020 */  blr

glabel systemSetMode
/* 02A480 8002D480 7C0802A6 */  mflr      r0
/* 02A484 8002D484 3CA0800F */  lis       r5, gClassSystem@ha
/* 02A488 8002D488 90010004 */  stw       r0, 0x4(r1)
/* 02A48C 8002D48C 3805C7C8 */  addi      r0, r5, gClassSystem@l
/* 02A490 8002D490 9421FFE8 */  stwu      r1, -0x18(r1)
/* 02A494 8002D494 93E10014 */  stw       r31, 0x14(r1)
/* 02A498 8002D498 3BE40000 */  addi      r31, r4, 0x0
/* 02A49C 8002D49C 7C040378 */  mr        r4, r0
/* 02A4A0 8002D4A0 93C10010 */  stw       r30, 0x10(r1)
/* 02A4A4 8002D4A4 3BC30000 */  addi      r30, r3, 0x0
/* 02A4A8 8002D4A8 4BFDA7DD */  bl        xlObjectTest
/* 02A4AC 8002D4AC 2C030000 */  cmpwi     r3, 0x0
/* 02A4B0 8002D4B0 41820024 */  beq       lbl_8002D4D4
/* 02A4B4 8002D4B4 2C1F0001 */  cmpwi     r31, 0x1
/* 02A4B8 8002D4B8 93FE000C */  stw       r31, 0xc(r30)
/* 02A4BC 8002D4BC 40820010 */  bne       lbl_8002D4CC
/* 02A4C0 8002D4C0 3800FFFF */  li        r0, -0x1
/* 02A4C4 8002D4C4 901E006C */  stw       r0, 0x6c(r30)
/* 02A4C8 8002D4C8 901E0068 */  stw       r0, 0x68(r30)
lbl_8002D4CC:
/* 02A4CC 8002D4CC 38600001 */  li        r3, 0x1
/* 02A4D0 8002D4D0 48000008 */  b         lbl_8002D4D8
lbl_8002D4D4:
/* 02A4D4 8002D4D4 38600000 */  li        r3, 0x0
lbl_8002D4D8:
/* 02A4D8 8002D4D8 8001001C */  lwz       r0, 0x1c(r1)
/* 02A4DC 8002D4DC 83E10014 */  lwz       r31, 0x14(r1)
/* 02A4E0 8002D4E0 83C10010 */  lwz       r30, 0x10(r1)
/* 02A4E4 8002D4E4 7C0803A6 */  mtlr      r0
/* 02A4E8 8002D4E8 38210018 */  addi      r1, r1, 0x18
/* 02A4EC 8002D4EC 4E800020 */  blr

glabel systemCopyROM
/* 02A4F0 8002D4F0 7C0802A6 */  mflr      r0
/* 02A4F4 8002D4F4 90010004 */  stw       r0, 0x4(r1)
/* 02A4F8 8002D4F8 9421FFD0 */  stwu      r1, -0x30(r1)
/* 02A4FC 8002D4FC 93E1002C */  stw       r31, 0x2c(r1)
/* 02A500 8002D500 3BE70000 */  addi      r31, r7, 0x0
/* 02A504 8002D504 93C10028 */  stw       r30, 0x28(r1)
/* 02A508 8002D508 7CBE2B78 */  mr        r30, r5
/* 02A50C 8002D50C 38A40000 */  addi      r5, r4, 0x0
/* 02A510 8002D510 93A10024 */  stw       r29, 0x24(r1)
/* 02A514 8002D514 3BA30000 */  addi      r29, r3, 0x0
/* 02A518 8002D518 90C10014 */  stw       r6, 0x14(r1)
/* 02A51C 8002D51C 38C10014 */  addi      r6, r1, 0x14
/* 02A520 8002D520 80010014 */  lwz       r0, 0x14(r1)
/* 02A524 8002D524 90030010 */  stw       r0, 0x10(r3)
/* 02A528 8002D528 5480027E */  clrlwi    r0, r4, 9
/* 02A52C 8002D52C 3881001C */  addi      r4, r1, 0x1c
/* 02A530 8002D530 93E3001C */  stw       r31, 0x1c(r3)
/* 02A534 8002D534 90030014 */  stw       r0, 0x14(r3)
/* 02A538 8002D538 93C30018 */  stw       r30, 0x18(r3)
/* 02A53C 8002D53C 8063002C */  lwz       r3, 0x2c(r3)
/* 02A540 8002D540 4803F3D1 */  bl        ramGetBuffer
/* 02A544 8002D544 2C030000 */  cmpwi     r3, 0x0
/* 02A548 8002D548 4082000C */  bne       lbl_8002D554
/* 02A54C 8002D54C 38600000 */  li        r3, 0x0
/* 02A550 8002D550 48000078 */  b         lbl_8002D5C8
lbl_8002D554:
/* 02A554 8002D554 281F0000 */  cmplwi    r31, 0x0
/* 02A558 8002D558 40820040 */  bne       lbl_8002D598
/* 02A55C 8002D55C 807D0030 */  lwz       r3, 0x30(r29)
/* 02A560 8002D560 7FC5F378 */  mr        r5, r30
/* 02A564 8002D564 8081001C */  lwz       r4, 0x1c(r1)
/* 02A568 8002D568 38E00000 */  li        r7, 0x0
/* 02A56C 8002D56C 80C10014 */  lwz       r6, 0x14(r1)
/* 02A570 8002D570 4803FEED */  bl        romCopy
/* 02A574 8002D574 2C030000 */  cmpwi     r3, 0x0
/* 02A578 8002D578 4082000C */  bne       lbl_8002D584
/* 02A57C 8002D57C 38600000 */  li        r3, 0x0
/* 02A580 8002D580 48000048 */  b         lbl_8002D5C8
lbl_8002D584:
/* 02A584 8002D584 48000061 */  bl        __systemCopyROM_Complete
/* 02A588 8002D588 2C030000 */  cmpwi     r3, 0x0
/* 02A58C 8002D58C 40820038 */  bne       lbl_8002D5C4
/* 02A590 8002D590 38600000 */  li        r3, 0x0
/* 02A594 8002D594 48000034 */  b         lbl_8002D5C8
lbl_8002D598:
/* 02A598 8002D598 3C808003 */  lis       r4, __systemCopyROM_Complete@ha
/* 02A59C 8002D59C 807D0030 */  lwz       r3, 0x30(r29)
/* 02A5A0 8002D5A0 38E4D5E4 */  addi      r7, r4, __systemCopyROM_Complete@l
/* 02A5A4 8002D5A4 8081001C */  lwz       r4, 0x1c(r1)
/* 02A5A8 8002D5A8 80C10014 */  lwz       r6, 0x14(r1)
/* 02A5AC 8002D5AC 7FC5F378 */  mr        r5, r30
/* 02A5B0 8002D5B0 4803FEAD */  bl        romCopy
/* 02A5B4 8002D5B4 2C030000 */  cmpwi     r3, 0x0
/* 02A5B8 8002D5B8 4082000C */  bne       lbl_8002D5C4
/* 02A5BC 8002D5BC 38600000 */  li        r3, 0x0
/* 02A5C0 8002D5C0 48000008 */  b         lbl_8002D5C8
lbl_8002D5C4:
/* 02A5C4 8002D5C4 38600001 */  li        r3, 0x1
lbl_8002D5C8:
/* 02A5C8 8002D5C8 80010034 */  lwz       r0, 0x34(r1)
/* 02A5CC 8002D5CC 83E1002C */  lwz       r31, 0x2c(r1)
/* 02A5D0 8002D5D0 83C10028 */  lwz       r30, 0x28(r1)
/* 02A5D4 8002D5D4 7C0803A6 */  mtlr      r0
/* 02A5D8 8002D5D8 83A10024 */  lwz       r29, 0x24(r1)
/* 02A5DC 8002D5DC 38210030 */  addi      r1, r1, 0x30
/* 02A5E0 8002D5E0 4E800020 */  blr

glabel __systemCopyROM_Complete
/* 02A5E4 8002D5E4 7C0802A6 */  mflr      r0
/* 02A5E8 8002D5E8 90010004 */  stw       r0, 0x4(r1)
/* 02A5EC 8002D5EC 9421FF68 */  stwu      r1, -0x98(r1)
/* 02A5F0 8002D5F0 93E10094 */  stw       r31, 0x94(r1)
/* 02A5F4 8002D5F4 93C10090 */  stw       r30, 0x90(r1)
/* 02A5F8 8002D5F8 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 02A5FC 8002D5FC 80A30010 */  lwz       r5, 0x10(r3)
/* 02A600 8002D600 80830014 */  lwz       r4, 0x14(r3)
/* 02A604 8002D604 3BE5FFFF */  subi      r31, r5, 0x1
/* 02A608 8002D608 80630000 */  lwz       r3, 0x0(r3)
/* 02A60C 8002D60C 38A5FFFF */  subi      r5, r5, 0x1
/* 02A610 8002D610 3BC40000 */  addi      r30, r4, 0x0
/* 02A614 8002D614 7FE4FA14 */  add       r31, r4, r31
/* 02A618 8002D618 7CA42A14 */  add       r5, r4, r5
/* 02A61C 8002D61C 4BFEFC4D */  bl        frameInvalidateCache
/* 02A620 8002D620 2C030000 */  cmpwi     r3, 0x0
/* 02A624 8002D624 4082000C */  bne       lbl_8002D630
/* 02A628 8002D628 38600000 */  li        r3, 0x0
/* 02A62C 8002D62C 480000D8 */  b         lbl_8002D704
lbl_8002D630:
/* 02A630 8002D630 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 02A634 8002D634 389E0000 */  addi      r4, r30, 0x0
/* 02A638 8002D638 38BF0000 */  addi      r5, r31, 0x0
/* 02A63C 8002D63C 80630034 */  lwz       r3, 0x34(r3)
/* 02A640 8002D640 4804416D */  bl        rspInvalidateCache
/* 02A644 8002D644 2C030000 */  cmpwi     r3, 0x0
/* 02A648 8002D648 4082000C */  bne       lbl_8002D654
/* 02A64C 8002D64C 38600000 */  li        r3, 0x0
/* 02A650 8002D650 480000B4 */  b         lbl_8002D704
lbl_8002D654:
/* 02A654 8002D654 80ED8914 */  lwz       r7, gpSystem@sda21(r0)
/* 02A658 8002D658 38810008 */  addi      r4, r1, 0x8
/* 02A65C 8002D65C 38A10088 */  addi      r5, r1, 0x88
/* 02A660 8002D660 80670024 */  lwz       r3, 0x24(r7)
/* 02A664 8002D664 80C70014 */  lwz       r6, 0x14(r7)
/* 02A668 8002D668 80E70010 */  lwz       r7, 0x10(r7)
/* 02A66C 8002D66C 48006839 */  bl        cpuGetOffsetAddress
/* 02A670 8002D670 2C030000 */  cmpwi     r3, 0x0
/* 02A674 8002D674 4082000C */  bne       lbl_8002D680
/* 02A678 8002D678 38600000 */  li        r3, 0x0
/* 02A67C 8002D67C 48000088 */  b         lbl_8002D704
lbl_8002D680:
/* 02A680 8002D680 3BE10008 */  addi      r31, r1, 0x8
/* 02A684 8002D684 3BC00000 */  li        r30, 0x0
/* 02A688 8002D688 48000038 */  b         lbl_8002D6C0
lbl_8002D68C:
/* 02A68C 8002D68C 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 02A690 8002D690 809F0000 */  lwz       r4, 0x0(r31)
/* 02A694 8002D694 80A30010 */  lwz       r5, 0x10(r3)
/* 02A698 8002D698 80630024 */  lwz       r3, 0x24(r3)
/* 02A69C 8002D69C 38A5FFFF */  subi      r5, r5, 0x1
/* 02A6A0 8002D6A0 7CA42A14 */  add       r5, r4, r5
/* 02A6A4 8002D6A4 48006775 */  bl        cpuInvalidateCache
/* 02A6A8 8002D6A8 2C030000 */  cmpwi     r3, 0x0
/* 02A6AC 8002D6AC 4082000C */  bne       lbl_8002D6B8
/* 02A6B0 8002D6B0 38600000 */  li        r3, 0x0
/* 02A6B4 8002D6B4 48000050 */  b         lbl_8002D704
lbl_8002D6B8:
/* 02A6B8 8002D6B8 3BFF0004 */  addi      r31, r31, 0x4
/* 02A6BC 8002D6BC 3BDE0001 */  addi      r30, r30, 0x1
lbl_8002D6C0:
/* 02A6C0 8002D6C0 80010088 */  lwz       r0, 0x88(r1)
/* 02A6C4 8002D6C4 7C1E0000 */  cmpw      r30, r0
/* 02A6C8 8002D6C8 4180FFC4 */  blt       lbl_8002D68C
/* 02A6CC 8002D6CC 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 02A6D0 8002D6D0 38000000 */  li        r0, 0x0
/* 02A6D4 8002D6D4 90030010 */  stw       r0, 0x10(r3)
/* 02A6D8 8002D6D8 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 02A6DC 8002D6DC 8183001C */  lwz       r12, 0x1c(r3)
/* 02A6E0 8002D6E0 280C0000 */  cmplwi    r12, 0x0
/* 02A6E4 8002D6E4 4182001C */  beq       lbl_8002D700
/* 02A6E8 8002D6E8 7D8803A6 */  mtlr      r12
/* 02A6EC 8002D6EC 4E800021 */  blrl
/* 02A6F0 8002D6F0 2C030000 */  cmpwi     r3, 0x0
/* 02A6F4 8002D6F4 4082000C */  bne       lbl_8002D700
/* 02A6F8 8002D6F8 38600000 */  li        r3, 0x0
/* 02A6FC 8002D6FC 48000008 */  b         lbl_8002D704
lbl_8002D700:
/* 02A700 8002D700 38600001 */  li        r3, 0x1
lbl_8002D704:
/* 02A704 8002D704 8001009C */  lwz       r0, 0x9c(r1)
/* 02A708 8002D708 83E10094 */  lwz       r31, 0x94(r1)
/* 02A70C 8002D70C 83C10090 */  lwz       r30, 0x90(r1)
/* 02A710 8002D710 7C0803A6 */  mtlr      r0
/* 02A714 8002D714 38210098 */  addi      r1, r1, 0x98
/* 02A718 8002D718 4E800020 */  blr

glabel systemPut64
/* 02A71C 8002D71C 38600001 */  li        r3, 0x1
/* 02A720 8002D720 4E800020 */  blr

glabel systemPut32
/* 02A724 8002D724 38600001 */  li        r3, 0x1
/* 02A728 8002D728 4E800020 */  blr

glabel systemPut16
/* 02A72C 8002D72C 38600001 */  li        r3, 0x1
/* 02A730 8002D730 4E800020 */  blr

glabel systemPut8
/* 02A734 8002D734 38600001 */  li        r3, 0x1
/* 02A738 8002D738 4E800020 */  blr

glabel systemGet64
/* 02A73C 8002D73C 38000000 */  li        r0, 0x0
/* 02A740 8002D740 90050004 */  stw       r0, 0x4(r5)
/* 02A744 8002D744 38600001 */  li        r3, 0x1
/* 02A748 8002D748 90050000 */  stw       r0, 0x0(r5)
/* 02A74C 8002D74C 4E800020 */  blr

glabel systemGet32
/* 02A750 8002D750 38000000 */  li        r0, 0x0
/* 02A754 8002D754 90050000 */  stw       r0, 0x0(r5)
/* 02A758 8002D758 38600001 */  li        r3, 0x1
/* 02A75C 8002D75C 4E800020 */  blr

glabel systemGet16
/* 02A760 8002D760 38000000 */  li        r0, 0x0
/* 02A764 8002D764 B0050000 */  sth       r0, 0x0(r5)
/* 02A768 8002D768 38600001 */  li        r3, 0x1
/* 02A76C 8002D76C 4E800020 */  blr

glabel systemGet8
/* 02A770 8002D770 38000000 */  li        r0, 0x0
/* 02A774 8002D774 98050000 */  stb       r0, 0x0(r5)
/* 02A778 8002D778 38600001 */  li        r3, 0x1
/* 02A77C 8002D77C 4E800020 */  blr

glabel systemGetException
/* 02A780 8002D780 38000000 */  li        r0, 0x0
/* 02A784 8002D784 90050004 */  stw       r0, 0x4(r5)
/* 02A788 8002D788 386D8188 */  li        r3, D_8018B108@sda21
/* 02A78C 8002D78C 3CC0800F */  lis       r6, D_800EC7B8@ha
/* 02A790 8002D790 90650000 */  stw       r3, 0x0(r5)
/* 02A794 8002D794 3860FFFF */  li        r3, -0x1
/* 02A798 8002D798 2804000F */  cmplwi    r4, 0xf
/* 02A79C 8002D79C 9085000C */  stw       r4, 0xc(r5)
/* 02A7A0 8002D7A0 38E6C7B8 */  addi      r7, r6, D_800EC7B8@l
/* 02A7A4 8002D7A4 90650008 */  stw       r3, 0x8(r5)
/* 02A7A8 8002D7A8 90650010 */  stw       r3, 0x10(r5)
/* 02A7AC 8002D7AC 418101A0 */  bgt       lbl_8002D94C
/* 02A7B0 8002D7B0 3C60800F */  lis       r3, jtbl_800EC980@ha
/* 02A7B4 8002D7B4 38C3C980 */  addi      r6, r3, jtbl_800EC980@l
/* 02A7B8 8002D7B8 5483103A */  slwi      r3, r4, 2
/* 02A7BC 8002D7BC 7C66182E */  lwzx      r3, r6, r3
/* 02A7C0 8002D7C0 7C6903A6 */  mtctr     r3
/* 02A7C4 8002D7C4 4E800420 */  bctr
lbl_8002D7C8:
/* 02A7C8 8002D7C8 38600005 */  li        r3, 0x5
/* 02A7CC 8002D7CC 90650004 */  stw       r3, 0x4(r5)
/* 02A7D0 8002D7D0 386D818C */  li        r3, D_8018B10C@sda21
/* 02A7D4 8002D7D4 90650000 */  stw       r3, 0x0(r5)
/* 02A7D8 8002D7D8 90050008 */  stw       r0, 0x8(r5)
/* 02A7DC 8002D7DC 48000178 */  b         lbl_8002D954
lbl_8002D7E0:
/* 02A7E0 8002D7E0 38600006 */  li        r3, 0x6
/* 02A7E4 8002D7E4 90650004 */  stw       r3, 0x4(r5)
/* 02A7E8 8002D7E8 386D8190 */  li        r3, D_8018B110@sda21
/* 02A7EC 8002D7EC 90650000 */  stw       r3, 0x0(r5)
/* 02A7F0 8002D7F0 90050008 */  stw       r0, 0x8(r5)
/* 02A7F4 8002D7F4 48000160 */  b         lbl_8002D954
lbl_8002D7F8:
/* 02A7F8 8002D7F8 3860000C */  li        r3, 0xc
/* 02A7FC 8002D7FC 90650004 */  stw       r3, 0x4(r5)
/* 02A800 8002D800 386D8194 */  li        r3, D_8018B114@sda21
/* 02A804 8002D804 90650000 */  stw       r3, 0x0(r5)
/* 02A808 8002D808 90050008 */  stw       r0, 0x8(r5)
/* 02A80C 8002D80C 48000148 */  b         lbl_8002D954
lbl_8002D810:
/* 02A810 8002D810 38600084 */  li        r3, 0x84
/* 02A814 8002D814 90650004 */  stw       r3, 0x4(r5)
/* 02A818 8002D818 386D819C */  li        r3, D_8018B11C@sda21
/* 02A81C 8002D81C 90650000 */  stw       r3, 0x0(r5)
/* 02A820 8002D820 90050008 */  stw       r0, 0x8(r5)
/* 02A824 8002D824 48000130 */  b         lbl_8002D954
lbl_8002D828:
/* 02A828 8002D828 38600024 */  li        r3, 0x24
/* 02A82C 8002D82C 90650004 */  stw       r3, 0x4(r5)
/* 02A830 8002D830 386D81A4 */  li        r3, D_8018B124@sda21
/* 02A834 8002D834 90650000 */  stw       r3, 0x0(r5)
/* 02A838 8002D838 90050008 */  stw       r0, 0x8(r5)
/* 02A83C 8002D83C 48000118 */  b         lbl_8002D954
lbl_8002D840:
/* 02A840 8002D840 38600004 */  li        r3, 0x4
/* 02A844 8002D844 90650004 */  stw       r3, 0x4(r5)
/* 02A848 8002D848 386D81A8 */  li        r3, D_8018B128@sda21
/* 02A84C 8002D84C 90650000 */  stw       r3, 0x0(r5)
/* 02A850 8002D850 90050010 */  stw       r0, 0x10(r5)
/* 02A854 8002D854 90050008 */  stw       r0, 0x8(r5)
/* 02A858 8002D858 480000FC */  b         lbl_8002D954
lbl_8002D85C:
/* 02A85C 8002D85C 38600004 */  li        r3, 0x4
/* 02A860 8002D860 90650004 */  stw       r3, 0x4(r5)
/* 02A864 8002D864 388D81AC */  li        r4, D_8018B12C@sda21
/* 02A868 8002D868 38600001 */  li        r3, 0x1
/* 02A86C 8002D86C 90850000 */  stw       r4, 0x0(r5)
/* 02A870 8002D870 90650010 */  stw       r3, 0x10(r5)
/* 02A874 8002D874 90050008 */  stw       r0, 0x8(r5)
/* 02A878 8002D878 480000DC */  b         lbl_8002D954
lbl_8002D87C:
/* 02A87C 8002D87C 38600004 */  li        r3, 0x4
/* 02A880 8002D880 90650004 */  stw       r3, 0x4(r5)
/* 02A884 8002D884 388D81B0 */  li        r4, D_8018B130@sda21
/* 02A888 8002D888 38600002 */  li        r3, 0x2
/* 02A88C 8002D88C 90850000 */  stw       r4, 0x0(r5)
/* 02A890 8002D890 90650010 */  stw       r3, 0x10(r5)
/* 02A894 8002D894 90050008 */  stw       r0, 0x8(r5)
/* 02A898 8002D898 480000BC */  b         lbl_8002D954
lbl_8002D89C:
/* 02A89C 8002D89C 38600004 */  li        r3, 0x4
/* 02A8A0 8002D8A0 90650004 */  stw       r3, 0x4(r5)
/* 02A8A4 8002D8A4 388D81B4 */  li        r4, D_8018B134@sda21
/* 02A8A8 8002D8A8 38600003 */  li        r3, 0x3
/* 02A8AC 8002D8AC 90850000 */  stw       r4, 0x0(r5)
/* 02A8B0 8002D8B0 90650010 */  stw       r3, 0x10(r5)
/* 02A8B4 8002D8B4 90050008 */  stw       r0, 0x8(r5)
/* 02A8B8 8002D8B8 4800009C */  b         lbl_8002D954
lbl_8002D8BC:
/* 02A8BC 8002D8BC 38800004 */  li        r4, 0x4
/* 02A8C0 8002D8C0 90850004 */  stw       r4, 0x4(r5)
/* 02A8C4 8002D8C4 386D81B8 */  li        r3, D_8018B138@sda21
/* 02A8C8 8002D8C8 90650000 */  stw       r3, 0x0(r5)
/* 02A8CC 8002D8CC 90850010 */  stw       r4, 0x10(r5)
/* 02A8D0 8002D8D0 90050008 */  stw       r0, 0x8(r5)
/* 02A8D4 8002D8D4 48000080 */  b         lbl_8002D954
lbl_8002D8D8:
/* 02A8D8 8002D8D8 38600004 */  li        r3, 0x4
/* 02A8DC 8002D8DC 90650004 */  stw       r3, 0x4(r5)
/* 02A8E0 8002D8E0 388D81BC */  li        r4, D_8018B13C@sda21
/* 02A8E4 8002D8E4 38600005 */  li        r3, 0x5
/* 02A8E8 8002D8E8 90850000 */  stw       r4, 0x0(r5)
/* 02A8EC 8002D8EC 90650010 */  stw       r3, 0x10(r5)
/* 02A8F0 8002D8F0 90050008 */  stw       r0, 0x8(r5)
/* 02A8F4 8002D8F4 48000060 */  b         lbl_8002D954
lbl_8002D8F8:
/* 02A8F8 8002D8F8 380701A0 */  addi      r0, r7, 0x1a0
/* 02A8FC 8002D8FC 90050000 */  stw       r0, 0x0(r5)
/* 02A900 8002D900 38000009 */  li        r0, 0x9
/* 02A904 8002D904 90050008 */  stw       r0, 0x8(r5)
/* 02A908 8002D908 4800004C */  b         lbl_8002D954
lbl_8002D90C:
/* 02A90C 8002D90C 38600004 */  li        r3, 0x4
/* 02A910 8002D910 90650004 */  stw       r3, 0x4(r5)
/* 02A914 8002D914 386701AC */  addi      r3, r7, 0x1ac
/* 02A918 8002D918 90650000 */  stw       r3, 0x0(r5)
/* 02A91C 8002D91C 90050008 */  stw       r0, 0x8(r5)
/* 02A920 8002D920 48000034 */  b         lbl_8002D954
lbl_8002D924:
/* 02A924 8002D924 380D81C0 */  li        r0, D_8018B140@sda21
/* 02A928 8002D928 90050000 */  stw       r0, 0x0(r5)
/* 02A92C 8002D92C 48000028 */  b         lbl_8002D954
lbl_8002D930:
/* 02A930 8002D930 380701B8 */  addi      r0, r7, 0x1b8
/* 02A934 8002D934 90050000 */  stw       r0, 0x0(r5)
/* 02A938 8002D938 4800001C */  b         lbl_8002D954
lbl_8002D93C:
/* 02A93C 8002D93C 386D81C8 */  li        r3, D_8018B148@sda21
/* 02A940 8002D940 90650000 */  stw       r3, 0x0(r5)
/* 02A944 8002D944 90050008 */  stw       r0, 0x8(r5)
/* 02A948 8002D948 4800000C */  b         lbl_8002D954
lbl_8002D94C:
/* 02A94C 8002D94C 38600000 */  li        r3, 0x0
/* 02A950 8002D950 4E800020 */  blr
lbl_8002D954:
/* 02A954 8002D954 38600001 */  li        r3, 0x1
/* 02A958 8002D958 4E800020 */  blr

glabel systemSetupGameALL
/* 02A95C 8002D95C 7C0802A6 */  mflr      r0
/* 02A960 8002D960 3C808011 */  lis       r4, 0x8011
/* 02A964 8002D964 90010004 */  stw       r0, 0x4(r1)
/* 02A968 8002D968 3CA08013 */  lis       r5, 0x8013
/* 02A96C 8002D96C 9421FF58 */  stwu      r1, -0xa8(r1)
/* 02A970 8002D970 BE410070 */  stmw      r18, 0x70(r1)
/* 02A974 8002D974 3A848D10 */  subi      r20, r4, 0x72f0
/* 02A978 8002D978 3C80800F */  lis       r4, 0x800f
/* 02A97C 8002D97C 3B740694 */  addi      r27, r20, 0x694
/* 02A980 8002D980 3A430000 */  addi      r18, r3, 0x0
/* 02A984 8002D984 3B851C40 */  addi      r28, r5, 0x1c40
/* 02A988 8002D988 3BE4C7B8 */  subi      r31, r4, 0x3848
/* 02A98C 8002D98C 800D80AC */  lwz       r0, -0x7f54(r13)
/* 02A990 8002D990 83C30024 */  lwz       r30, 0x24(r3)
/* 02A994 8002D994 82630030 */  lwz       r19, 0x30(r3)
/* 02A998 8002D998 64043000 */  oris      r4, r0, 0x3000
/* 02A99C 8002D99C 83A30028 */  lwz       r29, 0x28(r3)
/* 02A9A0 8002D9A0 387B0000 */  addi      r3, r27, 0x0
/* 02A9A4 8002D9A4 4BFD9771 */  bl        xlHeapTake
/* 02A9A8 8002D9A8 2C030000 */  cmpwi     r3, 0x0
/* 02A9AC 8002D9AC 4082000C */  bne       lbl_8002D9B8
/* 02A9B0 8002D9B0 38600000 */  li        r3, 0x0
/* 02A9B4 8002D9B4 48002490 */  b         lbl_8002FE44
lbl_8002D9B8:
/* 02A9B8 8002D9B8 800D80A8 */  lwz       r0, -0x7f58(r13)
/* 02A9BC 8002D9BC 3B540698 */  addi      r26, r20, 0x698
/* 02A9C0 8002D9C0 387A0000 */  addi      r3, r26, 0x0
/* 02A9C4 8002D9C4 64043000 */  oris      r4, r0, 0x3000
/* 02A9C8 8002D9C8 4BFD974D */  bl        xlHeapTake
/* 02A9CC 8002D9CC 2C030000 */  cmpwi     r3, 0x0
/* 02A9D0 8002D9D0 4082000C */  bne       lbl_8002D9DC
/* 02A9D4 8002D9D4 38600000 */  li        r3, 0x0
/* 02A9D8 8002D9D8 4800246C */  b         lbl_8002FE44
lbl_8002D9DC:
/* 02A9DC 8002D9DC 38610014 */  addi      r3, r1, 0x14
/* 02A9E0 8002D9E0 3AE02000 */  li        r23, 0x2000
/* 02A9E4 8002D9E4 38800000 */  li        r4, 0x0
/* 02A9E8 8002D9E8 38A00004 */  li        r5, 0x4
/* 02A9EC 8002D9EC 4BFD7935 */  bl        memset
/* 02A9F0 8002D9F0 3800000C */  li        r0, 0xc
/* 02A9F4 8002D9F4 90120020 */  stw       r0, 0x20(r18)
/* 02A9F8 8002D9F8 3A92002C */  addi      r20, r18, 0x2c
/* 02A9FC 8002D9FC 3881005C */  addi      r4, r1, 0x5c
/* 02AA00 8002DA00 8072002C */  lwz       r3, 0x2c(r18)
/* 02AA04 8002DA04 38A00300 */  li        r5, 0x300
/* 02AA08 8002DA08 38C00000 */  li        r6, 0x0
/* 02AA0C 8002DA0C 4803EF05 */  bl        ramGetBuffer
/* 02AA10 8002DA10 2C030000 */  cmpwi     r3, 0x0
/* 02AA14 8002DA14 4082000C */  bne       lbl_8002DA20
/* 02AA18 8002DA18 38600000 */  li        r3, 0x0
/* 02AA1C 8002DA1C 48002428 */  b         lbl_8002FE44
lbl_8002DA20:
/* 02AA20 8002DA20 8061005C */  lwz       r3, 0x5c(r1)
/* 02AA24 8002DA24 39000001 */  li        r8, 0x1
/* 02AA28 8002DA28 38E00000 */  li        r7, 0x0
/* 02AA2C 8002DA2C 91030000 */  stw       r8, 0x0(r3)
/* 02AA30 8002DA30 3CC0B000 */  lis       r6, 0xb000
/* 02AA34 8002DA34 38A017D7 */  li        r5, 0x17d7
/* 02AA38 8002DA38 8081005C */  lwz       r4, 0x5c(r1)
/* 02AA3C 8002DA3C 3C608000 */  lis       r3, 0x8000
/* 02AA40 8002DA40 3C004330 */  lis       r0, 0x4330
/* 02AA44 8002DA44 90E40004 */  stw       r7, 0x4(r4)
/* 02AA48 8002DA48 8081005C */  lwz       r4, 0x5c(r1)
/* 02AA4C 8002DA4C 90C40008 */  stw       r6, 0x8(r4)
/* 02AA50 8002DA50 8081005C */  lwz       r4, 0x5c(r1)
/* 02AA54 8002DA54 90E4000C */  stw       r7, 0xc(r4)
/* 02AA58 8002DA58 8081005C */  lwz       r4, 0x5c(r1)
/* 02AA5C 8002DA5C 90A40010 */  stw       r5, 0x10(r4)
/* 02AA60 8002DA60 8081005C */  lwz       r4, 0x5c(r1)
/* 02AA64 8002DA64 91040014 */  stw       r8, 0x14(r4)
/* 02AA68 8002DA68 806300F8 */  lwz       r3, 0xf8(r3)
/* 02AA6C 8002DA6C C8228298 */  lfd       f1, -0x7d68(r2)
/* 02AA70 8002DA70 5463F0BE */  srwi      r3, r3, 2
/* 02AA74 8002DA74 C0428290 */  lfs       f2, -0x7d70(r2)
/* 02AA78 8002DA78 9061006C */  stw       r3, 0x6c(r1)
/* 02AA7C 8002DA7C 90010068 */  stw       r0, 0x68(r1)
/* 02AA80 8002DA80 C8010068 */  lfd       f0, 0x68(r1)
/* 02AA84 8002DA84 EC000828 */  fsubs     f0, f0, f1
/* 02AA88 8002DA88 EC220032 */  fmuls     f1, f2, f0
/* 02AA8C 8002DA8C 4809F065 */  bl        __cvt_dbl_usll
/* 02AA90 8002DA90 7C751B78 */  mr        r21, r3
/* 02AA94 8002DA94 80740000 */  lwz       r3, 0x0(r20)
/* 02AA98 8002DA98 3AC40000 */  addi      r22, r4, 0x0
/* 02AA9C 8002DA9C 38810060 */  addi      r4, r1, 0x60
/* 02AAA0 8002DAA0 4803EDA1 */  bl        ramGetSize
/* 02AAA4 8002DAA4 2C030000 */  cmpwi     r3, 0x0
/* 02AAA8 8002DAA8 4082000C */  bne       lbl_8002DAB4
/* 02AAAC 8002DAAC 38600000 */  li        r3, 0x0
/* 02AAB0 8002DAB0 48002394 */  b         lbl_8002FE44
lbl_8002DAB4:
/* 02AAB4 8002DAB4 80010060 */  lwz       r0, 0x60(r1)
/* 02AAB8 8002DAB8 7E439378 */  mr        r3, r18
/* 02AABC 8002DABC 80C1005C */  lwz       r6, 0x5c(r1)
/* 02AAC0 8002DAC0 38930000 */  addi      r4, r19, 0x0
/* 02AAC4 8002DAC4 38A00000 */  li        r5, 0x0
/* 02AAC8 8002DAC8 90060018 */  stw       r0, 0x18(r6)
/* 02AACC 8002DACC 4800238D */  bl        systemGetInitialConfiguration
/* 02AAD0 8002DAD0 807C0168 */  lwz       r3, 0x168(r28)
/* 02AAD4 8002DAD4 3B1C0168 */  addi      r24, r28, 0x168
/* 02AAD8 8002DAD8 3B200000 */  li        r25, 0x0
/* 02AADC 8002DADC 546007FF */  clrlwi.   r0, r3, 31
/* 02AAE0 8002DAE0 41820020 */  beq       lbl_8002DB00
/* 02AAE4 8002DAE4 38720000 */  addi      r3, r18, 0x0
/* 02AAE8 8002DAE8 38800009 */  li        r4, 0x9
/* 02AAEC 8002DAEC 4BFFF841 */  bl        systemSetStorageDevice
/* 02AAF0 8002DAF0 2C030000 */  cmpwi     r3, 0x0
/* 02AAF4 8002DAF4 4082004C */  bne       lbl_8002DB40
/* 02AAF8 8002DAF8 38600000 */  li        r3, 0x0
/* 02AAFC 8002DAFC 48002348 */  b         lbl_8002FE44
lbl_8002DB00:
/* 02AB00 8002DB00 546007BD */  rlwinm.   r0, r3, 0, 30, 30
/* 02AB04 8002DB04 41820020 */  beq       lbl_8002DB24
/* 02AB08 8002DB08 38720000 */  addi      r3, r18, 0x0
/* 02AB0C 8002DB0C 38800008 */  li        r4, 0x8
/* 02AB10 8002DB10 4BFFF81D */  bl        systemSetStorageDevice
/* 02AB14 8002DB14 2C030000 */  cmpwi     r3, 0x0
/* 02AB18 8002DB18 40820028 */  bne       lbl_8002DB40
/* 02AB1C 8002DB1C 38600000 */  li        r3, 0x0
/* 02AB20 8002DB20 48002324 */  b         lbl_8002FE44
lbl_8002DB24:
/* 02AB24 8002DB24 38720000 */  addi      r3, r18, 0x0
/* 02AB28 8002DB28 3880FFFF */  li        r4, -0x1
/* 02AB2C 8002DB2C 4BFFF801 */  bl        systemSetStorageDevice
/* 02AB30 8002DB30 2C030000 */  cmpwi     r3, 0x0
/* 02AB34 8002DB34 4082000C */  bne       lbl_8002DB40
/* 02AB38 8002DB38 38600000 */  li        r3, 0x0
/* 02AB3C 8002DB3C 48002308 */  b         lbl_8002FE44
lbl_8002DB40:
/* 02AB40 8002DB40 80780000 */  lwz       r3, 0x0(r24)
/* 02AB44 8002DB44 5460077B */  rlwinm.   r0, r3, 0, 29, 29
/* 02AB48 8002DB48 41820020 */  beq       lbl_8002DB68
/* 02AB4C 8002DB4C 387D0000 */  addi      r3, r29, 0x0
/* 02AB50 8002DB50 38800006 */  li        r4, 0x6
/* 02AB54 8002DB54 4803E641 */  bl        pifSetEEPROMType
/* 02AB58 8002DB58 2C030000 */  cmpwi     r3, 0x0
/* 02AB5C 8002DB5C 4082004C */  bne       lbl_8002DBA8
/* 02AB60 8002DB60 38600000 */  li        r3, 0x0
/* 02AB64 8002DB64 480022E0 */  b         lbl_8002FE44
lbl_8002DB68:
/* 02AB68 8002DB68 54600739 */  rlwinm.   r0, r3, 0, 28, 28
/* 02AB6C 8002DB6C 41820020 */  beq       lbl_8002DB8C
/* 02AB70 8002DB70 387D0000 */  addi      r3, r29, 0x0
/* 02AB74 8002DB74 38800007 */  li        r4, 0x7
/* 02AB78 8002DB78 4803E61D */  bl        pifSetEEPROMType
/* 02AB7C 8002DB7C 2C030000 */  cmpwi     r3, 0x0
/* 02AB80 8002DB80 40820028 */  bne       lbl_8002DBA8
/* 02AB84 8002DB84 38600000 */  li        r3, 0x0
/* 02AB88 8002DB88 480022BC */  b         lbl_8002FE44
lbl_8002DB8C:
/* 02AB8C 8002DB8C 387D0000 */  addi      r3, r29, 0x0
/* 02AB90 8002DB90 38800000 */  li        r4, 0x0
/* 02AB94 8002DB94 4803E601 */  bl        pifSetEEPROMType
/* 02AB98 8002DB98 2C030000 */  cmpwi     r3, 0x0
/* 02AB9C 8002DB9C 4082000C */  bne       lbl_8002DBA8
/* 02ABA0 8002DBA0 38600000 */  li        r3, 0x0
/* 02ABA4 8002DBA4 480022A0 */  b         lbl_8002FE44
lbl_8002DBA8:
/* 02ABA8 8002DBA8 38730000 */  addi      r3, r19, 0x0
/* 02ABAC 8002DBAC 388D81D0 */  subi      r4, r13, 0x7e30
/* 02ABB0 8002DBB0 4803FD95 */  bl        romTestCode
/* 02ABB4 8002DBB4 2C030000 */  cmpwi     r3, 0x0
/* 02ABB8 8002DBB8 40820018 */  bne       lbl_8002DBD0
/* 02ABBC 8002DBBC 38730000 */  addi      r3, r19, 0x0
/* 02ABC0 8002DBC0 388D81D8 */  subi      r4, r13, 0x7e28
/* 02ABC4 8002DBC4 4803FD81 */  bl        romTestCode
/* 02ABC8 8002DBC8 2C030000 */  cmpwi     r3, 0x0
/* 02ABCC 8002DBCC 4182011C */  beq       lbl_8002DCE8
lbl_8002DBD0:
/* 02ABD0 8002DBD0 38000000 */  li        r0, 0x0
/* 02ABD4 8002DBD4 90120020 */  stw       r0, 0x20(r18)
/* 02ABD8 8002DBD8 387F0208 */  addi      r3, r31, 0x208
/* 02ABDC 8002DBDC 38810018 */  addi      r4, r1, 0x18
/* 02ABE0 8002DBE0 3AE01000 */  li        r23, 0x1000
/* 02ABE4 8002DBE4 48083C95 */  bl        DVDOpen
/* 02ABE8 8002DBE8 2C030001 */  cmpwi     r3, 0x1
/* 02ABEC 8002DBEC 40820034 */  bne       lbl_8002DC20
/* 02ABF0 8002DBF0 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02ABF4 8002DBF4 38610018 */  addi      r3, r1, 0x18
/* 02ABF8 8002DBF8 809B0000 */  lwz       r4, 0x0(r27)
/* 02ABFC 8002DBFC 38C00000 */  li        r6, 0x0
/* 02AC00 8002DC00 3805001F */  addi      r0, r5, 0x1f
/* 02AC04 8002DC04 54050034 */  clrrwi    r5, r0, 5
/* 02AC08 8002DC08 38E00000 */  li        r7, 0x0
/* 02AC0C 8002DC0C 4BFE0EC9 */  bl        simulatorDVDRead
/* 02AC10 8002DC10 2C030000 */  cmpwi     r3, 0x0
/* 02AC14 8002DC14 4082000C */  bne       lbl_8002DC20
/* 02AC18 8002DC18 38600000 */  li        r3, 0x0
/* 02AC1C 8002DC1C 48002228 */  b         lbl_8002FE44
lbl_8002DC20:
/* 02AC20 8002DC20 38610018 */  addi      r3, r1, 0x18
/* 02AC24 8002DC24 48083D1D */  bl        DVDClose
/* 02AC28 8002DC28 807B0000 */  lwz       r3, 0x0(r27)
/* 02AC2C 8002DC2C 4BFE11D1 */  bl        simulatorUnpackTexPalette
/* 02AC30 8002DC30 387F0218 */  addi      r3, r31, 0x218
/* 02AC34 8002DC34 38810018 */  addi      r4, r1, 0x18
/* 02AC38 8002DC38 48083C41 */  bl        DVDOpen
/* 02AC3C 8002DC3C 2C030001 */  cmpwi     r3, 0x1
/* 02AC40 8002DC40 40820034 */  bne       lbl_8002DC74
/* 02AC44 8002DC44 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02AC48 8002DC48 38610018 */  addi      r3, r1, 0x18
/* 02AC4C 8002DC4C 809A0000 */  lwz       r4, 0x0(r26)
/* 02AC50 8002DC50 38C00000 */  li        r6, 0x0
/* 02AC54 8002DC54 3805001F */  addi      r0, r5, 0x1f
/* 02AC58 8002DC58 54050034 */  clrrwi    r5, r0, 5
/* 02AC5C 8002DC5C 38E00000 */  li        r7, 0x0
/* 02AC60 8002DC60 4BFE0E75 */  bl        simulatorDVDRead
/* 02AC64 8002DC64 2C030000 */  cmpwi     r3, 0x0
/* 02AC68 8002DC68 4082000C */  bne       lbl_8002DC74
/* 02AC6C 8002DC6C 38600000 */  li        r3, 0x0
/* 02AC70 8002DC70 480021D4 */  b         lbl_8002FE44
lbl_8002DC74:
/* 02AC74 8002DC74 38610018 */  addi      r3, r1, 0x18
/* 02AC78 8002DC78 48083CC9 */  bl        DVDClose
/* 02AC7C 8002DC7C 807A0000 */  lwz       r3, 0x0(r26)
/* 02AC80 8002DC80 4BFE117D */  bl        simulatorUnpackTexPalette
/* 02AC84 8002DC84 1C990174 */  mulli     r4, r25, 0x174
/* 02AC88 8002DC88 39240170 */  addi      r9, r4, 0x170
/* 02AC8C 8002DC8C 38000200 */  li        r0, 0x200
/* 02AC90 8002DC90 90010008 */  stw       r0, 0x8(r1)
/* 02AC94 8002DC94 3C608011 */  lis       r3, 0x8011
/* 02AC98 8002DC98 38638D10 */  subi      r3, r3, 0x72f0
/* 02AC9C 8002DC9C 80DB0000 */  lwz       r6, 0x0(r27)
/* 02ACA0 8002DCA0 38BF0228 */  addi      r5, r31, 0x228
/* 02ACA4 8002DCA4 80FA0000 */  lwz       r7, 0x0(r26)
/* 02ACA8 8002DCA8 7D3C4A14 */  add       r9, r28, r9
/* 02ACAC 8002DCAC 388D81E0 */  subi      r4, r13, 0x7e20
/* 02ACB0 8002DCB0 390D81E0 */  subi      r8, r13, 0x7e20
/* 02ACB4 8002DCB4 39404000 */  li        r10, 0x4000
/* 02ACB8 8002DCB8 4BFE71A5 */  bl        mcardOpen
/* 02ACBC 8002DCBC 3C808031 */  lis       r4, 0x8031
/* 02ACC0 8002DCC0 3CA05421 */  lis       r5, 0x5421
/* 02ACC4 8002DCC4 387E0000 */  addi      r3, r30, 0x0
/* 02ACC8 8002DCC8 38847938 */  addi      r4, r4, 0x7938
/* 02ACCC 8002DCCC 38A5FFFE */  subi      r5, r5, 0x2
/* 02ACD0 8002DCD0 38C00000 */  li        r6, 0x0
/* 02ACD4 8002DCD4 48006BA5 */  bl        cpuSetCodeHack
/* 02ACD8 8002DCD8 2C030000 */  cmpwi     r3, 0x0
/* 02ACDC 8002DCDC 40821FA0 */  bne       lbl_8002FC7C
/* 02ACE0 8002DCE0 38600000 */  li        r3, 0x0
/* 02ACE4 8002DCE4 48002160 */  b         lbl_8002FE44
lbl_8002DCE8:
/* 02ACE8 8002DCE8 38730000 */  addi      r3, r19, 0x0
/* 02ACEC 8002DCEC 388D81E8 */  subi      r4, r13, 0x7e18
/* 02ACF0 8002DCF0 4803FC55 */  bl        romTestCode
/* 02ACF4 8002DCF4 2C030000 */  cmpwi     r3, 0x0
/* 02ACF8 8002DCF8 40820018 */  bne       lbl_8002DD10
/* 02ACFC 8002DCFC 38730000 */  addi      r3, r19, 0x0
/* 02AD00 8002DD00 388D81F0 */  subi      r4, r13, 0x7e10
/* 02AD04 8002DD04 4803FC41 */  bl        romTestCode
/* 02AD08 8002DD08 2C030000 */  cmpwi     r3, 0x0
/* 02AD0C 8002DD0C 418203A4 */  beq       lbl_8002E0B0
lbl_8002DD10:
/* 02AD10 8002DD10 38000004 */  li        r0, 0x4
/* 02AD14 8002DD14 90120020 */  stw       r0, 0x20(r18)
/* 02AD18 8002DD18 3AE01000 */  li        r23, 0x1000
/* 02AD1C 8002DD1C 800D89E8 */  lwz       r0, -0x7618(r13)
/* 02AD20 8002DD20 540007FF */  clrlwi.   r0, r0, 31
/* 02AD24 8002DD24 41820058 */  beq       lbl_8002DD7C
/* 02AD28 8002DD28 3C808006 */  lis       r4, 0x8006
/* 02AD2C 8002DD2C 3CA09464 */  lis       r5, 0x9464
/* 02AD30 8002DD30 387E0000 */  addi      r3, r30, 0x0
/* 02AD34 8002DD34 38842D64 */  addi      r4, r4, 0x2d64
/* 02AD38 8002DD38 38A59680 */  subi      r5, r5, 0x6980
/* 02AD3C 8002DD3C 38C0FFFF */  li        r6, -0x1
/* 02AD40 8002DD40 48006B39 */  bl        cpuSetCodeHack
/* 02AD44 8002DD44 2C030000 */  cmpwi     r3, 0x0
/* 02AD48 8002DD48 4082000C */  bne       lbl_8002DD54
/* 02AD4C 8002DD4C 38600000 */  li        r3, 0x0
/* 02AD50 8002DD50 480020F4 */  b         lbl_8002FE44
lbl_8002DD54:
/* 02AD54 8002DD54 3C808007 */  lis       r4, 0x8007
/* 02AD58 8002DD58 387E0000 */  addi      r3, r30, 0x0
/* 02AD5C 8002DD5C 3884E468 */  subi      r4, r4, 0x1b98
/* 02AD60 8002DD60 3CA09704 */  lis       r5, 0x9704
/* 02AD64 8002DD64 38C0FFFF */  li        r6, -0x1
/* 02AD68 8002DD68 48006B11 */  bl        cpuSetCodeHack
/* 02AD6C 8002DD6C 2C030000 */  cmpwi     r3, 0x0
/* 02AD70 8002DD70 4082005C */  bne       lbl_8002DDCC
/* 02AD74 8002DD74 38600000 */  li        r3, 0x0
/* 02AD78 8002DD78 480020CC */  b         lbl_8002FE44
lbl_8002DD7C:
/* 02AD7C 8002DD7C 3E408006 */  lis       r18, 0x8006
/* 02AD80 8002DD80 3CA09464 */  lis       r5, 0x9464
/* 02AD84 8002DD84 387E0000 */  addi      r3, r30, 0x0
/* 02AD88 8002DD88 3892BB34 */  subi      r4, r18, 0x44cc
/* 02AD8C 8002DD8C 38A5D040 */  subi      r5, r5, 0x2fc0
/* 02AD90 8002DD90 38C0FFFF */  li        r6, -0x1
/* 02AD94 8002DD94 48006AE5 */  bl        cpuSetCodeHack
/* 02AD98 8002DD98 2C030000 */  cmpwi     r3, 0x0
/* 02AD9C 8002DD9C 4082000C */  bne       lbl_8002DDA8
/* 02ADA0 8002DDA0 38600000 */  li        r3, 0x0
/* 02ADA4 8002DDA4 480020A0 */  b         lbl_8002FE44
lbl_8002DDA8:
/* 02ADA8 8002DDA8 387E0000 */  addi      r3, r30, 0x0
/* 02ADAC 8002DDAC 38926658 */  addi      r4, r18, 0x6658
/* 02ADB0 8002DDB0 3CA09704 */  lis       r5, 0x9704
/* 02ADB4 8002DDB4 38C0FFFF */  li        r6, -0x1
/* 02ADB8 8002DDB8 48006AC1 */  bl        cpuSetCodeHack
/* 02ADBC 8002DDBC 2C030000 */  cmpwi     r3, 0x0
/* 02ADC0 8002DDC0 4082000C */  bne       lbl_8002DDCC
/* 02ADC4 8002DDC4 38600000 */  li        r3, 0x0
/* 02ADC8 8002DDC8 4800207C */  b         lbl_8002FE44
lbl_8002DDCC:
/* 02ADCC 8002DDCC 806D89E8 */  lwz       r3, -0x7618(r13)
/* 02ADD0 8002DDD0 546007FF */  clrlwi.   r0, r3, 31
/* 02ADD4 8002DDD4 408201E4 */  bne       lbl_8002DFB8
/* 02ADD8 8002DDD8 546007BD */  rlwinm.   r0, r3, 0, 30, 30
/* 02ADDC 8002DDDC 408200F0 */  bne       lbl_8002DECC
/* 02ADE0 8002DDE0 387F0208 */  addi      r3, r31, 0x208
/* 02ADE4 8002DDE4 38810018 */  addi      r4, r1, 0x18
/* 02ADE8 8002DDE8 48083A91 */  bl        DVDOpen
/* 02ADEC 8002DDEC 2C030001 */  cmpwi     r3, 0x1
/* 02ADF0 8002DDF0 40820034 */  bne       lbl_8002DE24
/* 02ADF4 8002DDF4 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02ADF8 8002DDF8 38610018 */  addi      r3, r1, 0x18
/* 02ADFC 8002DDFC 809B0000 */  lwz       r4, 0x0(r27)
/* 02AE00 8002DE00 38C00000 */  li        r6, 0x0
/* 02AE04 8002DE04 3805001F */  addi      r0, r5, 0x1f
/* 02AE08 8002DE08 54050034 */  clrrwi    r5, r0, 5
/* 02AE0C 8002DE0C 38E00000 */  li        r7, 0x0
/* 02AE10 8002DE10 4BFE0CC5 */  bl        simulatorDVDRead
/* 02AE14 8002DE14 2C030000 */  cmpwi     r3, 0x0
/* 02AE18 8002DE18 4082000C */  bne       lbl_8002DE24
/* 02AE1C 8002DE1C 38600000 */  li        r3, 0x0
/* 02AE20 8002DE20 48002024 */  b         lbl_8002FE44
lbl_8002DE24:
/* 02AE24 8002DE24 38610018 */  addi      r3, r1, 0x18
/* 02AE28 8002DE28 48083B19 */  bl        DVDClose
/* 02AE2C 8002DE2C 807B0000 */  lwz       r3, 0x0(r27)
/* 02AE30 8002DE30 4BFE0FCD */  bl        simulatorUnpackTexPalette
/* 02AE34 8002DE34 387F0218 */  addi      r3, r31, 0x218
/* 02AE38 8002DE38 38810018 */  addi      r4, r1, 0x18
/* 02AE3C 8002DE3C 48083A3D */  bl        DVDOpen
/* 02AE40 8002DE40 2C030001 */  cmpwi     r3, 0x1
/* 02AE44 8002DE44 40820034 */  bne       lbl_8002DE78
/* 02AE48 8002DE48 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02AE4C 8002DE4C 38610018 */  addi      r3, r1, 0x18
/* 02AE50 8002DE50 809A0000 */  lwz       r4, 0x0(r26)
/* 02AE54 8002DE54 38C00000 */  li        r6, 0x0
/* 02AE58 8002DE58 3805001F */  addi      r0, r5, 0x1f
/* 02AE5C 8002DE5C 54050034 */  clrrwi    r5, r0, 5
/* 02AE60 8002DE60 38E00000 */  li        r7, 0x0
/* 02AE64 8002DE64 4BFE0C71 */  bl        simulatorDVDRead
/* 02AE68 8002DE68 2C030000 */  cmpwi     r3, 0x0
/* 02AE6C 8002DE6C 4082000C */  bne       lbl_8002DE78
/* 02AE70 8002DE70 38600000 */  li        r3, 0x0
/* 02AE74 8002DE74 48001FD0 */  b         lbl_8002FE44
lbl_8002DE78:
/* 02AE78 8002DE78 38610018 */  addi      r3, r1, 0x18
/* 02AE7C 8002DE7C 48083AC5 */  bl        DVDClose
/* 02AE80 8002DE80 807A0000 */  lwz       r3, 0x0(r26)
/* 02AE84 8002DE84 4BFE0F79 */  bl        simulatorUnpackTexPalette
/* 02AE88 8002DE88 3C600001 */  lis       r3, 0x1
/* 02AE8C 8002DE8C 38038000 */  addi      r0, r3, -0x8000
/* 02AE90 8002DE90 90010008 */  stw       r0, 0x8(r1)
/* 02AE94 8002DE94 1C990174 */  mulli     r4, r25, 0x174
/* 02AE98 8002DE98 80DB0000 */  lwz       r6, 0x0(r27)
/* 02AE9C 8002DE9C 39240170 */  addi      r9, r4, 0x170
/* 02AEA0 8002DEA0 80FA0000 */  lwz       r7, 0x0(r26)
/* 02AEA4 8002DEA4 3C608011 */  lis       r3, 0x8011
/* 02AEA8 8002DEA8 3C800002 */  lis       r4, 0x2
/* 02AEAC 8002DEAC 39448000 */  addi      r10, r4, -0x8000
/* 02AEB0 8002DEB0 38638D10 */  subi      r3, r3, 0x72f0
/* 02AEB4 8002DEB4 38BF0234 */  addi      r5, r31, 0x234
/* 02AEB8 8002DEB8 7D3C4A14 */  add       r9, r28, r9
/* 02AEBC 8002DEBC 388D81F8 */  subi      r4, r13, 0x7e08
/* 02AEC0 8002DEC0 390D8200 */  subi      r8, r13, 0x7e00
/* 02AEC4 8002DEC4 4BFE6F99 */  bl        mcardOpen
/* 02AEC8 8002DEC8 480001D4 */  b         lbl_8002E09C
lbl_8002DECC:
/* 02AECC 8002DECC 387F0208 */  addi      r3, r31, 0x208
/* 02AED0 8002DED0 38810018 */  addi      r4, r1, 0x18
/* 02AED4 8002DED4 480839A5 */  bl        DVDOpen
/* 02AED8 8002DED8 2C030001 */  cmpwi     r3, 0x1
/* 02AEDC 8002DEDC 40820034 */  bne       lbl_8002DF10
/* 02AEE0 8002DEE0 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02AEE4 8002DEE4 38610018 */  addi      r3, r1, 0x18
/* 02AEE8 8002DEE8 809B0000 */  lwz       r4, 0x0(r27)
/* 02AEEC 8002DEEC 38C00000 */  li        r6, 0x0
/* 02AEF0 8002DEF0 3805001F */  addi      r0, r5, 0x1f
/* 02AEF4 8002DEF4 54050034 */  clrrwi    r5, r0, 5
/* 02AEF8 8002DEF8 38E00000 */  li        r7, 0x0
/* 02AEFC 8002DEFC 4BFE0BD9 */  bl        simulatorDVDRead
/* 02AF00 8002DF00 2C030000 */  cmpwi     r3, 0x0
/* 02AF04 8002DF04 4082000C */  bne       lbl_8002DF10
/* 02AF08 8002DF08 38600000 */  li        r3, 0x0
/* 02AF0C 8002DF0C 48001F38 */  b         lbl_8002FE44
lbl_8002DF10:
/* 02AF10 8002DF10 38610018 */  addi      r3, r1, 0x18
/* 02AF14 8002DF14 48083A2D */  bl        DVDClose
/* 02AF18 8002DF18 807B0000 */  lwz       r3, 0x0(r27)
/* 02AF1C 8002DF1C 4BFE0EE1 */  bl        simulatorUnpackTexPalette
/* 02AF20 8002DF20 387F0218 */  addi      r3, r31, 0x218
/* 02AF24 8002DF24 38810018 */  addi      r4, r1, 0x18
/* 02AF28 8002DF28 48083951 */  bl        DVDOpen
/* 02AF2C 8002DF2C 2C030001 */  cmpwi     r3, 0x1
/* 02AF30 8002DF30 40820034 */  bne       lbl_8002DF64
/* 02AF34 8002DF34 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02AF38 8002DF38 38610018 */  addi      r3, r1, 0x18
/* 02AF3C 8002DF3C 809A0000 */  lwz       r4, 0x0(r26)
/* 02AF40 8002DF40 38C00000 */  li        r6, 0x0
/* 02AF44 8002DF44 3805001F */  addi      r0, r5, 0x1f
/* 02AF48 8002DF48 54050034 */  clrrwi    r5, r0, 5
/* 02AF4C 8002DF4C 38E00000 */  li        r7, 0x0
/* 02AF50 8002DF50 4BFE0B85 */  bl        simulatorDVDRead
/* 02AF54 8002DF54 2C030000 */  cmpwi     r3, 0x0
/* 02AF58 8002DF58 4082000C */  bne       lbl_8002DF64
/* 02AF5C 8002DF5C 38600000 */  li        r3, 0x0
/* 02AF60 8002DF60 48001EE4 */  b         lbl_8002FE44
lbl_8002DF64:
/* 02AF64 8002DF64 38610018 */  addi      r3, r1, 0x18
/* 02AF68 8002DF68 480839D9 */  bl        DVDClose
/* 02AF6C 8002DF6C 807A0000 */  lwz       r3, 0x0(r26)
/* 02AF70 8002DF70 4BFE0E8D */  bl        simulatorUnpackTexPalette
/* 02AF74 8002DF74 3C600001 */  lis       r3, 0x1
/* 02AF78 8002DF78 38038000 */  addi      r0, r3, -0x8000
/* 02AF7C 8002DF7C 90010008 */  stw       r0, 0x8(r1)
/* 02AF80 8002DF80 1C990174 */  mulli     r4, r25, 0x174
/* 02AF84 8002DF84 80DB0000 */  lwz       r6, 0x0(r27)
/* 02AF88 8002DF88 39240170 */  addi      r9, r4, 0x170
/* 02AF8C 8002DF8C 80FA0000 */  lwz       r7, 0x0(r26)
/* 02AF90 8002DF90 3C608011 */  lis       r3, 0x8011
/* 02AF94 8002DF94 3C800002 */  lis       r4, 0x2
/* 02AF98 8002DF98 39448000 */  addi      r10, r4, -0x8000
/* 02AF9C 8002DF9C 38638D10 */  subi      r3, r3, 0x72f0
/* 02AFA0 8002DFA0 38BF0234 */  addi      r5, r31, 0x234
/* 02AFA4 8002DFA4 7D3C4A14 */  add       r9, r28, r9
/* 02AFA8 8002DFA8 388D81F8 */  subi      r4, r13, 0x7e08
/* 02AFAC 8002DFAC 390D81F8 */  subi      r8, r13, 0x7e08
/* 02AFB0 8002DFB0 4BFE6EAD */  bl        mcardOpen
/* 02AFB4 8002DFB4 480000E8 */  b         lbl_8002E09C
lbl_8002DFB8:
/* 02AFB8 8002DFB8 387F0208 */  addi      r3, r31, 0x208
/* 02AFBC 8002DFBC 38810018 */  addi      r4, r1, 0x18
/* 02AFC0 8002DFC0 480838B9 */  bl        DVDOpen
/* 02AFC4 8002DFC4 2C030001 */  cmpwi     r3, 0x1
/* 02AFC8 8002DFC8 40820034 */  bne       lbl_8002DFFC
/* 02AFCC 8002DFCC 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02AFD0 8002DFD0 38610018 */  addi      r3, r1, 0x18
/* 02AFD4 8002DFD4 809B0000 */  lwz       r4, 0x0(r27)
/* 02AFD8 8002DFD8 38C00000 */  li        r6, 0x0
/* 02AFDC 8002DFDC 3805001F */  addi      r0, r5, 0x1f
/* 02AFE0 8002DFE0 54050034 */  clrrwi    r5, r0, 5
/* 02AFE4 8002DFE4 38E00000 */  li        r7, 0x0
/* 02AFE8 8002DFE8 4BFE0AED */  bl        simulatorDVDRead
/* 02AFEC 8002DFEC 2C030000 */  cmpwi     r3, 0x0
/* 02AFF0 8002DFF0 4082000C */  bne       lbl_8002DFFC
/* 02AFF4 8002DFF4 38600000 */  li        r3, 0x0
/* 02AFF8 8002DFF8 48001E4C */  b         lbl_8002FE44
lbl_8002DFFC:
/* 02AFFC 8002DFFC 38610018 */  addi      r3, r1, 0x18
/* 02B000 8002E000 48083941 */  bl        DVDClose
/* 02B004 8002E004 807B0000 */  lwz       r3, 0x0(r27)
/* 02B008 8002E008 4BFE0DF5 */  bl        simulatorUnpackTexPalette
/* 02B00C 8002E00C 387F0218 */  addi      r3, r31, 0x218
/* 02B010 8002E010 38810018 */  addi      r4, r1, 0x18
/* 02B014 8002E014 48083865 */  bl        DVDOpen
/* 02B018 8002E018 2C030001 */  cmpwi     r3, 0x1
/* 02B01C 8002E01C 40820034 */  bne       lbl_8002E050
/* 02B020 8002E020 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02B024 8002E024 38610018 */  addi      r3, r1, 0x18
/* 02B028 8002E028 809A0000 */  lwz       r4, 0x0(r26)
/* 02B02C 8002E02C 38C00000 */  li        r6, 0x0
/* 02B030 8002E030 3805001F */  addi      r0, r5, 0x1f
/* 02B034 8002E034 54050034 */  clrrwi    r5, r0, 5
/* 02B038 8002E038 38E00000 */  li        r7, 0x0
/* 02B03C 8002E03C 4BFE0A99 */  bl        simulatorDVDRead
/* 02B040 8002E040 2C030000 */  cmpwi     r3, 0x0
/* 02B044 8002E044 4082000C */  bne       lbl_8002E050
/* 02B048 8002E048 38600000 */  li        r3, 0x0
/* 02B04C 8002E04C 48001DF8 */  b         lbl_8002FE44
lbl_8002E050:
/* 02B050 8002E050 38610018 */  addi      r3, r1, 0x18
/* 02B054 8002E054 480838ED */  bl        DVDClose
/* 02B058 8002E058 807A0000 */  lwz       r3, 0x0(r26)
/* 02B05C 8002E05C 4BFE0DA1 */  bl        simulatorUnpackTexPalette
/* 02B060 8002E060 3D000001 */  lis       r8, 0x1
/* 02B064 8002E064 38088000 */  addi      r0, r8, -0x8000
/* 02B068 8002E068 90010008 */  stw       r0, 0x8(r1)
/* 02B06C 8002E06C 1C990174 */  mulli     r4, r25, 0x174
/* 02B070 8002E070 80DB0000 */  lwz       r6, 0x0(r27)
/* 02B074 8002E074 39240170 */  addi      r9, r4, 0x170
/* 02B078 8002E078 80FA0000 */  lwz       r7, 0x0(r26)
/* 02B07C 8002E07C 3C608011 */  lis       r3, 0x8011
/* 02B080 8002E080 3948C000 */  subi      r10, r8, 0x4000
/* 02B084 8002E084 38638D10 */  subi      r3, r3, 0x72f0
/* 02B088 8002E088 38BF0254 */  addi      r5, r31, 0x254
/* 02B08C 8002E08C 7D3C4A14 */  add       r9, r28, r9
/* 02B090 8002E090 388D8208 */  subi      r4, r13, 0x7df8
/* 02B094 8002E094 390D8208 */  subi      r8, r13, 0x7df8
/* 02B098 8002E098 4BFE6DC5 */  bl        mcardOpen
lbl_8002E09C:
/* 02B09C 8002E09C 3C7E0001 */  addis     r3, r30, 0x1
/* 02B0A0 8002E0A0 80032060 */  lwz       r0, 0x2060(r3)
/* 02B0A4 8002E0A4 60000110 */  ori       r0, r0, 0x110
/* 02B0A8 8002E0A8 90032060 */  stw       r0, 0x2060(r3)
/* 02B0AC 8002E0AC 48001BD0 */  b         lbl_8002FC7C
lbl_8002E0B0:
/* 02B0B0 8002E0B0 38730000 */  addi      r3, r19, 0x0
/* 02B0B4 8002E0B4 388D8210 */  subi      r4, r13, 0x7df0
/* 02B0B8 8002E0B8 4803F88D */  bl        romTestCode
/* 02B0BC 8002E0BC 2C030000 */  cmpwi     r3, 0x0
/* 02B0C0 8002E0C0 40820018 */  bne       lbl_8002E0D8
/* 02B0C4 8002E0C4 38730000 */  addi      r3, r19, 0x0
/* 02B0C8 8002E0C8 388D8218 */  subi      r4, r13, 0x7de8
/* 02B0CC 8002E0CC 4803F879 */  bl        romTestCode
/* 02B0D0 8002E0D0 2C030000 */  cmpwi     r3, 0x0
/* 02B0D4 8002E0D4 418203B4 */  beq       lbl_8002E488
lbl_8002E0D8:
/* 02B0D8 8002E0D8 38000005 */  li        r0, 0x5
/* 02B0DC 8002E0DC 90120020 */  stw       r0, 0x20(r18)
/* 02B0E0 8002E0E0 38730000 */  addi      r3, r19, 0x0
/* 02B0E4 8002E0E4 3AE01000 */  li        r23, 0x1000
/* 02B0E8 8002E0E8 388D8210 */  subi      r4, r13, 0x7df0
/* 02B0EC 8002E0EC 4803F859 */  bl        romTestCode
/* 02B0F0 8002E0F0 2C030000 */  cmpwi     r3, 0x0
/* 02B0F4 8002E0F4 41820010 */  beq       lbl_8002E104
/* 02B0F8 8002E0F8 38000001 */  li        r0, 0x1
/* 02B0FC 8002E0FC 90120084 */  stw       r0, 0x84(r18)
/* 02B100 8002E100 4800000C */  b         lbl_8002E10C
lbl_8002E104:
/* 02B104 8002E104 38000000 */  li        r0, 0x0
/* 02B108 8002E108 90120084 */  stw       r0, 0x84(r18)
lbl_8002E10C:
/* 02B10C 8002E10C C0028294 */  lfs       f0, -0x7d6c(r2)
/* 02B110 8002E110 38000002 */  li        r0, 0x2
/* 02B114 8002E114 900D8180 */  stw       r0, -0x7e80(r13)
/* 02B118 8002E118 3881005C */  addi      r4, r1, 0x5c
/* 02B11C 8002E11C 38A00300 */  li        r5, 0x300
/* 02B120 8002E120 D00D8184 */  stfs      f0, -0x7e7c(r13)
/* 02B124 8002E124 38C00000 */  li        r6, 0x0
/* 02B128 8002E128 80740000 */  lwz       r3, 0x0(r20)
/* 02B12C 8002E12C 4803E7E5 */  bl        ramGetBuffer
/* 02B130 8002E130 2C030000 */  cmpwi     r3, 0x0
/* 02B134 8002E134 4082000C */  bne       lbl_8002E140
/* 02B138 8002E138 38600000 */  li        r3, 0x0
/* 02B13C 8002E13C 48001D08 */  b         lbl_8002FE44
lbl_8002E140:
/* 02B140 8002E140 8081005C */  lwz       r4, 0x5c(r1)
/* 02B144 8002E144 380017D9 */  li        r0, 0x17d9
/* 02B148 8002E148 387F0208 */  addi      r3, r31, 0x208
/* 02B14C 8002E14C 90040010 */  stw       r0, 0x10(r4)
/* 02B150 8002E150 38810018 */  addi      r4, r1, 0x18
/* 02B154 8002E154 48083725 */  bl        DVDOpen
/* 02B158 8002E158 2C030001 */  cmpwi     r3, 0x1
/* 02B15C 8002E15C 40820034 */  bne       lbl_8002E190
/* 02B160 8002E160 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02B164 8002E164 38610018 */  addi      r3, r1, 0x18
/* 02B168 8002E168 809B0000 */  lwz       r4, 0x0(r27)
/* 02B16C 8002E16C 38C00000 */  li        r6, 0x0
/* 02B170 8002E170 3805001F */  addi      r0, r5, 0x1f
/* 02B174 8002E174 54050034 */  clrrwi    r5, r0, 5
/* 02B178 8002E178 38E00000 */  li        r7, 0x0
/* 02B17C 8002E17C 4BFE0959 */  bl        simulatorDVDRead
/* 02B180 8002E180 2C030000 */  cmpwi     r3, 0x0
/* 02B184 8002E184 4082000C */  bne       lbl_8002E190
/* 02B188 8002E188 38600000 */  li        r3, 0x0
/* 02B18C 8002E18C 48001CB8 */  b         lbl_8002FE44
lbl_8002E190:
/* 02B190 8002E190 38610018 */  addi      r3, r1, 0x18
/* 02B194 8002E194 480837AD */  bl        DVDClose
/* 02B198 8002E198 807B0000 */  lwz       r3, 0x0(r27)
/* 02B19C 8002E19C 4BFE0C61 */  bl        simulatorUnpackTexPalette
/* 02B1A0 8002E1A0 387F0218 */  addi      r3, r31, 0x218
/* 02B1A4 8002E1A4 38810018 */  addi      r4, r1, 0x18
/* 02B1A8 8002E1A8 480836D1 */  bl        DVDOpen
/* 02B1AC 8002E1AC 2C030001 */  cmpwi     r3, 0x1
/* 02B1B0 8002E1B0 40820034 */  bne       lbl_8002E1E4
/* 02B1B4 8002E1B4 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02B1B8 8002E1B8 38610018 */  addi      r3, r1, 0x18
/* 02B1BC 8002E1BC 809A0000 */  lwz       r4, 0x0(r26)
/* 02B1C0 8002E1C0 38C00000 */  li        r6, 0x0
/* 02B1C4 8002E1C4 3805001F */  addi      r0, r5, 0x1f
/* 02B1C8 8002E1C8 54050034 */  clrrwi    r5, r0, 5
/* 02B1CC 8002E1CC 38E00000 */  li        r7, 0x0
/* 02B1D0 8002E1D0 4BFE0905 */  bl        simulatorDVDRead
/* 02B1D4 8002E1D4 2C030000 */  cmpwi     r3, 0x0
/* 02B1D8 8002E1D8 4082000C */  bne       lbl_8002E1E4
/* 02B1DC 8002E1DC 38600000 */  li        r3, 0x0
/* 02B1E0 8002E1E0 48001C64 */  b         lbl_8002FE44
lbl_8002E1E4:
/* 02B1E4 8002E1E4 38610018 */  addi      r3, r1, 0x18
/* 02B1E8 8002E1E8 48083759 */  bl        DVDClose
/* 02B1EC 8002E1EC 807A0000 */  lwz       r3, 0x0(r26)
/* 02B1F0 8002E1F0 4BFE0C0D */  bl        simulatorUnpackTexPalette
/* 02B1F4 8002E1F4 3D000002 */  lis       r8, 0x2
/* 02B1F8 8002E1F8 91010008 */  stw       r8, 0x8(r1)
/* 02B1FC 8002E1FC 1C990174 */  mulli     r4, r25, 0x174
/* 02B200 8002E200 80DB0000 */  lwz       r6, 0x0(r27)
/* 02B204 8002E204 39240170 */  addi      r9, r4, 0x170
/* 02B208 8002E208 80FA0000 */  lwz       r7, 0x0(r26)
/* 02B20C 8002E20C 3C608011 */  lis       r3, 0x8011
/* 02B210 8002E210 39484000 */  addi      r10, r8, 0x4000
/* 02B214 8002E214 38638D10 */  subi      r3, r3, 0x72f0
/* 02B218 8002E218 38BF0270 */  addi      r5, r31, 0x270
/* 02B21C 8002E21C 7D3C4A14 */  add       r9, r28, r9
/* 02B220 8002E220 388D8220 */  subi      r4, r13, 0x7de0
/* 02B224 8002E224 390D8220 */  subi      r8, r13, 0x7de0
/* 02B228 8002E228 4BFE6C35 */  bl        mcardOpen
/* 02B22C 8002E22C 800D89E8 */  lwz       r0, -0x7618(r13)
/* 02B230 8002E230 540007FF */  clrlwi.   r0, r0, 31
/* 02B234 8002E234 4182002C */  beq       lbl_8002E260
/* 02B238 8002E238 3C80801C */  lis       r4, 0x801c
/* 02B23C 8002E23C 387E0000 */  addi      r3, r30, 0x0
/* 02B240 8002E240 38846FC0 */  addi      r4, r4, 0x6fc0
/* 02B244 8002E244 3CA09563 */  lis       r5, 0x9563
/* 02B248 8002E248 38C0FFFF */  li        r6, -0x1
/* 02B24C 8002E24C 4800662D */  bl        cpuSetCodeHack
/* 02B250 8002E250 2C030000 */  cmpwi     r3, 0x0
/* 02B254 8002E254 40820220 */  bne       lbl_8002E474
/* 02B258 8002E258 38600000 */  li        r3, 0x0
/* 02B25C 8002E25C 48001BE8 */  b         lbl_8002FE44
lbl_8002E260:
/* 02B260 8002E260 38730000 */  addi      r3, r19, 0x0
/* 02B264 8002E264 388D8210 */  subi      r4, r13, 0x7df0
/* 02B268 8002E268 4803F6DD */  bl        romTestCode
/* 02B26C 8002E26C 2C030000 */  cmpwi     r3, 0x0
/* 02B270 8002E270 418201DC */  beq       lbl_8002E44C
/* 02B274 8002E274 3C808018 */  lis       r4, 0x8018
/* 02B278 8002E278 387E0000 */  addi      r3, r30, 0x0
/* 02B27C 8002E27C 38849994 */  subi      r4, r4, 0x666c
/* 02B280 8002E280 3CA09563 */  lis       r5, 0x9563
/* 02B284 8002E284 38C0FFFF */  li        r6, -0x1
/* 02B288 8002E288 480065F1 */  bl        cpuSetCodeHack
/* 02B28C 8002E28C 2C030000 */  cmpwi     r3, 0x0
/* 02B290 8002E290 4082000C */  bne       lbl_8002E29C
/* 02B294 8002E294 38600000 */  li        r3, 0x0
/* 02B298 8002E298 48001BAC */  b         lbl_8002FE44
lbl_8002E29C:
/* 02B29C 8002E29C 3E80800C */  lis       r20, 0x800c
/* 02B2A0 8002E2A0 387E0000 */  addi      r3, r30, 0x0
/* 02B2A4 8002E2A4 3894DA84 */  subi      r4, r20, 0x257c
/* 02B2A8 8002E2A8 3CA0860C */  lis       r5, 0x860c
/* 02B2AC 8002E2AC 38C06025 */  li        r6, 0x6025
/* 02B2B0 8002E2B0 480065C9 */  bl        cpuSetCodeHack
/* 02B2B4 8002E2B4 2C030000 */  cmpwi     r3, 0x0
/* 02B2B8 8002E2B8 4082000C */  bne       lbl_8002E2C4
/* 02B2BC 8002E2BC 38600000 */  li        r3, 0x0
/* 02B2C0 8002E2C0 48001B84 */  b         lbl_8002FE44
lbl_8002E2C4:
/* 02B2C4 8002E2C4 3CA0860D */  lis       r5, 0x860d
/* 02B2C8 8002E2C8 387E0000 */  addi      r3, r30, 0x0
/* 02B2CC 8002E2CC 3894DA88 */  subi      r4, r20, 0x2578
/* 02B2D0 8002E2D0 38A50004 */  addi      r5, r5, 0x4
/* 02B2D4 8002E2D4 38C06825 */  li        r6, 0x6825
/* 02B2D8 8002E2D8 480065A1 */  bl        cpuSetCodeHack
/* 02B2DC 8002E2DC 2C030000 */  cmpwi     r3, 0x0
/* 02B2E0 8002E2E0 4082000C */  bne       lbl_8002E2EC
/* 02B2E4 8002E2E4 38600000 */  li        r3, 0x0
/* 02B2E8 8002E2E8 48001B5C */  b         lbl_8002FE44
lbl_8002E2EC:
/* 02B2EC 8002E2EC 3E400001 */  lis       r18, 0x1
/* 02B2F0 8002E2F0 387E0000 */  addi      r3, r30, 0x0
/* 02B2F4 8002E2F4 3894DB0C */  subi      r4, r20, 0x24f4
/* 02B2F8 8002E2F8 38D2C025 */  subi      r6, r18, 0x3fdb
/* 02B2FC 8002E2FC 3CA08618 */  lis       r5, 0x8618
/* 02B300 8002E300 48006579 */  bl        cpuSetCodeHack
/* 02B304 8002E304 2C030000 */  cmpwi     r3, 0x0
/* 02B308 8002E308 4082000C */  bne       lbl_8002E314
/* 02B30C 8002E30C 38600000 */  li        r3, 0x0
/* 02B310 8002E310 48001B34 */  b         lbl_8002FE44
lbl_8002E314:
/* 02B314 8002E314 3CA08619 */  lis       r5, 0x8619
/* 02B318 8002E318 387E0000 */  addi      r3, r30, 0x0
/* 02B31C 8002E31C 3894DB20 */  subi      r4, r20, 0x24e0
/* 02B320 8002E320 38A50004 */  addi      r5, r5, 0x4
/* 02B324 8002E324 38D2C825 */  subi      r6, r18, 0x37db
/* 02B328 8002E328 48006551 */  bl        cpuSetCodeHack
/* 02B32C 8002E32C 2C030000 */  cmpwi     r3, 0x0
/* 02B330 8002E330 4082000C */  bne       lbl_8002E33C
/* 02B334 8002E334 38600000 */  li        r3, 0x0
/* 02B338 8002E338 48001B0C */  b         lbl_8002FE44
lbl_8002E33C:
/* 02B33C 8002E33C 3CA08608 */  lis       r5, 0x8608
/* 02B340 8002E340 387E0000 */  addi      r3, r30, 0x0
/* 02B344 8002E344 3894DB34 */  subi      r4, r20, 0x24cc
/* 02B348 8002E348 38A50002 */  addi      r5, r5, 0x2
/* 02B34C 8002E34C 38C04025 */  li        r6, 0x4025
/* 02B350 8002E350 48006529 */  bl        cpuSetCodeHack
/* 02B354 8002E354 2C030000 */  cmpwi     r3, 0x0
/* 02B358 8002E358 4082000C */  bne       lbl_8002E364
/* 02B35C 8002E35C 38600000 */  li        r3, 0x0
/* 02B360 8002E360 48001AE4 */  b         lbl_8002FE44
lbl_8002E364:
/* 02B364 8002E364 3E60860A */  lis       r19, 0x860a
/* 02B368 8002E368 387E0000 */  addi      r3, r30, 0x0
/* 02B36C 8002E36C 3894DB4C */  subi      r4, r20, 0x24b4
/* 02B370 8002E370 38B3FFFA */  subi      r5, r19, 0x6
/* 02B374 8002E374 38C04825 */  li        r6, 0x4825
/* 02B378 8002E378 48006501 */  bl        cpuSetCodeHack
/* 02B37C 8002E37C 2C030000 */  cmpwi     r3, 0x0
/* 02B380 8002E380 4082000C */  bne       lbl_8002E38C
/* 02B384 8002E384 38600000 */  li        r3, 0x0
/* 02B388 8002E388 48001ABC */  b         lbl_8002FE44
lbl_8002E38C:
/* 02B38C 8002E38C 3E40860B */  lis       r18, 0x860b
/* 02B390 8002E390 387E0000 */  addi      r3, r30, 0x0
/* 02B394 8002E394 3894DB60 */  subi      r4, r20, 0x24a0
/* 02B398 8002E398 38B2FFFE */  subi      r5, r18, 0x2
/* 02B39C 8002E39C 38C05025 */  li        r6, 0x5025
/* 02B3A0 8002E3A0 480064D9 */  bl        cpuSetCodeHack
/* 02B3A4 8002E3A4 2C030000 */  cmpwi     r3, 0x0
/* 02B3A8 8002E3A8 4082000C */  bne       lbl_8002E3B4
/* 02B3AC 8002E3AC 38600000 */  li        r3, 0x0
/* 02B3B0 8002E3B0 48001A94 */  b         lbl_8002FE44
lbl_8002E3B4:
/* 02B3B4 8002E3B4 3CA0844F */  lis       r5, 0x844f
/* 02B3B8 8002E3B8 387E0000 */  addi      r3, r30, 0x0
/* 02B3BC 8002E3BC 3894DB94 */  subi      r4, r20, 0x246c
/* 02B3C0 8002E3C0 38A5FFFA */  subi      r5, r5, 0x6
/* 02B3C4 8002E3C4 38C07025 */  li        r6, 0x7025
/* 02B3C8 8002E3C8 480064B1 */  bl        cpuSetCodeHack
/* 02B3CC 8002E3CC 2C030000 */  cmpwi     r3, 0x0
/* 02B3D0 8002E3D0 4082000C */  bne       lbl_8002E3DC
/* 02B3D4 8002E3D4 38600000 */  li        r3, 0x0
/* 02B3D8 8002E3D8 48001A6C */  b         lbl_8002FE44
lbl_8002E3DC:
/* 02B3DC 8002E3DC 3CA08450 */  lis       r5, 0x8450
/* 02B3E0 8002E3E0 387E0000 */  addi      r3, r30, 0x0
/* 02B3E4 8002E3E4 3894DBA8 */  subi      r4, r20, 0x2458
/* 02B3E8 8002E3E8 38A5FFFE */  subi      r5, r5, 0x2
/* 02B3EC 8002E3EC 38C07825 */  li        r6, 0x7825
/* 02B3F0 8002E3F0 48006489 */  bl        cpuSetCodeHack
/* 02B3F4 8002E3F4 2C030000 */  cmpwi     r3, 0x0
/* 02B3F8 8002E3F8 4082000C */  bne       lbl_8002E404
/* 02B3FC 8002E3FC 38600000 */  li        r3, 0x0
/* 02B400 8002E400 48001A44 */  b         lbl_8002FE44
lbl_8002E404:
/* 02B404 8002E404 387E0000 */  addi      r3, r30, 0x0
/* 02B408 8002E408 3894DC20 */  subi      r4, r20, 0x23e0
/* 02B40C 8002E40C 38B30006 */  addi      r5, r19, 0x6
/* 02B410 8002E410 38C05025 */  li        r6, 0x5025
/* 02B414 8002E414 48006465 */  bl        cpuSetCodeHack
/* 02B418 8002E418 2C030000 */  cmpwi     r3, 0x0
/* 02B41C 8002E41C 4082000C */  bne       lbl_8002E428
/* 02B420 8002E420 38600000 */  li        r3, 0x0
/* 02B424 8002E424 48001A20 */  b         lbl_8002FE44
lbl_8002E428:
/* 02B428 8002E428 387E0000 */  addi      r3, r30, 0x0
/* 02B42C 8002E42C 3894DC34 */  subi      r4, r20, 0x23cc
/* 02B430 8002E430 38B2000A */  addi      r5, r18, 0xa
/* 02B434 8002E434 38C05825 */  li        r6, 0x5825
/* 02B438 8002E438 48006441 */  bl        cpuSetCodeHack
/* 02B43C 8002E43C 2C030000 */  cmpwi     r3, 0x0
/* 02B440 8002E440 40820034 */  bne       lbl_8002E474
/* 02B444 8002E444 38600000 */  li        r3, 0x0
/* 02B448 8002E448 480019FC */  b         lbl_8002FE44
lbl_8002E44C:
/* 02B44C 8002E44C 3C808018 */  lis       r4, 0x8018
/* 02B450 8002E450 387E0000 */  addi      r3, r30, 0x0
/* 02B454 8002E454 38848A80 */  subi      r4, r4, 0x7580
/* 02B458 8002E458 3CA09563 */  lis       r5, 0x9563
/* 02B45C 8002E45C 38C0FFFF */  li        r6, -0x1
/* 02B460 8002E460 48006419 */  bl        cpuSetCodeHack
/* 02B464 8002E464 2C030000 */  cmpwi     r3, 0x0
/* 02B468 8002E468 4082000C */  bne       lbl_8002E474
/* 02B46C 8002E46C 38600000 */  li        r3, 0x0
/* 02B470 8002E470 480019D4 */  b         lbl_8002FE44
lbl_8002E474:
/* 02B474 8002E474 3C7E0001 */  addis     r3, r30, 0x1
/* 02B478 8002E478 80032060 */  lwz       r0, 0x2060(r3)
/* 02B47C 8002E47C 60001010 */  ori       r0, r0, 0x1010
/* 02B480 8002E480 90032060 */  stw       r0, 0x2060(r3)
/* 02B484 8002E484 480017F8 */  b         lbl_8002FC7C
lbl_8002E488:
/* 02B488 8002E488 38730000 */  addi      r3, r19, 0x0
/* 02B48C 8002E48C 388D8228 */  subi      r4, r13, 0x7dd8
/* 02B490 8002E490 4803F4B5 */  bl        romTestCode
/* 02B494 8002E494 2C030000 */  cmpwi     r3, 0x0
/* 02B498 8002E498 418200E8 */  beq       lbl_8002E580
/* 02B49C 8002E49C 387F0208 */  addi      r3, r31, 0x208
/* 02B4A0 8002E4A0 38810018 */  addi      r4, r1, 0x18
/* 02B4A4 8002E4A4 480833D5 */  bl        DVDOpen
/* 02B4A8 8002E4A8 2C030001 */  cmpwi     r3, 0x1
/* 02B4AC 8002E4AC 40820034 */  bne       lbl_8002E4E0
/* 02B4B0 8002E4B0 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02B4B4 8002E4B4 38610018 */  addi      r3, r1, 0x18
/* 02B4B8 8002E4B8 809B0000 */  lwz       r4, 0x0(r27)
/* 02B4BC 8002E4BC 38C00000 */  li        r6, 0x0
/* 02B4C0 8002E4C0 3805001F */  addi      r0, r5, 0x1f
/* 02B4C4 8002E4C4 54050034 */  clrrwi    r5, r0, 5
/* 02B4C8 8002E4C8 38E00000 */  li        r7, 0x0
/* 02B4CC 8002E4CC 4BFE0609 */  bl        simulatorDVDRead
/* 02B4D0 8002E4D0 2C030000 */  cmpwi     r3, 0x0
/* 02B4D4 8002E4D4 4082000C */  bne       lbl_8002E4E0
/* 02B4D8 8002E4D8 38600000 */  li        r3, 0x0
/* 02B4DC 8002E4DC 48001968 */  b         lbl_8002FE44
lbl_8002E4E0:
/* 02B4E0 8002E4E0 38610018 */  addi      r3, r1, 0x18
/* 02B4E4 8002E4E4 4808345D */  bl        DVDClose
/* 02B4E8 8002E4E8 807B0000 */  lwz       r3, 0x0(r27)
/* 02B4EC 8002E4EC 4BFE0911 */  bl        simulatorUnpackTexPalette
/* 02B4F0 8002E4F0 387F0218 */  addi      r3, r31, 0x218
/* 02B4F4 8002E4F4 38810018 */  addi      r4, r1, 0x18
/* 02B4F8 8002E4F8 48083381 */  bl        DVDOpen
/* 02B4FC 8002E4FC 2C030001 */  cmpwi     r3, 0x1
/* 02B500 8002E500 40820034 */  bne       lbl_8002E534
/* 02B504 8002E504 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02B508 8002E508 38610018 */  addi      r3, r1, 0x18
/* 02B50C 8002E50C 809A0000 */  lwz       r4, 0x0(r26)
/* 02B510 8002E510 38C00000 */  li        r6, 0x0
/* 02B514 8002E514 3805001F */  addi      r0, r5, 0x1f
/* 02B518 8002E518 54050034 */  clrrwi    r5, r0, 5
/* 02B51C 8002E51C 38E00000 */  li        r7, 0x0
/* 02B520 8002E520 4BFE05B5 */  bl        simulatorDVDRead
/* 02B524 8002E524 2C030000 */  cmpwi     r3, 0x0
/* 02B528 8002E528 4082000C */  bne       lbl_8002E534
/* 02B52C 8002E52C 38600000 */  li        r3, 0x0
/* 02B530 8002E530 48001914 */  b         lbl_8002FE44
lbl_8002E534:
/* 02B534 8002E534 38610018 */  addi      r3, r1, 0x18
/* 02B538 8002E538 48083409 */  bl        DVDClose
/* 02B53C 8002E53C 807A0000 */  lwz       r3, 0x0(r26)
/* 02B540 8002E540 4BFE08BD */  bl        simulatorUnpackTexPalette
/* 02B544 8002E544 1C990174 */  mulli     r4, r25, 0x174
/* 02B548 8002E548 39240170 */  addi      r9, r4, 0x170
/* 02B54C 8002E54C 38000200 */  li        r0, 0x200
/* 02B550 8002E550 90010008 */  stw       r0, 0x8(r1)
/* 02B554 8002E554 3C608011 */  lis       r3, 0x8011
/* 02B558 8002E558 38638D10 */  subi      r3, r3, 0x72f0
/* 02B55C 8002E55C 80DB0000 */  lwz       r6, 0x0(r27)
/* 02B560 8002E560 38BF0280 */  addi      r5, r31, 0x280
/* 02B564 8002E564 80FA0000 */  lwz       r7, 0x0(r26)
/* 02B568 8002E568 7D3C4A14 */  add       r9, r28, r9
/* 02B56C 8002E56C 388D8230 */  subi      r4, r13, 0x7dd0
/* 02B570 8002E570 390D8230 */  subi      r8, r13, 0x7dd0
/* 02B574 8002E574 39404000 */  li        r10, 0x4000
/* 02B578 8002E578 4BFE68E5 */  bl        mcardOpen
/* 02B57C 8002E57C 48001700 */  b         lbl_8002FC7C
lbl_8002E580:
/* 02B580 8002E580 38730000 */  addi      r3, r19, 0x0
/* 02B584 8002E584 388D8238 */  subi      r4, r13, 0x7dc8
/* 02B588 8002E588 4803F3BD */  bl        romTestCode
/* 02B58C 8002E58C 2C030000 */  cmpwi     r3, 0x0
/* 02B590 8002E590 418200E8 */  beq       lbl_8002E678
/* 02B594 8002E594 387F0208 */  addi      r3, r31, 0x208
/* 02B598 8002E598 38810018 */  addi      r4, r1, 0x18
/* 02B59C 8002E59C 480832DD */  bl        DVDOpen
/* 02B5A0 8002E5A0 2C030001 */  cmpwi     r3, 0x1
/* 02B5A4 8002E5A4 40820034 */  bne       lbl_8002E5D8
/* 02B5A8 8002E5A8 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02B5AC 8002E5AC 38610018 */  addi      r3, r1, 0x18
/* 02B5B0 8002E5B0 809B0000 */  lwz       r4, 0x0(r27)
/* 02B5B4 8002E5B4 38C00000 */  li        r6, 0x0
/* 02B5B8 8002E5B8 3805001F */  addi      r0, r5, 0x1f
/* 02B5BC 8002E5BC 54050034 */  clrrwi    r5, r0, 5
/* 02B5C0 8002E5C0 38E00000 */  li        r7, 0x0
/* 02B5C4 8002E5C4 4BFE0511 */  bl        simulatorDVDRead
/* 02B5C8 8002E5C8 2C030000 */  cmpwi     r3, 0x0
/* 02B5CC 8002E5CC 4082000C */  bne       lbl_8002E5D8
/* 02B5D0 8002E5D0 38600000 */  li        r3, 0x0
/* 02B5D4 8002E5D4 48001870 */  b         lbl_8002FE44
lbl_8002E5D8:
/* 02B5D8 8002E5D8 38610018 */  addi      r3, r1, 0x18
/* 02B5DC 8002E5DC 48083365 */  bl        DVDClose
/* 02B5E0 8002E5E0 807B0000 */  lwz       r3, 0x0(r27)
/* 02B5E4 8002E5E4 4BFE0819 */  bl        simulatorUnpackTexPalette
/* 02B5E8 8002E5E8 387F0208 */  addi      r3, r31, 0x208
/* 02B5EC 8002E5EC 38810018 */  addi      r4, r1, 0x18
/* 02B5F0 8002E5F0 48083289 */  bl        DVDOpen
/* 02B5F4 8002E5F4 2C030001 */  cmpwi     r3, 0x1
/* 02B5F8 8002E5F8 40820034 */  bne       lbl_8002E62C
/* 02B5FC 8002E5FC 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02B600 8002E600 38610018 */  addi      r3, r1, 0x18
/* 02B604 8002E604 809B0000 */  lwz       r4, 0x0(r27)
/* 02B608 8002E608 38C00000 */  li        r6, 0x0
/* 02B60C 8002E60C 3805001F */  addi      r0, r5, 0x1f
/* 02B610 8002E610 54050034 */  clrrwi    r5, r0, 5
/* 02B614 8002E614 38E00000 */  li        r7, 0x0
/* 02B618 8002E618 4BFE04BD */  bl        simulatorDVDRead
/* 02B61C 8002E61C 2C030000 */  cmpwi     r3, 0x0
/* 02B620 8002E620 4082000C */  bne       lbl_8002E62C
/* 02B624 8002E624 38600000 */  li        r3, 0x0
/* 02B628 8002E628 4800181C */  b         lbl_8002FE44
lbl_8002E62C:
/* 02B62C 8002E62C 38610018 */  addi      r3, r1, 0x18
/* 02B630 8002E630 48083311 */  bl        DVDClose
/* 02B634 8002E634 807B0000 */  lwz       r3, 0x0(r27)
/* 02B638 8002E638 4BFE07C5 */  bl        simulatorUnpackTexPalette
/* 02B63C 8002E63C 3D000002 */  lis       r8, 0x2
/* 02B640 8002E640 91010008 */  stw       r8, 0x8(r1)
/* 02B644 8002E644 1C990174 */  mulli     r4, r25, 0x174
/* 02B648 8002E648 80DB0000 */  lwz       r6, 0x0(r27)
/* 02B64C 8002E64C 39240170 */  addi      r9, r4, 0x170
/* 02B650 8002E650 80FA0000 */  lwz       r7, 0x0(r26)
/* 02B654 8002E654 3C608011 */  lis       r3, 0x8011
/* 02B658 8002E658 39484000 */  addi      r10, r8, 0x4000
/* 02B65C 8002E65C 38638D10 */  subi      r3, r3, 0x72f0
/* 02B660 8002E660 38BF028C */  addi      r5, r31, 0x28c
/* 02B664 8002E664 7D3C4A14 */  add       r9, r28, r9
/* 02B668 8002E668 388D8240 */  subi      r4, r13, 0x7dc0
/* 02B66C 8002E66C 390D8240 */  subi      r8, r13, 0x7dc0
/* 02B670 8002E670 4BFE67ED */  bl        mcardOpen
/* 02B674 8002E674 48001608 */  b         lbl_8002FC7C
lbl_8002E678:
/* 02B678 8002E678 38730000 */  addi      r3, r19, 0x0
/* 02B67C 8002E67C 388D8244 */  subi      r4, r13, 0x7dbc
/* 02B680 8002E680 4803F2C5 */  bl        romTestCode
/* 02B684 8002E684 2C030000 */  cmpwi     r3, 0x0
/* 02B688 8002E688 41820030 */  beq       lbl_8002E6B8
/* 02B68C 8002E68C 3C808024 */  lis       r4, 0x8024
/* 02B690 8002E690 3CA01421 */  lis       r5, 0x1421
/* 02B694 8002E694 387E0000 */  addi      r3, r30, 0x0
/* 02B698 8002E698 38844CFC */  addi      r4, r4, 0x4cfc
/* 02B69C 8002E69C 38A5FFFA */  subi      r5, r5, 0x6
/* 02B6A0 8002E6A0 38C00000 */  li        r6, 0x0
/* 02B6A4 8002E6A4 480061D5 */  bl        cpuSetCodeHack
/* 02B6A8 8002E6A8 2C030000 */  cmpwi     r3, 0x0
/* 02B6AC 8002E6AC 408215D0 */  bne       lbl_8002FC7C
/* 02B6B0 8002E6B0 38600000 */  li        r3, 0x0
/* 02B6B4 8002E6B4 48001790 */  b         lbl_8002FE44
lbl_8002E6B8:
/* 02B6B8 8002E6B8 38730000 */  addi      r3, r19, 0x0
/* 02B6BC 8002E6BC 388D824C */  subi      r4, r13, 0x7db4
/* 02B6C0 8002E6C0 4803F285 */  bl        romTestCode
/* 02B6C4 8002E6C4 2C030000 */  cmpwi     r3, 0x0
/* 02B6C8 8002E6C8 408215B4 */  bne       lbl_8002FC7C
/* 02B6CC 8002E6CC 38730000 */  addi      r3, r19, 0x0
/* 02B6D0 8002E6D0 388D8254 */  subi      r4, r13, 0x7dac
/* 02B6D4 8002E6D4 4803F271 */  bl        romTestCode
/* 02B6D8 8002E6D8 2C030000 */  cmpwi     r3, 0x0
/* 02B6DC 8002E6DC 408215A0 */  bne       lbl_8002FC7C
/* 02B6E0 8002E6E0 38730000 */  addi      r3, r19, 0x0
/* 02B6E4 8002E6E4 388D825C */  subi      r4, r13, 0x7da4
/* 02B6E8 8002E6E8 4803F25D */  bl        romTestCode
/* 02B6EC 8002E6EC 2C030000 */  cmpwi     r3, 0x0
/* 02B6F0 8002E6F0 4082158C */  bne       lbl_8002FC7C
/* 02B6F4 8002E6F4 38730000 */  addi      r3, r19, 0x0
/* 02B6F8 8002E6F8 388D8264 */  subi      r4, r13, 0x7d9c
/* 02B6FC 8002E6FC 4803F249 */  bl        romTestCode
/* 02B700 8002E700 2C030000 */  cmpwi     r3, 0x0
/* 02B704 8002E704 41820030 */  beq       lbl_8002E734
/* 02B708 8002E708 3C808008 */  lis       r4, 0x8008
/* 02B70C 8002E70C 3CA01441 */  lis       r5, 0x1441
/* 02B710 8002E710 387E0000 */  addi      r3, r30, 0x0
/* 02B714 8002E714 3884ADD0 */  subi      r4, r4, 0x5230
/* 02B718 8002E718 38A5FFF9 */  subi      r5, r5, 0x7
/* 02B71C 8002E71C 38C00000 */  li        r6, 0x0
/* 02B720 8002E720 48006159 */  bl        cpuSetCodeHack
/* 02B724 8002E724 2C030000 */  cmpwi     r3, 0x0
/* 02B728 8002E728 40821554 */  bne       lbl_8002FC7C
/* 02B72C 8002E72C 38600000 */  li        r3, 0x0
/* 02B730 8002E730 48001714 */  b         lbl_8002FE44
lbl_8002E734:
/* 02B734 8002E734 38730000 */  addi      r3, r19, 0x0
/* 02B738 8002E738 388D826C */  subi      r4, r13, 0x7d94
/* 02B73C 8002E73C 4803F209 */  bl        romTestCode
/* 02B740 8002E740 2C030000 */  cmpwi     r3, 0x0
/* 02B744 8002E744 41820110 */  beq       lbl_8002E854
/* 02B748 8002E748 387F0208 */  addi      r3, r31, 0x208
/* 02B74C 8002E74C 38810018 */  addi      r4, r1, 0x18
/* 02B750 8002E750 48083129 */  bl        DVDOpen
/* 02B754 8002E754 2C030001 */  cmpwi     r3, 0x1
/* 02B758 8002E758 40820034 */  bne       lbl_8002E78C
/* 02B75C 8002E75C 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02B760 8002E760 38610018 */  addi      r3, r1, 0x18
/* 02B764 8002E764 809B0000 */  lwz       r4, 0x0(r27)
/* 02B768 8002E768 38C00000 */  li        r6, 0x0
/* 02B76C 8002E76C 3805001F */  addi      r0, r5, 0x1f
/* 02B770 8002E770 54050034 */  clrrwi    r5, r0, 5
/* 02B774 8002E774 38E00000 */  li        r7, 0x0
/* 02B778 8002E778 4BFE035D */  bl        simulatorDVDRead
/* 02B77C 8002E77C 2C030000 */  cmpwi     r3, 0x0
/* 02B780 8002E780 4082000C */  bne       lbl_8002E78C
/* 02B784 8002E784 38600000 */  li        r3, 0x0
/* 02B788 8002E788 480016BC */  b         lbl_8002FE44
lbl_8002E78C:
/* 02B78C 8002E78C 38610018 */  addi      r3, r1, 0x18
/* 02B790 8002E790 480831B1 */  bl        DVDClose
/* 02B794 8002E794 807B0000 */  lwz       r3, 0x0(r27)
/* 02B798 8002E798 4BFE0665 */  bl        simulatorUnpackTexPalette
/* 02B79C 8002E79C 387F0208 */  addi      r3, r31, 0x208
/* 02B7A0 8002E7A0 38810018 */  addi      r4, r1, 0x18
/* 02B7A4 8002E7A4 480830D5 */  bl        DVDOpen
/* 02B7A8 8002E7A8 2C030001 */  cmpwi     r3, 0x1
/* 02B7AC 8002E7AC 40820034 */  bne       lbl_8002E7E0
/* 02B7B0 8002E7B0 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02B7B4 8002E7B4 38610018 */  addi      r3, r1, 0x18
/* 02B7B8 8002E7B8 809B0000 */  lwz       r4, 0x0(r27)
/* 02B7BC 8002E7BC 38C00000 */  li        r6, 0x0
/* 02B7C0 8002E7C0 3805001F */  addi      r0, r5, 0x1f
/* 02B7C4 8002E7C4 54050034 */  clrrwi    r5, r0, 5
/* 02B7C8 8002E7C8 38E00000 */  li        r7, 0x0
/* 02B7CC 8002E7CC 4BFE0309 */  bl        simulatorDVDRead
/* 02B7D0 8002E7D0 2C030000 */  cmpwi     r3, 0x0
/* 02B7D4 8002E7D4 4082000C */  bne       lbl_8002E7E0
/* 02B7D8 8002E7D8 38600000 */  li        r3, 0x0
/* 02B7DC 8002E7DC 48001668 */  b         lbl_8002FE44
lbl_8002E7E0:
/* 02B7E0 8002E7E0 38610018 */  addi      r3, r1, 0x18
/* 02B7E4 8002E7E4 4808315D */  bl        DVDClose
/* 02B7E8 8002E7E8 807B0000 */  lwz       r3, 0x0(r27)
/* 02B7EC 8002E7EC 4BFE0611 */  bl        simulatorUnpackTexPalette
/* 02B7F0 8002E7F0 1C990174 */  mulli     r4, r25, 0x174
/* 02B7F4 8002E7F4 39240170 */  addi      r9, r4, 0x170
/* 02B7F8 8002E7F8 38000200 */  li        r0, 0x200
/* 02B7FC 8002E7FC 90010008 */  stw       r0, 0x8(r1)
/* 02B800 8002E800 3C608011 */  lis       r3, 0x8011
/* 02B804 8002E804 38638D10 */  subi      r3, r3, 0x72f0
/* 02B808 8002E808 80DB0000 */  lwz       r6, 0x0(r27)
/* 02B80C 8002E80C 38BF029C */  addi      r5, r31, 0x29c
/* 02B810 8002E810 80FA0000 */  lwz       r7, 0x0(r26)
/* 02B814 8002E814 7D3C4A14 */  add       r9, r28, r9
/* 02B818 8002E818 388D8274 */  subi      r4, r13, 0x7d8c
/* 02B81C 8002E81C 390D8274 */  subi      r8, r13, 0x7d8c
/* 02B820 8002E820 39404000 */  li        r10, 0x4000
/* 02B824 8002E824 4BFE6639 */  bl        mcardOpen
/* 02B828 8002E828 3C808010 */  lis       r4, 0x8010
/* 02B82C 8002E82C 3CA01617 */  lis       r5, 0x1617
/* 02B830 8002E830 387E0000 */  addi      r3, r30, 0x0
/* 02B834 8002E834 38843E0C */  addi      r4, r4, 0x3e0c
/* 02B838 8002E838 38A5FFF2 */  subi      r5, r5, 0xe
/* 02B83C 8002E83C 38C00000 */  li        r6, 0x0
/* 02B840 8002E840 48006039 */  bl        cpuSetCodeHack
/* 02B844 8002E844 2C030000 */  cmpwi     r3, 0x0
/* 02B848 8002E848 40821434 */  bne       lbl_8002FC7C
/* 02B84C 8002E84C 38600000 */  li        r3, 0x0
/* 02B850 8002E850 480015F4 */  b         lbl_8002FE44
lbl_8002E854:
/* 02B854 8002E854 38730000 */  addi      r3, r19, 0x0
/* 02B858 8002E858 388D827C */  subi      r4, r13, 0x7d84
/* 02B85C 8002E85C 4803F0E9 */  bl        romTestCode
/* 02B860 8002E860 2C030000 */  cmpwi     r3, 0x0
/* 02B864 8002E864 40821418 */  bne       lbl_8002FC7C
/* 02B868 8002E868 38730000 */  addi      r3, r19, 0x0
/* 02B86C 8002E86C 388D8284 */  subi      r4, r13, 0x7d7c
/* 02B870 8002E870 4803F0D5 */  bl        romTestCode
/* 02B874 8002E874 2C030000 */  cmpwi     r3, 0x0
/* 02B878 8002E878 41820030 */  beq       lbl_8002E8A8
/* 02B87C 8002E87C 3C808000 */  lis       r4, 0x8000
/* 02B880 8002E880 3CA01463 */  lis       r5, 0x1463
/* 02B884 8002E884 387E0000 */  addi      r3, r30, 0x0
/* 02B888 8002E888 38840A04 */  addi      r4, r4, 0xa04
/* 02B88C 8002E88C 38A5FFFF */  subi      r5, r5, 0x1
/* 02B890 8002E890 38C00000 */  li        r6, 0x0
/* 02B894 8002E894 48005FE5 */  bl        cpuSetCodeHack
/* 02B898 8002E898 2C030000 */  cmpwi     r3, 0x0
/* 02B89C 8002E89C 408213E0 */  bne       lbl_8002FC7C
/* 02B8A0 8002E8A0 38600000 */  li        r3, 0x0
/* 02B8A4 8002E8A4 480015A0 */  b         lbl_8002FE44
lbl_8002E8A8:
/* 02B8A8 8002E8A8 38730000 */  addi      r3, r19, 0x0
/* 02B8AC 8002E8AC 388D828C */  subi      r4, r13, 0x7d74
/* 02B8B0 8002E8B0 4803F095 */  bl        romTestCode
/* 02B8B4 8002E8B4 2C030000 */  cmpwi     r3, 0x0
/* 02B8B8 8002E8B8 40820018 */  bne       lbl_8002E8D0
/* 02B8BC 8002E8BC 38730000 */  addi      r3, r19, 0x0
/* 02B8C0 8002E8C0 388D8294 */  subi      r4, r13, 0x7d6c
/* 02B8C4 8002E8C4 4803F081 */  bl        romTestCode
/* 02B8C8 8002E8C8 2C030000 */  cmpwi     r3, 0x0
/* 02B8CC 8002E8CC 41820234 */  beq       lbl_8002EB00
lbl_8002E8D0:
/* 02B8D0 8002E8D0 38000003 */  li        r0, 0x3
/* 02B8D4 8002E8D4 3C808000 */  lis       r4, 0x8000
/* 02B8D8 8002E8D8 900D8180 */  stw       r0, -0x7e80(r13)
/* 02B8DC 8002E8DC 3CA03C03 */  lis       r5, 0x3c03
/* 02B8E0 8002E8E0 387E0000 */  addi      r3, r30, 0x0
/* 02B8E4 8002E8E4 388405EC */  addi      r4, r4, 0x5ec
/* 02B8E8 8002E8E8 38A58001 */  subi      r5, r5, 0x7fff
/* 02B8EC 8002E8EC 38C0FFFF */  li        r6, -0x1
/* 02B8F0 8002E8F0 48005F89 */  bl        cpuSetCodeHack
/* 02B8F4 8002E8F4 2C030000 */  cmpwi     r3, 0x0
/* 02B8F8 8002E8F8 4082000C */  bne       lbl_8002E904
/* 02B8FC 8002E8FC 38600000 */  li        r3, 0x0
/* 02B900 8002E900 48001544 */  b         lbl_8002FE44
lbl_8002E904:
/* 02B904 8002E904 38730000 */  addi      r3, r19, 0x0
/* 02B908 8002E908 388D8294 */  subi      r4, r13, 0x7d6c
/* 02B90C 8002E90C 4803F039 */  bl        romTestCode
/* 02B910 8002E910 2C030000 */  cmpwi     r3, 0x0
/* 02B914 8002E914 41820078 */  beq       lbl_8002E98C
/* 02B918 8002E918 3E400C02 */  lis       r18, 0xc02
/* 02B91C 8002E91C 3E608007 */  lis       r19, 0x8007
/* 02B920 8002E920 387E0000 */  addi      r3, r30, 0x0
/* 02B924 8002E924 3893D458 */  subi      r4, r19, 0x2ba8
/* 02B928 8002E928 38B289E9 */  subi      r5, r18, 0x7617
/* 02B92C 8002E92C 38D289A3 */  subi      r6, r18, 0x765d
/* 02B930 8002E930 48005F49 */  bl        cpuSetCodeHack
/* 02B934 8002E934 2C030000 */  cmpwi     r3, 0x0
/* 02B938 8002E938 4082000C */  bne       lbl_8002E944
/* 02B93C 8002E93C 38600000 */  li        r3, 0x0
/* 02B940 8002E940 48001504 */  b         lbl_8002FE44
lbl_8002E944:
/* 02B944 8002E944 387E0000 */  addi      r3, r30, 0x0
/* 02B948 8002E948 3893D664 */  subi      r4, r19, 0x299c
/* 02B94C 8002E94C 38B289E9 */  subi      r5, r18, 0x7617
/* 02B950 8002E950 38D289A3 */  subi      r6, r18, 0x765d
/* 02B954 8002E954 48005F25 */  bl        cpuSetCodeHack
/* 02B958 8002E958 2C030000 */  cmpwi     r3, 0x0
/* 02B95C 8002E95C 4082000C */  bne       lbl_8002E968
/* 02B960 8002E960 38600000 */  li        r3, 0x0
/* 02B964 8002E964 480014E0 */  b         lbl_8002FE44
lbl_8002E968:
/* 02B968 8002E968 387E0000 */  addi      r3, r30, 0x0
/* 02B96C 8002E96C 3893D6D0 */  subi      r4, r19, 0x2930
/* 02B970 8002E970 38B289E9 */  subi      r5, r18, 0x7617
/* 02B974 8002E974 38D289A3 */  subi      r6, r18, 0x765d
/* 02B978 8002E978 48005F01 */  bl        cpuSetCodeHack
/* 02B97C 8002E97C 2C030000 */  cmpwi     r3, 0x0
/* 02B980 8002E980 40820080 */  bne       lbl_8002EA00
/* 02B984 8002E984 38600000 */  li        r3, 0x0
/* 02B988 8002E988 480014BC */  b         lbl_8002FE44
lbl_8002E98C:
/* 02B98C 8002E98C 3E400C02 */  lis       r18, 0xc02
/* 02B990 8002E990 3E608007 */  lis       r19, 0x8007
/* 02B994 8002E994 387E0000 */  addi      r3, r30, 0x0
/* 02B998 8002E998 3893D338 */  subi      r4, r19, 0x2cc8
/* 02B99C 8002E99C 38B289A9 */  subi      r5, r18, 0x7657
/* 02B9A0 8002E9A0 38D28963 */  subi      r6, r18, 0x769d
/* 02B9A4 8002E9A4 48005ED5 */  bl        cpuSetCodeHack
/* 02B9A8 8002E9A8 2C030000 */  cmpwi     r3, 0x0
/* 02B9AC 8002E9AC 4082000C */  bne       lbl_8002E9B8
/* 02B9B0 8002E9B0 38600000 */  li        r3, 0x0
/* 02B9B4 8002E9B4 48001490 */  b         lbl_8002FE44
lbl_8002E9B8:
/* 02B9B8 8002E9B8 387E0000 */  addi      r3, r30, 0x0
/* 02B9BC 8002E9BC 3893D544 */  subi      r4, r19, 0x2abc
/* 02B9C0 8002E9C0 38B289A9 */  subi      r5, r18, 0x7657
/* 02B9C4 8002E9C4 38D28963 */  subi      r6, r18, 0x769d
/* 02B9C8 8002E9C8 48005EB1 */  bl        cpuSetCodeHack
/* 02B9CC 8002E9CC 2C030000 */  cmpwi     r3, 0x0
/* 02B9D0 8002E9D0 4082000C */  bne       lbl_8002E9DC
/* 02B9D4 8002E9D4 38600000 */  li        r3, 0x0
/* 02B9D8 8002E9D8 4800146C */  b         lbl_8002FE44
lbl_8002E9DC:
/* 02B9DC 8002E9DC 387E0000 */  addi      r3, r30, 0x0
/* 02B9E0 8002E9E0 3893D5B0 */  subi      r4, r19, 0x2a50
/* 02B9E4 8002E9E4 38B289A9 */  subi      r5, r18, 0x7657
/* 02B9E8 8002E9E8 38D28963 */  subi      r6, r18, 0x769d
/* 02B9EC 8002E9EC 48005E8D */  bl        cpuSetCodeHack
/* 02B9F0 8002E9F0 2C030000 */  cmpwi     r3, 0x0
/* 02B9F4 8002E9F4 4082000C */  bne       lbl_8002EA00
/* 02B9F8 8002E9F8 38600000 */  li        r3, 0x0
/* 02B9FC 8002E9FC 48001448 */  b         lbl_8002FE44
lbl_8002EA00:
/* 02BA00 8002EA00 387F0208 */  addi      r3, r31, 0x208
/* 02BA04 8002EA04 38810018 */  addi      r4, r1, 0x18
/* 02BA08 8002EA08 48082E71 */  bl        DVDOpen
/* 02BA0C 8002EA0C 2C030001 */  cmpwi     r3, 0x1
/* 02BA10 8002EA10 40820034 */  bne       lbl_8002EA44
/* 02BA14 8002EA14 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02BA18 8002EA18 38610018 */  addi      r3, r1, 0x18
/* 02BA1C 8002EA1C 809B0000 */  lwz       r4, 0x0(r27)
/* 02BA20 8002EA20 38C00000 */  li        r6, 0x0
/* 02BA24 8002EA24 3805001F */  addi      r0, r5, 0x1f
/* 02BA28 8002EA28 54050034 */  clrrwi    r5, r0, 5
/* 02BA2C 8002EA2C 38E00000 */  li        r7, 0x0
/* 02BA30 8002EA30 4BFE00A5 */  bl        simulatorDVDRead
/* 02BA34 8002EA34 2C030000 */  cmpwi     r3, 0x0
/* 02BA38 8002EA38 4082000C */  bne       lbl_8002EA44
/* 02BA3C 8002EA3C 38600000 */  li        r3, 0x0
/* 02BA40 8002EA40 48001404 */  b         lbl_8002FE44
lbl_8002EA44:
/* 02BA44 8002EA44 38610018 */  addi      r3, r1, 0x18
/* 02BA48 8002EA48 48082EF9 */  bl        DVDClose
/* 02BA4C 8002EA4C 807B0000 */  lwz       r3, 0x0(r27)
/* 02BA50 8002EA50 4BFE03AD */  bl        simulatorUnpackTexPalette
/* 02BA54 8002EA54 387F0218 */  addi      r3, r31, 0x218
/* 02BA58 8002EA58 38810018 */  addi      r4, r1, 0x18
/* 02BA5C 8002EA5C 48082E1D */  bl        DVDOpen
/* 02BA60 8002EA60 2C030001 */  cmpwi     r3, 0x1
/* 02BA64 8002EA64 40820034 */  bne       lbl_8002EA98
/* 02BA68 8002EA68 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02BA6C 8002EA6C 38610018 */  addi      r3, r1, 0x18
/* 02BA70 8002EA70 809A0000 */  lwz       r4, 0x0(r26)
/* 02BA74 8002EA74 38C00000 */  li        r6, 0x0
/* 02BA78 8002EA78 3805001F */  addi      r0, r5, 0x1f
/* 02BA7C 8002EA7C 54050034 */  clrrwi    r5, r0, 5
/* 02BA80 8002EA80 38E00000 */  li        r7, 0x0
/* 02BA84 8002EA84 4BFE0051 */  bl        simulatorDVDRead
/* 02BA88 8002EA88 2C030000 */  cmpwi     r3, 0x0
/* 02BA8C 8002EA8C 4082000C */  bne       lbl_8002EA98
/* 02BA90 8002EA90 38600000 */  li        r3, 0x0
/* 02BA94 8002EA94 480013B0 */  b         lbl_8002FE44
lbl_8002EA98:
/* 02BA98 8002EA98 38610018 */  addi      r3, r1, 0x18
/* 02BA9C 8002EA9C 48082EA5 */  bl        DVDClose
/* 02BAA0 8002EAA0 807A0000 */  lwz       r3, 0x0(r26)
/* 02BAA4 8002EAA4 4BFE0359 */  bl        simulatorUnpackTexPalette
/* 02BAA8 8002EAA8 1C990174 */  mulli     r4, r25, 0x174
/* 02BAAC 8002EAAC 39240170 */  addi      r9, r4, 0x170
/* 02BAB0 8002EAB0 38000200 */  li        r0, 0x200
/* 02BAB4 8002EAB4 90010008 */  stw       r0, 0x8(r1)
/* 02BAB8 8002EAB8 3C608011 */  lis       r3, 0x8011
/* 02BABC 8002EABC 38638D10 */  subi      r3, r3, 0x72f0
/* 02BAC0 8002EAC0 80DB0000 */  lwz       r6, 0x0(r27)
/* 02BAC4 8002EAC4 38BF02AC */  addi      r5, r31, 0x2ac
/* 02BAC8 8002EAC8 80FA0000 */  lwz       r7, 0x0(r26)
/* 02BACC 8002EACC 7D3C4A14 */  add       r9, r28, r9
/* 02BAD0 8002EAD0 388D829C */  subi      r4, r13, 0x7d64
/* 02BAD4 8002EAD4 390D829C */  subi      r8, r13, 0x7d64
/* 02BAD8 8002EAD8 39404000 */  li        r10, 0x4000
/* 02BADC 8002EADC 4BFE6381 */  bl        mcardOpen
/* 02BAE0 8002EAE0 808D8914 */  lwz       r4, -0x76ec(r13)
/* 02BAE4 8002EAE4 3800000B */  li        r0, 0xb
/* 02BAE8 8002EAE8 3C7E0001 */  addis     r3, r30, 0x1
/* 02BAEC 8002EAEC 90040020 */  stw       r0, 0x20(r4)
/* 02BAF0 8002EAF0 80032060 */  lwz       r0, 0x2060(r3)
/* 02BAF4 8002EAF4 60000010 */  ori       r0, r0, 0x10
/* 02BAF8 8002EAF8 90032060 */  stw       r0, 0x2060(r3)
/* 02BAFC 8002EAFC 48001180 */  b         lbl_8002FC7C
lbl_8002EB00:
/* 02BB00 8002EB00 38730000 */  addi      r3, r19, 0x0
/* 02BB04 8002EB04 388D82A4 */  subi      r4, r13, 0x7d5c
/* 02BB08 8002EB08 4803EE3D */  bl        romTestCode
/* 02BB0C 8002EB0C 2C030000 */  cmpwi     r3, 0x0
/* 02BB10 8002EB10 41820080 */  beq       lbl_8002EB90
/* 02BB14 8002EB14 3E408006 */  lis       r18, 0x8006
/* 02BB18 8002EB18 3CA0144E */  lis       r5, 0x144e
/* 02BB1C 8002EB1C 387E0000 */  addi      r3, r30, 0x0
/* 02BB20 8002EB20 389273A8 */  addi      r4, r18, 0x73a8
/* 02BB24 8002EB24 38A5FFFC */  subi      r5, r5, 0x4
/* 02BB28 8002EB28 38C00000 */  li        r6, 0x0
/* 02BB2C 8002EB2C 48005D4D */  bl        cpuSetCodeHack
/* 02BB30 8002EB30 2C030000 */  cmpwi     r3, 0x0
/* 02BB34 8002EB34 4082000C */  bne       lbl_8002EB40
/* 02BB38 8002EB38 38600000 */  li        r3, 0x0
/* 02BB3C 8002EB3C 48001308 */  b         lbl_8002FE44
lbl_8002EB40:
/* 02BB40 8002EB40 3CA01450 */  lis       r5, 0x1450
/* 02BB44 8002EB44 387E0000 */  addi      r3, r30, 0x0
/* 02BB48 8002EB48 38927564 */  addi      r4, r18, 0x7564
/* 02BB4C 8002EB4C 38A5FFFC */  subi      r5, r5, 0x4
/* 02BB50 8002EB50 38C00000 */  li        r6, 0x0
/* 02BB54 8002EB54 48005D25 */  bl        cpuSetCodeHack
/* 02BB58 8002EB58 2C030000 */  cmpwi     r3, 0x0
/* 02BB5C 8002EB5C 4082000C */  bne       lbl_8002EB68
/* 02BB60 8002EB60 38600000 */  li        r3, 0x0
/* 02BB64 8002EB64 480012E0 */  b         lbl_8002FE44
lbl_8002EB68:
/* 02BB68 8002EB68 3CA0145A */  lis       r5, 0x145a
/* 02BB6C 8002EB6C 387E0000 */  addi      r3, r30, 0x0
/* 02BB70 8002EB70 3892759C */  addi      r4, r18, 0x759c
/* 02BB74 8002EB74 38A5FFFC */  subi      r5, r5, 0x4
/* 02BB78 8002EB78 38C00000 */  li        r6, 0x0
/* 02BB7C 8002EB7C 48005CFD */  bl        cpuSetCodeHack
/* 02BB80 8002EB80 2C030000 */  cmpwi     r3, 0x0
/* 02BB84 8002EB84 408210F8 */  bne       lbl_8002FC7C
/* 02BB88 8002EB88 38600000 */  li        r3, 0x0
/* 02BB8C 8002EB8C 480012B8 */  b         lbl_8002FE44
lbl_8002EB90:
/* 02BB90 8002EB90 38730000 */  addi      r3, r19, 0x0
/* 02BB94 8002EB94 388D82AC */  subi      r4, r13, 0x7d54
/* 02BB98 8002EB98 4803EDAD */  bl        romTestCode
/* 02BB9C 8002EB9C 2C030000 */  cmpwi     r3, 0x0
/* 02BBA0 8002EBA0 41820080 */  beq       lbl_8002EC20
/* 02BBA4 8002EBA4 3E608009 */  lis       r19, 0x8009
/* 02BBA8 8002EBA8 3E401444 */  lis       r18, 0x1444
/* 02BBAC 8002EBAC 387E0000 */  addi      r3, r30, 0x0
/* 02BBB0 8002EBB0 38937B6C */  addi      r4, r19, 0x7b6c
/* 02BBB4 8002EBB4 38B2FFF9 */  subi      r5, r18, 0x7
/* 02BBB8 8002EBB8 38C00000 */  li        r6, 0x0
/* 02BBBC 8002EBBC 48005CBD */  bl        cpuSetCodeHack
/* 02BBC0 8002EBC0 2C030000 */  cmpwi     r3, 0x0
/* 02BBC4 8002EBC4 4082000C */  bne       lbl_8002EBD0
/* 02BBC8 8002EBC8 38600000 */  li        r3, 0x0
/* 02BBCC 8002EBCC 48001278 */  b         lbl_8002FE44
lbl_8002EBD0:
/* 02BBD0 8002EBD0 387E0000 */  addi      r3, r30, 0x0
/* 02BBD4 8002EBD4 38937BF4 */  addi      r4, r19, 0x7bf4
/* 02BBD8 8002EBD8 38B2FFF9 */  subi      r5, r18, 0x7
/* 02BBDC 8002EBDC 38C00000 */  li        r6, 0x0
/* 02BBE0 8002EBE0 48005C99 */  bl        cpuSetCodeHack
/* 02BBE4 8002EBE4 2C030000 */  cmpwi     r3, 0x0
/* 02BBE8 8002EBE8 4082000C */  bne       lbl_8002EBF4
/* 02BBEC 8002EBEC 38600000 */  li        r3, 0x0
/* 02BBF0 8002EBF0 48001254 */  b         lbl_8002FE44
lbl_8002EBF4:
/* 02BBF4 8002EBF4 3CA00802 */  lis       r5, 0x802
/* 02BBF8 8002EBF8 3CC01001 */  lis       r6, 0x1001
/* 02BBFC 8002EBFC 387E0000 */  addi      r3, r30, 0x0
/* 02BC00 8002EC00 38936D08 */  addi      r4, r19, 0x6d08
/* 02BC04 8002EC04 38A55B40 */  addi      r5, r5, 0x5b40
/* 02BC08 8002EC08 38C6FFFF */  subi      r6, r6, 0x1
/* 02BC0C 8002EC0C 48005C6D */  bl        cpuSetCodeHack
/* 02BC10 8002EC10 2C030000 */  cmpwi     r3, 0x0
/* 02BC14 8002EC14 40821068 */  bne       lbl_8002FC7C
/* 02BC18 8002EC18 38600000 */  li        r3, 0x0
/* 02BC1C 8002EC1C 48001228 */  b         lbl_8002FE44
lbl_8002EC20:
/* 02BC20 8002EC20 38730000 */  addi      r3, r19, 0x0
/* 02BC24 8002EC24 388D82B4 */  subi      r4, r13, 0x7d4c
/* 02BC28 8002EC28 4803ED1D */  bl        romTestCode
/* 02BC2C 8002EC2C 2C030000 */  cmpwi     r3, 0x0
/* 02BC30 8002EC30 41820080 */  beq       lbl_8002ECB0
/* 02BC34 8002EC34 3E60800B */  lis       r19, 0x800b
/* 02BC38 8002EC38 3E408C43 */  lis       r18, 0x8c43
/* 02BC3C 8002EC3C 387E0000 */  addi      r3, r30, 0x0
/* 02BC40 8002EC40 38932DCC */  addi      r4, r19, 0x2dcc
/* 02BC44 8002EC44 38B20004 */  addi      r5, r18, 0x4
/* 02BC48 8002EC48 38C0FFFF */  li        r6, -0x1
/* 02BC4C 8002EC4C 48005C2D */  bl        cpuSetCodeHack
/* 02BC50 8002EC50 2C030000 */  cmpwi     r3, 0x0
/* 02BC54 8002EC54 4082000C */  bne       lbl_8002EC60
/* 02BC58 8002EC58 38600000 */  li        r3, 0x0
/* 02BC5C 8002EC5C 480011E8 */  b         lbl_8002FE44
lbl_8002EC60:
/* 02BC60 8002EC60 387E0000 */  addi      r3, r30, 0x0
/* 02BC64 8002EC64 38932E70 */  addi      r4, r19, 0x2e70
/* 02BC68 8002EC68 38B20004 */  addi      r5, r18, 0x4
/* 02BC6C 8002EC6C 38C0FFFF */  li        r6, -0x1
/* 02BC70 8002EC70 48005C09 */  bl        cpuSetCodeHack
/* 02BC74 8002EC74 2C030000 */  cmpwi     r3, 0x0
/* 02BC78 8002EC78 4082000C */  bne       lbl_8002EC84
/* 02BC7C 8002EC7C 38600000 */  li        r3, 0x0
/* 02BC80 8002EC80 480011C4 */  b         lbl_8002FE44
lbl_8002EC84:
/* 02BC84 8002EC84 3C808003 */  lis       r4, 0x8003
/* 02BC88 8002EC88 3CA08C42 */  lis       r5, 0x8c42
/* 02BC8C 8002EC8C 387E0000 */  addi      r3, r30, 0x0
/* 02BC90 8002EC90 38849EB8 */  subi      r4, r4, 0x6148
/* 02BC94 8002EC94 38A552CC */  addi      r5, r5, 0x52cc
/* 02BC98 8002EC98 38C0FFFF */  li        r6, -0x1
/* 02BC9C 8002EC9C 48005BDD */  bl        cpuSetCodeHack
/* 02BCA0 8002ECA0 2C030000 */  cmpwi     r3, 0x0
/* 02BCA4 8002ECA4 40820FD8 */  bne       lbl_8002FC7C
/* 02BCA8 8002ECA8 38600000 */  li        r3, 0x0
/* 02BCAC 8002ECAC 48001198 */  b         lbl_8002FE44
lbl_8002ECB0:
/* 02BCB0 8002ECB0 38730000 */  addi      r3, r19, 0x0
/* 02BCB4 8002ECB4 388D82BC */  subi      r4, r13, 0x7d44
/* 02BCB8 8002ECB8 4803EC8D */  bl        romTestCode
/* 02BCBC 8002ECBC 2C030000 */  cmpwi     r3, 0x0
/* 02BCC0 8002ECC0 41820100 */  beq       lbl_8002EDC0
/* 02BCC4 8002ECC4 38000002 */  li        r0, 0x2
/* 02BCC8 8002ECC8 90120020 */  stw       r0, 0x20(r18)
/* 02BCCC 8002ECCC 387F0208 */  addi      r3, r31, 0x208
/* 02BCD0 8002ECD0 38810018 */  addi      r4, r1, 0x18
/* 02BCD4 8002ECD4 48082BA5 */  bl        DVDOpen
/* 02BCD8 8002ECD8 2C030001 */  cmpwi     r3, 0x1
/* 02BCDC 8002ECDC 40820034 */  bne       lbl_8002ED10
/* 02BCE0 8002ECE0 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02BCE4 8002ECE4 38610018 */  addi      r3, r1, 0x18
/* 02BCE8 8002ECE8 809B0000 */  lwz       r4, 0x0(r27)
/* 02BCEC 8002ECEC 38C00000 */  li        r6, 0x0
/* 02BCF0 8002ECF0 3805001F */  addi      r0, r5, 0x1f
/* 02BCF4 8002ECF4 54050034 */  clrrwi    r5, r0, 5
/* 02BCF8 8002ECF8 38E00000 */  li        r7, 0x0
/* 02BCFC 8002ECFC 4BFDFDD9 */  bl        simulatorDVDRead
/* 02BD00 8002ED00 2C030000 */  cmpwi     r3, 0x0
/* 02BD04 8002ED04 4082000C */  bne       lbl_8002ED10
/* 02BD08 8002ED08 38600000 */  li        r3, 0x0
/* 02BD0C 8002ED0C 48001138 */  b         lbl_8002FE44
lbl_8002ED10:
/* 02BD10 8002ED10 38610018 */  addi      r3, r1, 0x18
/* 02BD14 8002ED14 48082C2D */  bl        DVDClose
/* 02BD18 8002ED18 807B0000 */  lwz       r3, 0x0(r27)
/* 02BD1C 8002ED1C 4BFE00E1 */  bl        simulatorUnpackTexPalette
/* 02BD20 8002ED20 387F0218 */  addi      r3, r31, 0x218
/* 02BD24 8002ED24 38810018 */  addi      r4, r1, 0x18
/* 02BD28 8002ED28 48082B51 */  bl        DVDOpen
/* 02BD2C 8002ED2C 2C030001 */  cmpwi     r3, 0x1
/* 02BD30 8002ED30 40820034 */  bne       lbl_8002ED64
/* 02BD34 8002ED34 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02BD38 8002ED38 38610018 */  addi      r3, r1, 0x18
/* 02BD3C 8002ED3C 809A0000 */  lwz       r4, 0x0(r26)
/* 02BD40 8002ED40 38C00000 */  li        r6, 0x0
/* 02BD44 8002ED44 3805001F */  addi      r0, r5, 0x1f
/* 02BD48 8002ED48 54050034 */  clrrwi    r5, r0, 5
/* 02BD4C 8002ED4C 38E00000 */  li        r7, 0x0
/* 02BD50 8002ED50 4BFDFD85 */  bl        simulatorDVDRead
/* 02BD54 8002ED54 2C030000 */  cmpwi     r3, 0x0
/* 02BD58 8002ED58 4082000C */  bne       lbl_8002ED64
/* 02BD5C 8002ED5C 38600000 */  li        r3, 0x0
/* 02BD60 8002ED60 480010E4 */  b         lbl_8002FE44
lbl_8002ED64:
/* 02BD64 8002ED64 38610018 */  addi      r3, r1, 0x18
/* 02BD68 8002ED68 48082BD9 */  bl        DVDClose
/* 02BD6C 8002ED6C 807A0000 */  lwz       r3, 0x0(r26)
/* 02BD70 8002ED70 4BFE008D */  bl        simulatorUnpackTexPalette
/* 02BD74 8002ED74 1C990174 */  mulli     r4, r25, 0x174
/* 02BD78 8002ED78 39240170 */  addi      r9, r4, 0x170
/* 02BD7C 8002ED7C 38000200 */  li        r0, 0x200
/* 02BD80 8002ED80 90010008 */  stw       r0, 0x8(r1)
/* 02BD84 8002ED84 3C608011 */  lis       r3, 0x8011
/* 02BD88 8002ED88 38638D10 */  subi      r3, r3, 0x72f0
/* 02BD8C 8002ED8C 80DB0000 */  lwz       r6, 0x0(r27)
/* 02BD90 8002ED90 38BF02B8 */  addi      r5, r31, 0x2b8
/* 02BD94 8002ED94 80FA0000 */  lwz       r7, 0x0(r26)
/* 02BD98 8002ED98 7D3C4A14 */  add       r9, r28, r9
/* 02BD9C 8002ED9C 388D82C4 */  subi      r4, r13, 0x7d3c
/* 02BDA0 8002EDA0 390D82C4 */  subi      r8, r13, 0x7d3c
/* 02BDA4 8002EDA4 39404000 */  li        r10, 0x4000
/* 02BDA8 8002EDA8 4BFE60B5 */  bl        mcardOpen
/* 02BDAC 8002EDAC 3C7E0001 */  addis     r3, r30, 0x1
/* 02BDB0 8002EDB0 80032060 */  lwz       r0, 0x2060(r3)
/* 02BDB4 8002EDB4 60000010 */  ori       r0, r0, 0x10
/* 02BDB8 8002EDB8 90032060 */  stw       r0, 0x2060(r3)
/* 02BDBC 8002EDBC 48000EC0 */  b         lbl_8002FC7C
lbl_8002EDC0:
/* 02BDC0 8002EDC0 38730000 */  addi      r3, r19, 0x0
/* 02BDC4 8002EDC4 388D82CC */  subi      r4, r13, 0x7d34
/* 02BDC8 8002EDC8 4803EB7D */  bl        romTestCode
/* 02BDCC 8002EDCC 2C030000 */  cmpwi     r3, 0x0
/* 02BDD0 8002EDD0 41820058 */  beq       lbl_8002EE28
/* 02BDD4 8002EDD4 3E408002 */  lis       r18, 0x8002
/* 02BDD8 8002EDD8 3CA08DF8 */  lis       r5, 0x8df8
/* 02BDDC 8002EDDC 387E0000 */  addi      r3, r30, 0x0
/* 02BDE0 8002EDE0 38920BCC */  addi      r4, r18, 0xbcc
/* 02BDE4 8002EDE4 38A50034 */  addi      r5, r5, 0x34
/* 02BDE8 8002EDE8 38C0FFFF */  li        r6, -0x1
/* 02BDEC 8002EDEC 48005A8D */  bl        cpuSetCodeHack
/* 02BDF0 8002EDF0 2C030000 */  cmpwi     r3, 0x0
/* 02BDF4 8002EDF4 4082000C */  bne       lbl_8002EE00
/* 02BDF8 8002EDF8 38600000 */  li        r3, 0x0
/* 02BDFC 8002EDFC 48001048 */  b         lbl_8002FE44
lbl_8002EE00:
/* 02BE00 8002EE00 3CA08DF0 */  lis       r5, 0x8df0
/* 02BE04 8002EE04 387E0000 */  addi      r3, r30, 0x0
/* 02BE08 8002EE08 38920EBC */  addi      r4, r18, 0xebc
/* 02BE0C 8002EE0C 38A5F330 */  subi      r5, r5, 0xcd0
/* 02BE10 8002EE10 38C0FFFF */  li        r6, -0x1
/* 02BE14 8002EE14 48005A65 */  bl        cpuSetCodeHack
/* 02BE18 8002EE18 2C030000 */  cmpwi     r3, 0x0
/* 02BE1C 8002EE1C 40820E60 */  bne       lbl_8002FC7C
/* 02BE20 8002EE20 38600000 */  li        r3, 0x0
/* 02BE24 8002EE24 48001020 */  b         lbl_8002FE44
lbl_8002EE28:
/* 02BE28 8002EE28 38730000 */  addi      r3, r19, 0x0
/* 02BE2C 8002EE2C 388D82D4 */  subi      r4, r13, 0x7d2c
/* 02BE30 8002EE30 4803EB15 */  bl        romTestCode
/* 02BE34 8002EE34 2C030000 */  cmpwi     r3, 0x0
/* 02BE38 8002EE38 418200F0 */  beq       lbl_8002EF28
/* 02BE3C 8002EE3C 38000008 */  li        r0, 0x8
/* 02BE40 8002EE40 90120020 */  stw       r0, 0x20(r18)
/* 02BE44 8002EE44 387F0208 */  addi      r3, r31, 0x208
/* 02BE48 8002EE48 38810018 */  addi      r4, r1, 0x18
/* 02BE4C 8002EE4C 48082A2D */  bl        DVDOpen
/* 02BE50 8002EE50 2C030001 */  cmpwi     r3, 0x1
/* 02BE54 8002EE54 40820034 */  bne       lbl_8002EE88
/* 02BE58 8002EE58 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02BE5C 8002EE5C 38610018 */  addi      r3, r1, 0x18
/* 02BE60 8002EE60 809B0000 */  lwz       r4, 0x0(r27)
/* 02BE64 8002EE64 38C00000 */  li        r6, 0x0
/* 02BE68 8002EE68 3805001F */  addi      r0, r5, 0x1f
/* 02BE6C 8002EE6C 54050034 */  clrrwi    r5, r0, 5
/* 02BE70 8002EE70 38E00000 */  li        r7, 0x0
/* 02BE74 8002EE74 4BFDFC61 */  bl        simulatorDVDRead
/* 02BE78 8002EE78 2C030000 */  cmpwi     r3, 0x0
/* 02BE7C 8002EE7C 4082000C */  bne       lbl_8002EE88
/* 02BE80 8002EE80 38600000 */  li        r3, 0x0
/* 02BE84 8002EE84 48000FC0 */  b         lbl_8002FE44
lbl_8002EE88:
/* 02BE88 8002EE88 38610018 */  addi      r3, r1, 0x18
/* 02BE8C 8002EE8C 48082AB5 */  bl        DVDClose
/* 02BE90 8002EE90 807B0000 */  lwz       r3, 0x0(r27)
/* 02BE94 8002EE94 4BFDFF69 */  bl        simulatorUnpackTexPalette
/* 02BE98 8002EE98 387F0218 */  addi      r3, r31, 0x218
/* 02BE9C 8002EE9C 38810018 */  addi      r4, r1, 0x18
/* 02BEA0 8002EEA0 480829D9 */  bl        DVDOpen
/* 02BEA4 8002EEA4 2C030001 */  cmpwi     r3, 0x1
/* 02BEA8 8002EEA8 40820034 */  bne       lbl_8002EEDC
/* 02BEAC 8002EEAC 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02BEB0 8002EEB0 38610018 */  addi      r3, r1, 0x18
/* 02BEB4 8002EEB4 809A0000 */  lwz       r4, 0x0(r26)
/* 02BEB8 8002EEB8 38C00000 */  li        r6, 0x0
/* 02BEBC 8002EEBC 3805001F */  addi      r0, r5, 0x1f
/* 02BEC0 8002EEC0 54050034 */  clrrwi    r5, r0, 5
/* 02BEC4 8002EEC4 38E00000 */  li        r7, 0x0
/* 02BEC8 8002EEC8 4BFDFC0D */  bl        simulatorDVDRead
/* 02BECC 8002EECC 2C030000 */  cmpwi     r3, 0x0
/* 02BED0 8002EED0 4082000C */  bne       lbl_8002EEDC
/* 02BED4 8002EED4 38600000 */  li        r3, 0x0
/* 02BED8 8002EED8 48000F6C */  b         lbl_8002FE44
lbl_8002EEDC:
/* 02BEDC 8002EEDC 38610018 */  addi      r3, r1, 0x18
/* 02BEE0 8002EEE0 48082A61 */  bl        DVDClose
/* 02BEE4 8002EEE4 807A0000 */  lwz       r3, 0x0(r26)
/* 02BEE8 8002EEE8 4BFDFF15 */  bl        simulatorUnpackTexPalette
/* 02BEEC 8002EEEC 1C990174 */  mulli     r4, r25, 0x174
/* 02BEF0 8002EEF0 39240170 */  addi      r9, r4, 0x170
/* 02BEF4 8002EEF4 38000200 */  li        r0, 0x200
/* 02BEF8 8002EEF8 90010008 */  stw       r0, 0x8(r1)
/* 02BEFC 8002EEFC 3C608011 */  lis       r3, 0x8011
/* 02BF00 8002EF00 38638D10 */  subi      r3, r3, 0x72f0
/* 02BF04 8002EF04 80DB0000 */  lwz       r6, 0x0(r27)
/* 02BF08 8002EF08 38BF02C4 */  addi      r5, r31, 0x2c4
/* 02BF0C 8002EF0C 80FA0000 */  lwz       r7, 0x0(r26)
/* 02BF10 8002EF10 7D3C4A14 */  add       r9, r28, r9
/* 02BF14 8002EF14 388D82DC */  subi      r4, r13, 0x7d24
/* 02BF18 8002EF18 390D82DC */  subi      r8, r13, 0x7d24
/* 02BF1C 8002EF1C 39404000 */  li        r10, 0x4000
/* 02BF20 8002EF20 4BFE5F3D */  bl        mcardOpen
/* 02BF24 8002EF24 48000D58 */  b         lbl_8002FC7C
lbl_8002EF28:
/* 02BF28 8002EF28 38730000 */  addi      r3, r19, 0x0
/* 02BF2C 8002EF2C 388D82E0 */  subi      r4, r13, 0x7d20
/* 02BF30 8002EF30 4803EA15 */  bl        romTestCode
/* 02BF34 8002EF34 2C030000 */  cmpwi     r3, 0x0
/* 02BF38 8002EF38 418200F0 */  beq       lbl_8002F028
/* 02BF3C 8002EF3C 38000009 */  li        r0, 0x9
/* 02BF40 8002EF40 90120020 */  stw       r0, 0x20(r18)
/* 02BF44 8002EF44 387F0208 */  addi      r3, r31, 0x208
/* 02BF48 8002EF48 38810018 */  addi      r4, r1, 0x18
/* 02BF4C 8002EF4C 4808292D */  bl        DVDOpen
/* 02BF50 8002EF50 2C030001 */  cmpwi     r3, 0x1
/* 02BF54 8002EF54 40820034 */  bne       lbl_8002EF88
/* 02BF58 8002EF58 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02BF5C 8002EF5C 38610018 */  addi      r3, r1, 0x18
/* 02BF60 8002EF60 809B0000 */  lwz       r4, 0x0(r27)
/* 02BF64 8002EF64 38C00000 */  li        r6, 0x0
/* 02BF68 8002EF68 3805001F */  addi      r0, r5, 0x1f
/* 02BF6C 8002EF6C 54050034 */  clrrwi    r5, r0, 5
/* 02BF70 8002EF70 38E00000 */  li        r7, 0x0
/* 02BF74 8002EF74 4BFDFB61 */  bl        simulatorDVDRead
/* 02BF78 8002EF78 2C030000 */  cmpwi     r3, 0x0
/* 02BF7C 8002EF7C 4082000C */  bne       lbl_8002EF88
/* 02BF80 8002EF80 38600000 */  li        r3, 0x0
/* 02BF84 8002EF84 48000EC0 */  b         lbl_8002FE44
lbl_8002EF88:
/* 02BF88 8002EF88 38610018 */  addi      r3, r1, 0x18
/* 02BF8C 8002EF8C 480829B5 */  bl        DVDClose
/* 02BF90 8002EF90 807B0000 */  lwz       r3, 0x0(r27)
/* 02BF94 8002EF94 4BFDFE69 */  bl        simulatorUnpackTexPalette
/* 02BF98 8002EF98 387F0218 */  addi      r3, r31, 0x218
/* 02BF9C 8002EF9C 38810018 */  addi      r4, r1, 0x18
/* 02BFA0 8002EFA0 480828D9 */  bl        DVDOpen
/* 02BFA4 8002EFA4 2C030001 */  cmpwi     r3, 0x1
/* 02BFA8 8002EFA8 40820034 */  bne       lbl_8002EFDC
/* 02BFAC 8002EFAC 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02BFB0 8002EFB0 38610018 */  addi      r3, r1, 0x18
/* 02BFB4 8002EFB4 809A0000 */  lwz       r4, 0x0(r26)
/* 02BFB8 8002EFB8 38C00000 */  li        r6, 0x0
/* 02BFBC 8002EFBC 3805001F */  addi      r0, r5, 0x1f
/* 02BFC0 8002EFC0 54050034 */  clrrwi    r5, r0, 5
/* 02BFC4 8002EFC4 38E00000 */  li        r7, 0x0
/* 02BFC8 8002EFC8 4BFDFB0D */  bl        simulatorDVDRead
/* 02BFCC 8002EFCC 2C030000 */  cmpwi     r3, 0x0
/* 02BFD0 8002EFD0 4082000C */  bne       lbl_8002EFDC
/* 02BFD4 8002EFD4 38600000 */  li        r3, 0x0
/* 02BFD8 8002EFD8 48000E6C */  b         lbl_8002FE44
lbl_8002EFDC:
/* 02BFDC 8002EFDC 38610018 */  addi      r3, r1, 0x18
/* 02BFE0 8002EFE0 48082961 */  bl        DVDClose
/* 02BFE4 8002EFE4 807A0000 */  lwz       r3, 0x0(r26)
/* 02BFE8 8002EFE8 4BFDFE15 */  bl        simulatorUnpackTexPalette
/* 02BFEC 8002EFEC 1C990174 */  mulli     r4, r25, 0x174
/* 02BFF0 8002EFF0 39240170 */  addi      r9, r4, 0x170
/* 02BFF4 8002EFF4 38000200 */  li        r0, 0x200
/* 02BFF8 8002EFF8 90010008 */  stw       r0, 0x8(r1)
/* 02BFFC 8002EFFC 3C608011 */  lis       r3, 0x8011
/* 02C000 8002F000 38638D10 */  subi      r3, r3, 0x72f0
/* 02C004 8002F004 80DB0000 */  lwz       r6, 0x0(r27)
/* 02C008 8002F008 38BF02D4 */  addi      r5, r31, 0x2d4
/* 02C00C 8002F00C 80FA0000 */  lwz       r7, 0x0(r26)
/* 02C010 8002F010 7D3C4A14 */  add       r9, r28, r9
/* 02C014 8002F014 388D82E8 */  subi      r4, r13, 0x7d18
/* 02C018 8002F018 390D82E8 */  subi      r8, r13, 0x7d18
/* 02C01C 8002F01C 39404000 */  li        r10, 0x4000
/* 02C020 8002F020 4BFE5E3D */  bl        mcardOpen
/* 02C024 8002F024 48000C58 */  b         lbl_8002FC7C
lbl_8002F028:
/* 02C028 8002F028 38730000 */  addi      r3, r19, 0x0
/* 02C02C 8002F02C 388D82EC */  subi      r4, r13, 0x7d14
/* 02C030 8002F030 4803E915 */  bl        romTestCode
/* 02C034 8002F034 2C030000 */  cmpwi     r3, 0x0
/* 02C038 8002F038 418200F0 */  beq       lbl_8002F128
/* 02C03C 8002F03C 3800000A */  li        r0, 0xa
/* 02C040 8002F040 90120020 */  stw       r0, 0x20(r18)
/* 02C044 8002F044 387F0208 */  addi      r3, r31, 0x208
/* 02C048 8002F048 38810018 */  addi      r4, r1, 0x18
/* 02C04C 8002F04C 4808282D */  bl        DVDOpen
/* 02C050 8002F050 2C030001 */  cmpwi     r3, 0x1
/* 02C054 8002F054 40820034 */  bne       lbl_8002F088
/* 02C058 8002F058 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02C05C 8002F05C 38610018 */  addi      r3, r1, 0x18
/* 02C060 8002F060 809B0000 */  lwz       r4, 0x0(r27)
/* 02C064 8002F064 38C00000 */  li        r6, 0x0
/* 02C068 8002F068 3805001F */  addi      r0, r5, 0x1f
/* 02C06C 8002F06C 54050034 */  clrrwi    r5, r0, 5
/* 02C070 8002F070 38E00000 */  li        r7, 0x0
/* 02C074 8002F074 4BFDFA61 */  bl        simulatorDVDRead
/* 02C078 8002F078 2C030000 */  cmpwi     r3, 0x0
/* 02C07C 8002F07C 4082000C */  bne       lbl_8002F088
/* 02C080 8002F080 38600000 */  li        r3, 0x0
/* 02C084 8002F084 48000DC0 */  b         lbl_8002FE44
lbl_8002F088:
/* 02C088 8002F088 38610018 */  addi      r3, r1, 0x18
/* 02C08C 8002F08C 480828B5 */  bl        DVDClose
/* 02C090 8002F090 807B0000 */  lwz       r3, 0x0(r27)
/* 02C094 8002F094 4BFDFD69 */  bl        simulatorUnpackTexPalette
/* 02C098 8002F098 387F0218 */  addi      r3, r31, 0x218
/* 02C09C 8002F09C 38810018 */  addi      r4, r1, 0x18
/* 02C0A0 8002F0A0 480827D9 */  bl        DVDOpen
/* 02C0A4 8002F0A4 2C030001 */  cmpwi     r3, 0x1
/* 02C0A8 8002F0A8 40820034 */  bne       lbl_8002F0DC
/* 02C0AC 8002F0AC 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02C0B0 8002F0B0 38610018 */  addi      r3, r1, 0x18
/* 02C0B4 8002F0B4 809A0000 */  lwz       r4, 0x0(r26)
/* 02C0B8 8002F0B8 38C00000 */  li        r6, 0x0
/* 02C0BC 8002F0BC 3805001F */  addi      r0, r5, 0x1f
/* 02C0C0 8002F0C0 54050034 */  clrrwi    r5, r0, 5
/* 02C0C4 8002F0C4 38E00000 */  li        r7, 0x0
/* 02C0C8 8002F0C8 4BFDFA0D */  bl        simulatorDVDRead
/* 02C0CC 8002F0CC 2C030000 */  cmpwi     r3, 0x0
/* 02C0D0 8002F0D0 4082000C */  bne       lbl_8002F0DC
/* 02C0D4 8002F0D4 38600000 */  li        r3, 0x0
/* 02C0D8 8002F0D8 48000D6C */  b         lbl_8002FE44
lbl_8002F0DC:
/* 02C0DC 8002F0DC 38610018 */  addi      r3, r1, 0x18
/* 02C0E0 8002F0E0 48082861 */  bl        DVDClose
/* 02C0E4 8002F0E4 807A0000 */  lwz       r3, 0x0(r26)
/* 02C0E8 8002F0E8 4BFDFD15 */  bl        simulatorUnpackTexPalette
/* 02C0EC 8002F0EC 1C990174 */  mulli     r4, r25, 0x174
/* 02C0F0 8002F0F0 39240170 */  addi      r9, r4, 0x170
/* 02C0F4 8002F0F4 38000800 */  li        r0, 0x800
/* 02C0F8 8002F0F8 90010008 */  stw       r0, 0x8(r1)
/* 02C0FC 8002F0FC 3C608011 */  lis       r3, 0x8011
/* 02C100 8002F100 38638D10 */  subi      r3, r3, 0x72f0
/* 02C104 8002F104 80DB0000 */  lwz       r6, 0x0(r27)
/* 02C108 8002F108 38BF02E4 */  addi      r5, r31, 0x2e4
/* 02C10C 8002F10C 80FA0000 */  lwz       r7, 0x0(r26)
/* 02C110 8002F110 7D3C4A14 */  add       r9, r28, r9
/* 02C114 8002F114 388D82F4 */  subi      r4, r13, 0x7d0c
/* 02C118 8002F118 390D82F4 */  subi      r8, r13, 0x7d0c
/* 02C11C 8002F11C 39404000 */  li        r10, 0x4000
/* 02C120 8002F120 4BFE5D3D */  bl        mcardOpen
/* 02C124 8002F124 48000B58 */  b         lbl_8002FC7C
lbl_8002F128:
/* 02C128 8002F128 38730000 */  addi      r3, r19, 0x0
/* 02C12C 8002F12C 388D82F8 */  subi      r4, r13, 0x7d08
/* 02C130 8002F130 4803E815 */  bl        romTestCode
/* 02C134 8002F134 2C030000 */  cmpwi     r3, 0x0
/* 02C138 8002F138 40820B44 */  bne       lbl_8002FC7C
/* 02C13C 8002F13C 38730000 */  addi      r3, r19, 0x0
/* 02C140 8002F140 388D8300 */  subi      r4, r13, 0x7d00
/* 02C144 8002F144 4803E801 */  bl        romTestCode
/* 02C148 8002F148 2C030000 */  cmpwi     r3, 0x0
/* 02C14C 8002F14C 40820B30 */  bne       lbl_8002FC7C
/* 02C150 8002F150 38730000 */  addi      r3, r19, 0x0
/* 02C154 8002F154 388D8308 */  subi      r4, r13, 0x7cf8
/* 02C158 8002F158 4803E7ED */  bl        romTestCode
/* 02C15C 8002F15C 2C030000 */  cmpwi     r3, 0x0
/* 02C160 8002F160 418200E8 */  beq       lbl_8002F248
/* 02C164 8002F164 387F0208 */  addi      r3, r31, 0x208
/* 02C168 8002F168 38810018 */  addi      r4, r1, 0x18
/* 02C16C 8002F16C 4808270D */  bl        DVDOpen
/* 02C170 8002F170 2C030001 */  cmpwi     r3, 0x1
/* 02C174 8002F174 40820034 */  bne       lbl_8002F1A8
/* 02C178 8002F178 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02C17C 8002F17C 38610018 */  addi      r3, r1, 0x18
/* 02C180 8002F180 809B0000 */  lwz       r4, 0x0(r27)
/* 02C184 8002F184 38C00000 */  li        r6, 0x0
/* 02C188 8002F188 3805001F */  addi      r0, r5, 0x1f
/* 02C18C 8002F18C 54050034 */  clrrwi    r5, r0, 5
/* 02C190 8002F190 38E00000 */  li        r7, 0x0
/* 02C194 8002F194 4BFDF941 */  bl        simulatorDVDRead
/* 02C198 8002F198 2C030000 */  cmpwi     r3, 0x0
/* 02C19C 8002F19C 4082000C */  bne       lbl_8002F1A8
/* 02C1A0 8002F1A0 38600000 */  li        r3, 0x0
/* 02C1A4 8002F1A4 48000CA0 */  b         lbl_8002FE44
lbl_8002F1A8:
/* 02C1A8 8002F1A8 38610018 */  addi      r3, r1, 0x18
/* 02C1AC 8002F1AC 48082795 */  bl        DVDClose
/* 02C1B0 8002F1B0 807B0000 */  lwz       r3, 0x0(r27)
/* 02C1B4 8002F1B4 4BFDFC49 */  bl        simulatorUnpackTexPalette
/* 02C1B8 8002F1B8 387F0218 */  addi      r3, r31, 0x218
/* 02C1BC 8002F1BC 38810018 */  addi      r4, r1, 0x18
/* 02C1C0 8002F1C0 480826B9 */  bl        DVDOpen
/* 02C1C4 8002F1C4 2C030001 */  cmpwi     r3, 0x1
/* 02C1C8 8002F1C8 40820034 */  bne       lbl_8002F1FC
/* 02C1CC 8002F1CC 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02C1D0 8002F1D0 38610018 */  addi      r3, r1, 0x18
/* 02C1D4 8002F1D4 809A0000 */  lwz       r4, 0x0(r26)
/* 02C1D8 8002F1D8 38C00000 */  li        r6, 0x0
/* 02C1DC 8002F1DC 3805001F */  addi      r0, r5, 0x1f
/* 02C1E0 8002F1E0 54050034 */  clrrwi    r5, r0, 5
/* 02C1E4 8002F1E4 38E00000 */  li        r7, 0x0
/* 02C1E8 8002F1E8 4BFDF8ED */  bl        simulatorDVDRead
/* 02C1EC 8002F1EC 2C030000 */  cmpwi     r3, 0x0
/* 02C1F0 8002F1F0 4082000C */  bne       lbl_8002F1FC
/* 02C1F4 8002F1F4 38600000 */  li        r3, 0x0
/* 02C1F8 8002F1F8 48000C4C */  b         lbl_8002FE44
lbl_8002F1FC:
/* 02C1FC 8002F1FC 38610018 */  addi      r3, r1, 0x18
/* 02C200 8002F200 48082741 */  bl        DVDClose
/* 02C204 8002F204 807A0000 */  lwz       r3, 0x0(r26)
/* 02C208 8002F208 4BFDFBF5 */  bl        simulatorUnpackTexPalette
/* 02C20C 8002F20C 3D400002 */  lis       r10, 0x2
/* 02C210 8002F210 91410008 */  stw       r10, 0x8(r1)
/* 02C214 8002F214 1C990174 */  mulli     r4, r25, 0x174
/* 02C218 8002F218 80DB0000 */  lwz       r6, 0x0(r27)
/* 02C21C 8002F21C 39240170 */  addi      r9, r4, 0x170
/* 02C220 8002F220 80FA0000 */  lwz       r7, 0x0(r26)
/* 02C224 8002F224 3C608011 */  lis       r3, 0x8011
/* 02C228 8002F228 38638D10 */  subi      r3, r3, 0x72f0
/* 02C22C 8002F22C 389F02F4 */  addi      r4, r31, 0x2f4
/* 02C230 8002F230 38BF0300 */  addi      r5, r31, 0x300
/* 02C234 8002F234 391F030C */  addi      r8, r31, 0x30c
/* 02C238 8002F238 7D3C4A14 */  add       r9, r28, r9
/* 02C23C 8002F23C 394A4000 */  addi      r10, r10, 0x4000
/* 02C240 8002F240 4BFE5C1D */  bl        mcardOpen
/* 02C244 8002F244 48000A38 */  b         lbl_8002FC7C
lbl_8002F248:
/* 02C248 8002F248 38730000 */  addi      r3, r19, 0x0
/* 02C24C 8002F24C 388D8310 */  subi      r4, r13, 0x7cf0
/* 02C250 8002F250 4803E6F5 */  bl        romTestCode
/* 02C254 8002F254 2C030000 */  cmpwi     r3, 0x0
/* 02C258 8002F258 418200E8 */  beq       lbl_8002F340
/* 02C25C 8002F25C 387F0208 */  addi      r3, r31, 0x208
/* 02C260 8002F260 38810018 */  addi      r4, r1, 0x18
/* 02C264 8002F264 48082615 */  bl        DVDOpen
/* 02C268 8002F268 2C030001 */  cmpwi     r3, 0x1
/* 02C26C 8002F26C 40820034 */  bne       lbl_8002F2A0
/* 02C270 8002F270 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02C274 8002F274 38610018 */  addi      r3, r1, 0x18
/* 02C278 8002F278 809B0000 */  lwz       r4, 0x0(r27)
/* 02C27C 8002F27C 38C00000 */  li        r6, 0x0
/* 02C280 8002F280 3805001F */  addi      r0, r5, 0x1f
/* 02C284 8002F284 54050034 */  clrrwi    r5, r0, 5
/* 02C288 8002F288 38E00000 */  li        r7, 0x0
/* 02C28C 8002F28C 4BFDF849 */  bl        simulatorDVDRead
/* 02C290 8002F290 2C030000 */  cmpwi     r3, 0x0
/* 02C294 8002F294 4082000C */  bne       lbl_8002F2A0
/* 02C298 8002F298 38600000 */  li        r3, 0x0
/* 02C29C 8002F29C 48000BA8 */  b         lbl_8002FE44
lbl_8002F2A0:
/* 02C2A0 8002F2A0 38610018 */  addi      r3, r1, 0x18
/* 02C2A4 8002F2A4 4808269D */  bl        DVDClose
/* 02C2A8 8002F2A8 807B0000 */  lwz       r3, 0x0(r27)
/* 02C2AC 8002F2AC 4BFDFB51 */  bl        simulatorUnpackTexPalette
/* 02C2B0 8002F2B0 387F0208 */  addi      r3, r31, 0x208
/* 02C2B4 8002F2B4 38810018 */  addi      r4, r1, 0x18
/* 02C2B8 8002F2B8 480825C1 */  bl        DVDOpen
/* 02C2BC 8002F2BC 2C030001 */  cmpwi     r3, 0x1
/* 02C2C0 8002F2C0 40820034 */  bne       lbl_8002F2F4
/* 02C2C4 8002F2C4 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02C2C8 8002F2C8 38610018 */  addi      r3, r1, 0x18
/* 02C2CC 8002F2CC 809B0000 */  lwz       r4, 0x0(r27)
/* 02C2D0 8002F2D0 38C00000 */  li        r6, 0x0
/* 02C2D4 8002F2D4 3805001F */  addi      r0, r5, 0x1f
/* 02C2D8 8002F2D8 54050034 */  clrrwi    r5, r0, 5
/* 02C2DC 8002F2DC 38E00000 */  li        r7, 0x0
/* 02C2E0 8002F2E0 4BFDF7F5 */  bl        simulatorDVDRead
/* 02C2E4 8002F2E4 2C030000 */  cmpwi     r3, 0x0
/* 02C2E8 8002F2E8 4082000C */  bne       lbl_8002F2F4
/* 02C2EC 8002F2EC 38600000 */  li        r3, 0x0
/* 02C2F0 8002F2F0 48000B54 */  b         lbl_8002FE44
lbl_8002F2F4:
/* 02C2F4 8002F2F4 38610018 */  addi      r3, r1, 0x18
/* 02C2F8 8002F2F8 48082649 */  bl        DVDClose
/* 02C2FC 8002F2FC 807B0000 */  lwz       r3, 0x0(r27)
/* 02C300 8002F300 4BFDFAFD */  bl        simulatorUnpackTexPalette
/* 02C304 8002F304 3D400002 */  lis       r10, 0x2
/* 02C308 8002F308 91410008 */  stw       r10, 0x8(r1)
/* 02C30C 8002F30C 1C990174 */  mulli     r4, r25, 0x174
/* 02C310 8002F310 80DB0000 */  lwz       r6, 0x0(r27)
/* 02C314 8002F314 39240170 */  addi      r9, r4, 0x170
/* 02C318 8002F318 80FA0000 */  lwz       r7, 0x0(r26)
/* 02C31C 8002F31C 3C608011 */  lis       r3, 0x8011
/* 02C320 8002F320 38638D10 */  subi      r3, r3, 0x72f0
/* 02C324 8002F324 389F0318 */  addi      r4, r31, 0x318
/* 02C328 8002F328 38BF0328 */  addi      r5, r31, 0x328
/* 02C32C 8002F32C 391F0338 */  addi      r8, r31, 0x338
/* 02C330 8002F330 7D3C4A14 */  add       r9, r28, r9
/* 02C334 8002F334 394A4000 */  addi      r10, r10, 0x4000
/* 02C338 8002F338 4BFE5B25 */  bl        mcardOpen
/* 02C33C 8002F33C 48000940 */  b         lbl_8002FC7C
lbl_8002F340:
/* 02C340 8002F340 38730000 */  addi      r3, r19, 0x0
/* 02C344 8002F344 388D8318 */  subi      r4, r13, 0x7ce8
/* 02C348 8002F348 4803E5FD */  bl        romTestCode
/* 02C34C 8002F34C 2C030000 */  cmpwi     r3, 0x0
/* 02C350 8002F350 418200CC */  beq       lbl_8002F41C
/* 02C354 8002F354 3E608005 */  lis       r19, 0x8005
/* 02C358 8002F358 3CA0145A */  lis       r5, 0x145a
/* 02C35C 8002F35C 387E0000 */  addi      r3, r30, 0x0
/* 02C360 8002F360 3893989C */  subi      r4, r19, 0x6764
/* 02C364 8002F364 38A5FFFB */  subi      r5, r5, 0x5
/* 02C368 8002F368 38C00000 */  li        r6, 0x0
/* 02C36C 8002F36C 4800550D */  bl        cpuSetCodeHack
/* 02C370 8002F370 2C030000 */  cmpwi     r3, 0x0
/* 02C374 8002F374 4082000C */  bne       lbl_8002F380
/* 02C378 8002F378 38600000 */  li        r3, 0x0
/* 02C37C 8002F37C 48000AC8 */  b         lbl_8002FE44
lbl_8002F380:
/* 02C380 8002F380 3CA01609 */  lis       r5, 0x1609
/* 02C384 8002F384 387E0000 */  addi      r3, r30, 0x0
/* 02C388 8002F388 38939FF0 */  subi      r4, r19, 0x6010
/* 02C38C 8002F38C 38A5FFFB */  subi      r5, r5, 0x5
/* 02C390 8002F390 38C00000 */  li        r6, 0x0
/* 02C394 8002F394 480054E5 */  bl        cpuSetCodeHack
/* 02C398 8002F398 2C030000 */  cmpwi     r3, 0x0
/* 02C39C 8002F39C 4082000C */  bne       lbl_8002F3A8
/* 02C3A0 8002F3A0 38600000 */  li        r3, 0x0
/* 02C3A4 8002F3A4 48000AA0 */  b         lbl_8002FE44
lbl_8002F3A8:
/* 02C3A8 8002F3A8 3E4015E1 */  lis       r18, 0x15e1
/* 02C3AC 8002F3AC 387E0000 */  addi      r3, r30, 0x0
/* 02C3B0 8002F3B0 3893A384 */  subi      r4, r19, 0x5c7c
/* 02C3B4 8002F3B4 38B2FFFB */  subi      r5, r18, 0x5
/* 02C3B8 8002F3B8 38C00000 */  li        r6, 0x0
/* 02C3BC 8002F3BC 480054BD */  bl        cpuSetCodeHack
/* 02C3C0 8002F3C0 2C030000 */  cmpwi     r3, 0x0
/* 02C3C4 8002F3C4 4082000C */  bne       lbl_8002F3D0
/* 02C3C8 8002F3C8 38600000 */  li        r3, 0x0
/* 02C3CC 8002F3CC 48000A78 */  b         lbl_8002FE44
lbl_8002F3D0:
/* 02C3D0 8002F3D0 387E0000 */  addi      r3, r30, 0x0
/* 02C3D4 8002F3D4 3893A97C */  subi      r4, r19, 0x5684
/* 02C3D8 8002F3D8 38B2FFFB */  subi      r5, r18, 0x5
/* 02C3DC 8002F3DC 38C00000 */  li        r6, 0x0
/* 02C3E0 8002F3E0 48005499 */  bl        cpuSetCodeHack
/* 02C3E4 8002F3E4 2C030000 */  cmpwi     r3, 0x0
/* 02C3E8 8002F3E8 4082000C */  bne       lbl_8002F3F4
/* 02C3EC 8002F3EC 38600000 */  li        r3, 0x0
/* 02C3F0 8002F3F0 48000A54 */  b         lbl_8002FE44
lbl_8002F3F4:
/* 02C3F4 8002F3F4 3CC01001 */  lis       r6, 0x1001
/* 02C3F8 8002F3F8 387E0000 */  addi      r3, r30, 0x0
/* 02C3FC 8002F3FC 38938FF8 */  subi      r4, r19, 0x7008
/* 02C400 8002F400 38A6FFFD */  subi      r5, r6, 0x3
/* 02C404 8002F404 38C6FFFF */  subi      r6, r6, 0x1
/* 02C408 8002F408 48005471 */  bl        cpuSetCodeHack
/* 02C40C 8002F40C 2C030000 */  cmpwi     r3, 0x0
/* 02C410 8002F410 4082086C */  bne       lbl_8002FC7C
/* 02C414 8002F414 38600000 */  li        r3, 0x0
/* 02C418 8002F418 48000A2C */  b         lbl_8002FE44
lbl_8002F41C:
/* 02C41C 8002F41C 38730000 */  addi      r3, r19, 0x0
/* 02C420 8002F420 388D8320 */  subi      r4, r13, 0x7ce0
/* 02C424 8002F424 4803E521 */  bl        romTestCode
/* 02C428 8002F428 2C030000 */  cmpwi     r3, 0x0
/* 02C42C 8002F42C 40820850 */  bne       lbl_8002FC7C
/* 02C430 8002F430 38730000 */  addi      r3, r19, 0x0
/* 02C434 8002F434 388D8328 */  subi      r4, r13, 0x7cd8
/* 02C438 8002F438 4803E50D */  bl        romTestCode
/* 02C43C 8002F43C 2C030000 */  cmpwi     r3, 0x0
/* 02C440 8002F440 4082083C */  bne       lbl_8002FC7C
/* 02C444 8002F444 38730000 */  addi      r3, r19, 0x0
/* 02C448 8002F448 388D8330 */  subi      r4, r13, 0x7cd0
/* 02C44C 8002F44C 4803E4F9 */  bl        romTestCode
/* 02C450 8002F450 2C030000 */  cmpwi     r3, 0x0
/* 02C454 8002F454 40820018 */  bne       lbl_8002F46C
/* 02C458 8002F458 38730000 */  addi      r3, r19, 0x0
/* 02C45C 8002F45C 388D8338 */  subi      r4, r13, 0x7cc8
/* 02C460 8002F460 4803E4E5 */  bl        romTestCode
/* 02C464 8002F464 2C030000 */  cmpwi     r3, 0x0
/* 02C468 8002F468 41820100 */  beq       lbl_8002F568
lbl_8002F46C:
/* 02C46C 8002F46C 38000003 */  li        r0, 0x3
/* 02C470 8002F470 90120020 */  stw       r0, 0x20(r18)
/* 02C474 8002F474 387F0208 */  addi      r3, r31, 0x208
/* 02C478 8002F478 38810018 */  addi      r4, r1, 0x18
/* 02C47C 8002F47C 480823FD */  bl        DVDOpen
/* 02C480 8002F480 2C030001 */  cmpwi     r3, 0x1
/* 02C484 8002F484 40820034 */  bne       lbl_8002F4B8
/* 02C488 8002F488 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02C48C 8002F48C 38610018 */  addi      r3, r1, 0x18
/* 02C490 8002F490 809B0000 */  lwz       r4, 0x0(r27)
/* 02C494 8002F494 38C00000 */  li        r6, 0x0
/* 02C498 8002F498 3805001F */  addi      r0, r5, 0x1f
/* 02C49C 8002F49C 54050034 */  clrrwi    r5, r0, 5
/* 02C4A0 8002F4A0 38E00000 */  li        r7, 0x0
/* 02C4A4 8002F4A4 4BFDF631 */  bl        simulatorDVDRead
/* 02C4A8 8002F4A8 2C030000 */  cmpwi     r3, 0x0
/* 02C4AC 8002F4AC 4082000C */  bne       lbl_8002F4B8
/* 02C4B0 8002F4B0 38600000 */  li        r3, 0x0
/* 02C4B4 8002F4B4 48000990 */  b         lbl_8002FE44
lbl_8002F4B8:
/* 02C4B8 8002F4B8 38610018 */  addi      r3, r1, 0x18
/* 02C4BC 8002F4BC 48082485 */  bl        DVDClose
/* 02C4C0 8002F4C0 807B0000 */  lwz       r3, 0x0(r27)
/* 02C4C4 8002F4C4 4BFDF939 */  bl        simulatorUnpackTexPalette
/* 02C4C8 8002F4C8 387F0218 */  addi      r3, r31, 0x218
/* 02C4CC 8002F4CC 38810018 */  addi      r4, r1, 0x18
/* 02C4D0 8002F4D0 480823A9 */  bl        DVDOpen
/* 02C4D4 8002F4D4 2C030001 */  cmpwi     r3, 0x1
/* 02C4D8 8002F4D8 40820034 */  bne       lbl_8002F50C
/* 02C4DC 8002F4DC 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02C4E0 8002F4E0 38610018 */  addi      r3, r1, 0x18
/* 02C4E4 8002F4E4 809A0000 */  lwz       r4, 0x0(r26)
/* 02C4E8 8002F4E8 38C00000 */  li        r6, 0x0
/* 02C4EC 8002F4EC 3805001F */  addi      r0, r5, 0x1f
/* 02C4F0 8002F4F0 54050034 */  clrrwi    r5, r0, 5
/* 02C4F4 8002F4F4 38E00000 */  li        r7, 0x0
/* 02C4F8 8002F4F8 4BFDF5DD */  bl        simulatorDVDRead
/* 02C4FC 8002F4FC 2C030000 */  cmpwi     r3, 0x0
/* 02C500 8002F500 4082000C */  bne       lbl_8002F50C
/* 02C504 8002F504 38600000 */  li        r3, 0x0
/* 02C508 8002F508 4800093C */  b         lbl_8002FE44
lbl_8002F50C:
/* 02C50C 8002F50C 38610018 */  addi      r3, r1, 0x18
/* 02C510 8002F510 48082431 */  bl        DVDClose
/* 02C514 8002F514 807A0000 */  lwz       r3, 0x0(r26)
/* 02C518 8002F518 4BFDF8E5 */  bl        simulatorUnpackTexPalette
/* 02C51C 8002F51C 1C990174 */  mulli     r4, r25, 0x174
/* 02C520 8002F520 39240170 */  addi      r9, r4, 0x170
/* 02C524 8002F524 38000200 */  li        r0, 0x200
/* 02C528 8002F528 90010008 */  stw       r0, 0x8(r1)
/* 02C52C 8002F52C 3C608011 */  lis       r3, 0x8011
/* 02C530 8002F530 38638D10 */  subi      r3, r3, 0x72f0
/* 02C534 8002F534 80DB0000 */  lwz       r6, 0x0(r27)
/* 02C538 8002F538 7D3C4A14 */  add       r9, r28, r9
/* 02C53C 8002F53C 80FA0000 */  lwz       r7, 0x0(r26)
/* 02C540 8002F540 388D8340 */  subi      r4, r13, 0x7cc0
/* 02C544 8002F544 38AD8348 */  subi      r5, r13, 0x7cb8
/* 02C548 8002F548 390D8340 */  subi      r8, r13, 0x7cc0
/* 02C54C 8002F54C 39404000 */  li        r10, 0x4000
/* 02C550 8002F550 4BFE590D */  bl        mcardOpen
/* 02C554 8002F554 3C7E0001 */  addis     r3, r30, 0x1
/* 02C558 8002F558 80032060 */  lwz       r0, 0x2060(r3)
/* 02C55C 8002F55C 60000110 */  ori       r0, r0, 0x110
/* 02C560 8002F560 90032060 */  stw       r0, 0x2060(r3)
/* 02C564 8002F564 48000718 */  b         lbl_8002FC7C
lbl_8002F568:
/* 02C568 8002F568 38730000 */  addi      r3, r19, 0x0
/* 02C56C 8002F56C 388D8350 */  subi      r4, r13, 0x7cb0
/* 02C570 8002F570 4803E3D5 */  bl        romTestCode
/* 02C574 8002F574 2C030000 */  cmpwi     r3, 0x0
/* 02C578 8002F578 41820030 */  beq       lbl_8002F5A8
/* 02C57C 8002F57C 3C808002 */  lis       r4, 0x8002
/* 02C580 8002F580 3CA03C02 */  lis       r5, 0x3c02
/* 02C584 8002F584 387E0000 */  addi      r3, r30, 0x0
/* 02C588 8002F588 38845D30 */  addi      r4, r4, 0x5d30
/* 02C58C 8002F58C 38A58006 */  subi      r5, r5, 0x7ffa
/* 02C590 8002F590 38C0FFFF */  li        r6, -0x1
/* 02C594 8002F594 480052E5 */  bl        cpuSetCodeHack
/* 02C598 8002F598 2C030000 */  cmpwi     r3, 0x0
/* 02C59C 8002F59C 408206E0 */  bne       lbl_8002FC7C
/* 02C5A0 8002F5A0 38600000 */  li        r3, 0x0
/* 02C5A4 8002F5A4 480008A0 */  b         lbl_8002FE44
lbl_8002F5A8:
/* 02C5A8 8002F5A8 38730000 */  addi      r3, r19, 0x0
/* 02C5AC 8002F5AC 388D8358 */  subi      r4, r13, 0x7ca8
/* 02C5B0 8002F5B0 4803E395 */  bl        romTestCode
/* 02C5B4 8002F5B4 2C030000 */  cmpwi     r3, 0x0
/* 02C5B8 8002F5B8 418200E0 */  beq       lbl_8002F698
/* 02C5BC 8002F5BC 3C808000 */  lis       r4, 0x8000
/* 02C5C0 8002F5C0 3E603C03 */  lis       r19, 0x3c03
/* 02C5C4 8002F5C4 387E0000 */  addi      r3, r30, 0x0
/* 02C5C8 8002F5C8 3884092C */  addi      r4, r4, 0x92c
/* 02C5CC 8002F5CC 38B38004 */  subi      r5, r19, 0x7ffc
/* 02C5D0 8002F5D0 38C0FFFF */  li        r6, -0x1
/* 02C5D4 8002F5D4 480052A5 */  bl        cpuSetCodeHack
/* 02C5D8 8002F5D8 2C030000 */  cmpwi     r3, 0x0
/* 02C5DC 8002F5DC 4082000C */  bne       lbl_8002F5E8
/* 02C5E0 8002F5E0 38600000 */  li        r3, 0x0
/* 02C5E4 8002F5E4 48000860 */  b         lbl_8002FE44
lbl_8002F5E8:
/* 02C5E8 8002F5E8 3E408002 */  lis       r18, 0x8002
/* 02C5EC 8002F5EC 387E0000 */  addi      r3, r30, 0x0
/* 02C5F0 8002F5F0 3892103C */  addi      r4, r18, 0x103c
/* 02C5F4 8002F5F4 38B38004 */  subi      r5, r19, 0x7ffc
/* 02C5F8 8002F5F8 38C0FFFF */  li        r6, -0x1
/* 02C5FC 8002F5FC 4800527D */  bl        cpuSetCodeHack
/* 02C600 8002F600 2C030000 */  cmpwi     r3, 0x0
/* 02C604 8002F604 4082000C */  bne       lbl_8002F610
/* 02C608 8002F608 38600000 */  li        r3, 0x0
/* 02C60C 8002F60C 48000838 */  b         lbl_8002FE44
lbl_8002F610:
/* 02C610 8002F610 387E0000 */  addi      r3, r30, 0x0
/* 02C614 8002F614 38921048 */  addi      r4, r18, 0x1048
/* 02C618 8002F618 38B38004 */  subi      r5, r19, 0x7ffc
/* 02C61C 8002F61C 38C0FFFF */  li        r6, -0x1
/* 02C620 8002F620 48005259 */  bl        cpuSetCodeHack
/* 02C624 8002F624 2C030000 */  cmpwi     r3, 0x0
/* 02C628 8002F628 4082000C */  bne       lbl_8002F634
/* 02C62C 8002F62C 38600000 */  li        r3, 0x0
/* 02C630 8002F630 48000814 */  b         lbl_8002FE44
lbl_8002F634:
/* 02C634 8002F634 3E60800A */  lis       r19, 0x800a
/* 02C638 8002F638 3E401441 */  lis       r18, 0x1441
/* 02C63C 8002F63C 387E0000 */  addi      r3, r30, 0x0
/* 02C640 8002F640 38931BB8 */  addi      r4, r19, 0x1bb8
/* 02C644 8002F644 38B2FFFD */  subi      r5, r18, 0x3
/* 02C648 8002F648 38C00000 */  li        r6, 0x0
/* 02C64C 8002F64C 4800522D */  bl        cpuSetCodeHack
/* 02C650 8002F650 2C030000 */  cmpwi     r3, 0x0
/* 02C654 8002F654 4082000C */  bne       lbl_8002F660
/* 02C658 8002F658 38600000 */  li        r3, 0x0
/* 02C65C 8002F65C 480007E8 */  b         lbl_8002FE44
lbl_8002F660:
/* 02C660 8002F660 387E0000 */  addi      r3, r30, 0x0
/* 02C664 8002F664 38931BE0 */  addi      r4, r19, 0x1be0
/* 02C668 8002F668 38B2FFFD */  subi      r5, r18, 0x3
/* 02C66C 8002F66C 38C00000 */  li        r6, 0x0
/* 02C670 8002F670 48005209 */  bl        cpuSetCodeHack
/* 02C674 8002F674 2C030000 */  cmpwi     r3, 0x0
/* 02C678 8002F678 4082000C */  bne       lbl_8002F684
/* 02C67C 8002F67C 38600000 */  li        r3, 0x0
/* 02C680 8002F680 480007C4 */  b         lbl_8002FE44
lbl_8002F684:
/* 02C684 8002F684 3C7E0001 */  addis     r3, r30, 0x1
/* 02C688 8002F688 80032060 */  lwz       r0, 0x2060(r3)
/* 02C68C 8002F68C 60000110 */  ori       r0, r0, 0x110
/* 02C690 8002F690 90032060 */  stw       r0, 0x2060(r3)
/* 02C694 8002F694 480005E8 */  b         lbl_8002FC7C
lbl_8002F698:
/* 02C698 8002F698 38730000 */  addi      r3, r19, 0x0
/* 02C69C 8002F69C 388D8360 */  subi      r4, r13, 0x7ca0
/* 02C6A0 8002F6A0 4803E2A5 */  bl        romTestCode
/* 02C6A4 8002F6A4 2C030000 */  cmpwi     r3, 0x0
/* 02C6A8 8002F6A8 418201B4 */  beq       lbl_8002F85C
/* 02C6AC 8002F6AC 38000006 */  li        r0, 0x6
/* 02C6B0 8002F6B0 90120020 */  stw       r0, 0x20(r18)
/* 02C6B4 8002F6B4 3881005C */  addi      r4, r1, 0x5c
/* 02C6B8 8002F6B8 38A00300 */  li        r5, 0x300
/* 02C6BC 8002F6BC 80740000 */  lwz       r3, 0x0(r20)
/* 02C6C0 8002F6C0 38C00000 */  li        r6, 0x0
/* 02C6C4 8002F6C4 4803D24D */  bl        ramGetBuffer
/* 02C6C8 8002F6C8 2C030000 */  cmpwi     r3, 0x0
/* 02C6CC 8002F6CC 4082000C */  bne       lbl_8002F6D8
/* 02C6D0 8002F6D0 38600000 */  li        r3, 0x0
/* 02C6D4 8002F6D4 48000770 */  b         lbl_8002FE44
lbl_8002F6D8:
/* 02C6D8 8002F6D8 8061005C */  lwz       r3, 0x5c(r1)
/* 02C6DC 8002F6DC 380017D7 */  li        r0, 0x17d7
/* 02C6E0 8002F6E0 3881005C */  addi      r4, r1, 0x5c
/* 02C6E4 8002F6E4 90030010 */  stw       r0, 0x10(r3)
/* 02C6E8 8002F6E8 38A00200 */  li        r5, 0x200
/* 02C6EC 8002F6EC 38C00000 */  li        r6, 0x0
/* 02C6F0 8002F6F0 80740000 */  lwz       r3, 0x0(r20)
/* 02C6F4 8002F6F4 4803D21D */  bl        ramGetBuffer
/* 02C6F8 8002F6F8 2C030000 */  cmpwi     r3, 0x0
/* 02C6FC 8002F6FC 4082000C */  bne       lbl_8002F708
/* 02C700 8002F700 38600000 */  li        r3, 0x0
/* 02C704 8002F704 48000740 */  b         lbl_8002FE44
lbl_8002F708:
/* 02C708 8002F708 8061005C */  lwz       r3, 0x5c(r1)
/* 02C70C 8002F70C 3C00AC29 */  lis       r0, 0xac29
/* 02C710 8002F710 3881005C */  addi      r4, r1, 0x5c
/* 02C714 8002F714 90030000 */  stw       r0, 0x0(r3)
/* 02C718 8002F718 38A00284 */  li        r5, 0x284
/* 02C71C 8002F71C 38C00000 */  li        r6, 0x0
/* 02C720 8002F720 80740000 */  lwz       r3, 0x0(r20)
/* 02C724 8002F724 4803D1ED */  bl        ramGetBuffer
/* 02C728 8002F728 2C030000 */  cmpwi     r3, 0x0
/* 02C72C 8002F72C 4082000C */  bne       lbl_8002F738
/* 02C730 8002F730 38600000 */  li        r3, 0x0
/* 02C734 8002F734 48000710 */  b         lbl_8002FE44
lbl_8002F738:
/* 02C738 8002F738 3C80240B */  lis       r4, 0x240b
/* 02C73C 8002F73C 8061005C */  lwz       r3, 0x5c(r1)
/* 02C740 8002F740 380417D7 */  addi      r0, r4, 0x17d7
/* 02C744 8002F744 3C80800F */  lis       r4, 0x800f
/* 02C748 8002F748 90030000 */  stw       r0, 0x0(r3)
/* 02C74C 8002F74C 3CA01219 */  lis       r5, 0x1219
/* 02C750 8002F750 387E0000 */  addi      r3, r30, 0x0
/* 02C754 8002F754 388404E8 */  addi      r4, r4, 0x4e8
/* 02C758 8002F758 38A5FFFB */  subi      r5, r5, 0x5
/* 02C75C 8002F75C 38C00000 */  li        r6, 0x0
/* 02C760 8002F760 48005119 */  bl        cpuSetCodeHack
/* 02C764 8002F764 2C030000 */  cmpwi     r3, 0x0
/* 02C768 8002F768 4082000C */  bne       lbl_8002F774
/* 02C76C 8002F76C 38600000 */  li        r3, 0x0
/* 02C770 8002F770 480006D4 */  b         lbl_8002FE44
lbl_8002F774:
/* 02C774 8002F774 387F0208 */  addi      r3, r31, 0x208
/* 02C778 8002F778 38810018 */  addi      r4, r1, 0x18
/* 02C77C 8002F77C 480820FD */  bl        DVDOpen
/* 02C780 8002F780 2C030001 */  cmpwi     r3, 0x1
/* 02C784 8002F784 40820034 */  bne       lbl_8002F7B8
/* 02C788 8002F788 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02C78C 8002F78C 38610018 */  addi      r3, r1, 0x18
/* 02C790 8002F790 809B0000 */  lwz       r4, 0x0(r27)
/* 02C794 8002F794 38C00000 */  li        r6, 0x0
/* 02C798 8002F798 3805001F */  addi      r0, r5, 0x1f
/* 02C79C 8002F79C 54050034 */  clrrwi    r5, r0, 5
/* 02C7A0 8002F7A0 38E00000 */  li        r7, 0x0
/* 02C7A4 8002F7A4 4BFDF331 */  bl        simulatorDVDRead
/* 02C7A8 8002F7A8 2C030000 */  cmpwi     r3, 0x0
/* 02C7AC 8002F7AC 4082000C */  bne       lbl_8002F7B8
/* 02C7B0 8002F7B0 38600000 */  li        r3, 0x0
/* 02C7B4 8002F7B4 48000690 */  b         lbl_8002FE44
lbl_8002F7B8:
/* 02C7B8 8002F7B8 38610018 */  addi      r3, r1, 0x18
/* 02C7BC 8002F7BC 48082185 */  bl        DVDClose
/* 02C7C0 8002F7C0 807B0000 */  lwz       r3, 0x0(r27)
/* 02C7C4 8002F7C4 4BFDF639 */  bl        simulatorUnpackTexPalette
/* 02C7C8 8002F7C8 387F0218 */  addi      r3, r31, 0x218
/* 02C7CC 8002F7CC 38810018 */  addi      r4, r1, 0x18
/* 02C7D0 8002F7D0 480820A9 */  bl        DVDOpen
/* 02C7D4 8002F7D4 2C030001 */  cmpwi     r3, 0x1
/* 02C7D8 8002F7D8 40820034 */  bne       lbl_8002F80C
/* 02C7DC 8002F7DC 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02C7E0 8002F7E0 38610018 */  addi      r3, r1, 0x18
/* 02C7E4 8002F7E4 809A0000 */  lwz       r4, 0x0(r26)
/* 02C7E8 8002F7E8 38C00000 */  li        r6, 0x0
/* 02C7EC 8002F7EC 3805001F */  addi      r0, r5, 0x1f
/* 02C7F0 8002F7F0 54050034 */  clrrwi    r5, r0, 5
/* 02C7F4 8002F7F4 38E00000 */  li        r7, 0x0
/* 02C7F8 8002F7F8 4BFDF2DD */  bl        simulatorDVDRead
/* 02C7FC 8002F7FC 2C030000 */  cmpwi     r3, 0x0
/* 02C800 8002F800 4082000C */  bne       lbl_8002F80C
/* 02C804 8002F804 38600000 */  li        r3, 0x0
/* 02C808 8002F808 4800063C */  b         lbl_8002FE44
lbl_8002F80C:
/* 02C80C 8002F80C 38610018 */  addi      r3, r1, 0x18
/* 02C810 8002F810 48082131 */  bl        DVDClose
/* 02C814 8002F814 807A0000 */  lwz       r3, 0x0(r26)
/* 02C818 8002F818 4BFDF5E5 */  bl        simulatorUnpackTexPalette
/* 02C81C 8002F81C 3CA00001 */  lis       r5, 0x1
/* 02C820 8002F820 38058000 */  addi      r0, r5, -0x8000
/* 02C824 8002F824 90010008 */  stw       r0, 0x8(r1)
/* 02C828 8002F828 1C990174 */  mulli     r4, r25, 0x174
/* 02C82C 8002F82C 80DB0000 */  lwz       r6, 0x0(r27)
/* 02C830 8002F830 39240170 */  addi      r9, r4, 0x170
/* 02C834 8002F834 80FA0000 */  lwz       r7, 0x0(r26)
/* 02C838 8002F838 3C608011 */  lis       r3, 0x8011
/* 02C83C 8002F83C 3945C000 */  subi      r10, r5, 0x4000
/* 02C840 8002F840 38638D10 */  subi      r3, r3, 0x72f0
/* 02C844 8002F844 7D3C4A14 */  add       r9, r28, r9
/* 02C848 8002F848 388D8368 */  subi      r4, r13, 0x7c98
/* 02C84C 8002F84C 38AD8368 */  subi      r5, r13, 0x7c98
/* 02C850 8002F850 390D8368 */  subi      r8, r13, 0x7c98
/* 02C854 8002F854 4BFE5609 */  bl        mcardOpen
/* 02C858 8002F858 48000424 */  b         lbl_8002FC7C
lbl_8002F85C:
/* 02C85C 8002F85C 38730000 */  addi      r3, r19, 0x0
/* 02C860 8002F860 388D8370 */  subi      r4, r13, 0x7c90
/* 02C864 8002F864 4803E0E1 */  bl        romTestCode
/* 02C868 8002F868 2C030000 */  cmpwi     r3, 0x0
/* 02C86C 8002F86C 40820410 */  bne       lbl_8002FC7C
/* 02C870 8002F870 38730000 */  addi      r3, r19, 0x0
/* 02C874 8002F874 388D8378 */  subi      r4, r13, 0x7c88
/* 02C878 8002F878 4803E0CD */  bl        romTestCode
/* 02C87C 8002F87C 2C030000 */  cmpwi     r3, 0x0
/* 02C880 8002F880 408203FC */  bne       lbl_8002FC7C
/* 02C884 8002F884 38730000 */  addi      r3, r19, 0x0
/* 02C888 8002F888 388D8380 */  subi      r4, r13, 0x7c80
/* 02C88C 8002F88C 4803E0B9 */  bl        romTestCode
/* 02C890 8002F890 2C030000 */  cmpwi     r3, 0x0
/* 02C894 8002F894 41820030 */  beq       lbl_8002F8C4
/* 02C898 8002F898 3C808003 */  lis       r4, 0x8003
/* 02C89C 8002F89C 3CA08C42 */  lis       r5, 0x8c42
/* 02C8A0 8002F8A0 387E0000 */  addi      r3, r30, 0x0
/* 02C8A4 8002F8A4 38841D94 */  addi      r4, r4, 0x1d94
/* 02C8A8 8002F8A8 38A51F6C */  addi      r5, r5, 0x1f6c
/* 02C8AC 8002F8AC 38C0FFFF */  li        r6, -0x1
/* 02C8B0 8002F8B0 48004FC9 */  bl        cpuSetCodeHack
/* 02C8B4 8002F8B4 2C030000 */  cmpwi     r3, 0x0
/* 02C8B8 8002F8B8 408203C4 */  bne       lbl_8002FC7C
/* 02C8BC 8002F8BC 38600000 */  li        r3, 0x0
/* 02C8C0 8002F8C0 48000584 */  b         lbl_8002FE44
lbl_8002F8C4:
/* 02C8C4 8002F8C4 38730000 */  addi      r3, r19, 0x0
/* 02C8C8 8002F8C8 388D8388 */  subi      r4, r13, 0x7c78
/* 02C8CC 8002F8CC 4803E079 */  bl        romTestCode
/* 02C8D0 8002F8D0 2C030000 */  cmpwi     r3, 0x0
/* 02C8D4 8002F8D4 41820130 */  beq       lbl_8002FA04
/* 02C8D8 8002F8D8 38000007 */  li        r0, 0x7
/* 02C8DC 8002F8DC 3C80800A */  lis       r4, 0x800a
/* 02C8E0 8002F8E0 90120020 */  stw       r0, 0x20(r18)
/* 02C8E4 8002F8E4 3CA08C63 */  lis       r5, 0x8c63
/* 02C8E8 8002F8E8 387E0000 */  addi      r3, r30, 0x0
/* 02C8EC 8002F8EC 388458F8 */  addi      r4, r4, 0x58f8
/* 02C8F0 8002F8F0 38A5FF8C */  subi      r5, r5, 0x74
/* 02C8F4 8002F8F4 38C0FFFF */  li        r6, -0x1
/* 02C8F8 8002F8F8 48004F81 */  bl        cpuSetCodeHack
/* 02C8FC 8002F8FC 2C030000 */  cmpwi     r3, 0x0
/* 02C900 8002F900 4082000C */  bne       lbl_8002F90C
/* 02C904 8002F904 38600000 */  li        r3, 0x0
/* 02C908 8002F908 4800053C */  b         lbl_8002FE44
lbl_8002F90C:
/* 02C90C 8002F90C 387F0208 */  addi      r3, r31, 0x208
/* 02C910 8002F910 38810018 */  addi      r4, r1, 0x18
/* 02C914 8002F914 48081F65 */  bl        DVDOpen
/* 02C918 8002F918 2C030001 */  cmpwi     r3, 0x1
/* 02C91C 8002F91C 40820034 */  bne       lbl_8002F950
/* 02C920 8002F920 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02C924 8002F924 38610018 */  addi      r3, r1, 0x18
/* 02C928 8002F928 809B0000 */  lwz       r4, 0x0(r27)
/* 02C92C 8002F92C 38C00000 */  li        r6, 0x0
/* 02C930 8002F930 3805001F */  addi      r0, r5, 0x1f
/* 02C934 8002F934 54050034 */  clrrwi    r5, r0, 5
/* 02C938 8002F938 38E00000 */  li        r7, 0x0
/* 02C93C 8002F93C 4BFDF199 */  bl        simulatorDVDRead
/* 02C940 8002F940 2C030000 */  cmpwi     r3, 0x0
/* 02C944 8002F944 4082000C */  bne       lbl_8002F950
/* 02C948 8002F948 38600000 */  li        r3, 0x0
/* 02C94C 8002F94C 480004F8 */  b         lbl_8002FE44
lbl_8002F950:
/* 02C950 8002F950 38610018 */  addi      r3, r1, 0x18
/* 02C954 8002F954 48081FED */  bl        DVDClose
/* 02C958 8002F958 807B0000 */  lwz       r3, 0x0(r27)
/* 02C95C 8002F95C 4BFDF4A1 */  bl        simulatorUnpackTexPalette
/* 02C960 8002F960 387F0218 */  addi      r3, r31, 0x218
/* 02C964 8002F964 38810018 */  addi      r4, r1, 0x18
/* 02C968 8002F968 48081F11 */  bl        DVDOpen
/* 02C96C 8002F96C 2C030001 */  cmpwi     r3, 0x1
/* 02C970 8002F970 40820034 */  bne       lbl_8002F9A4
/* 02C974 8002F974 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02C978 8002F978 38610018 */  addi      r3, r1, 0x18
/* 02C97C 8002F97C 809A0000 */  lwz       r4, 0x0(r26)
/* 02C980 8002F980 38C00000 */  li        r6, 0x0
/* 02C984 8002F984 3805001F */  addi      r0, r5, 0x1f
/* 02C988 8002F988 54050034 */  clrrwi    r5, r0, 5
/* 02C98C 8002F98C 38E00000 */  li        r7, 0x0
/* 02C990 8002F990 4BFDF145 */  bl        simulatorDVDRead
/* 02C994 8002F994 2C030000 */  cmpwi     r3, 0x0
/* 02C998 8002F998 4082000C */  bne       lbl_8002F9A4
/* 02C99C 8002F99C 38600000 */  li        r3, 0x0
/* 02C9A0 8002F9A0 480004A4 */  b         lbl_8002FE44
lbl_8002F9A4:
/* 02C9A4 8002F9A4 38610018 */  addi      r3, r1, 0x18
/* 02C9A8 8002F9A8 48081F99 */  bl        DVDClose
/* 02C9AC 8002F9AC 807A0000 */  lwz       r3, 0x0(r26)
/* 02C9B0 8002F9B0 4BFDF44D */  bl        simulatorUnpackTexPalette
/* 02C9B4 8002F9B4 3D000001 */  lis       r8, 0x1
/* 02C9B8 8002F9B8 38088000 */  addi      r0, r8, -0x8000
/* 02C9BC 8002F9BC 90010008 */  stw       r0, 0x8(r1)
/* 02C9C0 8002F9C0 1C990174 */  mulli     r4, r25, 0x174
/* 02C9C4 8002F9C4 80DB0000 */  lwz       r6, 0x0(r27)
/* 02C9C8 8002F9C8 39240170 */  addi      r9, r4, 0x170
/* 02C9CC 8002F9CC 80FA0000 */  lwz       r7, 0x0(r26)
/* 02C9D0 8002F9D0 3C608011 */  lis       r3, 0x8011
/* 02C9D4 8002F9D4 3948C000 */  subi      r10, r8, 0x4000
/* 02C9D8 8002F9D8 38638D10 */  subi      r3, r3, 0x72f0
/* 02C9DC 8002F9DC 38BF0348 */  addi      r5, r31, 0x348
/* 02C9E0 8002F9E0 7D3C4A14 */  add       r9, r28, r9
/* 02C9E4 8002F9E4 388D8390 */  subi      r4, r13, 0x7c70
/* 02C9E8 8002F9E8 390D8390 */  subi      r8, r13, 0x7c70
/* 02C9EC 8002F9EC 4BFE5471 */  bl        mcardOpen
/* 02C9F0 8002F9F0 3C7E0001 */  addis     r3, r30, 0x1
/* 02C9F4 8002F9F4 80032060 */  lwz       r0, 0x2060(r3)
/* 02C9F8 8002F9F8 60000010 */  ori       r0, r0, 0x10
/* 02C9FC 8002F9FC 90032060 */  stw       r0, 0x2060(r3)
/* 02CA00 8002FA00 4800027C */  b         lbl_8002FC7C
lbl_8002FA04:
/* 02CA04 8002FA04 38730000 */  addi      r3, r19, 0x0
/* 02CA08 8002FA08 388D8398 */  subi      r4, r13, 0x7c68
/* 02CA0C 8002FA0C 4803DF39 */  bl        romTestCode
/* 02CA10 8002FA10 2C030000 */  cmpwi     r3, 0x0
/* 02CA14 8002FA14 4182002C */  beq       lbl_8002FA40
/* 02CA18 8002FA18 3C808003 */  lis       r4, 0x8003
/* 02CA1C 8002FA1C 387E0000 */  addi      r3, r30, 0x0
/* 02CA20 8002FA20 3884BDD0 */  subi      r4, r4, 0x4230
/* 02CA24 8002FA24 3CA0A000 */  lis       r5, 0xa000
/* 02CA28 8002FA28 38C00000 */  li        r6, 0x0
/* 02CA2C 8002FA2C 48004E4D */  bl        cpuSetCodeHack
/* 02CA30 8002FA30 2C030000 */  cmpwi     r3, 0x0
/* 02CA34 8002FA34 40820248 */  bne       lbl_8002FC7C
/* 02CA38 8002FA38 38600000 */  li        r3, 0x0
/* 02CA3C 8002FA3C 48000408 */  b         lbl_8002FE44
lbl_8002FA40:
/* 02CA40 8002FA40 38730000 */  addi      r3, r19, 0x0
/* 02CA44 8002FA44 388D83A0 */  subi      r4, r13, 0x7c60
/* 02CA48 8002FA48 4803DEFD */  bl        romTestCode
/* 02CA4C 8002FA4C 2C030000 */  cmpwi     r3, 0x0
/* 02CA50 8002FA50 41820074 */  beq       lbl_8002FAC4
/* 02CA54 8002FA54 38000001 */  li        r0, 0x1
/* 02CA58 8002FA58 3E608004 */  lis       r19, 0x8004
/* 02CA5C 8002FA5C 90120020 */  stw       r0, 0x20(r18)
/* 02CA60 8002FA60 3CA01449 */  lis       r5, 0x1449
/* 02CA64 8002FA64 387E0000 */  addi      r3, r30, 0x0
/* 02CA68 8002FA68 3893795C */  addi      r4, r19, 0x795c
/* 02CA6C 8002FA6C 38A5FFFC */  subi      r5, r5, 0x4
/* 02CA70 8002FA70 38C00000 */  li        r6, 0x0
/* 02CA74 8002FA74 48004E05 */  bl        cpuSetCodeHack
/* 02CA78 8002FA78 2C030000 */  cmpwi     r3, 0x0
/* 02CA7C 8002FA7C 4082000C */  bne       lbl_8002FA88
/* 02CA80 8002FA80 38600000 */  li        r3, 0x0
/* 02CA84 8002FA84 480003C0 */  b         lbl_8002FE44
lbl_8002FA88:
/* 02CA88 8002FA88 3CA0144B */  lis       r5, 0x144b
/* 02CA8C 8002FA8C 387E0000 */  addi      r3, r30, 0x0
/* 02CA90 8002FA90 38937994 */  addi      r4, r19, 0x7994
/* 02CA94 8002FA94 38A5FFFC */  subi      r5, r5, 0x4
/* 02CA98 8002FA98 38C00000 */  li        r6, 0x0
/* 02CA9C 8002FA9C 48004DDD */  bl        cpuSetCodeHack
/* 02CAA0 8002FAA0 2C030000 */  cmpwi     r3, 0x0
/* 02CAA4 8002FAA4 4082000C */  bne       lbl_8002FAB0
/* 02CAA8 8002FAA8 38600000 */  li        r3, 0x0
/* 02CAAC 8002FAAC 48000398 */  b         lbl_8002FE44
lbl_8002FAB0:
/* 02CAB0 8002FAB0 3C7E0001 */  addis     r3, r30, 0x1
/* 02CAB4 8002FAB4 80032060 */  lwz       r0, 0x2060(r3)
/* 02CAB8 8002FAB8 60000010 */  ori       r0, r0, 0x10
/* 02CABC 8002FABC 90032060 */  stw       r0, 0x2060(r3)
/* 02CAC0 8002FAC0 480001BC */  b         lbl_8002FC7C
lbl_8002FAC4:
/* 02CAC4 8002FAC4 38730000 */  addi      r3, r19, 0x0
/* 02CAC8 8002FAC8 388D83A8 */  subi      r4, r13, 0x7c58
/* 02CACC 8002FACC 4803DE79 */  bl        romTestCode
/* 02CAD0 8002FAD0 2C030000 */  cmpwi     r3, 0x0
/* 02CAD4 8002FAD4 418200E8 */  beq       lbl_8002FBBC
/* 02CAD8 8002FAD8 387F0208 */  addi      r3, r31, 0x208
/* 02CADC 8002FADC 38810018 */  addi      r4, r1, 0x18
/* 02CAE0 8002FAE0 48081D99 */  bl        DVDOpen
/* 02CAE4 8002FAE4 2C030001 */  cmpwi     r3, 0x1
/* 02CAE8 8002FAE8 40820034 */  bne       lbl_8002FB1C
/* 02CAEC 8002FAEC 80AD80AC */  lwz       r5, -0x7f54(r13)
/* 02CAF0 8002FAF0 38610018 */  addi      r3, r1, 0x18
/* 02CAF4 8002FAF4 809B0000 */  lwz       r4, 0x0(r27)
/* 02CAF8 8002FAF8 38C00000 */  li        r6, 0x0
/* 02CAFC 8002FAFC 3805001F */  addi      r0, r5, 0x1f
/* 02CB00 8002FB00 54050034 */  clrrwi    r5, r0, 5
/* 02CB04 8002FB04 38E00000 */  li        r7, 0x0
/* 02CB08 8002FB08 4BFDEFCD */  bl        simulatorDVDRead
/* 02CB0C 8002FB0C 2C030000 */  cmpwi     r3, 0x0
/* 02CB10 8002FB10 4082000C */  bne       lbl_8002FB1C
/* 02CB14 8002FB14 38600000 */  li        r3, 0x0
/* 02CB18 8002FB18 4800032C */  b         lbl_8002FE44
lbl_8002FB1C:
/* 02CB1C 8002FB1C 38610018 */  addi      r3, r1, 0x18
/* 02CB20 8002FB20 48081E21 */  bl        DVDClose
/* 02CB24 8002FB24 807B0000 */  lwz       r3, 0x0(r27)
/* 02CB28 8002FB28 4BFDF2D5 */  bl        simulatorUnpackTexPalette
/* 02CB2C 8002FB2C 387F0218 */  addi      r3, r31, 0x218
/* 02CB30 8002FB30 38810018 */  addi      r4, r1, 0x18
/* 02CB34 8002FB34 48081D45 */  bl        DVDOpen
/* 02CB38 8002FB38 2C030001 */  cmpwi     r3, 0x1
/* 02CB3C 8002FB3C 40820034 */  bne       lbl_8002FB70
/* 02CB40 8002FB40 80AD80A8 */  lwz       r5, -0x7f58(r13)
/* 02CB44 8002FB44 38610018 */  addi      r3, r1, 0x18
/* 02CB48 8002FB48 809A0000 */  lwz       r4, 0x0(r26)
/* 02CB4C 8002FB4C 38C00000 */  li        r6, 0x0
/* 02CB50 8002FB50 3805001F */  addi      r0, r5, 0x1f
/* 02CB54 8002FB54 54050034 */  clrrwi    r5, r0, 5
/* 02CB58 8002FB58 38E00000 */  li        r7, 0x0
/* 02CB5C 8002FB5C 4BFDEF79 */  bl        simulatorDVDRead
/* 02CB60 8002FB60 2C030000 */  cmpwi     r3, 0x0
/* 02CB64 8002FB64 4082000C */  bne       lbl_8002FB70
/* 02CB68 8002FB68 38600000 */  li        r3, 0x0
/* 02CB6C 8002FB6C 480002D8 */  b         lbl_8002FE44
lbl_8002FB70:
/* 02CB70 8002FB70 38610018 */  addi      r3, r1, 0x18
/* 02CB74 8002FB74 48081DCD */  bl        DVDClose
/* 02CB78 8002FB78 807A0000 */  lwz       r3, 0x0(r26)
/* 02CB7C 8002FB7C 4BFDF281 */  bl        simulatorUnpackTexPalette
/* 02CB80 8002FB80 1CB90174 */  mulli     r5, r25, 0x174
/* 02CB84 8002FB84 38000800 */  li        r0, 0x800
/* 02CB88 8002FB88 90010008 */  stw       r0, 0x8(r1)
/* 02CB8C 8002FB8C 389F0358 */  addi      r4, r31, 0x358
/* 02CB90 8002FB90 39250170 */  addi      r9, r5, 0x170
/* 02CB94 8002FB94 3C608011 */  lis       r3, 0x8011
/* 02CB98 8002FB98 80DB0000 */  lwz       r6, 0x0(r27)
/* 02CB9C 8002FB9C 80FA0000 */  lwz       r7, 0x0(r26)
/* 02CBA0 8002FBA0 38638D10 */  subi      r3, r3, 0x72f0
/* 02CBA4 8002FBA4 38A40000 */  addi      r5, r4, 0x0
/* 02CBA8 8002FBA8 39040000 */  addi      r8, r4, 0x0
/* 02CBAC 8002FBAC 7D3C4A14 */  add       r9, r28, r9
/* 02CBB0 8002FBB0 39404000 */  li        r10, 0x4000
/* 02CBB4 8002FBB4 4BFE52A9 */  bl        mcardOpen
/* 02CBB8 8002FBB8 480000C4 */  b         lbl_8002FC7C
lbl_8002FBBC:
/* 02CBBC 8002FBBC 38730000 */  addi      r3, r19, 0x0
/* 02CBC0 8002FBC0 388D83B0 */  subi      r4, r13, 0x7c50
/* 02CBC4 8002FBC4 4803DD81 */  bl        romTestCode
/* 02CBC8 8002FBC8 2C030000 */  cmpwi     r3, 0x0
/* 02CBCC 8002FBCC 41820094 */  beq       lbl_8002FC60
/* 02CBD0 8002FBD0 1C990174 */  mulli     r4, r25, 0x174
/* 02CBD4 8002FBD4 39240170 */  addi      r9, r4, 0x170
/* 02CBD8 8002FBD8 38000800 */  li        r0, 0x800
/* 02CBDC 8002FBDC 90010008 */  stw       r0, 0x8(r1)
/* 02CBE0 8002FBE0 3C608011 */  lis       r3, 0x8011
/* 02CBE4 8002FBE4 38638D10 */  subi      r3, r3, 0x72f0
/* 02CBE8 8002FBE8 80DB0000 */  lwz       r6, 0x0(r27)
/* 02CBEC 8002FBEC 7D3C4A14 */  add       r9, r28, r9
/* 02CBF0 8002FBF0 80FA0000 */  lwz       r7, 0x0(r26)
/* 02CBF4 8002FBF4 388D83B8 */  subi      r4, r13, 0x7c48
/* 02CBF8 8002FBF8 38AD83B8 */  subi      r5, r13, 0x7c48
/* 02CBFC 8002FBFC 390D83B8 */  subi      r8, r13, 0x7c48
/* 02CC00 8002FC00 39404000 */  li        r10, 0x4000
/* 02CC04 8002FC04 4BFE5259 */  bl        mcardOpen
/* 02CC08 8002FC08 3E408000 */  lis       r18, 0x8000
/* 02CC0C 8002FC0C 3CA00800 */  lis       r5, 0x800
/* 02CC10 8002FC10 3CC01001 */  lis       r6, 0x1001
/* 02CC14 8002FC14 387E0000 */  addi      r3, r30, 0x0
/* 02CC18 8002FC18 38920548 */  addi      r4, r18, 0x548
/* 02CC1C 8002FC1C 38A50156 */  addi      r5, r5, 0x156
/* 02CC20 8002FC20 38C6FFFF */  subi      r6, r6, 0x1
/* 02CC24 8002FC24 48004C55 */  bl        cpuSetCodeHack
/* 02CC28 8002FC28 2C030000 */  cmpwi     r3, 0x0
/* 02CC2C 8002FC2C 4082000C */  bne       lbl_8002FC38
/* 02CC30 8002FC30 38600000 */  li        r3, 0x0
/* 02CC34 8002FC34 48000210 */  b         lbl_8002FE44
lbl_8002FC38:
/* 02CC38 8002FC38 3CA03C03 */  lis       r5, 0x3c03
/* 02CC3C 8002FC3C 387E0000 */  addi      r3, r30, 0x0
/* 02CC40 8002FC40 38920730 */  addi      r4, r18, 0x730
/* 02CC44 8002FC44 38A5800C */  subi      r5, r5, 0x7ff4
/* 02CC48 8002FC48 38C0FFFF */  li        r6, -0x1
/* 02CC4C 8002FC4C 48004C2D */  bl        cpuSetCodeHack
/* 02CC50 8002FC50 2C030000 */  cmpwi     r3, 0x0
/* 02CC54 8002FC54 40820028 */  bne       lbl_8002FC7C
/* 02CC58 8002FC58 38600000 */  li        r3, 0x0
/* 02CC5C 8002FC5C 480001E8 */  b         lbl_8002FE44
lbl_8002FC60:
/* 02CC60 8002FC60 38730000 */  addi      r3, r19, 0x0
/* 02CC64 8002FC64 38810054 */  addi      r4, r1, 0x54
/* 02CC68 8002FC68 4803DDA1 */  bl        romGetCode
/* 02CC6C 8002FC6C 2C030000 */  cmpwi     r3, 0x0
/* 02CC70 8002FC70 4082000C */  bne       lbl_8002FC7C
/* 02CC74 8002FC74 38600000 */  li        r3, 0x0
/* 02CC78 8002FC78 480001CC */  b         lbl_8002FE44
lbl_8002FC7C:
/* 02CC7C 8002FC7C 806D8914 */  lwz       r3, -0x76ec(r13)
/* 02CC80 8002FC80 7EE4BB78 */  mr        r4, r23
/* 02CC84 8002FC84 80630004 */  lwz       r3, 0x4(r3)
/* 02CC88 8002FC88 4BFEC9A9 */  bl        soundSetBufferSize
/* 02CC8C 8002FC8C 2C030000 */  cmpwi     r3, 0x0
/* 02CC90 8002FC90 4082000C */  bne       lbl_8002FC9C
/* 02CC94 8002FC94 38600000 */  li        r3, 0x0
/* 02CC98 8002FC98 480001AC */  b         lbl_8002FE44
lbl_8002FC9C:
/* 02CC9C 8002FC9C 3C7E0001 */  addis     r3, r30, 0x1
/* 02CCA0 8002FCA0 92C3202C */  stw       r22, 0x202c(r3)
/* 02CCA4 8002FCA4 3AC00000 */  li        r22, 0x0
/* 02CCA8 8002FCA8 1C160050 */  mulli     r0, r22, 0x50
/* 02CCAC 8002FCAC 92A32028 */  stw       r21, 0x2028(r3)
/* 02CCB0 8002FCB0 82BC0170 */  lwz       r21, 0x170(r28)
/* 02CCB4 8002FCB4 3A9C0164 */  addi      r20, r28, 0x164
/* 02CCB8 8002FCB8 56D71838 */  slwi      r23, r22, 3
/* 02CCBC 8002FCBC 92DC0164 */  stw       r22, 0x164(r28)
/* 02CCC0 8002FCC0 7F5C0214 */  add       r26, r28, r0
/* 02CCC4 8002FCC4 7EBB3E70 */  srawi     r27, r21, 7
/* 02CCC8 8002FCC8 3A400001 */  li        r18, 0x1
lbl_8002FCCC:
/* 02CCCC 8002FCCC 7EA0BE30 */  sraw      r0, r21, r23
/* 02CCD0 8002FCD0 5400067E */  clrlwi    r0, r0, 25
/* 02CCD4 8002FCD4 1C000050 */  mulli     r0, r0, 0x50
/* 02CCD8 8002FCD8 7C9F0214 */  add       r4, r31, r0
/* 02CCDC 8002FCDC 387A0024 */  addi      r3, r26, 0x24
/* 02CCE0 8002FCE0 38840020 */  addi      r4, r4, 0x20
/* 02CCE4 8002FCE4 4BFD97B1 */  bl        simulatorCopyControllerMap
/* 02CCE8 8002FCE8 7E40B830 */  slw       r0, r18, r23
/* 02CCEC 8002FCEC 80740000 */  lwz       r3, 0x0(r20)
/* 02CCF0 8002FCF0 7F600038 */  and       r0, r27, r0
/* 02CCF4 8002FCF4 3AD60001 */  addi      r22, r22, 0x1
/* 02CCF8 8002FCF8 7C600378 */  or        r0, r3, r0
/* 02CCFC 8002FCFC 2C160004 */  cmpwi     r22, 0x4
/* 02CD00 8002FD00 90140000 */  stw       r0, 0x0(r20)
/* 02CD04 8002FD04 3AF70008 */  addi      r23, r23, 0x8
/* 02CD08 8002FD08 3B5A0050 */  addi      r26, r26, 0x50
/* 02CD0C 8002FD0C 4180FFC0 */  blt       lbl_8002FCCC
/* 02CD10 8002FD10 3AA00000 */  li        r21, 0x0
/* 02CD14 8002FD14 1C790174 */  mulli     r3, r25, 0x174
/* 02CD18 8002FD18 1C150050 */  mulli     r0, r21, 0x50
/* 02CD1C 8002FD1C 7E430214 */  add       r18, r3, r0
/* 02CD20 8002FD20 7E5C9214 */  add       r18, r28, r18
/* 02CD24 8002FD24 3A600000 */  li        r19, 0x0
lbl_8002FD28:
/* 02CD28 8002FD28 38720024 */  addi      r3, r18, 0x24
/* 02CD2C 8002FD2C 38950000 */  addi      r4, r21, 0x0
/* 02CD30 8002FD30 4BFD982D */  bl        simulatorSetControllerMap
/* 02CD34 8002FD34 80180000 */  lwz       r0, 0x0(r24)
/* 02CD38 8002FD38 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 02CD3C 8002FD3C 41820024 */  beq       lbl_8002FD60
/* 02CD40 8002FD40 387D0000 */  addi      r3, r29, 0x0
/* 02CD44 8002FD44 38950000 */  addi      r4, r21, 0x0
/* 02CD48 8002FD48 38A00002 */  li        r5, 0x2
/* 02CD4C 8002FD4C 4803C4C5 */  bl        pifSetControllerType
/* 02CD50 8002FD50 2C030000 */  cmpwi     r3, 0x0
/* 02CD54 8002FD54 40820060 */  bne       lbl_8002FDB4
/* 02CD58 8002FD58 38600000 */  li        r3, 0x0
/* 02CD5C 8002FD5C 480000E8 */  b         lbl_8002FE44
lbl_8002FD60:
/* 02CD60 8002FD60 38600001 */  li        r3, 0x1
/* 02CD64 8002FD64 80140000 */  lwz       r0, 0x0(r20)
/* 02CD68 8002FD68 7C639830 */  slw       r3, r3, r19
/* 02CD6C 8002FD6C 7C600039 */  and.      r0, r3, r0
/* 02CD70 8002FD70 41820024 */  beq       lbl_8002FD94
/* 02CD74 8002FD74 387D0000 */  addi      r3, r29, 0x0
/* 02CD78 8002FD78 38950000 */  addi      r4, r21, 0x0
/* 02CD7C 8002FD7C 38A00003 */  li        r5, 0x3
/* 02CD80 8002FD80 4803C491 */  bl        pifSetControllerType
/* 02CD84 8002FD84 2C030000 */  cmpwi     r3, 0x0
/* 02CD88 8002FD88 4082002C */  bne       lbl_8002FDB4
/* 02CD8C 8002FD8C 38600000 */  li        r3, 0x0
/* 02CD90 8002FD90 480000B4 */  b         lbl_8002FE44
lbl_8002FD94:
/* 02CD94 8002FD94 387D0000 */  addi      r3, r29, 0x0
/* 02CD98 8002FD98 38950000 */  addi      r4, r21, 0x0
/* 02CD9C 8002FD9C 38A00001 */  li        r5, 0x1
/* 02CDA0 8002FDA0 4803C471 */  bl        pifSetControllerType
/* 02CDA4 8002FDA4 2C030000 */  cmpwi     r3, 0x0
/* 02CDA8 8002FDA8 4082000C */  bne       lbl_8002FDB4
/* 02CDAC 8002FDAC 38600000 */  li        r3, 0x0
/* 02CDB0 8002FDB0 48000094 */  b         lbl_8002FE44
lbl_8002FDB4:
/* 02CDB4 8002FDB4 3AB50001 */  addi      r21, r21, 0x1
/* 02CDB8 8002FDB8 2C150004 */  cmpwi     r21, 0x4
/* 02CDBC 8002FDBC 3A520050 */  addi      r18, r18, 0x50
/* 02CDC0 8002FDC0 3A730008 */  addi      r19, r19, 0x8
/* 02CDC4 8002FDC4 4180FF64 */  blt       lbl_8002FD28
/* 02CDC8 8002FDC8 3C608011 */  lis       r3, 0x8011
/* 02CDCC 8002FDCC 38638D10 */  subi      r3, r3, 0x72f0
/* 02CDD0 8002FDD0 80030470 */  lwz       r0, 0x470(r3)
/* 02CDD4 8002FDD4 2C000001 */  cmpwi     r0, 0x1
/* 02CDD8 8002FDD8 40820068 */  bne       lbl_8002FE40
/* 02CDDC 8002FDDC 3A600000 */  li        r19, 0x0
/* 02CDE0 8002FDE0 82A30030 */  lwz       r21, 0x30(r3)
/* 02CDE4 8002FDE4 1C130050 */  mulli     r0, r19, 0x50
/* 02CDE8 8002FDE8 92740000 */  stw       r19, 0x0(r20)
/* 02CDEC 8002FDEC 56761838 */  slwi      r22, r19, 3
/* 02CDF0 8002FDF0 7EFC0214 */  add       r23, r28, r0
/* 02CDF4 8002FDF4 7EB83E70 */  srawi     r24, r21, 7
/* 02CDF8 8002FDF8 3A400001 */  li        r18, 0x1
lbl_8002FDFC:
/* 02CDFC 8002FDFC 7EA0B630 */  sraw      r0, r21, r22
/* 02CE00 8002FE00 5400067E */  clrlwi    r0, r0, 25
/* 02CE04 8002FE04 1C000050 */  mulli     r0, r0, 0x50
/* 02CE08 8002FE08 7C9F0214 */  add       r4, r31, r0
/* 02CE0C 8002FE0C 38770024 */  addi      r3, r23, 0x24
/* 02CE10 8002FE10 38840020 */  addi      r4, r4, 0x20
/* 02CE14 8002FE14 4BFD9681 */  bl        simulatorCopyControllerMap
/* 02CE18 8002FE18 7E40B030 */  slw       r0, r18, r22
/* 02CE1C 8002FE1C 80740000 */  lwz       r3, 0x0(r20)
/* 02CE20 8002FE20 7F000038 */  and       r0, r24, r0
/* 02CE24 8002FE24 3A730001 */  addi      r19, r19, 0x1
/* 02CE28 8002FE28 7C600378 */  or        r0, r3, r0
/* 02CE2C 8002FE2C 2C130004 */  cmpwi     r19, 0x4
/* 02CE30 8002FE30 90140000 */  stw       r0, 0x0(r20)
/* 02CE34 8002FE34 3AD60008 */  addi      r22, r22, 0x8
/* 02CE38 8002FE38 3AF70050 */  addi      r23, r23, 0x50
/* 02CE3C 8002FE3C 4180FFC0 */  blt       lbl_8002FDFC
lbl_8002FE40:
/* 02CE40 8002FE40 38600001 */  li        r3, 0x1
lbl_8002FE44:
/* 02CE44 8002FE44 BA410070 */  lmw       r18, 0x70(r1)
/* 02CE48 8002FE48 800100AC */  lwz       r0, 0xac(r1)
/* 02CE4C 8002FE4C 382100A8 */  addi      r1, r1, 0xa8
/* 02CE50 8002FE50 7C0803A6 */  mtlr      r0
/* 02CE54 8002FE54 4E800020 */  blr

glabel systemGetInitialConfiguration
/* 02CE58 8002FE58 7C0802A6 */  mflr      r0
/* 02CE5C 8002FE5C 3C608013 */  lis       r3, gSystemRomConfigurationList@ha
/* 02CE60 8002FE60 90010004 */  stw       r0, 0x4(r1)
/* 02CE64 8002FE64 9421FFB0 */  stwu      r1, -0x50(r1)
/* 02CE68 8002FE68 BE61001C */  stmw      r19, 0x1c(r1)
/* 02CE6C 8002FE6C 1FE50174 */  mulli     r31, r5, 0x174
/* 02CE70 8002FE70 3B031C40 */  addi      r24, r3, gSystemRomConfigurationList@l
/* 02CE74 8002FE74 3B640000 */  addi      r27, r4, 0x0
/* 02CE78 8002FE78 7FD8FA14 */  add       r30, r24, r31
/* 02CE7C 8002FE7C 3CA0800F */  lis       r5, D_800EC7B8@ha
/* 02CE80 8002FE80 387B0000 */  addi      r3, r27, 0x0
/* 02CE84 8002FE84 389E0000 */  addi      r4, r30, 0x0
/* 02CE88 8002FE88 3B25C7B8 */  addi      r25, r5, D_800EC7B8@l
/* 02CE8C 8002FE8C 4803DB7D */  bl        romGetCode
/* 02CE90 8002FE90 2C030000 */  cmpwi     r3, 0x0
/* 02CE94 8002FE94 4082000C */  bne       lbl_8002FEA0
/* 02CE98 8002FE98 38600000 */  li        r3, 0x0
/* 02CE9C 8002FE9C 4800053C */  b         lbl_800303D8
lbl_8002FEA0:
/* 02CEA0 8002FEA0 3A600000 */  li        r19, 0x0
/* 02CEA4 8002FEA4 1C130050 */  mulli     r0, r19, 0x50
/* 02CEA8 8002FEA8 927E0164 */  stw       r19, 0x164(r30)
/* 02CEAC 8002FEAC 3BBE0164 */  addi      r29, r30, 0x164
/* 02CEB0 8002FEB0 7E9E0214 */  add       r20, r30, r0
lbl_8002FEB4:
/* 02CEB4 8002FEB4 38740024 */  addi      r3, r20, 0x24
/* 02CEB8 8002FEB8 38990020 */  addi      r4, r25, 0x20
/* 02CEBC 8002FEBC 4BFD95D9 */  bl        simulatorCopyControllerMap
/* 02CEC0 8002FEC0 3A730001 */  addi      r19, r19, 0x1
/* 02CEC4 8002FEC4 2C130004 */  cmpwi     r19, 0x4
/* 02CEC8 8002FEC8 3A940050 */  addi      r20, r20, 0x50
/* 02CECC 8002FECC 4180FFE8 */  blt       lbl_8002FEB4
/* 02CED0 8002FED0 7F98FA14 */  add       r28, r24, r31
/* 02CED4 8002FED4 3A600000 */  li        r19, 0x0
/* 02CED8 8002FED8 927C0168 */  stw       r19, 0x168(r28)
/* 02CEDC 8002FEDC 38810014 */  addi      r4, r1, 0x14
/* 02CEE0 8002FEE0 38600002 */  li        r3, 0x2
/* 02CEE4 8002FEE4 3B9C0168 */  addi      r28, r28, 0x168
/* 02CEE8 8002FEE8 4BFD85A9 */  bl        simulatorGetArgument
/* 02CEEC 8002FEEC 2C030000 */  cmpwi     r3, 0x0
/* 02CEF0 8002FEF0 41820014 */  beq       lbl_8002FF04
/* 02CEF4 8002FEF4 80610014 */  lwz       r3, 0x14(r1)
/* 02CEF8 8002FEF8 88030000 */  lbz       r0, 0x0(r3)
/* 02CEFC 8002FEFC 2C000031 */  cmpwi     r0, 0x31
/* 02CF00 8002FF00 40820130 */  bne       lbl_80030030
lbl_8002FF04:
/* 02CF04 8002FF04 38600003 */  li        r3, 0x3
/* 02CF08 8002FF08 38810014 */  addi      r4, r1, 0x14
/* 02CF0C 8002FF0C 4BFD8585 */  bl        simulatorGetArgument
/* 02CF10 8002FF10 2C030000 */  cmpwi     r3, 0x0
/* 02CF14 8002FF14 41820014 */  beq       lbl_8002FF28
/* 02CF18 8002FF18 80610014 */  lwz       r3, 0x14(r1)
/* 02CF1C 8002FF1C 88030000 */  lbz       r0, 0x0(r3)
/* 02CF20 8002FF20 2C000030 */  cmpwi     r0, 0x30
/* 02CF24 8002FF24 40820088 */  bne       lbl_8002FFAC
lbl_8002FF28:
/* 02CF28 8002FF28 3AE00000 */  li        r23, 0x0
/* 02CF2C 8002FF2C 1C170050 */  mulli     r0, r23, 0x50
/* 02CF30 8002FF30 92FD0000 */  stw       r23, 0x0(r29)
/* 02CF34 8002FF34 3C808283 */  lis       r4, 0x8283
/* 02CF38 8002FF38 3C60FF05 */  lis       r3, 0xff05
/* 02CF3C 8002FF3C 56F61838 */  slwi      r22, r23, 3
/* 02CF40 8002FF40 7EBE0214 */  add       r21, r30, r0
/* 02CF44 8002FF44 3B448282 */  subi      r26, r4, 0x7d7e
/* 02CF48 8002FF48 3A630505 */  addi      r19, r3, 0x505
/* 02CF4C 8002FF4C 3A800001 */  li        r20, 0x1
lbl_8002FF50:
/* 02CF50 8002FF50 7F40B630 */  sraw      r0, r26, r22
/* 02CF54 8002FF54 5400067E */  clrlwi    r0, r0, 25
/* 02CF58 8002FF58 1C000050 */  mulli     r0, r0, 0x50
/* 02CF5C 8002FF5C 7C990214 */  add       r4, r25, r0
/* 02CF60 8002FF60 38750024 */  addi      r3, r21, 0x24
/* 02CF64 8002FF64 38840020 */  addi      r4, r4, 0x20
/* 02CF68 8002FF68 4BFD952D */  bl        simulatorCopyControllerMap
/* 02CF6C 8002FF6C 7E80B030 */  slw       r0, r20, r22
/* 02CF70 8002FF70 807E0164 */  lwz       r3, 0x164(r30)
/* 02CF74 8002FF74 7C009838 */  and       r0, r0, r19
/* 02CF78 8002FF78 3AF70001 */  addi      r23, r23, 0x1
/* 02CF7C 8002FF7C 7C600378 */  or        r0, r3, r0
/* 02CF80 8002FF80 2C170004 */  cmpwi     r23, 0x4
/* 02CF84 8002FF84 901E0164 */  stw       r0, 0x164(r30)
/* 02CF88 8002FF88 3AD60008 */  addi      r22, r22, 0x8
/* 02CF8C 8002FF8C 3AB50050 */  addi      r21, r21, 0x50
/* 02CF90 8002FF90 4180FFC0 */  blt       lbl_8002FF50
/* 02CF94 8002FF94 3C608283 */  lis       r3, 0x8283
/* 02CF98 8002FF98 38038282 */  subi      r0, r3, 0x7d7e
/* 02CF9C 8002FF9C 7C78FA14 */  add       r3, r24, r31
/* 02CFA0 8002FFA0 9003016C */  stw       r0, 0x16c(r3)
/* 02CFA4 8002FFA4 90030170 */  stw       r0, 0x170(r3)
/* 02CFA8 8002FFA8 48000168 */  b         lbl_80030110
lbl_8002FFAC:
/* 02CFAC 8002FFAC 3AE00000 */  li        r23, 0x0
/* 02CFB0 8002FFB0 1C170050 */  mulli     r0, r23, 0x50
/* 02CFB4 8002FFB4 92FD0000 */  stw       r23, 0x0(r29)
/* 02CFB8 8002FFB8 3C808081 */  lis       r4, 0x8081
/* 02CFBC 8002FFBC 3C60FF01 */  lis       r3, 0xff01
/* 02CFC0 8002FFC0 56F51838 */  slwi      r21, r23, 3
/* 02CFC4 8002FFC4 7EDE0214 */  add       r22, r30, r0
/* 02CFC8 8002FFC8 3B448080 */  subi      r26, r4, 0x7f80
/* 02CFCC 8002FFCC 3A630101 */  addi      r19, r3, 0x101
/* 02CFD0 8002FFD0 3A800001 */  li        r20, 0x1
lbl_8002FFD4:
/* 02CFD4 8002FFD4 7F40AE30 */  sraw      r0, r26, r21
/* 02CFD8 8002FFD8 5400067E */  clrlwi    r0, r0, 25
/* 02CFDC 8002FFDC 1C000050 */  mulli     r0, r0, 0x50
/* 02CFE0 8002FFE0 7C990214 */  add       r4, r25, r0
/* 02CFE4 8002FFE4 38760024 */  addi      r3, r22, 0x24
/* 02CFE8 8002FFE8 38840020 */  addi      r4, r4, 0x20
/* 02CFEC 8002FFEC 4BFD94A9 */  bl        simulatorCopyControllerMap
/* 02CFF0 8002FFF0 7E80A830 */  slw       r0, r20, r21
/* 02CFF4 8002FFF4 807E0164 */  lwz       r3, 0x164(r30)
/* 02CFF8 8002FFF8 7C009838 */  and       r0, r0, r19
/* 02CFFC 8002FFFC 3AF70001 */  addi      r23, r23, 0x1
/* 02D000 80030000 7C600378 */  or        r0, r3, r0
/* 02D004 80030004 2C170004 */  cmpwi     r23, 0x4
/* 02D008 80030008 901E0164 */  stw       r0, 0x164(r30)
/* 02D00C 8003000C 3AB50008 */  addi      r21, r21, 0x8
/* 02D010 80030010 3AD60050 */  addi      r22, r22, 0x50
/* 02D014 80030014 4180FFC0 */  blt       lbl_8002FFD4
/* 02D018 80030018 3C608081 */  lis       r3, 0x8081
/* 02D01C 8003001C 38038080 */  subi      r0, r3, 0x7f80
/* 02D020 80030020 7C78FA14 */  add       r3, r24, r31
/* 02D024 80030024 9003016C */  stw       r0, 0x16c(r3)
/* 02D028 80030028 90030170 */  stw       r0, 0x170(r3)
/* 02D02C 8003002C 480000E4 */  b         lbl_80030110
lbl_80030030:
/* 02D030 80030030 38600003 */  li        r3, 0x3
/* 02D034 80030034 38810014 */  addi      r4, r1, 0x14
/* 02D038 80030038 4BFD8459 */  bl        simulatorGetArgument
/* 02D03C 8003003C 2C030000 */  cmpwi     r3, 0x0
/* 02D040 80030040 41820014 */  beq       lbl_80030054
/* 02D044 80030044 80610014 */  lwz       r3, 0x14(r1)
/* 02D048 80030048 88030000 */  lbz       r0, 0x0(r3)
/* 02D04C 8003004C 2C000030 */  cmpwi     r0, 0x30
/* 02D050 80030050 40820088 */  bne       lbl_800300D8
lbl_80030054:
/* 02D054 80030054 3AE00000 */  li        r23, 0x0
/* 02D058 80030058 1C170050 */  mulli     r0, r23, 0x50
/* 02D05C 8003005C 92FD0000 */  stw       r23, 0x0(r29)
/* 02D060 80030060 3C800202 */  lis       r4, 0x202
/* 02D064 80030064 3C600004 */  lis       r3, 0x4
/* 02D068 80030068 56F51838 */  slwi      r21, r23, 3
/* 02D06C 8003006C 7EDE0214 */  add       r22, r30, r0
/* 02D070 80030070 3B440202 */  addi      r26, r4, 0x202
/* 02D074 80030074 3A830404 */  addi      r20, r3, 0x404
/* 02D078 80030078 3A600001 */  li        r19, 0x1
lbl_8003007C:
/* 02D07C 8003007C 7F40AE30 */  sraw      r0, r26, r21
/* 02D080 80030080 5400067E */  clrlwi    r0, r0, 25
/* 02D084 80030084 1C000050 */  mulli     r0, r0, 0x50
/* 02D088 80030088 7C990214 */  add       r4, r25, r0
/* 02D08C 8003008C 38760024 */  addi      r3, r22, 0x24
/* 02D090 80030090 38840020 */  addi      r4, r4, 0x20
/* 02D094 80030094 4BFD9401 */  bl        simulatorCopyControllerMap
/* 02D098 80030098 7E60A830 */  slw       r0, r19, r21
/* 02D09C 8003009C 807E0164 */  lwz       r3, 0x164(r30)
/* 02D0A0 800300A0 7C00A038 */  and       r0, r0, r20
/* 02D0A4 800300A4 3AF70001 */  addi      r23, r23, 0x1
/* 02D0A8 800300A8 7C600378 */  or        r0, r3, r0
/* 02D0AC 800300AC 2C170004 */  cmpwi     r23, 0x4
/* 02D0B0 800300B0 901E0164 */  stw       r0, 0x164(r30)
/* 02D0B4 800300B4 3AB50008 */  addi      r21, r21, 0x8
/* 02D0B8 800300B8 3AD60050 */  addi      r22, r22, 0x50
/* 02D0BC 800300BC 4180FFC0 */  blt       lbl_8003007C
/* 02D0C0 800300C0 3C600202 */  lis       r3, 0x202
/* 02D0C4 800300C4 38030202 */  addi      r0, r3, 0x202
/* 02D0C8 800300C8 7C78FA14 */  add       r3, r24, r31
/* 02D0CC 800300CC 9003016C */  stw       r0, 0x16c(r3)
/* 02D0D0 800300D0 90030170 */  stw       r0, 0x170(r3)
/* 02D0D4 800300D4 4800003C */  b         lbl_80030110
lbl_800300D8:
/* 02D0D8 800300D8 1C130050 */  mulli     r0, r19, 0x50
/* 02D0DC 800300DC 927D0000 */  stw       r19, 0x0(r29)
/* 02D0E0 800300E0 7E9E0214 */  add       r20, r30, r0
lbl_800300E4:
/* 02D0E4 800300E4 38740024 */  addi      r3, r20, 0x24
/* 02D0E8 800300E8 38990020 */  addi      r4, r25, 0x20
/* 02D0EC 800300EC 4BFD93A9 */  bl        simulatorCopyControllerMap
/* 02D0F0 800300F0 3A730001 */  addi      r19, r19, 0x1
/* 02D0F4 800300F4 2C130004 */  cmpwi     r19, 0x4
/* 02D0F8 800300F8 3A940050 */  addi      r20, r20, 0x50
/* 02D0FC 800300FC 4180FFE8 */  blt       lbl_800300E4
/* 02D100 80030100 7C78FA14 */  add       r3, r24, r31
/* 02D104 80030104 38000000 */  li        r0, 0x0
/* 02D108 80030108 9003016C */  stw       r0, 0x16c(r3)
/* 02D10C 8003010C 90030170 */  stw       r0, 0x170(r3)
lbl_80030110:
/* 02D110 80030110 387B0000 */  addi      r3, r27, 0x0
/* 02D114 80030114 388D81D0 */  li        r4, D_8018B150@sda21
/* 02D118 80030118 4803D82D */  bl        romTestCode
/* 02D11C 8003011C 2C030000 */  cmpwi     r3, 0x0
/* 02D120 80030120 40820018 */  bne       lbl_80030138
/* 02D124 80030124 387B0000 */  addi      r3, r27, 0x0
/* 02D128 80030128 388D81D8 */  li        r4, D_8018B158@sda21
/* 02D12C 8003012C 4803D819 */  bl        romTestCode
/* 02D130 80030130 2C030000 */  cmpwi     r3, 0x0
/* 02D134 80030134 41820074 */  beq       lbl_800301A8
lbl_80030138:
/* 02D138 80030138 3A600000 */  li        r19, 0x0
/* 02D13C 8003013C 1C130050 */  mulli     r0, r19, 0x50
/* 02D140 80030140 927D0000 */  stw       r19, 0x0(r29)
/* 02D144 80030144 3C800101 */  lis       r4, 0x101
/* 02D148 80030148 3C600002 */  lis       r3, 0x2
/* 02D14C 8003014C 56741838 */  slwi      r20, r19, 3
/* 02D150 80030150 7F1E0214 */  add       r24, r30, r0
/* 02D154 80030154 3AE40101 */  addi      r23, r4, 0x101
/* 02D158 80030158 3AA30202 */  addi      r21, r3, 0x202
/* 02D15C 8003015C 3AC00001 */  li        r22, 0x1
lbl_80030160:
/* 02D160 80030160 7EE0A630 */  sraw      r0, r23, r20
/* 02D164 80030164 5400067E */  clrlwi    r0, r0, 25
/* 02D168 80030168 1C000050 */  mulli     r0, r0, 0x50
/* 02D16C 8003016C 7C990214 */  add       r4, r25, r0
/* 02D170 80030170 38780024 */  addi      r3, r24, 0x24
/* 02D174 80030174 38840020 */  addi      r4, r4, 0x20
/* 02D178 80030178 4BFD931D */  bl        simulatorCopyControllerMap
/* 02D17C 8003017C 7EC0A030 */  slw       r0, r22, r20
/* 02D180 80030180 807E0164 */  lwz       r3, 0x164(r30)
/* 02D184 80030184 7C00A838 */  and       r0, r0, r21
/* 02D188 80030188 3A730001 */  addi      r19, r19, 0x1
/* 02D18C 8003018C 7C600378 */  or        r0, r3, r0
/* 02D190 80030190 2C130004 */  cmpwi     r19, 0x4
/* 02D194 80030194 901E0164 */  stw       r0, 0x164(r30)
/* 02D198 80030198 3A940008 */  addi      r20, r20, 0x8
/* 02D19C 8003019C 3B180050 */  addi      r24, r24, 0x50
/* 02D1A0 800301A0 4180FFC0 */  blt       lbl_80030160
/* 02D1A4 800301A4 48000230 */  b         lbl_800303D4
lbl_800301A8:
/* 02D1A8 800301A8 387B0000 */  addi      r3, r27, 0x0
/* 02D1AC 800301AC 388D81E8 */  li        r4, D_8018B168@sda21
/* 02D1B0 800301B0 4803D795 */  bl        romTestCode
/* 02D1B4 800301B4 2C030000 */  cmpwi     r3, 0x0
/* 02D1B8 800301B8 40820018 */  bne       lbl_800301D0
/* 02D1BC 800301BC 387B0000 */  addi      r3, r27, 0x0
/* 02D1C0 800301C0 388D81F0 */  li        r4, D_8018B170@sda21
/* 02D1C4 800301C4 4803D781 */  bl        romTestCode
/* 02D1C8 800301C8 2C030000 */  cmpwi     r3, 0x0
/* 02D1CC 800301CC 41820010 */  beq       lbl_800301DC
lbl_800301D0:
/* 02D1D0 800301D0 38000001 */  li        r0, 0x1
/* 02D1D4 800301D4 901C0000 */  stw       r0, 0x0(r28)
/* 02D1D8 800301D8 480001FC */  b         lbl_800303D4
lbl_800301DC:
/* 02D1DC 800301DC 387B0000 */  addi      r3, r27, 0x0
/* 02D1E0 800301E0 388D8210 */  li        r4, D_8018B190@sda21
/* 02D1E4 800301E4 4803D761 */  bl        romTestCode
/* 02D1E8 800301E8 2C030000 */  cmpwi     r3, 0x0
/* 02D1EC 800301EC 40820018 */  bne       lbl_80030204
/* 02D1F0 800301F0 387B0000 */  addi      r3, r27, 0x0
/* 02D1F4 800301F4 388D8218 */  li        r4, D_8018B198@sda21
/* 02D1F8 800301F8 4803D74D */  bl        romTestCode
/* 02D1FC 800301FC 2C030000 */  cmpwi     r3, 0x0
/* 02D200 80030200 41820010 */  beq       lbl_80030210
lbl_80030204:
/* 02D204 80030204 38000002 */  li        r0, 0x2
/* 02D208 80030208 901C0000 */  stw       r0, 0x0(r28)
/* 02D20C 8003020C 480001C8 */  b         lbl_800303D4
lbl_80030210:
/* 02D210 80030210 387B0000 */  addi      r3, r27, 0x0
/* 02D214 80030214 388D8228 */  li        r4, D_8018B1A8@sda21
/* 02D218 80030218 4803D72D */  bl        romTestCode
/* 02D21C 8003021C 2C030000 */  cmpwi     r3, 0x0
/* 02D220 80030220 41820010 */  beq       lbl_80030230
/* 02D224 80030224 38000004 */  li        r0, 0x4
/* 02D228 80030228 901C0000 */  stw       r0, 0x0(r28)
/* 02D22C 8003022C 480001A8 */  b         lbl_800303D4
lbl_80030230:
/* 02D230 80030230 387B0000 */  addi      r3, r27, 0x0
/* 02D234 80030234 388D8238 */  li        r4, D_8018B1B8@sda21
/* 02D238 80030238 4803D70D */  bl        romTestCode
/* 02D23C 8003023C 2C030000 */  cmpwi     r3, 0x0
/* 02D240 80030240 41820010 */  beq       lbl_80030250
/* 02D244 80030244 38000002 */  li        r0, 0x2
/* 02D248 80030248 901C0000 */  stw       r0, 0x0(r28)
/* 02D24C 8003024C 48000188 */  b         lbl_800303D4
lbl_80030250:
/* 02D250 80030250 387B0000 */  addi      r3, r27, 0x0
/* 02D254 80030254 388D826C */  li        r4, D_8018B1EC@sda21
/* 02D258 80030258 4803D6ED */  bl        romTestCode
/* 02D25C 8003025C 2C030000 */  cmpwi     r3, 0x0
/* 02D260 80030260 41820010 */  beq       lbl_80030270
/* 02D264 80030264 38000014 */  li        r0, 0x14
/* 02D268 80030268 901C0000 */  stw       r0, 0x0(r28)
/* 02D26C 8003026C 48000168 */  b         lbl_800303D4
lbl_80030270:
/* 02D270 80030270 387B0000 */  addi      r3, r27, 0x0
/* 02D274 80030274 388D82BC */  li        r4, D_8018B23C@sda21
/* 02D278 80030278 4803D6CD */  bl        romTestCode
/* 02D27C 8003027C 2C030000 */  cmpwi     r3, 0x0
/* 02D280 80030280 41820010 */  beq       lbl_80030290
/* 02D284 80030284 38000004 */  li        r0, 0x4
/* 02D288 80030288 901C0000 */  stw       r0, 0x0(r28)
/* 02D28C 8003028C 48000148 */  b         lbl_800303D4
lbl_80030290:
/* 02D290 80030290 387B0000 */  addi      r3, r27, 0x0
/* 02D294 80030294 388D8330 */  li        r4, D_8018B2B0@sda21
/* 02D298 80030298 4803D6AD */  bl        romTestCode
/* 02D29C 8003029C 2C030000 */  cmpwi     r3, 0x0
/* 02D2A0 800302A0 40820018 */  bne       lbl_800302B8
/* 02D2A4 800302A4 387B0000 */  addi      r3, r27, 0x0
/* 02D2A8 800302A8 388D8338 */  li        r4, D_8018B2B8@sda21
/* 02D2AC 800302AC 4803D699 */  bl        romTestCode
/* 02D2B0 800302B0 2C030000 */  cmpwi     r3, 0x0
/* 02D2B4 800302B4 41820010 */  beq       lbl_800302C4
lbl_800302B8:
/* 02D2B8 800302B8 38000004 */  li        r0, 0x4
/* 02D2BC 800302BC 901C0000 */  stw       r0, 0x0(r28)
/* 02D2C0 800302C0 48000114 */  b         lbl_800303D4
lbl_800302C4:
/* 02D2C4 800302C4 387B0000 */  addi      r3, r27, 0x0
/* 02D2C8 800302C8 388D82EC */  li        r4, D_8018B26C@sda21
/* 02D2CC 800302CC 4803D679 */  bl        romTestCode
/* 02D2D0 800302D0 2C030000 */  cmpwi     r3, 0x0
/* 02D2D4 800302D4 41820010 */  beq       lbl_800302E4
/* 02D2D8 800302D8 38000008 */  li        r0, 0x8
/* 02D2DC 800302DC 901C0000 */  stw       r0, 0x0(r28)
/* 02D2E0 800302E0 480000F4 */  b         lbl_800303D4
lbl_800302E4:
/* 02D2E4 800302E4 387B0000 */  addi      r3, r27, 0x0
/* 02D2E8 800302E8 388D83A8 */  li        r4, D_8018B328@sda21
/* 02D2EC 800302EC 4803D659 */  bl        romTestCode
/* 02D2F0 800302F0 2C030000 */  cmpwi     r3, 0x0
/* 02D2F4 800302F4 41820010 */  beq       lbl_80030304
/* 02D2F8 800302F8 38000008 */  li        r0, 0x8
/* 02D2FC 800302FC 901C0000 */  stw       r0, 0x0(r28)
/* 02D300 80030300 480000D4 */  b         lbl_800303D4
lbl_80030304:
/* 02D304 80030304 387B0000 */  addi      r3, r27, 0x0
/* 02D308 80030308 388D8360 */  li        r4, D_8018B2E0@sda21
/* 02D30C 8003030C 4803D639 */  bl        romTestCode
/* 02D310 80030310 2C030000 */  cmpwi     r3, 0x0
/* 02D314 80030314 41820010 */  beq       lbl_80030324
/* 02D318 80030318 38000001 */  li        r0, 0x1
/* 02D31C 8003031C 901C0000 */  stw       r0, 0x0(r28)
/* 02D320 80030320 480000B4 */  b         lbl_800303D4
lbl_80030324:
/* 02D324 80030324 387B0000 */  addi      r3, r27, 0x0
/* 02D328 80030328 388D8308 */  li        r4, D_8018B288@sda21
/* 02D32C 8003032C 4803D619 */  bl        romTestCode
/* 02D330 80030330 2C030000 */  cmpwi     r3, 0x0
/* 02D334 80030334 41820010 */  beq       lbl_80030344
/* 02D338 80030338 38000002 */  li        r0, 0x2
/* 02D33C 8003033C 901C0000 */  stw       r0, 0x0(r28)
/* 02D340 80030340 48000094 */  b         lbl_800303D4
lbl_80030344:
/* 02D344 80030344 387B0000 */  addi      r3, r27, 0x0
/* 02D348 80030348 388D8310 */  li        r4, D_8018B290@sda21
/* 02D34C 8003034C 4803D5F9 */  bl        romTestCode
/* 02D350 80030350 2C030000 */  cmpwi     r3, 0x0
/* 02D354 80030354 41820010 */  beq       lbl_80030364
/* 02D358 80030358 38000002 */  li        r0, 0x2
/* 02D35C 8003035C 901C0000 */  stw       r0, 0x0(r28)
/* 02D360 80030360 48000074 */  b         lbl_800303D4
lbl_80030364:
/* 02D364 80030364 387B0000 */  addi      r3, r27, 0x0
/* 02D368 80030368 388D8388 */  li        r4, D_8018B308@sda21
/* 02D36C 8003036C 4803D5D9 */  bl        romTestCode
/* 02D370 80030370 2C030000 */  cmpwi     r3, 0x0
/* 02D374 80030374 41820010 */  beq       lbl_80030384
/* 02D378 80030378 38000001 */  li        r0, 0x1
/* 02D37C 8003037C 901C0000 */  stw       r0, 0x0(r28)
/* 02D380 80030380 48000054 */  b         lbl_800303D4
lbl_80030384:
/* 02D384 80030384 387B0000 */  addi      r3, r27, 0x0
/* 02D388 80030388 388D828C */  li        r4, D_8018B20C@sda21
/* 02D38C 8003038C 4803D5B9 */  bl        romTestCode
/* 02D390 80030390 2C030000 */  cmpwi     r3, 0x0
/* 02D394 80030394 40820018 */  bne       lbl_800303AC
/* 02D398 80030398 387B0000 */  addi      r3, r27, 0x0
/* 02D39C 8003039C 388D8294 */  li        r4, D_8018B214@sda21
/* 02D3A0 800303A0 4803D5A5 */  bl        romTestCode
/* 02D3A4 800303A4 2C030000 */  cmpwi     r3, 0x0
/* 02D3A8 800303A8 41820010 */  beq       lbl_800303B8
lbl_800303AC:
/* 02D3AC 800303AC 38000004 */  li        r0, 0x4
/* 02D3B0 800303B0 901C0000 */  stw       r0, 0x0(r28)
/* 02D3B4 800303B4 48000020 */  b         lbl_800303D4
lbl_800303B8:
/* 02D3B8 800303B8 387B0000 */  addi      r3, r27, 0x0
/* 02D3BC 800303BC 388D83B0 */  li        r4, D_8018B330@sda21
/* 02D3C0 800303C0 4803D585 */  bl        romTestCode
/* 02D3C4 800303C4 2C030000 */  cmpwi     r3, 0x0
/* 02D3C8 800303C8 4182000C */  beq       lbl_800303D4
/* 02D3CC 800303CC 38000008 */  li        r0, 0x8
/* 02D3D0 800303D0 901C0000 */  stw       r0, 0x0(r28)
lbl_800303D4:
/* 02D3D4 800303D4 38600001 */  li        r3, 0x1
lbl_800303D8:
/* 02D3D8 800303D8 BA61001C */  lmw       r19, 0x1c(r1)
/* 02D3DC 800303DC 80010054 */  lwz       r0, 0x54(r1)
/* 02D3E0 800303E0 38210050 */  addi      r1, r1, 0x50
/* 02D3E4 800303E4 7C0803A6 */  mtlr      r0
/* 02D3E8 800303E8 4E800020 */  blr

glabel systemSetupGameRAM
/* 02D3EC 800303EC 7C0802A6 */  mflr      r0
/* 02D3F0 800303F0 38A01000 */  li        r5, 0x1000
/* 02D3F4 800303F4 90010004 */  stw       r0, 0x4(r1)
/* 02D3F8 800303F8 38C00400 */  li        r6, 0x400
/* 02D3FC 800303FC 38E00000 */  li        r7, 0x0
/* 02D400 80030400 9421FBD0 */  stwu      r1, -0x430(r1)
/* 02D404 80030404 BF61041C */  stmw      r27, 0x41c(r1)
/* 02D408 80030408 3B630000 */  addi      r27, r3, 0x0
/* 02D40C 8003040C 3BFB0030 */  addi      r31, r27, 0x30
/* 02D410 80030410 38810014 */  addi      r4, r1, 0x14
/* 02D414 80030414 3BC00000 */  li        r30, 0x0
/* 02D418 80030418 80630030 */  lwz       r3, 0x30(r3)
/* 02D41C 8003041C 3BA30000 */  addi      r29, r3, 0x0
/* 02D420 80030420 4803D03D */  bl        romCopy
/* 02D424 80030424 2C030000 */  cmpwi     r3, 0x0
/* 02D428 80030428 4082000C */  bne       lbl_80030434
/* 02D42C 8003042C 38600000 */  li        r3, 0x0
/* 02D430 80030430 480002E0 */  b         lbl_80030710
lbl_80030434:
/* 02D434 80030434 38000008 */  li        r0, 0x8
/* 02D438 80030438 7C0903A6 */  mtctr     r0
/* 02D43C 8003043C 38810014 */  addi      r4, r1, 0x14
/* 02D440 80030440 3B800000 */  li        r28, 0x0
lbl_80030444:
/* 02D444 80030444 80640000 */  lwz       r3, 0x0(r4)
/* 02D448 80030448 80040004 */  lwz       r0, 0x4(r4)
/* 02D44C 8003044C 7F9C1A14 */  add       r28, r28, r3
/* 02D450 80030450 80640008 */  lwz       r3, 0x8(r4)
/* 02D454 80030454 7F9C0214 */  add       r28, r28, r0
/* 02D458 80030458 8004000C */  lwz       r0, 0xc(r4)
/* 02D45C 8003045C 7F9C1A14 */  add       r28, r28, r3
/* 02D460 80030460 80640010 */  lwz       r3, 0x10(r4)
/* 02D464 80030464 7F9C0214 */  add       r28, r28, r0
/* 02D468 80030468 80040014 */  lwz       r0, 0x14(r4)
/* 02D46C 8003046C 7F9C1A14 */  add       r28, r28, r3
/* 02D470 80030470 80640018 */  lwz       r3, 0x18(r4)
/* 02D474 80030474 7F9C0214 */  add       r28, r28, r0
/* 02D478 80030478 8004001C */  lwz       r0, 0x1c(r4)
/* 02D47C 8003047C 7F9C1A14 */  add       r28, r28, r3
/* 02D480 80030480 80640020 */  lwz       r3, 0x20(r4)
/* 02D484 80030484 7F9C0214 */  add       r28, r28, r0
/* 02D488 80030488 80040024 */  lwz       r0, 0x24(r4)
/* 02D48C 8003048C 7F9C1A14 */  add       r28, r28, r3
/* 02D490 80030490 80640028 */  lwz       r3, 0x28(r4)
/* 02D494 80030494 7F9C0214 */  add       r28, r28, r0
/* 02D498 80030498 8004002C */  lwz       r0, 0x2c(r4)
/* 02D49C 8003049C 7F9C1A14 */  add       r28, r28, r3
/* 02D4A0 800304A0 80640030 */  lwz       r3, 0x30(r4)
/* 02D4A4 800304A4 7F9C0214 */  add       r28, r28, r0
/* 02D4A8 800304A8 80040034 */  lwz       r0, 0x34(r4)
/* 02D4AC 800304AC 7F9C1A14 */  add       r28, r28, r3
/* 02D4B0 800304B0 80640038 */  lwz       r3, 0x38(r4)
/* 02D4B4 800304B4 7F9C0214 */  add       r28, r28, r0
/* 02D4B8 800304B8 8004003C */  lwz       r0, 0x3c(r4)
/* 02D4BC 800304BC 7F9C1A14 */  add       r28, r28, r3
/* 02D4C0 800304C0 80640040 */  lwz       r3, 0x40(r4)
/* 02D4C4 800304C4 7F9C0214 */  add       r28, r28, r0
/* 02D4C8 800304C8 80040044 */  lwz       r0, 0x44(r4)
/* 02D4CC 800304CC 7F9C1A14 */  add       r28, r28, r3
/* 02D4D0 800304D0 80640048 */  lwz       r3, 0x48(r4)
/* 02D4D4 800304D4 7F9C0214 */  add       r28, r28, r0
/* 02D4D8 800304D8 8004004C */  lwz       r0, 0x4c(r4)
/* 02D4DC 800304DC 7F9C1A14 */  add       r28, r28, r3
/* 02D4E0 800304E0 80640050 */  lwz       r3, 0x50(r4)
/* 02D4E4 800304E4 7F9C0214 */  add       r28, r28, r0
/* 02D4E8 800304E8 80040054 */  lwz       r0, 0x54(r4)
/* 02D4EC 800304EC 7F9C1A14 */  add       r28, r28, r3
/* 02D4F0 800304F0 80640058 */  lwz       r3, 0x58(r4)
/* 02D4F4 800304F4 7F9C0214 */  add       r28, r28, r0
/* 02D4F8 800304F8 8004005C */  lwz       r0, 0x5c(r4)
/* 02D4FC 800304FC 7F9C1A14 */  add       r28, r28, r3
/* 02D500 80030500 80640060 */  lwz       r3, 0x60(r4)
/* 02D504 80030504 7F9C0214 */  add       r28, r28, r0
/* 02D508 80030508 80040064 */  lwz       r0, 0x64(r4)
/* 02D50C 8003050C 7F9C1A14 */  add       r28, r28, r3
/* 02D510 80030510 80640068 */  lwz       r3, 0x68(r4)
/* 02D514 80030514 7F9C0214 */  add       r28, r28, r0
/* 02D518 80030518 8004006C */  lwz       r0, 0x6c(r4)
/* 02D51C 8003051C 7F9C1A14 */  add       r28, r28, r3
/* 02D520 80030520 80640070 */  lwz       r3, 0x70(r4)
/* 02D524 80030524 7F9C0214 */  add       r28, r28, r0
/* 02D528 80030528 80040074 */  lwz       r0, 0x74(r4)
/* 02D52C 8003052C 7F9C1A14 */  add       r28, r28, r3
/* 02D530 80030530 80640078 */  lwz       r3, 0x78(r4)
/* 02D534 80030534 7F9C0214 */  add       r28, r28, r0
/* 02D538 80030538 8004007C */  lwz       r0, 0x7c(r4)
/* 02D53C 8003053C 7F9C1A14 */  add       r28, r28, r3
/* 02D540 80030540 7F9C0214 */  add       r28, r28, r0
/* 02D544 80030544 38840080 */  addi      r4, r4, 0x80
/* 02D548 80030548 4200FEFC */  bdnz      lbl_80030444
/* 02D54C 8003054C 387D0000 */  addi      r3, r29, 0x0
/* 02D550 80030550 388D8210 */  li        r4, D_8018B190@sda21
/* 02D554 80030554 4803D3F1 */  bl        romTestCode
/* 02D558 80030558 2C030000 */  cmpwi     r3, 0x0
/* 02D55C 8003055C 40820018 */  bne       lbl_80030574
/* 02D560 80030560 387D0000 */  addi      r3, r29, 0x0
/* 02D564 80030564 388D8218 */  li        r4, D_8018B198@sda21
/* 02D568 80030568 4803D3DD */  bl        romTestCode
/* 02D56C 8003056C 2C030000 */  cmpwi     r3, 0x0
/* 02D570 80030570 41820008 */  beq       lbl_80030578
lbl_80030574:
/* 02D574 80030574 3BC00001 */  li        r30, 0x1
lbl_80030578:
/* 02D578 80030578 387D0000 */  addi      r3, r29, 0x0
/* 02D57C 8003057C 388D81F0 */  li        r4, D_8018B170@sda21
/* 02D580 80030580 4803D3C5 */  bl        romTestCode
/* 02D584 80030584 2C030000 */  cmpwi     r3, 0x0
/* 02D588 80030588 40820040 */  bne       lbl_800305C8
/* 02D58C 8003058C 387D0000 */  addi      r3, r29, 0x0
/* 02D590 80030590 388D81E8 */  li        r4, D_8018B168@sda21
/* 02D594 80030594 4803D3B1 */  bl        romTestCode
/* 02D598 80030598 2C030000 */  cmpwi     r3, 0x0
/* 02D59C 8003059C 4082002C */  bne       lbl_800305C8
/* 02D5A0 800305A0 387D0000 */  addi      r3, r29, 0x0
/* 02D5A4 800305A4 388D8210 */  li        r4, D_8018B190@sda21
/* 02D5A8 800305A8 4803D39D */  bl        romTestCode
/* 02D5AC 800305AC 2C030000 */  cmpwi     r3, 0x0
/* 02D5B0 800305B0 40820018 */  bne       lbl_800305C8
/* 02D5B4 800305B4 387D0000 */  addi      r3, r29, 0x0
/* 02D5B8 800305B8 388D8218 */  li        r4, D_8018B198@sda21
/* 02D5BC 800305BC 4803D389 */  bl        romTestCode
/* 02D5C0 800305C0 2C030000 */  cmpwi     r3, 0x0
/* 02D5C4 800305C4 418200A4 */  beq       lbl_80030668
lbl_800305C8:
/* 02D5C8 800305C8 3C805CAC */  lis       r4, 0x5cac
/* 02D5CC 800305CC 38041C8F */  addi      r0, r4, 0x1c8f
/* 02D5D0 800305D0 7C1C0000 */  cmpw      r28, r0
/* 02D5D4 800305D4 4182006C */  beq       lbl_80030640
/* 02D5D8 800305D8 40800028 */  bge       lbl_80030600
/* 02D5DC 800305DC 3C60184D */  lis       r3, 0x184d
/* 02D5E0 800305E0 3803ED80 */  subi      r0, r3, 0x1280
/* 02D5E4 800305E4 7C1C0000 */  cmpw      r28, r0
/* 02D5E8 800305E8 41820048 */  beq       lbl_80030630
/* 02D5EC 800305EC 4080007C */  bge       lbl_80030668
/* 02D5F0 800305F0 3803ED18 */  subi      r0, r3, 0x12e8
/* 02D5F4 800305F4 7C1C0000 */  cmpw      r28, r0
/* 02D5F8 800305F8 41820054 */  beq       lbl_8003064C
/* 02D5FC 800305FC 4800006C */  b         lbl_80030668
lbl_80030600:
/* 02D600 80030600 3C607E8C */  lis       r3, 0x7e8c
/* 02D604 80030604 3803EE60 */  subi      r0, r3, 0x11a0
/* 02D608 80030608 7C1C0000 */  cmpw      r28, r0
/* 02D60C 8003060C 41820050 */  beq       lbl_8003065C
/* 02D610 80030610 40800058 */  bge       lbl_80030668
/* 02D614 80030614 38041CF7 */  addi      r0, r4, 0x1cf7
/* 02D618 80030618 7C1C0000 */  cmpw      r28, r0
/* 02D61C 8003061C 41820008 */  beq       lbl_80030624
/* 02D620 80030620 48000048 */  b         lbl_80030668
lbl_80030624:
/* 02D624 80030624 38000002 */  li        r0, 0x2
/* 02D628 80030628 900D89E8 */  stw       r0, gnFlagZelda@sda21(r0)
/* 02D62C 8003062C 4800003C */  b         lbl_80030668
lbl_80030630:
/* 02D630 80030630 38000003 */  li        r0, 0x3
/* 02D634 80030634 900D89E8 */  stw       r0, gnFlagZelda@sda21(r0)
/* 02D638 80030638 3BC00001 */  li        r30, 0x1
/* 02D63C 8003063C 4800002C */  b         lbl_80030668
lbl_80030640:
/* 02D640 80030640 38000000 */  li        r0, 0x0
/* 02D644 80030644 900D89E8 */  stw       r0, gnFlagZelda@sda21(r0)
/* 02D648 80030648 48000020 */  b         lbl_80030668
lbl_8003064C:
/* 02D64C 8003064C 38000001 */  li        r0, 0x1
/* 02D650 80030650 900D89E8 */  stw       r0, gnFlagZelda@sda21(r0)
/* 02D654 80030654 3BC00001 */  li        r30, 0x1
/* 02D658 80030658 48000010 */  b         lbl_80030668
lbl_8003065C:
/* 02D65C 8003065C 38000001 */  li        r0, 0x1
/* 02D660 80030660 900D89E8 */  stw       r0, gnFlagZelda@sda21(r0)
/* 02D664 80030664 3BC00001 */  li        r30, 0x1
lbl_80030668:
/* 02D668 80030668 387D0000 */  addi      r3, r29, 0x0
/* 02D66C 8003066C 388D825C */  li        r4, D_8018B1DC@sda21
/* 02D670 80030670 4803D2D5 */  bl        romTestCode
/* 02D674 80030674 2C030000 */  cmpwi     r3, 0x0
/* 02D678 80030678 41820008 */  beq       lbl_80030680
/* 02D67C 8003067C 3BC00001 */  li        r30, 0x1
lbl_80030680:
/* 02D680 80030680 2C1E0000 */  cmpwi     r30, 0x0
/* 02D684 80030684 41820010 */  beq       lbl_80030694
/* 02D688 80030688 3F800080 */  lis       r28, 0x80
/* 02D68C 8003068C 3FA00040 */  lis       r29, 0x40
/* 02D690 80030690 4800000C */  b         lbl_8003069C
lbl_80030694:
/* 02D694 80030694 3F800040 */  lis       r28, 0x40
/* 02D698 80030698 3FA00080 */  lis       r29, 0x80
lbl_8003069C:
/* 02D69C 8003069C 38600004 */  li        r3, 0x4
/* 02D6A0 800306A0 38810414 */  addi      r4, r1, 0x414
/* 02D6A4 800306A4 4BFD7DED */  bl        simulatorGetArgument
/* 02D6A8 800306A8 2C030000 */  cmpwi     r3, 0x0
/* 02D6AC 800306AC 41820028 */  beq       lbl_800306D4
/* 02D6B0 800306B0 80610414 */  lwz       r3, 0x414(r1)
/* 02D6B4 800306B4 4809EFA1 */  bl        atoi
/* 02D6B8 800306B8 5463A016 */  slwi      r3, r3, 20
/* 02D6BC 800306BC 3C1DFFF0 */  subis     r0, r29, 0x10
/* 02D6C0 800306C0 7C030000 */  cmpw      r3, r0
/* 02D6C4 800306C4 40810008 */  ble       lbl_800306CC
/* 02D6C8 800306C8 7C030378 */  mr        r3, r0
lbl_800306CC:
/* 02D6CC 800306CC 7F9C1A14 */  add       r28, r28, r3
/* 02D6D0 800306D0 7FA3E850 */  subf      r29, r3, r29
lbl_800306D4:
/* 02D6D4 800306D4 807B002C */  lwz       r3, 0x2c(r27)
/* 02D6D8 800306D8 7F84E378 */  mr        r4, r28
/* 02D6DC 800306DC 4803C17D */  bl        ramSetSize
/* 02D6E0 800306E0 2C030000 */  cmpwi     r3, 0x0
/* 02D6E4 800306E4 4082000C */  bne       lbl_800306F0
/* 02D6E8 800306E8 38600000 */  li        r3, 0x0
/* 02D6EC 800306EC 48000024 */  b         lbl_80030710
lbl_800306F0:
/* 02D6F0 800306F0 807F0000 */  lwz       r3, 0x0(r31)
/* 02D6F4 800306F4 7FA4EB78 */  mr        r4, r29
/* 02D6F8 800306F8 4803C901 */  bl        romSetCacheSize
/* 02D6FC 800306FC 2C030000 */  cmpwi     r3, 0x0
/* 02D700 80030700 4082000C */  bne       lbl_8003070C
/* 02D704 80030704 38600000 */  li        r3, 0x0
/* 02D708 80030708 48000008 */  b         lbl_80030710
lbl_8003070C:
/* 02D70C 8003070C 38600001 */  li        r3, 0x1
lbl_80030710:
/* 02D710 80030710 BB61041C */  lmw       r27, 0x41c(r1)
/* 02D714 80030714 80010434 */  lwz       r0, 0x434(r1)
/* 02D718 80030718 38210430 */  addi      r1, r1, 0x430
/* 02D71C 8003071C 7C0803A6 */  mtlr      r0
/* 02D720 80030720 4E800020 */  blr

# 0x800EC7B8 - 0x800ECB20
.section .data, "wa"

.balign 8

glabel D_800EC7B8
	.string "SYSTEM (N64)"

glabel gap_05_800EC7C5_data
.hidden gap_05_800EC7C5_data
	.byte 0x00, 0x00, 0x00

glabel gClassSystem
	.long D_800EC7B8
	.long 0x00000088
	.long 0x00000000
	.long systemEvent

glabel contMap
	.long 0x80000000
	.long 0x40000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00200000
	.long 0x00100000
	.long 0x20000000
	.long 0x10000000
	.long 0x08000000
	.long 0x04000000
	.long 0x02000000
	.long 0x01000000
	.long 0x08000000
	.long 0x04000000
	.long 0x02000000
	.long 0x01000000
	.long 0x00080000
	.long 0x00040000
	.long 0x00020000
	.long 0x00010000
	.long 0x80000000
	.long 0x40000000
	.long 0x00000000
	.long 0x00000000
	.long 0x20000000
	.long 0x00100000
	.long 0x20000000
	.long 0x10000000
	.long 0x08000000
	.long 0x04000000
	.long 0x02000000
	.long 0x01000000
	.long 0x08000000
	.long 0x04000000
	.long 0x02000000
	.long 0x01000000
	.long 0x00080000
	.long 0x00040000
	.long 0x00020000
	.long 0x00010000
	.long 0x80000000
	.long 0x40000000
	.long 0x00010000
	.long 0x00020000
	.long 0x20000000
	.long 0x00100000
	.long 0x00040000
	.long 0x10000000
	.long 0x08000000
	.long 0x04000000
	.long 0x02000000
	.long 0x01000000
	.long 0x00200000
	.long 0x00200000
	.long 0x00200000
	.long 0x00200000
	.long 0x00080000
	.long 0x00040000
	.long 0x00020000
	.long 0x00010000
	.long 0x80000000
	.long 0x40000000
	.long 0x00200000
	.long 0x00000000
	.long 0x20000000
	.long 0x00100000
	.long 0x20000000
	.long 0x10000000
	.long 0x08000000
	.long 0x04000000
	.long 0x02000000
	.long 0x01000000
	.long 0x08000000
	.long 0x04000000
	.long 0x02000000
	.long 0x01000000
	.long 0x00080000
	.long 0x00040000
	.long 0x00020000
	.long 0x00010000

jtbl_800EC918:
	.long systemEvent, lbl_8002C8B8
	.long systemEvent, lbl_8002C904
	.long systemEvent, lbl_8002C94C
	.long systemEvent, lbl_8002C9E4
	.long systemEvent, lbl_8002CA54
	.long systemEvent, lbl_8002CA9C
	.long systemEvent, lbl_8002CB10
	.long systemEvent, lbl_8002CB5C
	.long systemEvent, lbl_8002CBD4
	.long systemEvent, lbl_8002CBE0
	.long systemEvent, lbl_8002CBEC
	.long systemEvent, lbl_8002CC38
	.long systemEvent, lbl_8002CC84
	.long systemEvent, lbl_8002CCD0
	.long systemEvent, lbl_8002CCF0
	.long systemEvent, lbl_8002CD3C

glabel D_800EC958
	.string "BREAK (CPU)"

glabel D_800EC964
	.string "BREAK (SP)"

glabel gap_05_800EC96F_data
.hidden gap_05_800EC96F_data
	.byte 0x00

glabel D_800EC970
	.string "THREADSTATUS"

glabel gap_05_800EC97D_data
.hidden gap_05_800EC97D_data
	.byte 0x00, 0x00, 0x00

jtbl_800EC980:
	.long systemGetException, lbl_8002D7C8
	.long systemGetException, lbl_8002D7E0
	.long systemGetException, lbl_8002D7F8
	.long systemGetException, lbl_8002D810
	.long systemGetException, lbl_8002D828
	.long systemGetException, lbl_8002D840
	.long systemGetException, lbl_8002D85C
	.long systemGetException, lbl_8002D87C
	.long systemGetException, lbl_8002D89C
	.long systemGetException, lbl_8002D8BC
	.long systemGetException, lbl_8002D8D8
	.long systemGetException, lbl_8002D8F8
	.long systemGetException, lbl_8002D90C
	.long systemGetException, lbl_8002D924
	.long systemGetException, lbl_8002D930
	.long systemGetException, lbl_8002D93C

glabel D_800EC9C0
	.string "TPL/z_icon.tpl"

glabel gap_05_800EC9CF_data
.hidden gap_05_800EC9CF_data
	.byte 0x00

glabel D_800EC9D0
	.string "TPL/z_bnr.tpl"

glabel gap_05_800EC9DE_data
.hidden gap_05_800EC9DE_data
	.2byte 0x0000

glabel D_800EC9E0
	.string "Mario 64"

glabel gap_05_800EC9E9_data
.hidden gap_05_800EC9E9_data
	.byte 0x00, 0x00, 0x00

glabel D_800EC9EC
	.string "\203[\203\213\203_\202\314\223`\220\340\201@\216\236\202\314\203I\203J\203\212\203i\202f\202b"

glabel gap_05_800ECA0B_data
.hidden gap_05_800ECA0B_data
	.byte 0x00

glabel D_800ECA0C
	.string "The Legend of Zelda Debug"

glabel gap_05_800ECA26_data
.hidden gap_05_800ECA26_data
	.2byte 0x0000

glabel D_800ECA28
	.string "Legend of Zelda"

glabel D_800ECA38
	.string "Pilotwings"

glabel gap_05_800ECA43_data
.hidden gap_05_800ECA43_data
	.byte 0x00

glabel D_800ECA44
	.string "Animal Forest"

glabel gap_05_800ECA52_data
.hidden gap_05_800ECA52_data
	.2byte 0x0000

glabel D_800ECA54
	.string "Cruise 'n USA"

glabel gap_05_800ECA62_data
.hidden gap_05_800ECA62_data
	.2byte 0x0000

glabel D_800ECA64
	.string "Dr. Mario"

glabel gap_05_800ECA6E_data
.hidden gap_05_800ECA6E_data
	.2byte 0x0000

glabel D_800ECA70
	.string "Mario Kart"

glabel gap_05_800ECA7B_data
.hidden gap_05_800ECA7B_data
	.byte 0x00

glabel D_800ECA7C
	.string "Mario Party 1"

glabel gap_05_800ECA8A_data
.hidden gap_05_800ECA8A_data
	.2byte 0x0000

glabel D_800ECA8C
	.string "Mario Party 2"

glabel gap_05_800ECA9A_data
.hidden gap_05_800ECA9A_data
	.2byte 0x0000

glabel D_800ECA9C
	.string "Mario Party 3"

glabel gap_05_800ECAAA_data
.hidden gap_05_800ECAAA_data
	.2byte 0x0000

glabel D_800ECAAC
	.string "PaperMario"

glabel gap_05_800ECAB7_data
.hidden gap_05_800ECAB7_data
	.byte 0x00

glabel D_800ECAB8
	.string "Paper Mario"

glabel D_800ECAC4
	.string "PAPERMARIO"

glabel gap_05_800ECACF_data
.hidden gap_05_800ECACF_data
	.byte 0x00

glabel D_800ECAD0
	.string "PokemonStadium"

glabel gap_05_800ECADF_data
.hidden gap_05_800ECADF_data
	.byte 0x00

glabel D_800ECAE0
	.string "Pokemon Stadium"

glabel D_800ECAF0
	.string "POKEMONSTADIUM"

glabel gap_05_800ECAFF_data
.hidden gap_05_800ECAFF_data
	.byte 0x00

glabel D_800ECB00
	.string "Panel de Pon"

glabel gap_05_800ECB0D_data
.hidden gap_05_800ECB0D_data
	.byte 0x00, 0x00, 0x00

glabel D_800ECB10
	.string "YoshiStory"

glabel gap_05_800ECB1B_data
.hidden gap_05_800ECB1B_data
	.long 0x00000000
	.byte 0x00

# 0x80131C40 - 0x80131DB8
.section .bss, "wa"

glabel gSystemRomConfigurationList
	.skip 0x174

glabel gap_06_80131DB4_bss
.hidden gap_06_80131DB4_bss
	.skip 0x4

# 0x8018B100 - 0x8018B340
.section .sdata, "wa"

glabel nTickMultiplier
	.long 0x00000002

glabel fTickScale
	.float 1

glabel D_8018B108
	.string ""

glabel gap_07_8018B109_sdata
.hidden gap_07_8018B109_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B10C
	.string "SW0"

glabel D_8018B110
	.string "SW1"

glabel D_8018B114
	.ascii "CART"

glabel gap_07_8018B118_sdata
.hidden gap_07_8018B118_sdata
	.long 0x00000000

glabel D_8018B11C
	.string "COUNTER"

glabel D_8018B124
	.string "RDB"

glabel D_8018B128
	.string "SP"

glabel gap_07_8018B12B_sdata
.hidden gap_07_8018B12B_sdata
	.byte 0x00

glabel D_8018B12C
	.string "SI"

glabel gap_07_8018B12F_sdata
.hidden gap_07_8018B12F_sdata
	.byte 0x00

glabel D_8018B130
	.string "AI"

glabel gap_07_8018B133_sdata
.hidden gap_07_8018B133_sdata
	.byte 0x00

glabel D_8018B134
	.string "VI"

glabel gap_07_8018B137_sdata
.hidden gap_07_8018B137_sdata
	.byte 0x00

glabel D_8018B138
	.string "PI"

glabel gap_07_8018B13B_sdata
.hidden gap_07_8018B13B_sdata
	.byte 0x00

glabel D_8018B13C
	.string "DP"

glabel gap_07_8018B13F_sdata
.hidden gap_07_8018B13F_sdata
	.byte 0x00

glabel D_8018B140
	.string "FAULT"

glabel gap_07_8018B146_sdata
.hidden gap_07_8018B146_sdata
	.2byte 0x0000

glabel D_8018B148
	.string "PRENMI"

glabel gap_07_8018B14F_sdata
.hidden gap_07_8018B14F_sdata
	.byte 0x00

glabel D_8018B150
	.string "NSME"

glabel gap_07_8018B155_sdata
.hidden gap_07_8018B155_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B158
	.string "NSMJ"

glabel gap_07_8018B15D_sdata
.hidden gap_07_8018B15D_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B160
	.string "MARIO"

glabel gap_07_8018B166_sdata
.hidden gap_07_8018B166_sdata
	.2byte 0x0000

glabel D_8018B168
	.string "CZLE"

glabel gap_07_8018B16D_sdata
.hidden gap_07_8018B16D_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B170
	.string "CZLJ"

glabel gap_07_8018B175_sdata
.hidden gap_07_8018B175_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B178
	.string "ZELDA"

glabel gap_07_8018B17E_sdata
.hidden gap_07_8018B17E_sdata
	.2byte 0x0000

glabel D_8018B180
	.string "ZELDAX"

glabel gap_07_8018B187_sdata
.hidden gap_07_8018B187_sdata
	.byte 0x00

glabel D_8018B188
	.string "ZELDAD"

glabel gap_07_8018B18F_sdata
.hidden gap_07_8018B18F_sdata
	.byte 0x00

glabel D_8018B190
	.string "NZSJ"

glabel gap_07_8018B195_sdata
.hidden gap_07_8018B195_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B198
	.string "NZSE"

glabel gap_07_8018B19D_sdata
.hidden gap_07_8018B19D_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B1A0
	.string "ZELDA3"

glabel gap_07_8018B1A7_sdata
.hidden gap_07_8018B1A7_sdata
	.byte 0x00

glabel D_8018B1A8
	.string "NPWE"

glabel gap_07_8018B1AD_sdata
.hidden gap_07_8018B1AD_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B1B0
	.string "PILOT"

glabel gap_07_8018B1B6_sdata
.hidden gap_07_8018B1B6_sdata
	.2byte 0x0000

glabel D_8018B1B8
	.string "NAFJ"

glabel gap_07_8018B1BD_sdata
.hidden gap_07_8018B1BD_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B1C0
	.string "AF"

glabel gap_07_8018B1C3_sdata
.hidden gap_07_8018B1C3_sdata
	.byte 0x00

glabel D_8018B1C4
	.string "NBCE"

glabel gap_07_8018B1C9_sdata
.hidden gap_07_8018B1C9_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B1CC
	.string "NBKE"

glabel gap_07_8018B1D1_sdata
.hidden gap_07_8018B1D1_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B1D4
	.string "NGEE"

glabel gap_07_8018B1D9_sdata
.hidden gap_07_8018B1D9_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B1DC
	.string "NFUE"

glabel gap_07_8018B1E1_sdata
.hidden gap_07_8018B1E1_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B1E4
	.string "NBYE"

glabel gap_07_8018B1E9_sdata
.hidden gap_07_8018B1E9_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B1EC
	.string "NCUE"

glabel gap_07_8018B1F1_sdata
.hidden gap_07_8018B1F1_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B1F4
	.string "CRUISE"

glabel gap_07_8018B1FB_sdata
.hidden gap_07_8018B1FB_sdata
	.byte 0x00

glabel D_8018B1FC
	.string "NDNE"

glabel gap_07_8018B201_sdata
.hidden gap_07_8018B201_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B204
	.string "NDOE"

glabel gap_07_8018B209_sdata
.hidden gap_07_8018B209_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B20C
	.string "NN6E"

glabel gap_07_8018B211_sdata
.hidden gap_07_8018B211_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B214
	.string "NN6J"

glabel gap_07_8018B219_sdata
.hidden gap_07_8018B219_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B21C
	.string "DRMARIO"

glabel D_8018B224
	.string "CFZE"

glabel gap_07_8018B229_sdata
.hidden gap_07_8018B229_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B22C
	.string "NLRE"

glabel gap_07_8018B231_sdata
.hidden gap_07_8018B231_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B234
	.string "NMFE"

glabel gap_07_8018B239_sdata
.hidden gap_07_8018B239_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B23C
	.string "NKTE"

glabel gap_07_8018B241_sdata
.hidden gap_07_8018B241_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B244
	.string "KART"

glabel gap_07_8018B249_sdata
.hidden gap_07_8018B249_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B24C
	.string "NK4E"

glabel gap_07_8018B251_sdata
.hidden gap_07_8018B251_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B254
	.string "CLBE"

glabel gap_07_8018B259_sdata
.hidden gap_07_8018B259_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B25C
	.string "MP1"

glabel D_8018B260
	.string "NMWE\000\000\000"

glabel D_8018B268
	.string "MP2"

glabel D_8018B26C
	.string "NMVE"

glabel gap_07_8018B271_sdata
.hidden gap_07_8018B271_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B274
	.string "MP3"

glabel D_8018B278
	.string "NM3E"

glabel gap_07_8018B27D_sdata
.hidden gap_07_8018B27D_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B280
	.ascii "NRIE"

glabel gap_07_8018B284_sdata
.hidden gap_07_8018B284_sdata
	.long 0x00000000

glabel D_8018B288
	.string "NMQE"

glabel gap_07_8018B28D_sdata
.hidden gap_07_8018B28D_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B290
	.string "NPOE"

glabel gap_07_8018B295_sdata
.hidden gap_07_8018B295_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B298
	.string "NQKE"

glabel gap_07_8018B29D_sdata
.hidden gap_07_8018B29D_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B2A0
	.string "NRSE"

glabel gap_07_8018B2A5_sdata
.hidden gap_07_8018B2A5_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B2A8
	.string "NRZE"

glabel gap_07_8018B2AD_sdata
.hidden gap_07_8018B2AD_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B2B0
	.string "NFXE"

glabel gap_07_8018B2B5_sdata
.hidden gap_07_8018B2B5_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B2B8
	.string "NFXJ"

glabel gap_07_8018B2BD_sdata
.hidden gap_07_8018B2BD_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B2C0
	.string "STARFOX"

glabel D_8018B2C8
	.string "Starfox"

glabel D_8018B2D0
	.string "NGUJ"

glabel gap_07_8018B2D5_sdata
.hidden gap_07_8018B2D5_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B2D8
	.string "NALE"

glabel gap_07_8018B2DD_sdata
.hidden gap_07_8018B2DD_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B2E0
	.string "NTEA"

glabel gap_07_8018B2E5_sdata
.hidden gap_07_8018B2E5_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B2E8
	.string "1080"

glabel gap_07_8018B2ED_sdata
.hidden gap_07_8018B2ED_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B2F0
	.string "NTPE"

glabel gap_07_8018B2F5_sdata
.hidden gap_07_8018B2F5_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B2F8
	.string "NEPE"

glabel gap_07_8018B2FD_sdata
.hidden gap_07_8018B2FD_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B300
	.string "NM8E"

glabel gap_07_8018B305_sdata
.hidden gap_07_8018B305_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B308
	.string "NYLJ"

glabel gap_07_8018B30D_sdata
.hidden gap_07_8018B30D_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B310
	.string "PANEL"

glabel gap_07_8018B316_sdata
.hidden gap_07_8018B316_sdata
	.2byte 0x0000

glabel D_8018B318
	.string "NTUE"

glabel gap_07_8018B31D_sdata
.hidden gap_07_8018B31D_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B320
	.string "NWRE"

glabel gap_07_8018B325_sdata
.hidden gap_07_8018B325_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B328
	.string "NYSE"

glabel gap_07_8018B32D_sdata
.hidden gap_07_8018B32D_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B330
	.string "NBNJ"

glabel gap_07_8018B335_sdata
.hidden gap_07_8018B335_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B338
	.string "XXX"

glabel gap_07_8018B33C_sdata
.hidden gap_07_8018B33C_sdata
	.long 0x00000000

# 0x8018B968 - 0x8018B970
.section .sbss, "wa"

glabel gnFlagZelda
	.skip 0x4

glabel gap_08_8018B96C_sbss
.hidden gap_08_8018B96C_sbss
	.skip 0x4

# 0x8018C1D0 - 0x8018C1E0
.section .sdata2, "a"

glabel D_8018C1D0
	.float 0.016666668

glabel D_8018C1D4
	.float 1.1

glabel D_8018C1D8
	.double 4503599627370496
