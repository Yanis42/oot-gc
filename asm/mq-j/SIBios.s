# SIBios.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A34EC - 0x800A4BDC

glabel SIBusy
/* 0A04EC 800A34EC 3C60800F */  lis       r3, Si@ha
/* 0A04F0 800A34F0 800329E4 */  lwz       r0, Si@l(r3)
/* 0A04F4 800A34F4 2C00FFFF */  cmpwi     r0, -0x1
/* 0A04F8 800A34F8 4182000C */  beq       lbl_800A3504
/* 0A04FC 800A34FC 38600001 */  li        r3, 0x1
/* 0A0500 800A3500 4E800020 */  blr
lbl_800A3504:
/* 0A0504 800A3504 38600000 */  li        r3, 0x0
/* 0A0508 800A3508 4E800020 */  blr

glabel SIIsChanBusy
/* 0A050C 800A350C 3C808018 */  lis       r4, Packet@ha
/* 0A0510 800A3510 54652834 */  slwi      r5, r3, 5
/* 0A0514 800A3514 38047E50 */  addi      r0, r4, Packet@l
/* 0A0518 800A3518 7C802A14 */  add       r4, r0, r5
/* 0A051C 800A351C 80040000 */  lwz       r0, 0x0(r4)
/* 0A0520 800A3520 38A00001 */  li        r5, 0x1
/* 0A0524 800A3524 2C00FFFF */  cmpwi     r0, -0x1
/* 0A0528 800A3528 40820018 */  bne       lbl_800A3540
/* 0A052C 800A352C 3C80800F */  lis       r4, Si@ha
/* 0A0530 800A3530 800429E4 */  lwz       r0, Si@l(r4)
/* 0A0534 800A3534 7C001800 */  cmpw      r0, r3
/* 0A0538 800A3538 41820008 */  beq       lbl_800A3540
/* 0A053C 800A353C 38A00000 */  li        r5, 0x0
lbl_800A3540:
/* 0A0540 800A3540 7CA32B78 */  mr        r3, r5
/* 0A0544 800A3544 4E800020 */  blr

glabel CompleteTransfer
/* 0A0548 800A3548 7C0802A6 */  mflr      r0
/* 0A054C 800A354C 3C60CC00 */  lis       r3, 0xcc00
/* 0A0550 800A3550 90010004 */  stw       r0, 0x4(r1)
/* 0A0554 800A3554 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0A0558 800A3558 93E1001C */  stw       r31, 0x1c(r1)
/* 0A055C 800A355C 93C10018 */  stw       r30, 0x18(r1)
/* 0A0560 800A3560 3BC36400 */  addi      r30, r3, 0x6400
/* 0A0564 800A3564 93A10014 */  stw       r29, 0x14(r1)
/* 0A0568 800A3568 3BBE0034 */  addi      r29, r30, 0x34
/* 0A056C 800A356C 93810010 */  stw       r28, 0x10(r1)
/* 0A0570 800A3570 80036434 */  lwz       r0, 0x6434(r3)
/* 0A0574 800A3574 83836438 */  lwz       r28, 0x6438(r3)
/* 0A0578 800A3578 3C60800F */  lis       r3, D_800F29A0@ha
/* 0A057C 800A357C 64008000 */  oris      r0, r0, 0x8000
/* 0A0580 800A3580 5400003C */  clrrwi    r0, r0, 1
/* 0A0584 800A3584 901E0034 */  stw       r0, 0x34(r30)
/* 0A0588 800A3588 3BE329A0 */  addi      r31, r3, D_800F29A0@l
/* 0A058C 800A358C 801F0044 */  lwz       r0, 0x44(r31)
/* 0A0590 800A3590 2C00FFFF */  cmpwi     r0, -0x1
/* 0A0594 800A3594 41820274 */  beq       lbl_800A3808
/* 0A0598 800A3598 4BFFDF69 */  bl        __OSGetSystemTime
/* 0A059C 800A359C 80DF0044 */  lwz       r6, 0x44(r31)
/* 0A05A0 800A35A0 3CA08018 */  lis       r5, D_80187F90@ha
/* 0A05A4 800A35A4 38057F90 */  addi      r0, r5, D_80187F90@l
/* 0A05A8 800A35A8 54C51838 */  slwi      r5, r6, 3
/* 0A05AC 800A35AC 7CA02A14 */  add       r5, r0, r5
/* 0A05B0 800A35B0 90850004 */  stw       r4, 0x4(r5)
/* 0A05B4 800A35B4 38DF004C */  addi      r6, r31, 0x4c
/* 0A05B8 800A35B8 38800000 */  li        r4, 0x0
/* 0A05BC 800A35BC 90650000 */  stw       r3, 0x0(r5)
/* 0A05C0 800A35C0 801F004C */  lwz       r0, 0x4c(r31)
/* 0A05C4 800A35C4 80BF0050 */  lwz       r5, 0x50(r31)
/* 0A05C8 800A35C8 5407F0BE */  srwi      r7, r0, 2
/* 0A05CC 800A35CC 28070000 */  cmplwi    r7, 0x0
/* 0A05D0 800A35D0 408100A0 */  ble       lbl_800A3670
/* 0A05D4 800A35D4 28070008 */  cmplwi    r7, 0x8
/* 0A05D8 800A35D8 3867FFF8 */  subi      r3, r7, 0x8
/* 0A05DC 800A35DC 40810234 */  ble       lbl_800A3810
/* 0A05E0 800A35E0 38030007 */  addi      r0, r3, 0x7
/* 0A05E4 800A35E4 5400E8FE */  srwi      r0, r0, 3
/* 0A05E8 800A35E8 28030000 */  cmplwi    r3, 0x0
/* 0A05EC 800A35EC 7C0903A6 */  mtctr     r0
/* 0A05F0 800A35F0 40810220 */  ble       lbl_800A3810
lbl_800A35F4:
/* 0A05F4 800A35F4 801E0080 */  lwz       r0, 0x80(r30)
/* 0A05F8 800A35F8 38840008 */  addi      r4, r4, 0x8
/* 0A05FC 800A35FC 90050000 */  stw       r0, 0x0(r5)
/* 0A0600 800A3600 801E0084 */  lwz       r0, 0x84(r30)
/* 0A0604 800A3604 90050004 */  stw       r0, 0x4(r5)
/* 0A0608 800A3608 801E0088 */  lwz       r0, 0x88(r30)
/* 0A060C 800A360C 90050008 */  stw       r0, 0x8(r5)
/* 0A0610 800A3610 801E008C */  lwz       r0, 0x8c(r30)
/* 0A0614 800A3614 9005000C */  stw       r0, 0xc(r5)
/* 0A0618 800A3618 801E0090 */  lwz       r0, 0x90(r30)
/* 0A061C 800A361C 90050010 */  stw       r0, 0x10(r5)
/* 0A0620 800A3620 801E0094 */  lwz       r0, 0x94(r30)
/* 0A0624 800A3624 90050014 */  stw       r0, 0x14(r5)
/* 0A0628 800A3628 801E0098 */  lwz       r0, 0x98(r30)
/* 0A062C 800A362C 90050018 */  stw       r0, 0x18(r5)
/* 0A0630 800A3630 801E009C */  lwz       r0, 0x9c(r30)
/* 0A0634 800A3634 3BDE0020 */  addi      r30, r30, 0x20
/* 0A0638 800A3638 9005001C */  stw       r0, 0x1c(r5)
/* 0A063C 800A363C 38A50020 */  addi      r5, r5, 0x20
/* 0A0640 800A3640 4200FFB4 */  bdnz      lbl_800A35F4
/* 0A0644 800A3644 480001CC */  b         lbl_800A3810
lbl_800A3648:
/* 0A0648 800A3648 7C043850 */  subf      r0, r4, r7
/* 0A064C 800A364C 7C043840 */  cmplw     r4, r7
/* 0A0650 800A3650 7C0903A6 */  mtctr     r0
/* 0A0654 800A3654 4080001C */  bge       lbl_800A3670
lbl_800A3658:
/* 0A0658 800A3658 80030080 */  lwz       r0, 0x80(r3)
/* 0A065C 800A365C 38630004 */  addi      r3, r3, 0x4
/* 0A0660 800A3660 38840001 */  addi      r4, r4, 0x1
/* 0A0664 800A3664 90050000 */  stw       r0, 0x0(r5)
/* 0A0668 800A3668 38A50004 */  addi      r5, r5, 0x4
/* 0A066C 800A366C 4200FFEC */  bdnz      lbl_800A3658
lbl_800A3670:
/* 0A0670 800A3670 80060000 */  lwz       r0, 0x0(r6)
/* 0A0674 800A3674 540307BF */  clrlwi.   r3, r0, 30
/* 0A0678 800A3678 41820110 */  beq       lbl_800A3788
/* 0A067C 800A367C 3CC0CC00 */  lis       r6, 0xcc00
/* 0A0680 800A3680 38C66400 */  addi      r6, r6, 0x6400
/* 0A0684 800A3684 5480103A */  slwi      r0, r4, 2
/* 0A0688 800A3688 7C860214 */  add       r4, r6, r0
/* 0A068C 800A368C 80C40080 */  lwz       r6, 0x80(r4)
/* 0A0690 800A3690 38800000 */  li        r4, 0x0
/* 0A0694 800A3694 408100F4 */  ble       lbl_800A3788
/* 0A0698 800A3698 28030008 */  cmplwi    r3, 0x8
/* 0A069C 800A369C 38E3FFF8 */  subi      r7, r3, 0x8
/* 0A06A0 800A36A0 408100BC */  ble       lbl_800A375C
/* 0A06A4 800A36A4 38070007 */  addi      r0, r7, 0x7
/* 0A06A8 800A36A8 5400E8FE */  srwi      r0, r0, 3
/* 0A06AC 800A36AC 28070000 */  cmplwi    r7, 0x0
/* 0A06B0 800A36B0 7C0903A6 */  mtctr     r0
/* 0A06B4 800A36B4 408100A8 */  ble       lbl_800A375C
lbl_800A36B8:
/* 0A06B8 800A36B8 20040003 */  subfic    r0, r4, 0x3
/* 0A06BC 800A36BC 54071838 */  slwi      r7, r0, 3
/* 0A06C0 800A36C0 38040001 */  addi      r0, r4, 0x1
/* 0A06C4 800A36C4 7CC73C30 */  srw       r7, r6, r7
/* 0A06C8 800A36C8 20000003 */  subfic    r0, r0, 0x3
/* 0A06CC 800A36CC 98E50000 */  stb       r7, 0x0(r5)
/* 0A06D0 800A36D0 54001838 */  slwi      r0, r0, 3
/* 0A06D4 800A36D4 38E40002 */  addi      r7, r4, 0x2
/* 0A06D8 800A36D8 7CC00430 */  srw       r0, r6, r0
/* 0A06DC 800A36DC 20E70003 */  subfic    r7, r7, 0x3
/* 0A06E0 800A36E0 98050001 */  stb       r0, 0x1(r5)
/* 0A06E4 800A36E4 54E71838 */  slwi      r7, r7, 3
/* 0A06E8 800A36E8 7CCC3C30 */  srw       r12, r6, r7
/* 0A06EC 800A36EC 7CE400D0 */  neg       r7, r4
/* 0A06F0 800A36F0 99850002 */  stb       r12, 0x2(r5)
/* 0A06F4 800A36F4 54E81838 */  slwi      r8, r7, 3
/* 0A06F8 800A36F8 38E40004 */  addi      r7, r4, 0x4
/* 0A06FC 800A36FC 7CCB4430 */  srw       r11, r6, r8
/* 0A0700 800A3700 20E70003 */  subfic    r7, r7, 0x3
/* 0A0704 800A3704 99650003 */  stb       r11, 0x3(r5)
/* 0A0708 800A3708 54E81838 */  slwi      r8, r7, 3
/* 0A070C 800A370C 38E40005 */  addi      r7, r4, 0x5
/* 0A0710 800A3710 7CCA4430 */  srw       r10, r6, r8
/* 0A0714 800A3714 20E70003 */  subfic    r7, r7, 0x3
/* 0A0718 800A3718 99450004 */  stb       r10, 0x4(r5)
/* 0A071C 800A371C 54E81838 */  slwi      r8, r7, 3
/* 0A0720 800A3720 7CC94430 */  srw       r9, r6, r8
/* 0A0724 800A3724 38E40006 */  addi      r7, r4, 0x6
/* 0A0728 800A3728 99250005 */  stb       r9, 0x5(r5)
/* 0A072C 800A372C 21070003 */  subfic    r8, r7, 0x3
/* 0A0730 800A3730 38E40007 */  addi      r7, r4, 0x7
/* 0A0734 800A3734 55081838 */  slwi      r8, r8, 3
/* 0A0738 800A3738 7CC84430 */  srw       r8, r6, r8
/* 0A073C 800A373C 20E70003 */  subfic    r7, r7, 0x3
/* 0A0740 800A3740 99050006 */  stb       r8, 0x6(r5)
/* 0A0744 800A3744 54E71838 */  slwi      r7, r7, 3
/* 0A0748 800A3748 7CC73C30 */  srw       r7, r6, r7
/* 0A074C 800A374C 98E50007 */  stb       r7, 0x7(r5)
/* 0A0750 800A3750 38A50008 */  addi      r5, r5, 0x8
/* 0A0754 800A3754 38840008 */  addi      r4, r4, 0x8
/* 0A0758 800A3758 4200FF60 */  bdnz      lbl_800A36B8
lbl_800A375C:
/* 0A075C 800A375C 7C041850 */  subf      r0, r4, r3
/* 0A0760 800A3760 7C041840 */  cmplw     r4, r3
/* 0A0764 800A3764 7C0903A6 */  mtctr     r0
/* 0A0768 800A3768 40800020 */  bge       lbl_800A3788
lbl_800A376C:
/* 0A076C 800A376C 20040003 */  subfic    r0, r4, 0x3
/* 0A0770 800A3770 54001838 */  slwi      r0, r0, 3
/* 0A0774 800A3774 7CC00430 */  srw       r0, r6, r0
/* 0A0778 800A3778 98050000 */  stb       r0, 0x0(r5)
/* 0A077C 800A377C 38A50001 */  addi      r5, r5, 0x1
/* 0A0780 800A3780 38840001 */  addi      r4, r4, 0x1
/* 0A0784 800A3784 4200FFE8 */  bdnz      lbl_800A376C
lbl_800A3788:
/* 0A0788 800A3788 801D0000 */  lwz       r0, 0x0(r29)
/* 0A078C 800A378C 54000085 */  rlwinm.   r0, r0, 0, 2, 2
/* 0A0790 800A3790 4182004C */  beq       lbl_800A37DC
/* 0A0794 800A3794 807F0044 */  lwz       r3, 0x44(r31)
/* 0A0798 800A3798 20030003 */  subfic    r0, r3, 0x3
/* 0A079C 800A379C 54001838 */  slwi      r0, r0, 3
/* 0A07A0 800A37A0 7F9C0430 */  srw       r28, r28, r0
/* 0A07A4 800A37A4 579C073E */  clrlwi    r28, r28, 28
/* 0A07A8 800A37A8 57800739 */  rlwinm.   r0, r28, 0, 28, 28
/* 0A07AC 800A37AC 41820020 */  beq       lbl_800A37CC
/* 0A07B0 800A37B0 5460103A */  slwi      r0, r3, 2
/* 0A07B4 800A37B4 7C7F0214 */  add       r3, r31, r0
/* 0A07B8 800A37B8 84030058 */  lwzu      r0, 0x58(r3)
/* 0A07BC 800A37BC 54000631 */  rlwinm.   r0, r0, 0, 24, 24
/* 0A07C0 800A37C0 4082000C */  bne       lbl_800A37CC
/* 0A07C4 800A37C4 38000008 */  li        r0, 0x8
/* 0A07C8 800A37C8 90030000 */  stw       r0, 0x0(r3)
lbl_800A37CC:
/* 0A07CC 800A37CC 281C0000 */  cmplwi    r28, 0x0
/* 0A07D0 800A37D0 40820030 */  bne       lbl_800A3800
/* 0A07D4 800A37D4 3B800004 */  li        r28, 0x4
/* 0A07D8 800A37D8 48000028 */  b         lbl_800A3800
lbl_800A37DC:
/* 0A07DC 800A37DC 4BFFDD25 */  bl        __OSGetSystemTime
/* 0A07E0 800A37E0 80DF0044 */  lwz       r6, 0x44(r31)
/* 0A07E4 800A37E4 3CA08018 */  lis       r5, TypeTime@ha
/* 0A07E8 800A37E8 38057F70 */  addi      r0, r5, TypeTime@l
/* 0A07EC 800A37EC 54C51838 */  slwi      r5, r6, 3
/* 0A07F0 800A37F0 7CA02A14 */  add       r5, r0, r5
/* 0A07F4 800A37F4 90850004 */  stw       r4, 0x4(r5)
/* 0A07F8 800A37F8 3B800000 */  li        r28, 0x0
/* 0A07FC 800A37FC 90650000 */  stw       r3, 0x0(r5)
lbl_800A3800:
/* 0A0800 800A3800 3800FFFF */  li        r0, -0x1
/* 0A0804 800A3804 901F0044 */  stw       r0, 0x44(r31)
lbl_800A3808:
/* 0A0808 800A3808 7F83E378 */  mr        r3, r28
/* 0A080C 800A380C 48000018 */  b         lbl_800A3824
lbl_800A3810:
/* 0A0810 800A3810 3C60CC00 */  lis       r3, 0xcc00
/* 0A0814 800A3814 5480103A */  slwi      r0, r4, 2
/* 0A0818 800A3818 38636400 */  addi      r3, r3, 0x6400
/* 0A081C 800A381C 7C630214 */  add       r3, r3, r0
/* 0A0820 800A3820 4BFFFE28 */  b         lbl_800A3648
lbl_800A3824:
/* 0A0824 800A3824 80010024 */  lwz       r0, 0x24(r1)
/* 0A0828 800A3828 83E1001C */  lwz       r31, 0x1c(r1)
/* 0A082C 800A382C 83C10018 */  lwz       r30, 0x18(r1)
/* 0A0830 800A3830 83A10014 */  lwz       r29, 0x14(r1)
/* 0A0834 800A3834 83810010 */  lwz       r28, 0x10(r1)
/* 0A0838 800A3838 38210020 */  addi      r1, r1, 0x20
/* 0A083C 800A383C 7C0803A6 */  mtlr      r0
/* 0A0840 800A3840 4E800020 */  blr

