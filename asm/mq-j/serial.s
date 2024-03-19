# serial.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8008E54C - 0x8008E814

glabel serialEvent
/* 08B54C 8008E54C 7C0802A6 */  mflr      r0
/* 08B550 8008E550 2C040003 */  cmpwi     r4, 0x3
/* 08B554 8008E554 90010004 */  stw       r0, 0x4(r1)
/* 08B558 8008E558 9421FFE0 */  stwu      r1, -0x20(r1)
/* 08B55C 8008E55C 93E1001C */  stw       r31, 0x1c(r1)
/* 08B560 8008E560 3BE50000 */  addi      r31, r5, 0x0
/* 08B564 8008E564 93C10018 */  stw       r30, 0x18(r1)
/* 08B568 8008E568 3BC30000 */  addi      r30, r3, 0x0
/* 08B56C 8008E56C 418200B8 */  beq       lbl_8008E624
/* 08B570 8008E570 40800018 */  bge       lbl_8008E588
/* 08B574 8008E574 2C040002 */  cmpwi     r4, 0x2
/* 08B578 8008E578 4080001C */  bge       lbl_8008E594
/* 08B57C 8008E57C 2C040000 */  cmpwi     r4, 0x0
/* 08B580 8008E580 408000A4 */  bge       lbl_8008E624
/* 08B584 8008E584 48000098 */  b         lbl_8008E61C
lbl_8008E588:
/* 08B588 8008E588 2C041002 */  cmpwi     r4, 0x1002
/* 08B58C 8008E58C 41820010 */  beq       lbl_8008E59C
/* 08B590 8008E590 4800008C */  b         lbl_8008E61C
lbl_8008E594:
/* 08B594 8008E594 93FE0000 */  stw       r31, 0x0(r30)
/* 08B598 8008E598 4800008C */  b         lbl_8008E624
lbl_8008E59C:
/* 08B59C 8008E59C 807E0000 */  lwz       r3, 0x0(r30)
/* 08B5A0 8008E5A0 3CA08009 */  lis       r5, serialPut8@ha
/* 08B5A4 8008E5A4 3CC08009 */  lis       r6, serialPut16@ha
/* 08B5A8 8008E5A8 3CE08009 */  lis       r7, serialPut32@ha
/* 08B5AC 8008E5AC 80630024 */  lwz       r3, 0x24(r3)
/* 08B5B0 8008E5B0 3C808009 */  lis       r4, serialPut64@ha
/* 08B5B4 8008E5B4 3904E6BC */  addi      r8, r4, serialPut64@l
/* 08B5B8 8008E5B8 38A5E80C */  addi      r5, r5, serialPut8@l
/* 08B5BC 8008E5BC 38C6E804 */  addi      r6, r6, serialPut16@l
/* 08B5C0 8008E5C0 38E7E6C4 */  addi      r7, r7, serialPut32@l
/* 08B5C4 8008E5C4 389F0000 */  addi      r4, r31, 0x0
/* 08B5C8 8008E5C8 4BFA631D */  bl        cpuSetDevicePut
/* 08B5CC 8008E5CC 2C030000 */  cmpwi     r3, 0x0
/* 08B5D0 8008E5D0 4082000C */  bne       lbl_8008E5DC
/* 08B5D4 8008E5D4 38600000 */  li        r3, 0x0
/* 08B5D8 8008E5D8 48000050 */  b         lbl_8008E628
lbl_8008E5DC:
/* 08B5DC 8008E5DC 807E0000 */  lwz       r3, 0x0(r30)
/* 08B5E0 8008E5E0 3CA08009 */  lis       r5, serialGet8@ha
/* 08B5E4 8008E5E4 3CC08009 */  lis       r6, serialGet16@ha
/* 08B5E8 8008E5E8 3CE08009 */  lis       r7, serialGet32@ha
/* 08B5EC 8008E5EC 80630024 */  lwz       r3, 0x24(r3)
/* 08B5F0 8008E5F0 3C808009 */  lis       r4, serialGet64@ha
/* 08B5F4 8008E5F4 3904E640 */  addi      r8, r4, serialGet64@l
/* 08B5F8 8008E5F8 38A5E6B4 */  addi      r5, r5, serialGet8@l
/* 08B5FC 8008E5FC 38C6E6AC */  addi      r6, r6, serialGet16@l
/* 08B600 8008E600 38E7E648 */  addi      r7, r7, serialGet32@l
/* 08B604 8008E604 389F0000 */  addi      r4, r31, 0x0
/* 08B608 8008E608 4BFA62F5 */  bl        cpuSetDeviceGet
/* 08B60C 8008E60C 2C030000 */  cmpwi     r3, 0x0
/* 08B610 8008E610 40820014 */  bne       lbl_8008E624
/* 08B614 8008E614 38600000 */  li        r3, 0x0
/* 08B618 8008E618 48000010 */  b         lbl_8008E628
lbl_8008E61C:
/* 08B61C 8008E61C 38600000 */  li        r3, 0x0
/* 08B620 8008E620 48000008 */  b         lbl_8008E628
lbl_8008E624:
/* 08B624 8008E624 38600001 */  li        r3, 0x1
lbl_8008E628:
/* 08B628 8008E628 80010024 */  lwz       r0, 0x24(r1)
/* 08B62C 8008E62C 83E1001C */  lwz       r31, 0x1c(r1)
/* 08B630 8008E630 83C10018 */  lwz       r30, 0x18(r1)
/* 08B634 8008E634 7C0803A6 */  mtlr      r0
/* 08B638 8008E638 38210020 */  addi      r1, r1, 0x20
/* 08B63C 8008E63C 4E800020 */  blr

