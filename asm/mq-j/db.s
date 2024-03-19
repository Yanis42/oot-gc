# db.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A67C0 - 0x800A68AC

glabel DBInit
/* 0A37C0 800A67C0 3C808000 */  lis       r4, 0x8000
/* 0A37C4 800A67C4 38040040 */  addi      r0, r4, 0x40
/* 0A37C8 800A67C8 3C60800A */  lis       r3, __DBExceptionDestination@ha
/* 0A37CC 800A67CC 900D8BF0 */  stw       r0, __DBInterface@sda21(r0)
/* 0A37D0 800A67D0 38636830 */  addi      r3, r3, __DBExceptionDestination@l
/* 0A37D4 800A67D4 3C038000 */  addis     r0, r3, 0x8000
/* 0A37D8 800A67D8 90040048 */  stw       r0, 0x48(r4)
/* 0A37DC 800A67DC 38000001 */  li        r0, 0x1
/* 0A37E0 800A67E0 900D8BF4 */  stw       r0, DBVerbose@sda21(r0)
/* 0A37E4 800A67E4 4E800020 */  blr

glabel __DBExceptionDestinationAux
/* 0A37E8 800A67E8 7C0802A6 */  mflr      r0
/* 0A37EC 800A67EC 3C60800F */  lis       r3, D_800F2F20@ha
/* 0A37F0 800A67F0 90010004 */  stw       r0, 0x4(r1)
/* 0A37F4 800A67F4 38632F20 */  addi      r3, r3, D_800F2F20@l
/* 0A37F8 800A67F8 4CC63182 */  crclr     cr1eq
/* 0A37FC 800A67FC 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A3800 800A6800 93E10014 */  stw       r31, 0x14(r1)
/* 0A3804 800A6804 808000C0 */  lwz       r4, 0xc0(r0)
/* 0A3808 800A6808 3FE48000 */  addis     r31, r4, 0x8000
/* 0A380C 800A680C 4BFF7339 */  bl        OSReport
/* 0A3810 800A6810 7FE3FB78 */  mr        r3, r31
/* 0A3814 800A6814 4BFF6FBD */  bl        OSDumpContext
/* 0A3818 800A6818 4BFF4AAD */  bl        PPCHalt
/* 0A381C 800A681C 8001001C */  lwz       r0, 0x1c(r1)
/* 0A3820 800A6820 83E10014 */  lwz       r31, 0x14(r1)
/* 0A3824 800A6824 38210018 */  addi      r1, r1, 0x18
/* 0A3828 800A6828 7C0803A6 */  mtlr      r0
/* 0A382C 800A682C 4E800020 */  blr

glabel __DBExceptionDestination
/* 0A3830 800A6830 7C6000A6 */  mfmsr     r3
/* 0A3834 800A6834 60630030 */  ori       r3, r3, 0x30
/* 0A3838 800A6838 7C600124 */  mtmsr     r3
/* 0A383C 800A683C 4BFFFFAC */  b         __DBExceptionDestinationAux

glabel __DBIsExceptionMarked
/* 0A3840 800A6840 808D8BF0 */  lwz       r4, __DBInterface@sda21(r0)
/* 0A3844 800A6844 5460063E */  clrlwi    r0, r3, 24
/* 0A3848 800A6848 38600001 */  li        r3, 0x1
/* 0A384C 800A684C 80840004 */  lwz       r4, 0x4(r4)
/* 0A3850 800A6850 7C600030 */  slw       r0, r3, r0
/* 0A3854 800A6854 7C830038 */  and       r3, r4, r0
/* 0A3858 800A6858 4E800020 */  blr

glabel DBPrintf
/* 0A385C 800A685C 9421FF90 */  stwu      r1, -0x70(r1)
/* 0A3860 800A6860 40860024 */  bne       cr1, lbl_800A6884
/* 0A3864 800A6864 D8210028 */  stfd      f1, 0x28(r1)
/* 0A3868 800A6868 D8410030 */  stfd      f2, 0x30(r1)
/* 0A386C 800A686C D8610038 */  stfd      f3, 0x38(r1)
/* 0A3870 800A6870 D8810040 */  stfd      f4, 0x40(r1)
/* 0A3874 800A6874 D8A10048 */  stfd      f5, 0x48(r1)
/* 0A3878 800A6878 D8C10050 */  stfd      f6, 0x50(r1)
/* 0A387C 800A687C D8E10058 */  stfd      f7, 0x58(r1)
/* 0A3880 800A6880 D9010060 */  stfd      f8, 0x60(r1)
lbl_800A6884:
/* 0A3884 800A6884 90610008 */  stw       r3, 0x8(r1)
/* 0A3888 800A6888 9081000C */  stw       r4, 0xc(r1)
/* 0A388C 800A688C 90A10010 */  stw       r5, 0x10(r1)
/* 0A3890 800A6890 90C10014 */  stw       r6, 0x14(r1)
/* 0A3894 800A6894 90E10018 */  stw       r7, 0x18(r1)
/* 0A3898 800A6898 9101001C */  stw       r8, 0x1c(r1)
/* 0A389C 800A689C 91210020 */  stw       r9, 0x20(r1)
/* 0A38A0 800A68A0 91410024 */  stw       r10, 0x24(r1)
/* 0A38A4 800A68A4 38210070 */  addi      r1, r1, 0x70
/* 0A38A8 800A68A8 4E800020 */  blr

# 0x800F2F20 - 0x800F2F38
.section .data, "wa"

.balign 8

glabel D_800F2F20
	.string "DBExceptionDestination\n"

# 0x8018BB70 - 0x8018BB78
.section .sbss, "wa"

glabel __DBInterface
	.skip 0x4

glabel DBVerbose
	.skip 0x4