SIInterruptHandler:
/* 0A0844 800A3844 7C0802A6 */  mflr      r0
/* 0A0848 800A3848 3CA0CC00 */  lis       r5, 0xcc00
/* 0A084C 800A384C 90010004 */  stw       r0, 0x4(r1)
/* 0A0850 800A3850 3CE08018 */  lis       r7, Packet@ha
/* 0A0854 800A3854 3CC0800F */  lis       r6, D_800F29A0@ha
/* 0A0858 800A3858 9421FFB8 */  stwu      r1, -0x48(r1)
/* 0A085C 800A385C BEA1001C */  stmw      r21, 0x1c(r1)
/* 0A0860 800A3860 3BC30000 */  addi      r30, r3, 0x0
/* 0A0864 800A3864 3BE40000 */  addi      r31, r4, 0x0
/* 0A0868 800A3868 3B877E50 */  addi      r28, r7, Packet@l
/* 0A086C 800A386C 3BA629A0 */  addi      r29, r6, D_800F29A0@l
/* 0A0870 800A3870 83056434 */  lwz       r24, 0x6434(r5)
/* 0A0874 800A3874 57050002 */  clrrwi    r5, r24, 30
/* 0A0878 800A3878 3C054000 */  addis     r0, r5, 0x4000
/* 0A087C 800A387C 28000000 */  cmplwi    r0, 0x0
/* 0A0880 800A3880 40820184 */  bne       lbl_800A3A04
/* 0A0884 800A3884 82FD0044 */  lwz       r23, 0x44(r29)
/* 0A0888 800A3888 4BFFFCC1 */  bl        CompleteTransfer
/* 0A088C 800A388C 82BD0054 */  lwz       r21, 0x54(r29)
/* 0A0890 800A3890 3B600000 */  li        r27, 0x0
/* 0A0894 800A3894 3AC30000 */  addi      r22, r3, 0x0
/* 0A0898 800A3898 937D0054 */  stw       r27, 0x54(r29)
/* 0A089C 800A389C 3B570000 */  addi      r26, r23, 0x0
lbl_800A38A0:
/* 0A08A0 800A38A0 3B5A0001 */  addi      r26, r26, 0x1
/* 0A08A4 800A38A4 7F401670 */  srawi     r0, r26, 2
/* 0A08A8 800A38A8 7C000194 */  addze     r0, r0
/* 0A08AC 800A38AC 5400103A */  slwi      r0, r0, 2
/* 0A08B0 800A38B0 7C00D010 */  subfc     r0, r0, r26
/* 0A08B4 800A38B4 7C1A0378 */  mr        r26, r0
/* 0A08B8 800A38B8 54002834 */  slwi      r0, r0, 5
/* 0A08BC 800A38BC 7F3C0214 */  add       r25, r28, r0
/* 0A08C0 800A38C0 80190000 */  lwz       r0, 0x0(r25)
/* 0A08C4 800A38C4 2C00FFFF */  cmpwi     r0, -0x1
/* 0A08C8 800A38C8 4182006C */  beq       lbl_800A3934
/* 0A08CC 800A38CC 4BFFDC35 */  bl        __OSGetSystemTime
/* 0A08D0 800A38D0 80190018 */  lwz       r0, 0x18(r25)
/* 0A08D4 800A38D4 6C658000 */  xoris     r5, r3, 0x8000
/* 0A08D8 800A38D8 80D9001C */  lwz       r6, 0x1c(r25)
/* 0A08DC 800A38DC 6C038000 */  xoris     r3, r0, 0x8000
/* 0A08E0 800A38E0 7C062010 */  subfc     r0, r6, r4
/* 0A08E4 800A38E4 7C632910 */  subfe     r3, r3, r5
/* 0A08E8 800A38E8 7C652910 */  subfe     r3, r5, r5
/* 0A08EC 800A38EC 7C6300D1 */  neg.      r3, r3
/* 0A08F0 800A38F0 40820044 */  bne       lbl_800A3934
/* 0A08F4 800A38F4 80790000 */  lwz       r3, 0x0(r25)
/* 0A08F8 800A38F8 80990004 */  lwz       r4, 0x4(r25)
/* 0A08FC 800A38FC 80B90008 */  lwz       r5, 0x8(r25)
/* 0A0900 800A3900 80D9000C */  lwz       r6, 0xc(r25)
/* 0A0904 800A3904 80F90010 */  lwz       r7, 0x10(r25)
/* 0A0908 800A3908 81190014 */  lwz       r8, 0x14(r25)
/* 0A090C 800A390C 48000589 */  bl        __SITransfer
/* 0A0910 800A3910 2C030000 */  cmpwi     r3, 0x0
/* 0A0914 800A3914 4182002C */  beq       lbl_800A3940
/* 0A0918 800A3918 1C1A0028 */  mulli     r0, r26, 0x28
/* 0A091C 800A391C 7C7C0214 */  add       r3, r28, r0
/* 0A0920 800A3920 38630080 */  addi      r3, r3, 0x80
/* 0A0924 800A3924 4BFF86A1 */  bl        OSCancelAlarm
/* 0A0928 800A3928 3800FFFF */  li        r0, -0x1
/* 0A092C 800A392C 90190000 */  stw       r0, 0x0(r25)
/* 0A0930 800A3930 48000010 */  b         lbl_800A3940
lbl_800A3934:
/* 0A0934 800A3934 3B7B0001 */  addi      r27, r27, 0x1
/* 0A0938 800A3938 2C1B0004 */  cmpwi     r27, 0x4
/* 0A093C 800A393C 4180FF64 */  blt       lbl_800A38A0
lbl_800A3940:
/* 0A0940 800A3940 28150000 */  cmplwi    r21, 0x0
/* 0A0944 800A3944 4182001C */  beq       lbl_800A3960
/* 0A0948 800A3948 39950000 */  addi      r12, r21, 0x0
/* 0A094C 800A394C 7D8803A6 */  mtlr      r12
/* 0A0950 800A3950 38770000 */  addi      r3, r23, 0x0
/* 0A0954 800A3954 38960000 */  addi      r4, r22, 0x0
/* 0A0958 800A3958 38BF0000 */  addi      r5, r31, 0x0
/* 0A095C 800A395C 4E800021 */  blrl
lbl_800A3960:
/* 0A0960 800A3960 3C60CC00 */  lis       r3, 0xcc00
/* 0A0964 800A3964 38836400 */  addi      r4, r3, 0x6400
/* 0A0968 800A3968 80A36438 */  lwz       r5, 0x6438(r3)
/* 0A096C 800A396C 56E01838 */  slwi      r0, r23, 3
/* 0A0970 800A3970 3C600F00 */  lis       r3, 0xf00
/* 0A0974 800A3974 7C600630 */  sraw      r0, r3, r0
/* 0A0978 800A3978 7CA50038 */  and       r5, r5, r0
/* 0A097C 800A397C 56E0103A */  slwi      r0, r23, 2
/* 0A0980 800A3980 90A40038 */  stw       r5, 0x38(r4)
/* 0A0984 800A3984 7CDD0214 */  add       r6, r29, r0
/* 0A0988 800A3988 84060058 */  lwzu      r0, 0x58(r6)
/* 0A098C 800A398C 28000080 */  cmplwi    r0, 0x80
/* 0A0990 800A3990 40820074 */  bne       lbl_800A3A04
/* 0A0994 800A3994 56E02834 */  slwi      r0, r23, 5
/* 0A0998 800A3998 7C1C002E */  lwzx      r0, r28, r0
/* 0A099C 800A399C 38600001 */  li        r3, 0x1
/* 0A09A0 800A39A0 2C00FFFF */  cmpwi     r0, -0x1
/* 0A09A4 800A39A4 40820014 */  bne       lbl_800A39B8
/* 0A09A8 800A39A8 801D0044 */  lwz       r0, 0x44(r29)
/* 0A09AC 800A39AC 7C00B800 */  cmpw      r0, r23
/* 0A09B0 800A39B0 41820008 */  beq       lbl_800A39B8
/* 0A09B4 800A39B4 38600000 */  li        r3, 0x0
lbl_800A39B8:
/* 0A09B8 800A39B8 2C030000 */  cmpwi     r3, 0x0
/* 0A09BC 800A39BC 40820048 */  bne       lbl_800A3A04
/* 0A09C0 800A39C0 3C608000 */  lis       r3, 0x8000
/* 0A09C4 800A39C4 800300F8 */  lwz       r0, 0xf8(r3)
/* 0A09C8 800A39C8 3C60431C */  lis       r3, 0x431c
/* 0A09CC 800A39CC 3C80800A */  lis       r4, GetTypeCallback@ha
/* 0A09D0 800A39D0 5400F0BE */  srwi      r0, r0, 2
/* 0A09D4 800A39D4 3863DE83 */  subi      r3, r3, 0x217d
/* 0A09D8 800A39D8 7C030016 */  mulhwu    r0, r3, r0
/* 0A09DC 800A39DC 54008BFE */  srwi      r0, r0, 15
/* 0A09E0 800A39E0 1C000041 */  mulli     r0, r0, 0x41
/* 0A09E4 800A39E4 39044644 */  addi      r8, r4, GetTypeCallback@l
/* 0A09E8 800A39E8 540AE8FE */  srwi      r10, r0, 3
/* 0A09EC 800A39EC 38770000 */  addi      r3, r23, 0x0
/* 0A09F0 800A39F0 388D8B80 */  li        r4, D_8018BB00@sda21
/* 0A09F4 800A39F4 38A00001 */  li        r5, 0x1
/* 0A09F8 800A39F8 38E00003 */  li        r7, 0x3
/* 0A09FC 800A39FC 39200000 */  li        r9, 0x0
/* 0A0A00 800A3A00 48000AD9 */  bl        SITransfer
lbl_800A3A04:
/* 0A0A04 800A3A04 570300C8 */  rlwinm    r3, r24, 0, 3, 4
/* 0A0A08 800A3A08 3C03E800 */  subis     r0, r3, 0x1800
/* 0A0A0C 800A3A0C 28000000 */  cmplwi    r0, 0x0
/* 0A0A10 800A3A10 40820164 */  bne       lbl_800A3B74
/* 0A0A14 800A3A14 48002CAD */  bl        VIGetCurrentLine
/* 0A0A18 800A3A18 801D0048 */  lwz       r0, 0x48(r29)
/* 0A0A1C 800A3A1C 3AFC01E0 */  addi      r23, r28, 0x1e0
/* 0A0A20 800A3A20 3B1D0048 */  addi      r24, r29, 0x48
/* 0A0A24 800A3A24 3AD70000 */  addi      r22, r23, 0x0
/* 0A0A28 800A3A28 3AA30001 */  addi      r21, r3, 0x1
/* 0A0A2C 800A3A2C 541A85BE */  extrwi    r26, r0, 10, 6
/* 0A0A30 800A3A30 3B200000 */  li        r25, 0x0
lbl_800A3A34:
/* 0A0A34 800A3A34 7F23CB78 */  mr        r3, r25
/* 0A0A38 800A3A38 4800087D */  bl        SIGetResponseRaw
/* 0A0A3C 800A3A3C 2C030000 */  cmpwi     r3, 0x0
/* 0A0A40 800A3A40 41820008 */  beq       lbl_800A3A48
/* 0A0A44 800A3A44 92B60000 */  stw       r21, 0x0(r22)
lbl_800A3A48:
/* 0A0A48 800A3A48 3B390001 */  addi      r25, r25, 0x1
/* 0A0A4C 800A3A4C 2C190004 */  cmpwi     r25, 0x4
/* 0A0A50 800A3A50 3AD60004 */  addi      r22, r22, 0x4
/* 0A0A54 800A3A54 4180FFE0 */  blt       lbl_800A3A34
/* 0A0A58 800A3A58 80B80000 */  lwz       r5, 0x0(r24)
/* 0A0A5C 800A3A5C 3C608000 */  lis       r3, 0x8000
/* 0A0A60 800A3A60 38000018 */  li        r0, 0x18
/* 0A0A64 800A3A64 7C600430 */  srw       r0, r3, r0
/* 0A0A68 800A3A68 7CA00039 */  and.      r0, r5, r0
/* 0A0A6C 800A3A6C 5746F87E */  srwi      r6, r26, 1
/* 0A0A70 800A3A70 41820024 */  beq       lbl_800A3A94
/* 0A0A74 800A3A74 80170000 */  lwz       r0, 0x0(r23)
/* 0A0A78 800A3A78 28000000 */  cmplwi    r0, 0x0
/* 0A0A7C 800A3A7C 418200F8 */  beq       lbl_800A3B74
/* 0A0A80 800A3A80 80170000 */  lwz       r0, 0x0(r23)
/* 0A0A84 800A3A84 7C060214 */  add       r0, r6, r0
/* 0A0A88 800A3A88 7C00A840 */  cmplw     r0, r21
/* 0A0A8C 800A3A8C 40800008 */  bge       lbl_800A3A94
/* 0A0A90 800A3A90 480000E4 */  b         lbl_800A3B74
lbl_800A3A94:
/* 0A0A94 800A3A94 38000019 */  li        r0, 0x19
/* 0A0A98 800A3A98 7C600430 */  srw       r0, r3, r0
/* 0A0A9C 800A3A9C 7CA00039 */  and.      r0, r5, r0
/* 0A0AA0 800A3AA0 38970004 */  addi      r4, r23, 0x4
/* 0A0AA4 800A3AA4 41820024 */  beq       lbl_800A3AC8
/* 0A0AA8 800A3AA8 80040000 */  lwz       r0, 0x0(r4)
/* 0A0AAC 800A3AAC 28000000 */  cmplwi    r0, 0x0
/* 0A0AB0 800A3AB0 418200C4 */  beq       lbl_800A3B74
/* 0A0AB4 800A3AB4 80040000 */  lwz       r0, 0x0(r4)
/* 0A0AB8 800A3AB8 7C060214 */  add       r0, r6, r0
/* 0A0ABC 800A3ABC 7C00A840 */  cmplw     r0, r21
/* 0A0AC0 800A3AC0 40800008 */  bge       lbl_800A3AC8
/* 0A0AC4 800A3AC4 480000B0 */  b         lbl_800A3B74
lbl_800A3AC8:
/* 0A0AC8 800A3AC8 3800001A */  li        r0, 0x1a
/* 0A0ACC 800A3ACC 7C600430 */  srw       r0, r3, r0
/* 0A0AD0 800A3AD0 7CA00039 */  and.      r0, r5, r0
/* 0A0AD4 800A3AD4 38840004 */  addi      r4, r4, 0x4
/* 0A0AD8 800A3AD8 41820024 */  beq       lbl_800A3AFC
/* 0A0ADC 800A3ADC 80040000 */  lwz       r0, 0x0(r4)
/* 0A0AE0 800A3AE0 28000000 */  cmplwi    r0, 0x0
/* 0A0AE4 800A3AE4 41820090 */  beq       lbl_800A3B74
/* 0A0AE8 800A3AE8 80040000 */  lwz       r0, 0x0(r4)
/* 0A0AEC 800A3AEC 7C060214 */  add       r0, r6, r0
/* 0A0AF0 800A3AF0 7C00A840 */  cmplw     r0, r21
/* 0A0AF4 800A3AF4 40800008 */  bge       lbl_800A3AFC
/* 0A0AF8 800A3AF8 4800007C */  b         lbl_800A3B74
lbl_800A3AFC:
/* 0A0AFC 800A3AFC 3800001B */  li        r0, 0x1b
/* 0A0B00 800A3B00 7C600430 */  srw       r0, r3, r0
/* 0A0B04 800A3B04 7CA00039 */  and.      r0, r5, r0
/* 0A0B08 800A3B08 38840004 */  addi      r4, r4, 0x4
/* 0A0B0C 800A3B0C 41820024 */  beq       lbl_800A3B30
/* 0A0B10 800A3B10 80040000 */  lwz       r0, 0x0(r4)
/* 0A0B14 800A3B14 28000000 */  cmplwi    r0, 0x0
/* 0A0B18 800A3B18 4182005C */  beq       lbl_800A3B74
/* 0A0B1C 800A3B1C 80040000 */  lwz       r0, 0x0(r4)
/* 0A0B20 800A3B20 7C060214 */  add       r0, r6, r0
/* 0A0B24 800A3B24 7C00A840 */  cmplw     r0, r21
/* 0A0B28 800A3B28 40800008 */  bge       lbl_800A3B30
/* 0A0B2C 800A3B2C 48000048 */  b         lbl_800A3B74
lbl_800A3B30:
/* 0A0B30 800A3B30 3AC00000 */  li        r22, 0x0
/* 0A0B34 800A3B34 92D70000 */  stw       r22, 0x0(r23)
/* 0A0B38 800A3B38 3ABC01A0 */  addi      r21, r28, 0x1a0
/* 0A0B3C 800A3B3C 92DC01E4 */  stw       r22, 0x1e4(r28)
/* 0A0B40 800A3B40 92DC01E8 */  stw       r22, 0x1e8(r28)
/* 0A0B44 800A3B44 92DC01EC */  stw       r22, 0x1ec(r28)
lbl_800A3B48:
/* 0A0B48 800A3B48 81950000 */  lwz       r12, 0x0(r21)
/* 0A0B4C 800A3B4C 280C0000 */  cmplwi    r12, 0x0
/* 0A0B50 800A3B50 41820014 */  beq       lbl_800A3B64
/* 0A0B54 800A3B54 7D8803A6 */  mtlr      r12
/* 0A0B58 800A3B58 387E0000 */  addi      r3, r30, 0x0
/* 0A0B5C 800A3B5C 389F0000 */  addi      r4, r31, 0x0
/* 0A0B60 800A3B60 4E800021 */  blrl
lbl_800A3B64:
/* 0A0B64 800A3B64 3AD60001 */  addi      r22, r22, 0x1
/* 0A0B68 800A3B68 2C160004 */  cmpwi     r22, 0x4
/* 0A0B6C 800A3B6C 3AB50004 */  addi      r21, r21, 0x4
/* 0A0B70 800A3B70 4180FFD8 */  blt       lbl_800A3B48
lbl_800A3B74:
/* 0A0B74 800A3B74 BAA1001C */  lmw       r21, 0x1c(r1)
/* 0A0B78 800A3B78 8001004C */  lwz       r0, 0x4c(r1)
/* 0A0B7C 800A3B7C 38210048 */  addi      r1, r1, 0x48
/* 0A0B80 800A3B80 7C0803A6 */  mtlr      r0
/* 0A0B84 800A3B84 4E800020 */  blr