glabel serialGet64
/* 08B640 8008E640 38600000 */  li        r3, 0x0
/* 08B644 8008E644 4E800020 */  blr

glabel serialGet32
/* 08B648 8008E648 548006FE */  clrlwi    r0, r4, 27
/* 08B64C 8008E64C 28000018 */  cmplwi    r0, 0x18
/* 08B650 8008E650 4181004C */  bgt       lbl_8008E69C
/* 08B654 8008E654 3C80800F */  lis       r4, jtbl_800EFEF8@ha
/* 08B658 8008E658 3884FEF8 */  addi      r4, r4, jtbl_800EFEF8@l
/* 08B65C 8008E65C 5400103A */  slwi      r0, r0, 2
/* 08B660 8008E660 7C04002E */  lwzx      r0, r4, r0
/* 08B664 8008E664 7C0903A6 */  mtctr     r0
/* 08B668 8008E668 4E800420 */  bctr
lbl_8008E66C:
/* 08B66C 8008E66C 80030004 */  lwz       r0, 0x4(r3)
/* 08B670 8008E670 90050000 */  stw       r0, 0x0(r5)
/* 08B674 8008E674 48000030 */  b         lbl_8008E6A4
lbl_8008E678:
/* 08B678 8008E678 38000000 */  li        r0, 0x0
/* 08B67C 8008E67C 90050000 */  stw       r0, 0x0(r5)
/* 08B680 8008E680 48000024 */  b         lbl_8008E6A4
lbl_8008E684:
/* 08B684 8008E684 38000000 */  li        r0, 0x0
/* 08B688 8008E688 90050000 */  stw       r0, 0x0(r5)
/* 08B68C 8008E68C 48000018 */  b         lbl_8008E6A4
lbl_8008E690:
/* 08B690 8008E690 38000000 */  li        r0, 0x0
/* 08B694 8008E694 90050000 */  stw       r0, 0x0(r5)
/* 08B698 8008E698 4800000C */  b         lbl_8008E6A4
lbl_8008E69C:
/* 08B69C 8008E69C 38600000 */  li        r3, 0x0
/* 08B6A0 8008E6A0 4E800020 */  blr
lbl_8008E6A4:
/* 08B6A4 8008E6A4 38600001 */  li        r3, 0x1
/* 08B6A8 8008E6A8 4E800020 */  blr

glabel serialGet16
/* 08B6AC 8008E6AC 38600000 */  li        r3, 0x0
/* 08B6B0 8008E6B0 4E800020 */  blr

glabel serialGet8
/* 08B6B4 8008E6B4 38600000 */  li        r3, 0x0
/* 08B6B8 8008E6B8 4E800020 */  blr