glabel SIEnablePollingInterrupt
/* 0A0B88 800A3B88 7C0802A6 */  mflr      r0
/* 0A0B8C 800A3B8C 3C808018 */  lis       r4, Packet@ha
/* 0A0B90 800A3B90 90010004 */  stw       r0, 0x4(r1)
/* 0A0B94 800A3B94 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0A0B98 800A3B98 93E1002C */  stw       r31, 0x2c(r1)
/* 0A0B9C 800A3B9C 3BE47E50 */  addi      r31, r4, Packet@l
/* 0A0BA0 800A3BA0 93C10028 */  stw       r30, 0x28(r1)
/* 0A0BA4 800A3BA4 93A10024 */  stw       r29, 0x24(r1)
/* 0A0BA8 800A3BA8 3BA30000 */  addi      r29, r3, 0x0
/* 0A0BAC 800A3BAC 4BFFA69D */  bl        OSDisableInterrupts
/* 0A0BB0 800A3BB0 3C80CC00 */  lis       r4, 0xcc00
/* 0A0BB4 800A3BB4 84A46434 */  lwzu      r5, 0x6434(r4)
/* 0A0BB8 800A3BB8 54A00109 */  rlwinm.   r0, r5, 0, 4, 4
/* 0A0BBC 800A3BBC 4182000C */  beq       lbl_800A3BC8
/* 0A0BC0 800A3BC0 3BC00001 */  li        r30, 0x1
/* 0A0BC4 800A3BC4 48000008 */  b         lbl_800A3BCC
lbl_800A3BC8:
/* 0A0BC8 800A3BC8 3BC00000 */  li        r30, 0x0
lbl_800A3BCC:
/* 0A0BCC 800A3BCC 2C1D0000 */  cmpwi     r29, 0x0
/* 0A0BD0 800A3BD0 41820020 */  beq       lbl_800A3BF0
/* 0A0BD4 800A3BD4 38000000 */  li        r0, 0x0
/* 0A0BD8 800A3BD8 901F01E0 */  stw       r0, 0x1e0(r31)
/* 0A0BDC 800A3BDC 64A50800 */  oris      r5, r5, 0x800
/* 0A0BE0 800A3BE0 901F01E4 */  stw       r0, 0x1e4(r31)
/* 0A0BE4 800A3BE4 901F01E8 */  stw       r0, 0x1e8(r31)
/* 0A0BE8 800A3BE8 901F01EC */  stw       r0, 0x1ec(r31)
/* 0A0BEC 800A3BEC 48000008 */  b         lbl_800A3BF4
lbl_800A3BF0:
/* 0A0BF0 800A3BF0 54A50146 */  rlwinm    r5, r5, 0, 5, 3
lbl_800A3BF4:
/* 0A0BF4 800A3BF4 54A5007C */  rlwinm    r5, r5, 0, 1, 30
/* 0A0BF8 800A3BF8 90A40000 */  stw       r5, 0x0(r4)
/* 0A0BFC 800A3BFC 4BFFA675 */  bl        OSRestoreInterrupts
/* 0A0C00 800A3C00 7FC3F378 */  mr        r3, r30
/* 0A0C04 800A3C04 80010034 */  lwz       r0, 0x34(r1)
/* 0A0C08 800A3C08 83E1002C */  lwz       r31, 0x2c(r1)
/* 0A0C0C 800A3C0C 83C10028 */  lwz       r30, 0x28(r1)
/* 0A0C10 800A3C10 83A10024 */  lwz       r29, 0x24(r1)
/* 0A0C14 800A3C14 38210030 */  addi      r1, r1, 0x30
/* 0A0C18 800A3C18 7C0803A6 */  mtlr      r0
/* 0A0C1C 800A3C1C 4E800020 */  blr

glabel SIRegisterPollingHandler
/* 0A0C20 800A3C20 7C0802A6 */  mflr      r0
/* 0A0C24 800A3C24 90010004 */  stw       r0, 0x4(r1)
/* 0A0C28 800A3C28 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A0C2C 800A3C2C 93E10014 */  stw       r31, 0x14(r1)
/* 0A0C30 800A3C30 93C10010 */  stw       r30, 0x10(r1)
/* 0A0C34 800A3C34 7C7E1B78 */  mr        r30, r3
/* 0A0C38 800A3C38 4BFFA611 */  bl        OSDisableInterrupts
/* 0A0C3C 800A3C3C 3C808018 */  lis       r4, D_80187FF0@ha
/* 0A0C40 800A3C40 38000004 */  li        r0, 0x4
/* 0A0C44 800A3C44 38847FF0 */  addi      r4, r4, D_80187FF0@l
/* 0A0C48 800A3C48 7C0903A6 */  mtctr     r0
/* 0A0C4C 800A3C4C 3BE30000 */  addi      r31, r3, 0x0
/* 0A0C50 800A3C50 38640000 */  addi      r3, r4, 0x0
lbl_800A3C54:
/* 0A0C54 800A3C54 80030000 */  lwz       r0, 0x0(r3)
/* 0A0C58 800A3C58 7C00F040 */  cmplw     r0, r30
/* 0A0C5C 800A3C5C 40820014 */  bne       lbl_800A3C70
/* 0A0C60 800A3C60 7FE3FB78 */  mr        r3, r31
/* 0A0C64 800A3C64 4BFFA60D */  bl        OSRestoreInterrupts
/* 0A0C68 800A3C68 38600001 */  li        r3, 0x1
/* 0A0C6C 800A3C6C 48000068 */  b         lbl_800A3CD4
lbl_800A3C70:
/* 0A0C70 800A3C70 38630004 */  addi      r3, r3, 0x4
/* 0A0C74 800A3C74 4200FFE0 */  bdnz      lbl_800A3C54
/* 0A0C78 800A3C78 38000004 */  li        r0, 0x4
/* 0A0C7C 800A3C7C 7C0903A6 */  mtctr     r0
/* 0A0C80 800A3C80 38A00000 */  li        r5, 0x0
lbl_800A3C84:
/* 0A0C84 800A3C84 80040000 */  lwz       r0, 0x0(r4)
/* 0A0C88 800A3C88 28000000 */  cmplwi    r0, 0x0
/* 0A0C8C 800A3C8C 40820030 */  bne       lbl_800A3CBC
/* 0A0C90 800A3C90 3C608018 */  lis       r3, D_80187FF0@ha
/* 0A0C94 800A3C94 54A4103A */  slwi      r4, r5, 2
/* 0A0C98 800A3C98 38037FF0 */  addi      r0, r3, D_80187FF0@l
/* 0A0C9C 800A3C9C 7C602214 */  add       r3, r0, r4
/* 0A0CA0 800A3CA0 93C30000 */  stw       r30, 0x0(r3)
/* 0A0CA4 800A3CA4 38600001 */  li        r3, 0x1
/* 0A0CA8 800A3CA8 4BFFFEE1 */  bl        SIEnablePollingInterrupt
/* 0A0CAC 800A3CAC 7FE3FB78 */  mr        r3, r31
/* 0A0CB0 800A3CB0 4BFFA5C1 */  bl        OSRestoreInterrupts
/* 0A0CB4 800A3CB4 38600001 */  li        r3, 0x1
/* 0A0CB8 800A3CB8 4800001C */  b         lbl_800A3CD4
lbl_800A3CBC:
/* 0A0CBC 800A3CBC 38840004 */  addi      r4, r4, 0x4
/* 0A0CC0 800A3CC0 38A50001 */  addi      r5, r5, 0x1
/* 0A0CC4 800A3CC4 4200FFC0 */  bdnz      lbl_800A3C84
/* 0A0CC8 800A3CC8 7FE3FB78 */  mr        r3, r31
/* 0A0CCC 800A3CCC 4BFFA5A5 */  bl        OSRestoreInterrupts
/* 0A0CD0 800A3CD0 38600000 */  li        r3, 0x0
lbl_800A3CD4:
/* 0A0CD4 800A3CD4 8001001C */  lwz       r0, 0x1c(r1)
/* 0A0CD8 800A3CD8 83E10014 */  lwz       r31, 0x14(r1)
/* 0A0CDC 800A3CDC 83C10010 */  lwz       r30, 0x10(r1)
/* 0A0CE0 800A3CE0 38210018 */  addi      r1, r1, 0x18
/* 0A0CE4 800A3CE4 7C0803A6 */  mtlr      r0
/* 0A0CE8 800A3CE8 4E800020 */  blr

glabel SIUnregisterPollingHandler
/* 0A0CEC 800A3CEC 7C0802A6 */  mflr      r0
/* 0A0CF0 800A3CF0 90010004 */  stw       r0, 0x4(r1)
/* 0A0CF4 800A3CF4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A0CF8 800A3CF8 93E10014 */  stw       r31, 0x14(r1)
/* 0A0CFC 800A3CFC 93C10010 */  stw       r30, 0x10(r1)
/* 0A0D00 800A3D00 7C7E1B78 */  mr        r30, r3
/* 0A0D04 800A3D04 4BFFA545 */  bl        OSDisableInterrupts
/* 0A0D08 800A3D08 3C808018 */  lis       r4, D_80187FF0@ha
/* 0A0D0C 800A3D0C 38000004 */  li        r0, 0x4
/* 0A0D10 800A3D10 38A47FF0 */  addi      r5, r4, D_80187FF0@l
/* 0A0D14 800A3D14 7C0903A6 */  mtctr     r0
/* 0A0D18 800A3D18 3BE30000 */  addi      r31, r3, 0x0
/* 0A0D1C 800A3D1C 38650000 */  addi      r3, r5, 0x0
/* 0A0D20 800A3D20 38800000 */  li        r4, 0x0
lbl_800A3D24:
/* 0A0D24 800A3D24 80030000 */  lwz       r0, 0x0(r3)
/* 0A0D28 800A3D28 7C00F040 */  cmplw     r0, r30
/* 0A0D2C 800A3D2C 40820084 */  bne       lbl_800A3DB0
/* 0A0D30 800A3D30 3C608018 */  lis       r3, D_80187FF0@ha
/* 0A0D34 800A3D34 5484103A */  slwi      r4, r4, 2
/* 0A0D38 800A3D38 38037FF0 */  addi      r0, r3, D_80187FF0@l
/* 0A0D3C 800A3D3C 7C602214 */  add       r3, r0, r4
/* 0A0D40 800A3D40 38000000 */  li        r0, 0x0
/* 0A0D44 800A3D44 90030000 */  stw       r0, 0x0(r3)
/* 0A0D48 800A3D48 38800000 */  li        r4, 0x0
/* 0A0D4C 800A3D4C 80050000 */  lwz       r0, 0x0(r5)
/* 0A0D50 800A3D50 28000000 */  cmplwi    r0, 0x0
/* 0A0D54 800A3D54 4082003C */  bne       lbl_800A3D90
/* 0A0D58 800A3D58 38650004 */  addi      r3, r5, 0x4
/* 0A0D5C 800A3D5C 80050004 */  lwz       r0, 0x4(r5)
/* 0A0D60 800A3D60 38800001 */  li        r4, 0x1
/* 0A0D64 800A3D64 28000000 */  cmplwi    r0, 0x0
/* 0A0D68 800A3D68 40820028 */  bne       lbl_800A3D90
/* 0A0D6C 800A3D6C 84030004 */  lwzu      r0, 0x4(r3)
/* 0A0D70 800A3D70 38800002 */  li        r4, 0x2
/* 0A0D74 800A3D74 28000000 */  cmplwi    r0, 0x0
/* 0A0D78 800A3D78 40820018 */  bne       lbl_800A3D90
/* 0A0D7C 800A3D7C 80030004 */  lwz       r0, 0x4(r3)
/* 0A0D80 800A3D80 38800003 */  li        r4, 0x3
/* 0A0D84 800A3D84 28000000 */  cmplwi    r0, 0x0
/* 0A0D88 800A3D88 40820008 */  bne       lbl_800A3D90
/* 0A0D8C 800A3D8C 38800004 */  li        r4, 0x4
lbl_800A3D90:
/* 0A0D90 800A3D90 2C040004 */  cmpwi     r4, 0x4
/* 0A0D94 800A3D94 4082000C */  bne       lbl_800A3DA0
/* 0A0D98 800A3D98 38600000 */  li        r3, 0x0
/* 0A0D9C 800A3D9C 4BFFFDED */  bl        SIEnablePollingInterrupt
lbl_800A3DA0:
/* 0A0DA0 800A3DA0 7FE3FB78 */  mr        r3, r31
/* 0A0DA4 800A3DA4 4BFFA4CD */  bl        OSRestoreInterrupts
/* 0A0DA8 800A3DA8 38600001 */  li        r3, 0x1
/* 0A0DAC 800A3DAC 4800001C */  b         lbl_800A3DC8
lbl_800A3DB0:
/* 0A0DB0 800A3DB0 38630004 */  addi      r3, r3, 0x4
/* 0A0DB4 800A3DB4 38840001 */  addi      r4, r4, 0x1
/* 0A0DB8 800A3DB8 4200FF6C */  bdnz      lbl_800A3D24
/* 0A0DBC 800A3DBC 7FE3FB78 */  mr        r3, r31
/* 0A0DC0 800A3DC0 4BFFA4B1 */  bl        OSRestoreInterrupts
/* 0A0DC4 800A3DC4 38600000 */  li        r3, 0x0
lbl_800A3DC8:
/* 0A0DC8 800A3DC8 8001001C */  lwz       r0, 0x1c(r1)
/* 0A0DCC 800A3DCC 83E10014 */  lwz       r31, 0x14(r1)
/* 0A0DD0 800A3DD0 83C10010 */  lwz       r30, 0x10(r1)
/* 0A0DD4 800A3DD4 38210018 */  addi      r1, r1, 0x18
/* 0A0DD8 800A3DD8 7C0803A6 */  mtlr      r0
/* 0A0DDC 800A3DDC 4E800020 */  blr

glabel SIInit
/* 0A0DE0 800A3DE0 7C0802A6 */  mflr      r0
/* 0A0DE4 800A3DE4 3C808018 */  lis       r4, Packet@ha
/* 0A0DE8 800A3DE8 90010004 */  stw       r0, 0x4(r1)
/* 0A0DEC 800A3DEC 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0A0DF0 800A3DF0 93E1000C */  stw       r31, 0xc(r1)
/* 0A0DF4 800A3DF4 3BE47E50 */  addi      r31, r4, Packet@l
/* 0A0DF8 800A3DF8 806D8758 */  lwz       r3, __SIVersion@sda21(r0)
/* 0A0DFC 800A3DFC 4BFF7E89 */  bl        OSRegisterVersion
/* 0A0E00 800A3E00 38A0FFFF */  li        r5, -0x1
/* 0A0E04 800A3E04 90BF0060 */  stw       r5, 0x60(r31)
/* 0A0E08 800A3E08 3C60800F */  lis       r3, Si@ha
/* 0A0E0C 800A3E0C 388329E4 */  addi      r4, r3, Si@l
/* 0A0E10 800A3E10 90BF0040 */  stw       r5, 0x40(r31)
/* 0A0E14 800A3E14 38000000 */  li        r0, 0x0
/* 0A0E18 800A3E18 38600000 */  li        r3, 0x0
/* 0A0E1C 800A3E1C 90BF0020 */  stw       r5, 0x20(r31)
/* 0A0E20 800A3E20 90BF0000 */  stw       r5, 0x0(r31)
/* 0A0E24 800A3E24 90040004 */  stw       r0, 0x4(r4)
/* 0A0E28 800A3E28 48000DB5 */  bl        SISetSamplingRate
/* 0A0E2C 800A3E2C 3C60CC00 */  lis       r3, 0xcc00
lbl_800A3E30:
/* 0A0E30 800A3E30 38836400 */  addi      r4, r3, 0x6400
/* 0A0E34 800A3E34 84040034 */  lwzu      r0, 0x34(r4)
/* 0A0E38 800A3E38 540007FF */  clrlwi.   r0, r0, 31
/* 0A0E3C 800A3E3C 4082FFF4 */  bne       lbl_800A3E30
/* 0A0E40 800A3E40 3C008000 */  lis       r0, 0x8000
/* 0A0E44 800A3E44 3C60800A */  lis       r3, SIInterruptHandler@ha
/* 0A0E48 800A3E48 90040000 */  stw       r0, 0x0(r4)
/* 0A0E4C 800A3E4C 38833844 */  addi      r4, r3, SIInterruptHandler@l
/* 0A0E50 800A3E50 38600014 */  li        r3, 0x14
/* 0A0E54 800A3E54 4BFFA441 */  bl        __OSSetInterruptHandler
/* 0A0E58 800A3E58 38600800 */  li        r3, 0x800
/* 0A0E5C 800A3E5C 4BFFA83D */  bl        __OSUnmaskInterrupts
/* 0A0E60 800A3E60 38600000 */  li        r3, 0x0
/* 0A0E64 800A3E64 48000A79 */  bl        SIGetType
/* 0A0E68 800A3E68 38600001 */  li        r3, 0x1
/* 0A0E6C 800A3E6C 48000A71 */  bl        SIGetType
/* 0A0E70 800A3E70 38600002 */  li        r3, 0x2
/* 0A0E74 800A3E74 48000A69 */  bl        SIGetType
/* 0A0E78 800A3E78 38600003 */  li        r3, 0x3
/* 0A0E7C 800A3E7C 48000A61 */  bl        SIGetType
/* 0A0E80 800A3E80 80010014 */  lwz       r0, 0x14(r1)
/* 0A0E84 800A3E84 83E1000C */  lwz       r31, 0xc(r1)
/* 0A0E88 800A3E88 38210010 */  addi      r1, r1, 0x10
/* 0A0E8C 800A3E8C 7C0803A6 */  mtlr      r0
/* 0A0E90 800A3E90 4E800020 */  blr

glabel __SITransfer
/* 0A0E94 800A3E94 7C0802A6 */  mflr      r0
/* 0A0E98 800A3E98 3D20800F */  lis       r9, D_800F29A0@ha
/* 0A0E9C 800A3E9C 90010004 */  stw       r0, 0x4(r1)
/* 0A0EA0 800A3EA0 9421FFB8 */  stwu      r1, -0x48(r1)
/* 0A0EA4 800A3EA4 BF21002C */  stmw      r25, 0x2c(r1)
/* 0A0EA8 800A3EA8 3B430000 */  addi      r26, r3, 0x0
/* 0A0EAC 800A3EAC 3B640000 */  addi      r27, r4, 0x0
/* 0A0EB0 800A3EB0 3B850000 */  addi      r28, r5, 0x0
/* 0A0EB4 800A3EB4 3BA60000 */  addi      r29, r6, 0x0
/* 0A0EB8 800A3EB8 3BC70000 */  addi      r30, r7, 0x0
/* 0A0EBC 800A3EBC 3BE80000 */  addi      r31, r8, 0x0
/* 0A0EC0 800A3EC0 3B2929A0 */  addi      r25, r9, D_800F29A0@l
/* 0A0EC4 800A3EC4 4BFFA385 */  bl        OSDisableInterrupts
/* 0A0EC8 800A3EC8 80190044 */  lwz       r0, 0x44(r25)
/* 0A0ECC 800A3ECC 2C00FFFF */  cmpwi     r0, -0x1
/* 0A0ED0 800A3ED0 41820010 */  beq       lbl_800A3EE0
/* 0A0ED4 800A3ED4 4BFFA39D */  bl        OSRestoreInterrupts
/* 0A0ED8 800A3ED8 38600000 */  li        r3, 0x0
/* 0A0EDC 800A3EDC 480001B0 */  b         lbl_800A408C
lbl_800A3EE0:
/* 0A0EE0 800A3EE0 3CC0CC00 */  lis       r6, 0xcc00
/* 0A0EE4 800A3EE4 57401838 */  slwi      r0, r26, 3
/* 0A0EE8 800A3EE8 80E66438 */  lwz       r7, 0x6438(r6)
/* 0A0EEC 800A3EEC 3C800F00 */  lis       r4, 0xf00
/* 0A0EF0 800A3EF0 7C800630 */  sraw      r0, r4, r0
/* 0A0EF4 800A3EF4 7CE70038 */  and       r7, r7, r0
/* 0A0EF8 800A3EF8 90E66438 */  stw       r7, 0x6438(r6)
/* 0A0EFC 800A3EFC 381C0003 */  addi      r0, r28, 0x3
/* 0A0F00 800A3F00 5404F0BE */  srwi      r4, r0, 2
/* 0A0F04 800A3F04 93590044 */  stw       r26, 0x44(r25)
/* 0A0F08 800A3F08 28040000 */  cmplwi    r4, 0x0
/* 0A0F0C 800A3F0C 38A00000 */  li        r5, 0x0
/* 0A0F10 800A3F10 93F90054 */  stw       r31, 0x54(r25)
/* 0A0F14 800A3F14 93D9004C */  stw       r30, 0x4c(r25)
/* 0A0F18 800A3F18 93B90050 */  stw       r29, 0x50(r25)
/* 0A0F1C 800A3F1C 408100A4 */  ble       lbl_800A3FC0
/* 0A0F20 800A3F20 28040008 */  cmplwi    r4, 0x8
/* 0A0F24 800A3F24 38E4FFF8 */  subi      r7, r4, 0x8
/* 0A0F28 800A3F28 4081014C */  ble       lbl_800A4074
/* 0A0F2C 800A3F2C 38070007 */  addi      r0, r7, 0x7
/* 0A0F30 800A3F30 5400E8FE */  srwi      r0, r0, 3
/* 0A0F34 800A3F34 28070000 */  cmplwi    r7, 0x0
/* 0A0F38 800A3F38 7C0903A6 */  mtctr     r0
/* 0A0F3C 800A3F3C 38FB0000 */  addi      r7, r27, 0x0
/* 0A0F40 800A3F40 38C66400 */  addi      r6, r6, 0x6400
/* 0A0F44 800A3F44 40810130 */  ble       lbl_800A4074
lbl_800A3F48:
/* 0A0F48 800A3F48 80070000 */  lwz       r0, 0x0(r7)
/* 0A0F4C 800A3F4C 38A50008 */  addi      r5, r5, 0x8
/* 0A0F50 800A3F50 90060080 */  stw       r0, 0x80(r6)
/* 0A0F54 800A3F54 80070004 */  lwz       r0, 0x4(r7)
/* 0A0F58 800A3F58 90060084 */  stw       r0, 0x84(r6)
/* 0A0F5C 800A3F5C 80070008 */  lwz       r0, 0x8(r7)
/* 0A0F60 800A3F60 90060088 */  stw       r0, 0x88(r6)
/* 0A0F64 800A3F64 8007000C */  lwz       r0, 0xc(r7)
/* 0A0F68 800A3F68 9006008C */  stw       r0, 0x8c(r6)
/* 0A0F6C 800A3F6C 80070010 */  lwz       r0, 0x10(r7)
/* 0A0F70 800A3F70 90060090 */  stw       r0, 0x90(r6)
/* 0A0F74 800A3F74 80070014 */  lwz       r0, 0x14(r7)
/* 0A0F78 800A3F78 90060094 */  stw       r0, 0x94(r6)
/* 0A0F7C 800A3F7C 80070018 */  lwz       r0, 0x18(r7)
/* 0A0F80 800A3F80 90060098 */  stw       r0, 0x98(r6)
/* 0A0F84 800A3F84 8007001C */  lwz       r0, 0x1c(r7)
/* 0A0F88 800A3F88 38E70020 */  addi      r7, r7, 0x20
/* 0A0F8C 800A3F8C 9006009C */  stw       r0, 0x9c(r6)
/* 0A0F90 800A3F90 38C60020 */  addi      r6, r6, 0x20
/* 0A0F94 800A3F94 4200FFB4 */  bdnz      lbl_800A3F48
/* 0A0F98 800A3F98 480000DC */  b         lbl_800A4074
lbl_800A3F9C:
/* 0A0F9C 800A3F9C 7C052050 */  subf      r0, r5, r4
/* 0A0FA0 800A3FA0 7C052040 */  cmplw     r5, r4
/* 0A0FA4 800A3FA4 7C0903A6 */  mtctr     r0
/* 0A0FA8 800A3FA8 40800018 */  bge       lbl_800A3FC0
lbl_800A3FAC:
/* 0A0FAC 800A3FAC 80060000 */  lwz       r0, 0x0(r6)
/* 0A0FB0 800A3FB0 38C60004 */  addi      r6, r6, 0x4
/* 0A0FB4 800A3FB4 90070080 */  stw       r0, 0x80(r7)
/* 0A0FB8 800A3FB8 38E70004 */  addi      r7, r7, 0x4
/* 0A0FBC 800A3FBC 4200FFF0 */  bdnz      lbl_800A3FAC
lbl_800A3FC0:
/* 0A0FC0 800A3FC0 3C80CC00 */  lis       r4, 0xcc00
/* 0A0FC4 800A3FC4 38C46400 */  addi      r6, r4, 0x6400
/* 0A0FC8 800A3FC8 84060034 */  lwzu      r0, 0x34(r6)
/* 0A0FCC 800A3FCC 38800001 */  li        r4, 0x1
/* 0A0FD0 800A3FD0 90010024 */  stw       r0, 0x24(r1)
/* 0A0FD4 800A3FD4 281F0000 */  cmplwi    r31, 0x0
/* 0A0FD8 800A3FD8 88010024 */  lbz       r0, 0x24(r1)
/* 0A0FDC 800A3FDC 50803E30 */  rlwimi    r0, r4, 7, 24, 24
/* 0A0FE0 800A3FE0 98010024 */  stb       r0, 0x24(r1)
/* 0A0FE4 800A3FE4 41820008 */  beq       lbl_800A3FEC
/* 0A0FE8 800A3FE8 48000008 */  b         lbl_800A3FF0
lbl_800A3FEC:
/* 0A0FEC 800A3FEC 38800000 */  li        r4, 0x0
lbl_800A3FF0:
/* 0A0FF0 800A3FF0 88010024 */  lbz       r0, 0x24(r1)
/* 0A0FF4 800A3FF4 50803672 */  rlwimi    r0, r4, 6, 25, 25
/* 0A0FF8 800A3FF8 281C0080 */  cmplwi    r28, 0x80
/* 0A0FFC 800A3FFC 98010024 */  stb       r0, 0x24(r1)
/* 0A1000 800A4000 4082000C */  bne       lbl_800A400C
/* 0A1004 800A4004 38000000 */  li        r0, 0x0
/* 0A1008 800A4008 48000008 */  b         lbl_800A4010
lbl_800A400C:
/* 0A100C 800A400C 7F80E378 */  mr        r0, r28
lbl_800A4010:
/* 0A1010 800A4010 5404063E */  clrlwi    r4, r0, 24
/* 0A1014 800A4014 88010025 */  lbz       r0, 0x25(r1)
/* 0A1018 800A4018 5080067E */  rlwimi    r0, r4, 0, 25, 31
/* 0A101C 800A401C 281E0080 */  cmplwi    r30, 0x80
/* 0A1020 800A4020 98010025 */  stb       r0, 0x25(r1)
/* 0A1024 800A4024 4082000C */  bne       lbl_800A4030
/* 0A1028 800A4028 38000000 */  li        r0, 0x0
/* 0A102C 800A402C 48000008 */  b         lbl_800A4034
lbl_800A4030:
/* 0A1030 800A4030 7FC0F378 */  mr        r0, r30
lbl_800A4034:
/* 0A1034 800A4034 5404063E */  clrlwi    r4, r0, 24
/* 0A1038 800A4038 88010026 */  lbz       r0, 0x26(r1)
/* 0A103C 800A403C 5080067E */  rlwimi    r0, r4, 0, 25, 31
/* 0A1040 800A4040 98010026 */  stb       r0, 0x26(r1)
/* 0A1044 800A4044 38800001 */  li        r4, 0x1
/* 0A1048 800A4048 88010027 */  lbz       r0, 0x27(r1)
/* 0A104C 800A404C 53400F7C */  rlwimi    r0, r26, 1, 29, 30
/* 0A1050 800A4050 98010027 */  stb       r0, 0x27(r1)
/* 0A1054 800A4054 88010027 */  lbz       r0, 0x27(r1)
/* 0A1058 800A4058 508007FE */  rlwimi    r0, r4, 0, 31, 31
/* 0A105C 800A405C 98010027 */  stb       r0, 0x27(r1)
/* 0A1060 800A4060 80010024 */  lwz       r0, 0x24(r1)
/* 0A1064 800A4064 90060000 */  stw       r0, 0x0(r6)
/* 0A1068 800A4068 4BFFA209 */  bl        OSRestoreInterrupts
/* 0A106C 800A406C 38600001 */  li        r3, 0x1
/* 0A1070 800A4070 4800001C */  b         lbl_800A408C
lbl_800A4074:
/* 0A1074 800A4074 3CC0CC00 */  lis       r6, 0xcc00
/* 0A1078 800A4078 54A0103A */  slwi      r0, r5, 2
/* 0A107C 800A407C 38E66400 */  addi      r7, r6, 0x6400
/* 0A1080 800A4080 7CDB0214 */  add       r6, r27, r0
/* 0A1084 800A4084 7CE70214 */  add       r7, r7, r0
/* 0A1088 800A4088 4BFFFF14 */  b         lbl_800A3F9C
lbl_800A408C:
/* 0A108C 800A408C BB21002C */  lmw       r25, 0x2c(r1)
/* 0A1090 800A4090 8001004C */  lwz       r0, 0x4c(r1)
/* 0A1094 800A4094 38210048 */  addi      r1, r1, 0x48
/* 0A1098 800A4098 7C0803A6 */  mtlr      r0
/* 0A109C 800A409C 4E800020 */  blr