glabel serialPut64
/* 08B6BC 8008E6BC 38600000 */  li        r3, 0x0
/* 08B6C0 8008E6C0 4E800020 */  blr

glabel serialPut32
/* 08B6C4 8008E6C4 7C0802A6 */  mflr      r0
/* 08B6C8 8008E6C8 90010004 */  stw       r0, 0x4(r1)
/* 08B6CC 8008E6CC 548006FE */  clrlwi    r0, r4, 27
/* 08B6D0 8008E6D0 28000018 */  cmplwi    r0, 0x18
/* 08B6D4 8008E6D4 9421FFD8 */  stwu      r1, -0x28(r1)
/* 08B6D8 8008E6D8 93E10024 */  stw       r31, 0x24(r1)
/* 08B6DC 8008E6DC 3BE30000 */  addi      r31, r3, 0x0
/* 08B6E0 8008E6E0 41810104 */  bgt       lbl_8008E7E4
/* 08B6E4 8008E6E4 3C60800F */  lis       r3, jtbl_800EFF5C@ha
/* 08B6E8 8008E6E8 3863FF5C */  addi      r3, r3, jtbl_800EFF5C@l
/* 08B6EC 8008E6EC 5400103A */  slwi      r0, r0, 2
/* 08B6F0 8008E6F0 7C03002E */  lwzx      r0, r3, r0
/* 08B6F4 8008E6F4 7C0903A6 */  mtctr     r0
/* 08B6F8 8008E6F8 4E800420 */  bctr
lbl_8008E6FC:
/* 08B6FC 8008E6FC 80050000 */  lwz       r0, 0x0(r5)
/* 08B700 8008E700 901F0004 */  stw       r0, 0x4(r31)
/* 08B704 8008E704 480000E8 */  b         lbl_8008E7EC
lbl_8008E708:
/* 08B708 8008E708 38000040 */  li        r0, 0x40
/* 08B70C 8008E70C 90010018 */  stw       r0, 0x18(r1)
/* 08B710 8008E710 38810014 */  addi      r4, r1, 0x14
/* 08B714 8008E714 38C10018 */  addi      r6, r1, 0x18
/* 08B718 8008E718 807F0000 */  lwz       r3, 0x0(r31)
/* 08B71C 8008E71C 80BF0004 */  lwz       r5, 0x4(r31)
/* 08B720 8008E720 8063002C */  lwz       r3, 0x2c(r3)
/* 08B724 8008E724 4BFDE1ED */  bl        ramGetBuffer
/* 08B728 8008E728 2C030000 */  cmpwi     r3, 0x0
/* 08B72C 8008E72C 4082000C */  bne       lbl_8008E738
/* 08B730 8008E730 38600000 */  li        r3, 0x0
/* 08B734 8008E734 480000BC */  b         lbl_8008E7F0
lbl_8008E738:
/* 08B738 8008E738 807F0000 */  lwz       r3, 0x0(r31)
/* 08B73C 8008E73C 80810014 */  lwz       r4, 0x14(r1)
/* 08B740 8008E740 80630028 */  lwz       r3, 0x28(r3)
/* 08B744 8008E744 4BFDD1C9 */  bl        pifGetData
/* 08B748 8008E748 2C030000 */  cmpwi     r3, 0x0
/* 08B74C 8008E74C 4082000C */  bne       lbl_8008E758
/* 08B750 8008E750 38600000 */  li        r3, 0x0
/* 08B754 8008E754 4800009C */  b         lbl_8008E7F0
lbl_8008E758:
/* 08B758 8008E758 807F0000 */  lwz       r3, 0x0(r31)
/* 08B75C 8008E75C 38801000 */  li        r4, 0x1000
/* 08B760 8008E760 38A00006 */  li        r5, 0x6
/* 08B764 8008E764 4BF79469 */  bl        xlObjectEvent
/* 08B768 8008E768 48000084 */  b         lbl_8008E7EC
lbl_8008E76C:
/* 08B76C 8008E76C 38000040 */  li        r0, 0x40
/* 08B770 8008E770 90010018 */  stw       r0, 0x18(r1)
/* 08B774 8008E774 38810014 */  addi      r4, r1, 0x14
/* 08B778 8008E778 38C10018 */  addi      r6, r1, 0x18
/* 08B77C 8008E77C 807F0000 */  lwz       r3, 0x0(r31)
/* 08B780 8008E780 80BF0004 */  lwz       r5, 0x4(r31)
/* 08B784 8008E784 8063002C */  lwz       r3, 0x2c(r3)
/* 08B788 8008E788 4BFDE189 */  bl        ramGetBuffer
/* 08B78C 8008E78C 2C030000 */  cmpwi     r3, 0x0
/* 08B790 8008E790 4082000C */  bne       lbl_8008E79C
/* 08B794 8008E794 38600000 */  li        r3, 0x0
/* 08B798 8008E798 48000058 */  b         lbl_8008E7F0
lbl_8008E79C:
/* 08B79C 8008E79C 807F0000 */  lwz       r3, 0x0(r31)
/* 08B7A0 8008E7A0 80810014 */  lwz       r4, 0x14(r1)
/* 08B7A4 8008E7A4 80630028 */  lwz       r3, 0x28(r3)
/* 08B7A8 8008E7A8 4BFDD1D1 */  bl        pifSetData
/* 08B7AC 8008E7AC 2C030000 */  cmpwi     r3, 0x0
/* 08B7B0 8008E7B0 4082000C */  bne       lbl_8008E7BC
/* 08B7B4 8008E7B4 38600000 */  li        r3, 0x0
/* 08B7B8 8008E7B8 48000038 */  b         lbl_8008E7F0
lbl_8008E7BC:
/* 08B7BC 8008E7BC 807F0000 */  lwz       r3, 0x0(r31)
/* 08B7C0 8008E7C0 38801000 */  li        r4, 0x1000
/* 08B7C4 8008E7C4 38A00006 */  li        r5, 0x6
/* 08B7C8 8008E7C8 4BF79405 */  bl        xlObjectEvent
/* 08B7CC 8008E7CC 48000020 */  b         lbl_8008E7EC
lbl_8008E7D0:
/* 08B7D0 8008E7D0 807F0000 */  lwz       r3, 0x0(r31)
/* 08B7D4 8008E7D4 38801001 */  li        r4, 0x1001
/* 08B7D8 8008E7D8 38A00006 */  li        r5, 0x6
/* 08B7DC 8008E7DC 4BF793F1 */  bl        xlObjectEvent
/* 08B7E0 8008E7E0 4800000C */  b         lbl_8008E7EC
lbl_8008E7E4:
/* 08B7E4 8008E7E4 38600000 */  li        r3, 0x0
/* 08B7E8 8008E7E8 48000008 */  b         lbl_8008E7F0
lbl_8008E7EC:
/* 08B7EC 8008E7EC 38600001 */  li        r3, 0x1
lbl_8008E7F0:
/* 08B7F0 8008E7F0 8001002C */  lwz       r0, 0x2c(r1)
/* 08B7F4 8008E7F4 83E10024 */  lwz       r31, 0x24(r1)
/* 08B7F8 8008E7F8 38210028 */  addi      r1, r1, 0x28
/* 08B7FC 8008E7FC 7C0803A6 */  mtlr      r0
/* 08B800 8008E800 4E800020 */  blr

glabel serialPut16
/* 08B804 8008E804 38600000 */  li        r3, 0x0
/* 08B808 8008E808 4E800020 */  blr

glabel serialPut8
/* 08B80C 8008E80C 38600000 */  li        r3, 0x0
/* 08B810 8008E810 4E800020 */  blr

# 0x800EFEE8 - 0x800EFFC0
.section .data, "wa"

.balign 8

glabel gClassSerial
	.long D_8018B5B0
	.long 0x00000008
	.long 0x00000000
	.long serialEvent

jtbl_800EFEF8:
	.long serialGet32, lbl_8008E66C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E678
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E684
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E69C
	.long serialGet32, lbl_8008E690

jtbl_800EFF5C:
	.long serialPut32, lbl_8008E6FC
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E708
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E76C
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7E4
	.long serialPut32, lbl_8008E7D0

# 0x8018B5B0 - 0x8018B5B8
.section .sdata, "wa"

glabel D_8018B5B0
	.long 0x53455249
	.long 0x414C0000