glabel SIGetStatus
/* 0A10A0 800A40A0 7C0802A6 */  mflr      r0
/* 0A10A4 800A40A4 90010004 */  stw       r0, 0x4(r1)
/* 0A10A8 800A40A8 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A10AC 800A40AC 93E10014 */  stw       r31, 0x14(r1)
/* 0A10B0 800A40B0 93C10010 */  stw       r30, 0x10(r1)
/* 0A10B4 800A40B4 7C7E1B78 */  mr        r30, r3
/* 0A10B8 800A40B8 4BFFA191 */  bl        OSDisableInterrupts
/* 0A10BC 800A40BC 3C80CC00 */  lis       r4, 0xcc00
/* 0A10C0 800A40C0 201E0003 */  subfic    r0, r30, 0x3
/* 0A10C4 800A40C4 83E46438 */  lwz       r31, 0x6438(r4)
/* 0A10C8 800A40C8 54001838 */  slwi      r0, r0, 3
/* 0A10CC 800A40CC 7FFF0430 */  srw       r31, r31, r0
/* 0A10D0 800A40D0 57E00739 */  rlwinm.   r0, r31, 0, 28, 28
/* 0A10D4 800A40D4 41820028 */  beq       lbl_800A40FC
/* 0A10D8 800A40D8 3C80800F */  lis       r4, Type@ha
/* 0A10DC 800A40DC 57C5103A */  slwi      r5, r30, 2
/* 0A10E0 800A40E0 380429F8 */  addi      r0, r4, Type@l
/* 0A10E4 800A40E4 7C802A14 */  add       r4, r0, r5
/* 0A10E8 800A40E8 80040000 */  lwz       r0, 0x0(r4)
/* 0A10EC 800A40EC 54000631 */  rlwinm.   r0, r0, 0, 24, 24
/* 0A10F0 800A40F0 4082000C */  bne       lbl_800A40FC
/* 0A10F4 800A40F4 38000008 */  li        r0, 0x8
/* 0A10F8 800A40F8 90040000 */  stw       r0, 0x0(r4)
lbl_800A40FC:
/* 0A10FC 800A40FC 4BFFA175 */  bl        OSRestoreInterrupts
/* 0A1100 800A4100 7FE3FB78 */  mr        r3, r31
/* 0A1104 800A4104 8001001C */  lwz       r0, 0x1c(r1)
/* 0A1108 800A4108 83E10014 */  lwz       r31, 0x14(r1)
/* 0A110C 800A410C 83C10010 */  lwz       r30, 0x10(r1)
/* 0A1110 800A4110 38210018 */  addi      r1, r1, 0x18
/* 0A1114 800A4114 7C0803A6 */  mtlr      r0
/* 0A1118 800A4118 4E800020 */  blr

glabel SISetCommand
/* 0A111C 800A411C 1C03000C */  mulli     r0, r3, 0xc
/* 0A1120 800A4120 3C60CC00 */  lis       r3, 0xcc00
/* 0A1124 800A4124 38636400 */  addi      r3, r3, 0x6400
/* 0A1128 800A4128 7C83012E */  stwx      r4, r3, r0
/* 0A112C 800A412C 4E800020 */  blr

glabel SITransferCommands
/* 0A1130 800A4130 3C60CC00 */  lis       r3, 0xcc00
/* 0A1134 800A4134 3C008000 */  lis       r0, 0x8000
/* 0A1138 800A4138 90036438 */  stw       r0, 0x6438(r3)
/* 0A113C 800A413C 4E800020 */  blr

glabel SISetXY
/* 0A1140 800A4140 7C0802A6 */  mflr      r0
/* 0A1144 800A4144 90010004 */  stw       r0, 0x4(r1)
/* 0A1148 800A4148 5480402E */  slwi      r0, r4, 8
/* 0A114C 800A414C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A1150 800A4150 93E10014 */  stw       r31, 0x14(r1)
/* 0A1154 800A4154 547F801E */  slwi      r31, r3, 16
/* 0A1158 800A4158 7FFF0378 */  or        r31, r31, r0
/* 0A115C 800A415C 4BFFA0ED */  bl        OSDisableInterrupts
/* 0A1160 800A4160 3C80800F */  lis       r4, Si@ha
/* 0A1164 800A4164 388429E4 */  addi      r4, r4, Si@l
/* 0A1168 800A4168 80040004 */  lwz       r0, 0x4(r4)
/* 0A116C 800A416C 38A40004 */  addi      r5, r4, 0x4
/* 0A1170 800A4170 3C80CC00 */  lis       r4, 0xcc00
/* 0A1174 800A4174 5400060A */  rlwinm    r0, r0, 0, 24, 5
/* 0A1178 800A4178 90050000 */  stw       r0, 0x0(r5)
/* 0A117C 800A417C 80050000 */  lwz       r0, 0x0(r5)
/* 0A1180 800A4180 7C00FB78 */  or        r0, r0, r31
/* 0A1184 800A4184 90050000 */  stw       r0, 0x0(r5)
/* 0A1188 800A4188 83E50000 */  lwz       r31, 0x0(r5)
/* 0A118C 800A418C 93E46430 */  stw       r31, 0x6430(r4)
/* 0A1190 800A4190 4BFFA0E1 */  bl        OSRestoreInterrupts
/* 0A1194 800A4194 7FE3FB78 */  mr        r3, r31
/* 0A1198 800A4198 8001001C */  lwz       r0, 0x1c(r1)
/* 0A119C 800A419C 83E10014 */  lwz       r31, 0x14(r1)
/* 0A11A0 800A41A0 38210018 */  addi      r1, r1, 0x18
/* 0A11A4 800A41A4 7C0803A6 */  mtlr      r0
/* 0A11A8 800A41A8 4E800020 */  blr

glabel SIEnablePolling
/* 0A11AC 800A41AC 7C0802A6 */  mflr      r0
/* 0A11B0 800A41B0 90010004 */  stw       r0, 0x4(r1)
/* 0A11B4 800A41B4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A11B8 800A41B8 93E10014 */  stw       r31, 0x14(r1)
/* 0A11BC 800A41BC 7C7F1B79 */  mr.       r31, r3
/* 0A11C0 800A41C0 40820014 */  bne       lbl_800A41D4
/* 0A11C4 800A41C4 3C60800F */  lis       r3, Si@ha
/* 0A11C8 800A41C8 386329E4 */  addi      r3, r3, Si@l
/* 0A11CC 800A41CC 80630004 */  lwz       r3, 0x4(r3)
/* 0A11D0 800A41D0 48000064 */  b         lbl_800A4234
lbl_800A41D4:
/* 0A11D4 800A41D4 4BFFA075 */  bl        OSDisableInterrupts
/* 0A11D8 800A41D8 3C80800F */  lis       r4, Si@ha
/* 0A11DC 800A41DC 388429E4 */  addi      r4, r4, Si@l
/* 0A11E0 800A41E0 57FF463E */  srwi      r31, r31, 24
/* 0A11E4 800A41E4 80040004 */  lwz       r0, 0x4(r4)
/* 0A11E8 800A41E8 38A40004 */  addi      r5, r4, 0x4
/* 0A11EC 800A41EC 57E4E73E */  extrwi    r4, r31, 4, 24
/* 0A11F0 800A41F0 7C002078 */  andc      r0, r0, r4
/* 0A11F4 800A41F4 90050000 */  stw       r0, 0x0(r5)
/* 0A11F8 800A41F8 648003FF */  oris      r0, r4, 0x3ff
/* 0A11FC 800A41FC 6000FFF0 */  ori       r0, r0, 0xfff0
/* 0A1200 800A4200 7FFF0038 */  and       r31, r31, r0
/* 0A1204 800A4204 80050000 */  lwz       r0, 0x0(r5)
/* 0A1208 800A4208 57FF060A */  rlwinm    r31, r31, 0, 24, 5
/* 0A120C 800A420C 7C00FB78 */  or        r0, r0, r31
/* 0A1210 800A4210 90050000 */  stw       r0, 0x0(r5)
/* 0A1214 800A4214 3C80CC00 */  lis       r4, 0xcc00
/* 0A1218 800A4218 38846400 */  addi      r4, r4, 0x6400
/* 0A121C 800A421C 83E50000 */  lwz       r31, 0x0(r5)
/* 0A1220 800A4220 3C008000 */  lis       r0, 0x8000
/* 0A1224 800A4224 90040038 */  stw       r0, 0x38(r4)
/* 0A1228 800A4228 93E40030 */  stw       r31, 0x30(r4)
/* 0A122C 800A422C 4BFFA045 */  bl        OSRestoreInterrupts
/* 0A1230 800A4230 7FE3FB78 */  mr        r3, r31
lbl_800A4234:
/* 0A1234 800A4234 8001001C */  lwz       r0, 0x1c(r1)
/* 0A1238 800A4238 83E10014 */  lwz       r31, 0x14(r1)
/* 0A123C 800A423C 38210018 */  addi      r1, r1, 0x18
/* 0A1240 800A4240 7C0803A6 */  mtlr      r0
/* 0A1244 800A4244 4E800020 */  blr

glabel SIDisablePolling
/* 0A1248 800A4248 7C0802A6 */  mflr      r0
/* 0A124C 800A424C 90010004 */  stw       r0, 0x4(r1)
/* 0A1250 800A4250 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A1254 800A4254 93E10014 */  stw       r31, 0x14(r1)
/* 0A1258 800A4258 7C7F1B79 */  mr.       r31, r3
/* 0A125C 800A425C 40820014 */  bne       lbl_800A4270
/* 0A1260 800A4260 3C60800F */  lis       r3, Si@ha
/* 0A1264 800A4264 386329E4 */  addi      r3, r3, Si@l
/* 0A1268 800A4268 80630004 */  lwz       r3, 0x4(r3)
/* 0A126C 800A426C 48000034 */  b         lbl_800A42A0
lbl_800A4270:
/* 0A1270 800A4270 4BFF9FD9 */  bl        OSDisableInterrupts
/* 0A1274 800A4274 3C80800F */  lis       r4, Si@ha
/* 0A1278 800A4278 388429E4 */  addi      r4, r4, Si@l
/* 0A127C 800A427C 80040004 */  lwz       r0, 0x4(r4)
/* 0A1280 800A4280 57FF4636 */  rlwinm    r31, r31, 8, 24, 27
/* 0A1284 800A4284 38A40004 */  addi      r5, r4, 0x4
/* 0A1288 800A4288 3C80CC00 */  lis       r4, 0xcc00
/* 0A128C 800A428C 7C1FF878 */  andc      r31, r0, r31
/* 0A1290 800A4290 93E46430 */  stw       r31, 0x6430(r4)
/* 0A1294 800A4294 93E50000 */  stw       r31, 0x0(r5)
/* 0A1298 800A4298 4BFF9FD9 */  bl        OSRestoreInterrupts
/* 0A129C 800A429C 7FE3FB78 */  mr        r3, r31
lbl_800A42A0:
/* 0A12A0 800A42A0 8001001C */  lwz       r0, 0x1c(r1)
/* 0A12A4 800A42A4 83E10014 */  lwz       r31, 0x14(r1)
/* 0A12A8 800A42A8 38210018 */  addi      r1, r1, 0x18
/* 0A12AC 800A42AC 7C0803A6 */  mtlr      r0
/* 0A12B0 800A42B0 4E800020 */  blr

glabel SIGetResponseRaw
/* 0A12B4 800A42B4 7C0802A6 */  mflr      r0
/* 0A12B8 800A42B8 3C808018 */  lis       r4, Packet@ha
/* 0A12BC 800A42BC 90010004 */  stw       r0, 0x4(r1)
/* 0A12C0 800A42C0 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0A12C4 800A42C4 93E10024 */  stw       r31, 0x24(r1)
/* 0A12C8 800A42C8 3BE47E50 */  addi      r31, r4, Packet@l
/* 0A12CC 800A42CC 93C10020 */  stw       r30, 0x20(r1)
/* 0A12D0 800A42D0 3BC30000 */  addi      r30, r3, 0x0
/* 0A12D4 800A42D4 93A1001C */  stw       r29, 0x1c(r1)
/* 0A12D8 800A42D8 4BFF9F71 */  bl        OSDisableInterrupts
/* 0A12DC 800A42DC 3C80CC00 */  lis       r4, 0xcc00
/* 0A12E0 800A42E0 201E0003 */  subfic    r0, r30, 0x3
/* 0A12E4 800A42E4 83A46438 */  lwz       r29, 0x6438(r4)
/* 0A12E8 800A42E8 54001838 */  slwi      r0, r0, 3
/* 0A12EC 800A42EC 7FBD0430 */  srw       r29, r29, r0
/* 0A12F0 800A42F0 57A00739 */  rlwinm.   r0, r29, 0, 28, 28
/* 0A12F4 800A42F4 41820028 */  beq       lbl_800A431C
/* 0A12F8 800A42F8 3C80800F */  lis       r4, Type@ha
/* 0A12FC 800A42FC 57C5103A */  slwi      r5, r30, 2
/* 0A1300 800A4300 380429F8 */  addi      r0, r4, Type@l
/* 0A1304 800A4304 7C802A14 */  add       r4, r0, r5
/* 0A1308 800A4308 80040000 */  lwz       r0, 0x0(r4)
/* 0A130C 800A430C 54000631 */  rlwinm.   r0, r0, 0, 24, 24
/* 0A1310 800A4310 4082000C */  bne       lbl_800A431C
/* 0A1314 800A4314 38000008 */  li        r0, 0x8
/* 0A1318 800A4318 90040000 */  stw       r0, 0x0(r4)
lbl_800A431C:
/* 0A131C 800A431C 4BFF9F55 */  bl        OSRestoreInterrupts
/* 0A1320 800A4320 57A006B5 */  rlwinm.   r0, r29, 0, 26, 26
/* 0A1324 800A4324 41820044 */  beq       lbl_800A4368
/* 0A1328 800A4328 1C9E000C */  mulli     r4, r30, 0xc
/* 0A132C 800A432C 3C60CC00 */  lis       r3, 0xcc00
/* 0A1330 800A4330 38036400 */  addi      r0, r3, 0x6400
/* 0A1334 800A4334 7C602214 */  add       r3, r0, r4
/* 0A1338 800A4338 57C41838 */  slwi      r4, r30, 3
/* 0A133C 800A433C 80030004 */  lwz       r0, 0x4(r3)
/* 0A1340 800A4340 7CDF2214 */  add       r6, r31, r4
/* 0A1344 800A4344 900601C0 */  stw       r0, 0x1c0(r6)
/* 0A1348 800A4348 57C0103A */  slwi      r0, r30, 2
/* 0A134C 800A434C 7C9F0214 */  add       r4, r31, r0
/* 0A1350 800A4350 80A30008 */  lwz       r5, 0x8(r3)
/* 0A1354 800A4354 38000001 */  li        r0, 0x1
/* 0A1358 800A4358 38600001 */  li        r3, 0x1
/* 0A135C 800A435C 90A601C4 */  stw       r5, 0x1c4(r6)
/* 0A1360 800A4360 900401B0 */  stw       r0, 0x1b0(r4)
/* 0A1364 800A4364 48000008 */  b         lbl_800A436C
lbl_800A4368:
/* 0A1368 800A4368 38600000 */  li        r3, 0x0
lbl_800A436C:
/* 0A136C 800A436C 8001002C */  lwz       r0, 0x2c(r1)
/* 0A1370 800A4370 83E10024 */  lwz       r31, 0x24(r1)
/* 0A1374 800A4374 83C10020 */  lwz       r30, 0x20(r1)
/* 0A1378 800A4378 83A1001C */  lwz       r29, 0x1c(r1)
/* 0A137C 800A437C 38210028 */  addi      r1, r1, 0x28
/* 0A1380 800A4380 7C0803A6 */  mtlr      r0
/* 0A1384 800A4384 4E800020 */  blr

glabel SIGetResponse
/* 0A1388 800A4388 7C0802A6 */  mflr      r0
/* 0A138C 800A438C 3CA08018 */  lis       r5, Packet@ha
/* 0A1390 800A4390 90010004 */  stw       r0, 0x4(r1)
/* 0A1394 800A4394 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0A1398 800A4398 BF610014 */  stmw      r27, 0x14(r1)
/* 0A139C 800A439C 3BA30000 */  addi      r29, r3, 0x0
/* 0A13A0 800A43A0 3BC40000 */  addi      r30, r4, 0x0
/* 0A13A4 800A43A4 3B857E50 */  addi      r28, r5, Packet@l
/* 0A13A8 800A43A8 4BFF9EA1 */  bl        OSDisableInterrupts
/* 0A13AC 800A43AC 3BE30000 */  addi      r31, r3, 0x0
/* 0A13B0 800A43B0 387D0000 */  addi      r3, r29, 0x0
/* 0A13B4 800A43B4 4BFFFCED */  bl        SIGetStatus
/* 0A13B8 800A43B8 546006B5 */  rlwinm.   r0, r3, 0, 26, 26
/* 0A13BC 800A43BC 4182003C */  beq       lbl_800A43F8
/* 0A13C0 800A43C0 1C9D000C */  mulli     r4, r29, 0xc
/* 0A13C4 800A43C4 3C60CC00 */  lis       r3, 0xcc00
/* 0A13C8 800A43C8 38036400 */  addi      r0, r3, 0x6400
/* 0A13CC 800A43CC 7C802214 */  add       r4, r0, r4
/* 0A13D0 800A43D0 57A31838 */  slwi      r3, r29, 3
/* 0A13D4 800A43D4 80040004 */  lwz       r0, 0x4(r4)
/* 0A13D8 800A43D8 7CBC1A14 */  add       r5, r28, r3
/* 0A13DC 800A43DC 900501C0 */  stw       r0, 0x1c0(r5)
/* 0A13E0 800A43E0 57A0103A */  slwi      r0, r29, 2
/* 0A13E4 800A43E4 7C7C0214 */  add       r3, r28, r0
/* 0A13E8 800A43E8 80840008 */  lwz       r4, 0x8(r4)
/* 0A13EC 800A43EC 38000001 */  li        r0, 0x1
/* 0A13F0 800A43F0 908501C4 */  stw       r4, 0x1c4(r5)
/* 0A13F4 800A43F4 900301B0 */  stw       r0, 0x1b0(r3)
lbl_800A43F8:
/* 0A13F8 800A43F8 57A0103A */  slwi      r0, r29, 2
/* 0A13FC 800A43FC 7C7C0214 */  add       r3, r28, r0
/* 0A1400 800A4400 836301B0 */  lwz       r27, 0x1b0(r3)
/* 0A1404 800A4404 38000000 */  li        r0, 0x0
/* 0A1408 800A4408 2C1B0000 */  cmpwi     r27, 0x0
/* 0A140C 800A440C 900301B0 */  stw       r0, 0x1b0(r3)
/* 0A1410 800A4410 4182001C */  beq       lbl_800A442C
/* 0A1414 800A4414 57A01838 */  slwi      r0, r29, 3
/* 0A1418 800A4418 7C7C0214 */  add       r3, r28, r0
/* 0A141C 800A441C 800301C0 */  lwz       r0, 0x1c0(r3)
/* 0A1420 800A4420 901E0000 */  stw       r0, 0x0(r30)
/* 0A1424 800A4424 800301C4 */  lwz       r0, 0x1c4(r3)
/* 0A1428 800A4428 901E0004 */  stw       r0, 0x4(r30)
lbl_800A442C:
/* 0A142C 800A442C 7FE3FB78 */  mr        r3, r31
/* 0A1430 800A4430 4BFF9E41 */  bl        OSRestoreInterrupts
/* 0A1434 800A4434 7F63DB78 */  mr        r3, r27
/* 0A1438 800A4438 BB610014 */  lmw       r27, 0x14(r1)
/* 0A143C 800A443C 8001002C */  lwz       r0, 0x2c(r1)
/* 0A1440 800A4440 38210028 */  addi      r1, r1, 0x28
/* 0A1444 800A4444 7C0803A6 */  mtlr      r0
/* 0A1448 800A4448 4E800020 */  blr

glabel AlarmHandler
/* 0A144C 800A444C 7C0802A6 */  mflr      r0
/* 0A1450 800A4450 3C808018 */  lis       r4, D_80187ED0@ha
/* 0A1454 800A4454 90010004 */  stw       r0, 0x4(r1)
/* 0A1458 800A4458 38047ED0 */  addi      r0, r4, D_80187ED0@l
/* 0A145C 800A445C 3C806666 */  lis       r4, 0x6666
/* 0A1460 800A4460 7C001850 */  subf      r0, r0, r3
/* 0A1464 800A4464 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0A1468 800A4468 38646667 */  addi      r3, r4, 0x6667
/* 0A146C 800A446C 7C030096 */  mulhw     r0, r3, r0
/* 0A1470 800A4470 93E1001C */  stw       r31, 0x1c(r1)
/* 0A1474 800A4474 7C002670 */  srawi     r0, r0, 4
/* 0A1478 800A4478 54030FFE */  srwi      r3, r0, 31
/* 0A147C 800A447C 7C001A14 */  add       r0, r0, r3
/* 0A1480 800A4480 3C608018 */  lis       r3, Packet@ha
/* 0A1484 800A4484 54042834 */  slwi      r4, r0, 5
/* 0A1488 800A4488 38037E50 */  addi      r0, r3, Packet@l
/* 0A148C 800A448C 7FE02214 */  add       r31, r0, r4
/* 0A1490 800A4490 807F0000 */  lwz       r3, 0x0(r31)
/* 0A1494 800A4494 2C03FFFF */  cmpwi     r3, -0x1
/* 0A1498 800A4498 4182002C */  beq       lbl_800A44C4
/* 0A149C 800A449C 809F0004 */  lwz       r4, 0x4(r31)
/* 0A14A0 800A44A0 80BF0008 */  lwz       r5, 0x8(r31)
/* 0A14A4 800A44A4 80DF000C */  lwz       r6, 0xc(r31)
/* 0A14A8 800A44A8 80FF0010 */  lwz       r7, 0x10(r31)
/* 0A14AC 800A44AC 811F0014 */  lwz       r8, 0x14(r31)
/* 0A14B0 800A44B0 4BFFF9E5 */  bl        __SITransfer
/* 0A14B4 800A44B4 2C030000 */  cmpwi     r3, 0x0
/* 0A14B8 800A44B8 4182000C */  beq       lbl_800A44C4
/* 0A14BC 800A44BC 3800FFFF */  li        r0, -0x1
/* 0A14C0 800A44C0 901F0000 */  stw       r0, 0x0(r31)
lbl_800A44C4:
/* 0A14C4 800A44C4 80010024 */  lwz       r0, 0x24(r1)
/* 0A14C8 800A44C8 83E1001C */  lwz       r31, 0x1c(r1)
/* 0A14CC 800A44CC 38210020 */  addi      r1, r1, 0x20
/* 0A14D0 800A44D0 7C0803A6 */  mtlr      r0
/* 0A14D4 800A44D4 4E800020 */  blr

glabel SITransfer
/* 0A14D8 800A44D8 7C0802A6 */  mflr      r0
/* 0A14DC 800A44DC 90010004 */  stw       r0, 0x4(r1)
/* 0A14E0 800A44E0 9421FFA0 */  stwu      r1, -0x60(r1)
/* 0A14E4 800A44E4 BE61002C */  stmw      r19, 0x2c(r1)
/* 0A14E8 800A44E8 3B030000 */  addi      r24, r3, 0x0
/* 0A14EC 800A44EC 3C608018 */  lis       r3, Packet@ha
/* 0A14F0 800A44F0 3AE37E50 */  addi      r23, r3, Packet@l
/* 0A14F4 800A44F4 57002834 */  slwi      r0, r24, 5
/* 0A14F8 800A44F8 3B240000 */  addi      r25, r4, 0x0
/* 0A14FC 800A44FC 3B450000 */  addi      r26, r5, 0x0
/* 0A1500 800A4500 3B660000 */  addi      r27, r6, 0x0
/* 0A1504 800A4504 3B870000 */  addi      r28, r7, 0x0
/* 0A1508 800A4508 3BA80000 */  addi      r29, r8, 0x0
/* 0A150C 800A450C 3BE90000 */  addi      r31, r9, 0x0
/* 0A1510 800A4510 3BCA0000 */  addi      r30, r10, 0x0
/* 0A1514 800A4514 7ED70214 */  add       r22, r23, r0
/* 0A1518 800A4518 4BFF9D31 */  bl        OSDisableInterrupts
/* 0A151C 800A451C 80160000 */  lwz       r0, 0x0(r22)
/* 0A1520 800A4520 3AA30000 */  addi      r21, r3, 0x0
/* 0A1524 800A4524 2C00FFFF */  cmpwi     r0, -0x1
/* 0A1528 800A4528 40820014 */  bne       lbl_800A453C
/* 0A152C 800A452C 3C60800F */  lis       r3, Si@ha
/* 0A1530 800A4530 800329E4 */  lwz       r0, Si@l(r3)
/* 0A1534 800A4534 7C00C000 */  cmpw      r0, r24
/* 0A1538 800A4538 40820014 */  bne       lbl_800A454C
lbl_800A453C:
/* 0A153C 800A453C 7EA3AB78 */  mr        r3, r21
/* 0A1540 800A4540 4BFF9D31 */  bl        OSRestoreInterrupts
/* 0A1544 800A4544 38600000 */  li        r3, 0x0
/* 0A1548 800A4548 480000E8 */  b         lbl_800A4630
lbl_800A454C:
/* 0A154C 800A454C 4BFFCFB5 */  bl        __OSGetSystemTime
/* 0A1550 800A4550 38000000 */  li        r0, 0x0
/* 0A1554 800A4554 7FC50278 */  xor       r5, r30, r0
/* 0A1558 800A4558 7FE00278 */  xor       r0, r31, r0
/* 0A155C 800A455C 7CA00379 */  or.       r0, r5, r0
/* 0A1560 800A4560 40820010 */  bne       lbl_800A4570
/* 0A1564 800A4564 3A640000 */  addi      r19, r4, 0x0
/* 0A1568 800A4568 3A830000 */  addi      r20, r3, 0x0
/* 0A156C 800A456C 4800001C */  b         lbl_800A4588
lbl_800A4570:
/* 0A1570 800A4570 57001838 */  slwi      r0, r24, 3
/* 0A1574 800A4574 7CD70214 */  add       r6, r23, r0
/* 0A1578 800A4578 80A60144 */  lwz       r5, 0x144(r6)
/* 0A157C 800A457C 80060140 */  lwz       r0, 0x140(r6)
/* 0A1580 800A4580 7E7E2814 */  addc      r19, r30, r5
/* 0A1584 800A4584 7E9F0114 */  adde      r20, r31, r0
lbl_800A4588:
/* 0A1588 800A4588 6C668000 */  xoris     r6, r3, 0x8000
/* 0A158C 800A458C 6E858000 */  xoris     r5, r20, 0x8000
/* 0A1590 800A4590 7C132010 */  subfc     r0, r19, r4
/* 0A1594 800A4594 7CA53110 */  subfe     r5, r5, r6
/* 0A1598 800A4598 7CA63110 */  subfe     r5, r6, r6
/* 0A159C 800A459C 7CA500D1 */  neg.      r5, r5
/* 0A15A0 800A45A0 41820030 */  beq       lbl_800A45D0
/* 0A15A4 800A45A4 1C180028 */  mulli     r0, r24, 0x28
/* 0A15A8 800A45A8 7FC49810 */  subfc     r30, r4, r19
/* 0A15AC 800A45AC 7FE3A110 */  subfe     r31, r3, r20
/* 0A15B0 800A45B0 3C80800A */  lis       r4, AlarmHandler@ha
/* 0A15B4 800A45B4 7C770214 */  add       r3, r23, r0
/* 0A15B8 800A45B8 38E4444C */  addi      r7, r4, AlarmHandler@l
/* 0A15BC 800A45BC 38DE0000 */  addi      r6, r30, 0x0
/* 0A15C0 800A45C0 38BF0000 */  addi      r5, r31, 0x0
/* 0A15C4 800A45C4 38630080 */  addi      r3, r3, 0x80
/* 0A15C8 800A45C8 4BFF7995 */  bl        OSSetAlarm
/* 0A15CC 800A45CC 48000038 */  b         lbl_800A4604
lbl_800A45D0:
/* 0A15D0 800A45D0 38780000 */  addi      r3, r24, 0x0
/* 0A15D4 800A45D4 38990000 */  addi      r4, r25, 0x0
/* 0A15D8 800A45D8 38BA0000 */  addi      r5, r26, 0x0
/* 0A15DC 800A45DC 38DB0000 */  addi      r6, r27, 0x0
/* 0A15E0 800A45E0 38FC0000 */  addi      r7, r28, 0x0
/* 0A15E4 800A45E4 391D0000 */  addi      r8, r29, 0x0
/* 0A15E8 800A45E8 4BFFF8AD */  bl        __SITransfer
/* 0A15EC 800A45EC 2C030000 */  cmpwi     r3, 0x0
/* 0A15F0 800A45F0 41820014 */  beq       lbl_800A4604
/* 0A15F4 800A45F4 7EA3AB78 */  mr        r3, r21
/* 0A15F8 800A45F8 4BFF9C79 */  bl        OSRestoreInterrupts
/* 0A15FC 800A45FC 38600001 */  li        r3, 0x1
/* 0A1600 800A4600 48000030 */  b         lbl_800A4630
lbl_800A4604:
/* 0A1604 800A4604 93160000 */  stw       r24, 0x0(r22)
/* 0A1608 800A4608 7EA3AB78 */  mr        r3, r21
/* 0A160C 800A460C 93360004 */  stw       r25, 0x4(r22)
/* 0A1610 800A4610 93560008 */  stw       r26, 0x8(r22)
/* 0A1614 800A4614 9376000C */  stw       r27, 0xc(r22)
/* 0A1618 800A4618 93960010 */  stw       r28, 0x10(r22)
/* 0A161C 800A461C 93B60014 */  stw       r29, 0x14(r22)
/* 0A1620 800A4620 9276001C */  stw       r19, 0x1c(r22)
/* 0A1624 800A4624 92960018 */  stw       r20, 0x18(r22)
/* 0A1628 800A4628 4BFF9C49 */  bl        OSRestoreInterrupts
/* 0A162C 800A462C 38600001 */  li        r3, 0x1
lbl_800A4630:
/* 0A1630 800A4630 BA61002C */  lmw       r19, 0x2c(r1)
/* 0A1634 800A4634 80010064 */  lwz       r0, 0x64(r1)
/* 0A1638 800A4638 38210060 */  addi      r1, r1, 0x60
/* 0A163C 800A463C 7C0803A6 */  mtlr      r0
/* 0A1640 800A4640 4E800020 */  blr

GetTypeCallback:
/* 0A1644 800A4644 7C0802A6 */  mflr      r0
/* 0A1648 800A4648 90010004 */  stw       r0, 0x4(r1)
/* 0A164C 800A464C 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0A1650 800A4650 BF410018 */  stmw      r26, 0x18(r1)
/* 0A1654 800A4654 3B630000 */  addi      r27, r3, 0x0
/* 0A1658 800A4658 3C60800F */  lis       r3, Type@ha
/* 0A165C 800A465C 380329F8 */  addi      r0, r3, Type@l
/* 0A1660 800A4660 577D103A */  slwi      r29, r27, 2
/* 0A1664 800A4664 7FC0EA14 */  add       r30, r0, r29
/* 0A1668 800A4668 3C608018 */  lis       r3, Packet@ha
/* 0A166C 800A466C 3B440000 */  addi      r26, r4, 0x0
/* 0A1670 800A4670 3BE37E50 */  addi      r31, r3, Packet@l
/* 0A1674 800A4674 801E0000 */  lwz       r0, 0x0(r30)
/* 0A1678 800A4678 5400066E */  rlwinm    r0, r0, 0, 25, 23
/* 0A167C 800A467C 901E0000 */  stw       r0, 0x0(r30)
/* 0A1680 800A4680 801E0000 */  lwz       r0, 0x0(r30)
/* 0A1684 800A4684 7C00D378 */  or        r0, r0, r26
/* 0A1688 800A4688 901E0000 */  stw       r0, 0x0(r30)
/* 0A168C 800A468C 4BFFCE75 */  bl        __OSGetSystemTime
/* 0A1690 800A4690 57601838 */  slwi      r0, r27, 3
/* 0A1694 800A4694 7CBF0214 */  add       r5, r31, r0
/* 0A1698 800A4698 90850124 */  stw       r4, 0x124(r5)
/* 0A169C 800A469C 3C808000 */  lis       r4, 0x8000
/* 0A16A0 800A46A0 5740073F */  clrlwi.   r0, r26, 28
/* 0A16A4 800A46A4 90650120 */  stw       r3, 0x120(r5)
/* 0A16A8 800A46A8 7C84DC30 */  srw       r4, r4, r27
/* 0A16AC 800A46AC 806D8B88 */  lwz       r3, D_8018BB08@sda21(r0)
/* 0A16B0 800A46B0 839E0000 */  lwz       r28, 0x0(r30)
/* 0A16B4 800A46B4 7C602078 */  andc      r0, r3, r4
/* 0A16B8 800A46B8 900D8B88 */  stw       r0, D_8018BB08@sda21(r0)
/* 0A16BC 800A46BC 7C7A2038 */  and       r26, r3, r4
/* 0A16C0 800A46C0 40820024 */  bne       lbl_800A46E4
/* 0A16C4 800A46C4 578300C8 */  rlwinm    r3, r28, 0, 3, 4
/* 0A16C8 800A46C8 3C03F800 */  subis     r0, r3, 0x800
/* 0A16CC 800A46CC 28000000 */  cmplwi    r0, 0x0
/* 0A16D0 800A46D0 40820014 */  bne       lbl_800A46E4
/* 0A16D4 800A46D4 57800001 */  clrrwi.   r0, r28, 31
/* 0A16D8 800A46D8 4182000C */  beq       lbl_800A46E4
/* 0A16DC 800A46DC 5780014B */  rlwinm.   r0, r28, 0, 5, 5
/* 0A16E0 800A46E0 4182005C */  beq       lbl_800A473C
lbl_800A46E4:
/* 0A16E4 800A46E4 387B0000 */  addi      r3, r27, 0x0
/* 0A16E8 800A46E8 38800000 */  li        r4, 0x0
/* 0A16EC 800A46EC 4BFFBAF5 */  bl        fn_800A01E0
/* 0A16F0 800A46F0 57602036 */  slwi      r0, r27, 4
/* 0A16F4 800A46F4 83DE0000 */  lwz       r30, 0x0(r30)
/* 0A16F8 800A46F8 7FFF0214 */  add       r31, r31, r0
/* 0A16FC 800A46FC 3BA00000 */  li        r29, 0x0
/* 0A1700 800A4700 3B9D0000 */  addi      r28, r29, 0x0
/* 0A1704 800A4704 3BFF0160 */  addi      r31, r31, 0x160
lbl_800A4708:
/* 0A1708 800A4708 819F0000 */  lwz       r12, 0x0(r31)
/* 0A170C 800A470C 280C0000 */  cmplwi    r12, 0x0
/* 0A1710 800A4710 41820018 */  beq       lbl_800A4728
/* 0A1714 800A4714 939F0000 */  stw       r28, 0x0(r31)
/* 0A1718 800A4718 7D8803A6 */  mtlr      r12
/* 0A171C 800A471C 387B0000 */  addi      r3, r27, 0x0
/* 0A1720 800A4720 389E0000 */  addi      r4, r30, 0x0
/* 0A1724 800A4724 4E800021 */  blrl
lbl_800A4728:
/* 0A1728 800A4728 3BBD0001 */  addi      r29, r29, 0x1
/* 0A172C 800A472C 2C1D0004 */  cmpwi     r29, 0x4
/* 0A1730 800A4730 3BFF0004 */  addi      r31, r31, 0x4
/* 0A1734 800A4734 4180FFD4 */  blt       lbl_800A4708
/* 0A1738 800A4738 48000190 */  b         lbl_800A48C8
lbl_800A473C:
/* 0A173C 800A473C 7F63DB78 */  mr        r3, r27
/* 0A1740 800A4740 4BFFBA1D */  bl        fn_800A015C
/* 0A1744 800A4744 2C1A0000 */  cmpwi     r26, 0x0
/* 0A1748 800A4748 547A422E */  clrlslwi  r26, r3, 16, 8
/* 0A174C 800A474C 41820054 */  beq       lbl_800A47A0
/* 0A1750 800A4750 574002D7 */  rlwinm.   r0, r26, 0, 11, 11
/* 0A1754 800A4754 4182004C */  beq       lbl_800A47A0
/* 0A1758 800A4758 3C6000D0 */  lis       r3, 0xd0
/* 0A175C 800A475C 3803FF00 */  subi      r0, r3, 0x100
/* 0A1760 800A4760 7F400038 */  and       r0, r26, r0
/* 0A1764 800A4764 64004E10 */  oris      r0, r0, 0x4e10
/* 0A1768 800A4768 7C9FEA14 */  add       r4, r31, r29
/* 0A176C 800A476C 940401F0 */  stwu      r0, 0x1f0(r4)
/* 0A1770 800A4770 38000080 */  li        r0, 0x80
/* 0A1774 800A4774 3C60800A */  lis       r3, GetTypeCallback@ha
/* 0A1778 800A4778 901E0000 */  stw       r0, 0x0(r30)
/* 0A177C 800A477C 39034644 */  addi      r8, r3, GetTypeCallback@l
/* 0A1780 800A4780 387B0000 */  addi      r3, r27, 0x0
/* 0A1784 800A4784 38DE0000 */  addi      r6, r30, 0x0
/* 0A1788 800A4788 38A00003 */  li        r5, 0x3
/* 0A178C 800A478C 38E00003 */  li        r7, 0x3
/* 0A1790 800A4790 39400000 */  li        r10, 0x0
/* 0A1794 800A4794 39200000 */  li        r9, 0x0
/* 0A1798 800A4798 4BFFFD41 */  bl        SITransfer
/* 0A179C 800A479C 4800012C */  b         lbl_800A48C8
lbl_800A47A0:
/* 0A17A0 800A47A0 578002D7 */  rlwinm.   r0, r28, 0, 11, 11
/* 0A17A4 800A47A4 41820070 */  beq       lbl_800A4814
/* 0A17A8 800A47A8 3C6000D0 */  lis       r3, 0xd0
/* 0A17AC 800A47AC 3863FF00 */  subi      r3, r3, 0x100
/* 0A17B0 800A47B0 7F401838 */  and       r0, r26, r3
/* 0A17B4 800A47B4 7F831838 */  and       r3, r28, r3
/* 0A17B8 800A47B8 7C001840 */  cmplw     r0, r3
/* 0A17BC 800A47BC 418200C4 */  beq       lbl_800A4880
/* 0A17C0 800A47C0 574002D7 */  rlwinm.   r0, r26, 0, 11, 11
/* 0A17C4 800A47C4 40820014 */  bne       lbl_800A47D8
/* 0A17C8 800A47C8 647A0010 */  oris      r26, r3, 0x10
/* 0A17CC 800A47CC 387B0000 */  addi      r3, r27, 0x0
/* 0A17D0 800A47D0 5744C43E */  extrwi    r4, r26, 16, 8
/* 0A17D4 800A47D4 4BFFBA0D */  bl        fn_800A01E0
lbl_800A47D8:
/* 0A17D8 800A47D8 67404E00 */  oris      r0, r26, 0x4e00
/* 0A17DC 800A47DC 7C9FEA14 */  add       r4, r31, r29
/* 0A17E0 800A47E0 940401F0 */  stwu      r0, 0x1f0(r4)
/* 0A17E4 800A47E4 38000080 */  li        r0, 0x80
/* 0A17E8 800A47E8 3C60800A */  lis       r3, GetTypeCallback@ha
/* 0A17EC 800A47EC 901E0000 */  stw       r0, 0x0(r30)
/* 0A17F0 800A47F0 39034644 */  addi      r8, r3, GetTypeCallback@l
/* 0A17F4 800A47F4 387B0000 */  addi      r3, r27, 0x0
/* 0A17F8 800A47F8 38DE0000 */  addi      r6, r30, 0x0
/* 0A17FC 800A47FC 38A00003 */  li        r5, 0x3
/* 0A1800 800A4800 38E00003 */  li        r7, 0x3
/* 0A1804 800A4804 39400000 */  li        r10, 0x0
/* 0A1808 800A4808 39200000 */  li        r9, 0x0
/* 0A180C 800A480C 4BFFFCCD */  bl        SITransfer
/* 0A1810 800A4810 480000B8 */  b         lbl_800A48C8
lbl_800A4814:
/* 0A1814 800A4814 57800043 */  rlwinm.   r0, r28, 0, 1, 1
/* 0A1818 800A4818 4182005C */  beq       lbl_800A4874
/* 0A181C 800A481C 3C6000D0 */  lis       r3, 0xd0
/* 0A1820 800A4820 3803FF00 */  subi      r0, r3, 0x100
/* 0A1824 800A4824 7F9C0038 */  and       r28, r28, r0
/* 0A1828 800A4828 679C0010 */  oris      r28, r28, 0x10
/* 0A182C 800A482C 387B0000 */  addi      r3, r27, 0x0
/* 0A1830 800A4830 5784C43E */  extrwi    r4, r28, 16, 8
/* 0A1834 800A4834 4BFFB9AD */  bl        fn_800A01E0
/* 0A1838 800A4838 67804E00 */  oris      r0, r28, 0x4e00
/* 0A183C 800A483C 7C9FEA14 */  add       r4, r31, r29
/* 0A1840 800A4840 940401F0 */  stwu      r0, 0x1f0(r4)
/* 0A1844 800A4844 38000080 */  li        r0, 0x80
/* 0A1848 800A4848 3C60800A */  lis       r3, GetTypeCallback@ha
/* 0A184C 800A484C 901E0000 */  stw       r0, 0x0(r30)
/* 0A1850 800A4850 39034644 */  addi      r8, r3, GetTypeCallback@l
/* 0A1854 800A4854 387B0000 */  addi      r3, r27, 0x0
/* 0A1858 800A4858 38DE0000 */  addi      r6, r30, 0x0
/* 0A185C 800A485C 38A00003 */  li        r5, 0x3
/* 0A1860 800A4860 38E00003 */  li        r7, 0x3
/* 0A1864 800A4864 39400000 */  li        r10, 0x0
/* 0A1868 800A4868 39200000 */  li        r9, 0x0
/* 0A186C 800A486C 4BFFFC6D */  bl        SITransfer
/* 0A1870 800A4870 48000058 */  b         lbl_800A48C8
lbl_800A4874:
/* 0A1874 800A4874 387B0000 */  addi      r3, r27, 0x0
/* 0A1878 800A4878 38800000 */  li        r4, 0x0
/* 0A187C 800A487C 4BFFB965 */  bl        fn_800A01E0
lbl_800A4880:
/* 0A1880 800A4880 57602036 */  slwi      r0, r27, 4
/* 0A1884 800A4884 83DE0000 */  lwz       r30, 0x0(r30)
/* 0A1888 800A4888 7FFF0214 */  add       r31, r31, r0
/* 0A188C 800A488C 3BA00000 */  li        r29, 0x0
/* 0A1890 800A4890 3B9D0000 */  addi      r28, r29, 0x0
/* 0A1894 800A4894 3BFF0160 */  addi      r31, r31, 0x160
lbl_800A4898:
/* 0A1898 800A4898 819F0000 */  lwz       r12, 0x0(r31)
/* 0A189C 800A489C 280C0000 */  cmplwi    r12, 0x0
/* 0A18A0 800A48A0 41820018 */  beq       lbl_800A48B8
/* 0A18A4 800A48A4 939F0000 */  stw       r28, 0x0(r31)
/* 0A18A8 800A48A8 7D8803A6 */  mtlr      r12
/* 0A18AC 800A48AC 387B0000 */  addi      r3, r27, 0x0
/* 0A18B0 800A48B0 389E0000 */  addi      r4, r30, 0x0
/* 0A18B4 800A48B4 4E800021 */  blrl
lbl_800A48B8:
/* 0A18B8 800A48B8 3BBD0001 */  addi      r29, r29, 0x1
/* 0A18BC 800A48BC 2C1D0004 */  cmpwi     r29, 0x4
/* 0A18C0 800A48C0 3BFF0004 */  addi      r31, r31, 0x4
/* 0A18C4 800A48C4 4180FFD4 */  blt       lbl_800A4898
lbl_800A48C8:
/* 0A18C8 800A48C8 BB410018 */  lmw       r26, 0x18(r1)
/* 0A18CC 800A48CC 80010034 */  lwz       r0, 0x34(r1)
/* 0A18D0 800A48D0 38210030 */  addi      r1, r1, 0x30
/* 0A18D4 800A48D4 7C0803A6 */  mtlr      r0
/* 0A18D8 800A48D8 4E800020 */  blr

glabel SIGetType
/* 0A18DC 800A48DC 7C0802A6 */  mflr      r0
/* 0A18E0 800A48E0 90010004 */  stw       r0, 0x4(r1)
/* 0A18E4 800A48E4 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0A18E8 800A48E8 BF610014 */  stmw      r27, 0x14(r1)
/* 0A18EC 800A48EC 7C7B1B78 */  mr        r27, r3
/* 0A18F0 800A48F0 4BFF9959 */  bl        OSDisableInterrupts
/* 0A18F4 800A48F4 3C80800F */  lis       r4, Type@ha
/* 0A18F8 800A48F8 5765103A */  slwi      r5, r27, 2
/* 0A18FC 800A48FC 380429F8 */  addi      r0, r4, Type@l
/* 0A1900 800A4900 7FC02A14 */  add       r30, r0, r5
/* 0A1904 800A4904 839E0000 */  lwz       r28, 0x0(r30)
/* 0A1908 800A4908 7C7D1B78 */  mr        r29, r3
/* 0A190C 800A490C 4BFFCBF5 */  bl        __OSGetSystemTime
/* 0A1910 800A4910 3CA08018 */  lis       r5, TypeTime@ha
/* 0A1914 800A4914 57661838 */  slwi      r6, r27, 3
/* 0A1918 800A4918 38057F70 */  addi      r0, r5, TypeTime@l
/* 0A191C 800A491C 7FE03214 */  add       r31, r0, r6
/* 0A1920 800A4920 80DF0004 */  lwz       r6, 0x4(r31)
/* 0A1924 800A4924 3CA0800F */  lis       r5, Si@ha
/* 0A1928 800A4928 38A529E4 */  addi      r5, r5, Si@l
/* 0A192C 800A492C 801F0000 */  lwz       r0, 0x0(r31)
/* 0A1930 800A4930 7C862010 */  subfc     r4, r6, r4
/* 0A1934 800A4934 7C001910 */  subfe     r0, r0, r3
/* 0A1938 800A4938 80C50004 */  lwz       r6, 0x4(r5)
/* 0A193C 800A493C 38A00080 */  li        r5, 0x80
/* 0A1940 800A4940 7CA3DE30 */  sraw      r3, r5, r27
/* 0A1944 800A4944 7CC31839 */  and.      r3, r6, r3
/* 0A1948 800A4948 41820034 */  beq       lbl_800A497C
/* 0A194C 800A494C 281C0008 */  cmplwi    r28, 0x8
/* 0A1950 800A4950 41820020 */  beq       lbl_800A4970
/* 0A1954 800A4954 4BFFCBAD */  bl        __OSGetSystemTime
/* 0A1958 800A4958 909F0004 */  stw       r4, 0x4(r31)
/* 0A195C 800A495C 907F0000 */  stw       r3, 0x0(r31)
/* 0A1960 800A4960 7FA3EB78 */  mr        r3, r29
/* 0A1964 800A4964 4BFF990D */  bl        OSRestoreInterrupts
/* 0A1968 800A4968 7F83E378 */  mr        r3, r28
/* 0A196C 800A496C 48000120 */  b         lbl_800A4A8C
lbl_800A4970:
/* 0A1970 800A4970 90BE0000 */  stw       r5, 0x0(r30)
/* 0A1974 800A4974 3B800080 */  li        r28, 0x80
/* 0A1978 800A4978 480000B4 */  b         lbl_800A4A2C
lbl_800A497C:
/* 0A197C 800A497C 3C608000 */  lis       r3, 0x8000
/* 0A1980 800A4980 80C300F8 */  lwz       r6, 0xf8(r3)
/* 0A1984 800A4984 3CA01062 */  lis       r5, 0x1062
/* 0A1988 800A4988 38A54DD3 */  addi      r5, r5, 0x4dd3
/* 0A198C 800A498C 54C6F0BE */  srwi      r6, r6, 2
/* 0A1990 800A4990 7CA53016 */  mulhwu    r5, r5, r6
/* 0A1994 800A4994 54A5D1BE */  srwi      r5, r5, 6
/* 0A1998 800A4998 1CE50032 */  mulli     r7, r5, 0x32
/* 0A199C 800A499C 38600000 */  li        r3, 0x0
/* 0A19A0 800A49A0 6C668000 */  xoris     r6, r3, 0x8000
/* 0A19A4 800A49A4 6C058000 */  xoris     r5, r0, 0x8000
/* 0A19A8 800A49A8 7C643810 */  subfc     r3, r4, r7
/* 0A19AC 800A49AC 7CA53110 */  subfe     r5, r5, r6
/* 0A19B0 800A49B0 7CA63110 */  subfe     r5, r6, r6
/* 0A19B4 800A49B4 7CA500D1 */  neg.      r5, r5
/* 0A19B8 800A49B8 4082001C */  bne       lbl_800A49D4
/* 0A19BC 800A49BC 281C0008 */  cmplwi    r28, 0x8
/* 0A19C0 800A49C0 41820014 */  beq       lbl_800A49D4
/* 0A19C4 800A49C4 7FA3EB78 */  mr        r3, r29
/* 0A19C8 800A49C8 4BFF98A9 */  bl        OSRestoreInterrupts
/* 0A19CC 800A49CC 7F83E378 */  mr        r3, r28
/* 0A19D0 800A49D0 480000BC */  b         lbl_800A4A8C
lbl_800A49D4:
/* 0A19D4 800A49D4 3C608000 */  lis       r3, 0x8000
/* 0A19D8 800A49D8 80C300F8 */  lwz       r6, 0xf8(r3)
/* 0A19DC 800A49DC 3CA01062 */  lis       r5, 0x1062
/* 0A19E0 800A49E0 38A54DD3 */  addi      r5, r5, 0x4dd3
/* 0A19E4 800A49E4 54C6F0BE */  srwi      r6, r6, 2
/* 0A19E8 800A49E8 7CA53016 */  mulhwu    r5, r5, r6
/* 0A19EC 800A49EC 54A5D1BE */  srwi      r5, r5, 6
/* 0A19F0 800A49F0 1CC5004B */  mulli     r6, r5, 0x4b
/* 0A19F4 800A49F4 38600000 */  li        r3, 0x0
/* 0A19F8 800A49F8 6C658000 */  xoris     r5, r3, 0x8000
/* 0A19FC 800A49FC 6C038000 */  xoris     r3, r0, 0x8000
/* 0A1A00 800A4A00 7C043010 */  subfc     r0, r4, r6
/* 0A1A04 800A4A04 7C632910 */  subfe     r3, r3, r5
/* 0A1A08 800A4A08 7C652910 */  subfe     r3, r5, r5
/* 0A1A0C 800A4A0C 7C6300D1 */  neg.      r3, r3
/* 0A1A10 800A4A10 40820010 */  bne       lbl_800A4A20
/* 0A1A14 800A4A14 38000080 */  li        r0, 0x80
/* 0A1A18 800A4A18 901E0000 */  stw       r0, 0x0(r30)
/* 0A1A1C 800A4A1C 48000010 */  b         lbl_800A4A2C
lbl_800A4A20:
/* 0A1A20 800A4A20 38000080 */  li        r0, 0x80
/* 0A1A24 800A4A24 901E0000 */  stw       r0, 0x0(r30)
/* 0A1A28 800A4A28 3B800080 */  li        r28, 0x80
lbl_800A4A2C:
/* 0A1A2C 800A4A2C 4BFFCAD5 */  bl        __OSGetSystemTime
/* 0A1A30 800A4A30 909F0004 */  stw       r4, 0x4(r31)
/* 0A1A34 800A4A34 3C80431C */  lis       r4, 0x431c
/* 0A1A38 800A4A38 3CA0800A */  lis       r5, GetTypeCallback@ha
/* 0A1A3C 800A4A3C 907F0000 */  stw       r3, 0x0(r31)
/* 0A1A40 800A4A40 3C608000 */  lis       r3, 0x8000
/* 0A1A44 800A4A44 39054644 */  addi      r8, r5, GetTypeCallback@l
/* 0A1A48 800A4A48 800300F8 */  lwz       r0, 0xf8(r3)
/* 0A1A4C 800A4A4C 3884DE83 */  subi      r4, r4, 0x217d
/* 0A1A50 800A4A50 387B0000 */  addi      r3, r27, 0x0
/* 0A1A54 800A4A54 5400F0BE */  srwi      r0, r0, 2
/* 0A1A58 800A4A58 7C040016 */  mulhwu    r0, r4, r0
/* 0A1A5C 800A4A5C 54008BFE */  srwi      r0, r0, 15
/* 0A1A60 800A4A60 1C000041 */  mulli     r0, r0, 0x41
/* 0A1A64 800A4A64 540AE8FE */  srwi      r10, r0, 3
/* 0A1A68 800A4A68 38DE0000 */  addi      r6, r30, 0x0
/* 0A1A6C 800A4A6C 388D8B84 */  li        r4, cmdTypeAndStatus$371@sda21
/* 0A1A70 800A4A70 38A00001 */  li        r5, 0x1
/* 0A1A74 800A4A74 38E00003 */  li        r7, 0x3
/* 0A1A78 800A4A78 39200000 */  li        r9, 0x0
/* 0A1A7C 800A4A7C 4BFFFA5D */  bl        SITransfer
/* 0A1A80 800A4A80 7FA3EB78 */  mr        r3, r29
/* 0A1A84 800A4A84 4BFF97ED */  bl        OSRestoreInterrupts
/* 0A1A88 800A4A88 7F83E378 */  mr        r3, r28
lbl_800A4A8C:
/* 0A1A8C 800A4A8C BB610014 */  lmw       r27, 0x14(r1)
/* 0A1A90 800A4A90 8001002C */  lwz       r0, 0x2c(r1)
/* 0A1A94 800A4A94 38210028 */  addi      r1, r1, 0x28
/* 0A1A98 800A4A98 7C0803A6 */  mtlr      r0
/* 0A1A9C 800A4A9C 4E800020 */  blr

glabel SIGetTypeAsync
/* 0A1AA0 800A4AA0 7C0802A6 */  mflr      r0
/* 0A1AA4 800A4AA4 90010004 */  stw       r0, 0x4(r1)
/* 0A1AA8 800A4AA8 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0A1AAC 800A4AAC 93E1001C */  stw       r31, 0x1c(r1)
/* 0A1AB0 800A4AB0 3BE40000 */  addi      r31, r4, 0x0
/* 0A1AB4 800A4AB4 93C10018 */  stw       r30, 0x18(r1)
/* 0A1AB8 800A4AB8 93A10014 */  stw       r29, 0x14(r1)
/* 0A1ABC 800A4ABC 93810010 */  stw       r28, 0x10(r1)
/* 0A1AC0 800A4AC0 3B830000 */  addi      r28, r3, 0x0
/* 0A1AC4 800A4AC4 4BFF9785 */  bl        OSDisableInterrupts
/* 0A1AC8 800A4AC8 3BC30000 */  addi      r30, r3, 0x0
/* 0A1ACC 800A4ACC 387C0000 */  addi      r3, r28, 0x0
/* 0A1AD0 800A4AD0 4BFFFE0D */  bl        SIGetType
/* 0A1AD4 800A4AD4 3C80800F */  lis       r4, Type@ha
/* 0A1AD8 800A4AD8 5785103A */  slwi      r5, r28, 2
/* 0A1ADC 800A4ADC 380429F8 */  addi      r0, r4, Type@l
/* 0A1AE0 800A4AE0 7C802A14 */  add       r4, r0, r5
/* 0A1AE4 800A4AE4 80040000 */  lwz       r0, 0x0(r4)
/* 0A1AE8 800A4AE8 3BA30000 */  addi      r29, r3, 0x0
/* 0A1AEC 800A4AEC 54000631 */  rlwinm.   r0, r0, 0, 24, 24
/* 0A1AF0 800A4AF0 418200AC */  beq       lbl_800A4B9C
/* 0A1AF4 800A4AF4 3C608018 */  lis       r3, D_80187FB0@ha
/* 0A1AF8 800A4AF8 57842036 */  slwi      r4, r28, 4
/* 0A1AFC 800A4AFC 38037FB0 */  addi      r0, r3, D_80187FB0@l
/* 0A1B00 800A4B00 7C802214 */  add       r4, r0, r4
/* 0A1B04 800A4B04 80040000 */  lwz       r0, 0x0(r4)
/* 0A1B08 800A4B08 38A00000 */  li        r5, 0x0
/* 0A1B0C 800A4B0C 7C00F840 */  cmplw     r0, r31
/* 0A1B10 800A4B10 418200A0 */  beq       lbl_800A4BB0
/* 0A1B14 800A4B14 28000000 */  cmplwi    r0, 0x0
/* 0A1B18 800A4B18 40820010 */  bne       lbl_800A4B28
/* 0A1B1C 800A4B1C 54A0103A */  slwi      r0, r5, 2
/* 0A1B20 800A4B20 7FE4012E */  stwx      r31, r4, r0
/* 0A1B24 800A4B24 4800008C */  b         lbl_800A4BB0
lbl_800A4B28:
/* 0A1B28 800A4B28 38640004 */  addi      r3, r4, 0x4
/* 0A1B2C 800A4B2C 80040004 */  lwz       r0, 0x4(r4)
/* 0A1B30 800A4B30 38A00001 */  li        r5, 0x1
/* 0A1B34 800A4B34 7C00F840 */  cmplw     r0, r31
/* 0A1B38 800A4B38 41820078 */  beq       lbl_800A4BB0
/* 0A1B3C 800A4B3C 28000000 */  cmplwi    r0, 0x0
/* 0A1B40 800A4B40 40820010 */  bne       lbl_800A4B50
/* 0A1B44 800A4B44 54A0103A */  slwi      r0, r5, 2
/* 0A1B48 800A4B48 7FE4012E */  stwx      r31, r4, r0
/* 0A1B4C 800A4B4C 48000064 */  b         lbl_800A4BB0
lbl_800A4B50:
/* 0A1B50 800A4B50 84030004 */  lwzu      r0, 0x4(r3)
/* 0A1B54 800A4B54 38A00002 */  li        r5, 0x2
/* 0A1B58 800A4B58 7C00F840 */  cmplw     r0, r31
/* 0A1B5C 800A4B5C 41820054 */  beq       lbl_800A4BB0
/* 0A1B60 800A4B60 28000000 */  cmplwi    r0, 0x0
/* 0A1B64 800A4B64 40820010 */  bne       lbl_800A4B74
/* 0A1B68 800A4B68 54A0103A */  slwi      r0, r5, 2
/* 0A1B6C 800A4B6C 7FE4012E */  stwx      r31, r4, r0
/* 0A1B70 800A4B70 48000040 */  b         lbl_800A4BB0
lbl_800A4B74:
/* 0A1B74 800A4B74 80030004 */  lwz       r0, 0x4(r3)
/* 0A1B78 800A4B78 38A00003 */  li        r5, 0x3
/* 0A1B7C 800A4B7C 7C00F840 */  cmplw     r0, r31
/* 0A1B80 800A4B80 41820030 */  beq       lbl_800A4BB0
/* 0A1B84 800A4B84 28000000 */  cmplwi    r0, 0x0
/* 0A1B88 800A4B88 40820028 */  bne       lbl_800A4BB0
/* 0A1B8C 800A4B8C 54A0103A */  slwi      r0, r5, 2
/* 0A1B90 800A4B90 7FE4012E */  stwx      r31, r4, r0
/* 0A1B94 800A4B94 4800001C */  b         lbl_800A4BB0
/* 0A1B98 800A4B98 48000018 */  b         lbl_800A4BB0
lbl_800A4B9C:
/* 0A1B9C 800A4B9C 399F0000 */  addi      r12, r31, 0x0
/* 0A1BA0 800A4BA0 7D8803A6 */  mtlr      r12
/* 0A1BA4 800A4BA4 387C0000 */  addi      r3, r28, 0x0
/* 0A1BA8 800A4BA8 389D0000 */  addi      r4, r29, 0x0
/* 0A1BAC 800A4BAC 4E800021 */  blrl
lbl_800A4BB0:
/* 0A1BB0 800A4BB0 7FC3F378 */  mr        r3, r30
/* 0A1BB4 800A4BB4 4BFF96BD */  bl        OSRestoreInterrupts
/* 0A1BB8 800A4BB8 7FA3EB78 */  mr        r3, r29
/* 0A1BBC 800A4BBC 80010024 */  lwz       r0, 0x24(r1)
/* 0A1BC0 800A4BC0 83E1001C */  lwz       r31, 0x1c(r1)
/* 0A1BC4 800A4BC4 83C10018 */  lwz       r30, 0x18(r1)
/* 0A1BC8 800A4BC8 83A10014 */  lwz       r29, 0x14(r1)
/* 0A1BCC 800A4BCC 83810010 */  lwz       r28, 0x10(r1)
/* 0A1BD0 800A4BD0 38210020 */  addi      r1, r1, 0x20
/* 0A1BD4 800A4BD4 7C0803A6 */  mtlr      r0
/* 0A1BD8 800A4BD8 4E800020 */  blr

# 0x800F29A0 - 0x800F2AB8
.section .data, "wa"

.balign 8

glabel D_800F29A0
	.string "<< Dolphin SDK - SI\trelease build: Sep  5 2002 05:33:08 (0x2301) >>"

Si:
	.long 0xFFFFFFFF
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000

Type:
	.long 0x00000008
	.long 0x00000008
	.long 0x00000008
	.long 0x00000008

glabel D_800F2A08
	.string "No response"

glabel D_800F2A14
	.string "N64 controller"

glabel gap_05_800F2A23_data
.hidden gap_05_800F2A23_data
	.byte 0x00

glabel D_800F2A24
	.string "N64 microphone"

glabel gap_05_800F2A33_data
.hidden gap_05_800F2A33_data
	.byte 0x00

glabel D_800F2A34
	.string "N64 keyboard"

glabel gap_05_800F2A41_data
.hidden gap_05_800F2A41_data
	.byte 0x00, 0x00, 0x00

glabel D_800F2A44
	.string "N64 mouse"

glabel gap_05_800F2A4E_data
.hidden gap_05_800F2A4E_data
	.2byte 0x0000

glabel D_800F2A50
	.string "GameBoy Advance"

glabel D_800F2A60
	.string "Standard controller"

glabel D_800F2A74
	.string "Wireless receiver"

glabel gap_05_800F2A86_data
.hidden gap_05_800F2A86_data
	.2byte 0x0000

glabel D_800F2A88
	.string "WaveBird controller"

glabel D_800F2A9C
	.string "Keyboard"

glabel gap_05_800F2AA5_data
.hidden gap_05_800F2AA5_data
	.byte 0x00, 0x00, 0x00

glabel D_800F2AA8
	.string "Steering"

glabel gap_05_800F2AB1_data
.hidden gap_05_800F2AB1_data
	.byte 0x00, 0x00, 0x00

glabel D_800F2AB4
	.string ""

glabel gap_05_800F2AB5_data
.hidden gap_05_800F2AB5_data
	.byte 0x00, 0x00, 0x00

# 0x80187E50 - 0x80188050
.section .bss, "wa"

Packet:
	.skip 0x80

glabel D_80187ED0
	.skip 0xA0

TypeTime:
	.skip 0x20

glabel D_80187F90
	.skip 0x20

glabel D_80187FB0
	.skip 0x40

glabel D_80187FF0
	.skip 0x10

glabel D_80188000
	.skip 0x10

glabel D_80188010
	.skip 0x20

glabel D_80188030
	.skip 0x10

glabel D_80188040
	.skip 0x10

# 0x8018B6D8 - 0x8018B6E0
.section .sdata, "wa"

glabel __SIVersion
	.long D_800F29A0

glabel gap_07_8018B6DC_sdata
.hidden gap_07_8018B6DC_sdata
	.long 0x00000000

# 0x8018BB00 - 0x8018BB10
.section .sbss, "wa"

glabel D_8018BB00
	.skip 0x4

cmdTypeAndStatus$371:
	.skip 0x4

glabel D_8018BB08
	.skip 0x8
