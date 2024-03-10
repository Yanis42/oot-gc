# dvdqueue.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel __DVDClearWaitingQueue
/* 0B0104 800B56A4 3C608013 */  lis     r3, WaitingQueue@ha
/* 0B0108 800B56A8 38632638 */  addi    r3, r3, WaitingQueue@l
/* 0B010C 800B56AC 90630000 */  stw     r3, 0(r3)
/* 0B0110 800B56B0 38A30008 */  addi    r5, r3, 8
/* 0B0114 800B56B4 38830010 */  addi    r4, r3, 0x10
/* 0B0118 800B56B8 90630004 */  stw     r3, 4(r3)
/* 0B011C 800B56BC 38630018 */  addi    r3, r3, 0x18
/* 0B0120 800B56C0 90A50000 */  stw     r5, 0(r5)
/* 0B0124 800B56C4 90A50004 */  stw     r5, 4(r5)
/* 0B0128 800B56C8 90840000 */  stw     r4, 0(r4)
/* 0B012C 800B56CC 90840004 */  stw     r4, 4(r4)
/* 0B0130 800B56D0 90630000 */  stw     r3, 0(r3)
/* 0B0134 800B56D4 90630004 */  stw     r3, 4(r3)
/* 0B0138 800B56D8 4E800020 */  blr     

glabel __DVDPushWaitingQueue
/* 0B013C 800B56DC 7C0802A6 */  mflr    r0
/* 0B0140 800B56E0 90010004 */  stw     r0, 4(r1)
/* 0B0144 800B56E4 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0B0148 800B56E8 93E10014 */  stw     r31, 0x14(r1)
/* 0B014C 800B56EC 3BE40000 */  addi    r31, r4, 0
/* 0B0150 800B56F0 93C10010 */  stw     r30, 0x10(r1)
/* 0B0154 800B56F4 3BC30000 */  addi    r30, r3, 0
/* 0B0158 800B56F8 4BFE9605 */  bl      OSDisableInterrupts
/* 0B015C 800B56FC 3C808013 */  lis     r4, WaitingQueue@ha
/* 0B0160 800B5700 57C51838 */  slwi    r5, r30, 3
/* 0B0164 800B5704 38042638 */  addi    r0, r4, WaitingQueue@l
/* 0B0168 800B5708 7CA02A14 */  add     r5, r0, r5
/* 0B016C 800B570C 80850004 */  lwz     r4, 4(r5)
/* 0B0170 800B5710 93E40000 */  stw     r31, 0(r4)
/* 0B0174 800B5714 80050004 */  lwz     r0, 4(r5)
/* 0B0178 800B5718 901F0004 */  stw     r0, 4(r31)
/* 0B017C 800B571C 90BF0000 */  stw     r5, 0(r31)
/* 0B0180 800B5720 93E50004 */  stw     r31, 4(r5)
/* 0B0184 800B5724 4BFE9601 */  bl      OSRestoreInterrupts
/* 0B0188 800B5728 8001001C */  lwz     r0, 0x1c(r1)
/* 0B018C 800B572C 38600001 */  li      r3, 1
/* 0B0190 800B5730 83E10014 */  lwz     r31, 0x14(r1)
/* 0B0194 800B5734 83C10010 */  lwz     r30, 0x10(r1)
/* 0B0198 800B5738 38210018 */  addi    r1, r1, 0x18
/* 0B019C 800B573C 7C0803A6 */  mtlr    r0
/* 0B01A0 800B5740 4E800020 */  blr     

glabel __DVDPopWaitingQueue
/* 0B01A4 800B5744 7C0802A6 */  mflr    r0
/* 0B01A8 800B5748 90010004 */  stw     r0, 4(r1)
/* 0B01AC 800B574C 9421FFF0 */  stwu    r1, -0x10(r1)
/* 0B01B0 800B5750 93E1000C */  stw     r31, 0xc(r1)
/* 0B01B4 800B5754 4BFE95A9 */  bl      OSDisableInterrupts
/* 0B01B8 800B5758 38000004 */  li      r0, 4
/* 0B01BC 800B575C 3C808013 */  lis     r4, WaitingQueue@ha
/* 0B01C0 800B5760 7C0903A6 */  mtctr   r0
/* 0B01C4 800B5764 38842638 */  addi    r4, r4, WaitingQueue@l
/* 0B01C8 800B5768 3BE00000 */  li      r31, 0
lbl_800B576C:
/* 0B01CC 800B576C 80040000 */  lwz     r0, 0(r4)
/* 0B01D0 800B5770 7C002040 */  cmplw   r0, r4
/* 0B01D4 800B5774 41820048 */  beq     lbl_800B57BC
/* 0B01D8 800B5778 4BFE95AD */  bl      OSRestoreInterrupts
/* 0B01DC 800B577C 4BFE9581 */  bl      OSDisableInterrupts
/* 0B01E0 800B5780 3C808013 */  lis     r4, WaitingQueue@ha
/* 0B01E4 800B5784 57E51838 */  slwi    r5, r31, 3
/* 0B01E8 800B5788 38042638 */  addi    r0, r4, WaitingQueue@l
/* 0B01EC 800B578C 7CA02A14 */  add     r5, r0, r5
/* 0B01F0 800B5790 83E50000 */  lwz     r31, 0(r5)
/* 0B01F4 800B5794 801F0000 */  lwz     r0, 0(r31)
/* 0B01F8 800B5798 90050000 */  stw     r0, 0(r5)
/* 0B01FC 800B579C 809F0000 */  lwz     r4, 0(r31)
/* 0B0200 800B57A0 90A40004 */  stw     r5, 4(r4)
/* 0B0204 800B57A4 4BFE9581 */  bl      OSRestoreInterrupts
/* 0B0208 800B57A8 38000000 */  li      r0, 0
/* 0B020C 800B57AC 901F0000 */  stw     r0, 0(r31)
/* 0B0210 800B57B0 7FE3FB78 */  mr      r3, r31
/* 0B0214 800B57B4 901F0004 */  stw     r0, 4(r31)
/* 0B0218 800B57B8 48000018 */  b       lbl_800B57D0
lbl_800B57BC:
/* 0B021C 800B57BC 38840008 */  addi    r4, r4, 8
/* 0B0220 800B57C0 3BFF0001 */  addi    r31, r31, 1
/* 0B0224 800B57C4 4200FFA8 */  bdnz    lbl_800B576C
/* 0B0228 800B57C8 4BFE955D */  bl      OSRestoreInterrupts
/* 0B022C 800B57CC 38600000 */  li      r3, 0
lbl_800B57D0:
/* 0B0230 800B57D0 80010014 */  lwz     r0, 0x14(r1)
/* 0B0234 800B57D4 83E1000C */  lwz     r31, 0xc(r1)
/* 0B0238 800B57D8 38210010 */  addi    r1, r1, 0x10
/* 0B023C 800B57DC 7C0803A6 */  mtlr    r0
/* 0B0240 800B57E0 4E800020 */  blr     

glabel __DVDCheckWaitingQueue
/* 0B0244 800B57E4 7C0802A6 */  mflr    r0
/* 0B0248 800B57E8 90010004 */  stw     r0, 4(r1)
/* 0B024C 800B57EC 9421FFF8 */  stwu    r1, -8(r1)
/* 0B0250 800B57F0 4BFE950D */  bl      OSDisableInterrupts
/* 0B0254 800B57F4 38000004 */  li      r0, 4
/* 0B0258 800B57F8 3C808013 */  lis     r4, WaitingQueue@ha
/* 0B025C 800B57FC 7C0903A6 */  mtctr   r0
/* 0B0260 800B5800 38842638 */  addi    r4, r4, WaitingQueue@l
lbl_800B5804:
/* 0B0264 800B5804 80040000 */  lwz     r0, 0(r4)
/* 0B0268 800B5808 7C002040 */  cmplw   r0, r4
/* 0B026C 800B580C 41820010 */  beq     lbl_800B581C
/* 0B0270 800B5810 4BFE9515 */  bl      OSRestoreInterrupts
/* 0B0274 800B5814 38600001 */  li      r3, 1
/* 0B0278 800B5818 48000014 */  b       lbl_800B582C
lbl_800B581C:
/* 0B027C 800B581C 38840008 */  addi    r4, r4, 8
/* 0B0280 800B5820 4200FFE4 */  bdnz    lbl_800B5804
/* 0B0284 800B5824 4BFE9501 */  bl      OSRestoreInterrupts
/* 0B0288 800B5828 38600000 */  li      r3, 0
lbl_800B582C:
/* 0B028C 800B582C 8001000C */  lwz     r0, 0xc(r1)
/* 0B0290 800B5830 38210008 */  addi    r1, r1, 8
/* 0B0294 800B5834 7C0803A6 */  mtlr    r0
/* 0B0298 800B5838 4E800020 */  blr     

glabel __DVDDequeueWaitingQueue
/* 0B029C 800B583C 7C0802A6 */  mflr    r0
/* 0B02A0 800B5840 90010004 */  stw     r0, 4(r1)
/* 0B02A4 800B5844 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0B02A8 800B5848 93E10014 */  stw     r31, 0x14(r1)
/* 0B02AC 800B584C 7C7F1B78 */  mr      r31, r3
/* 0B02B0 800B5850 4BFE94AD */  bl      OSDisableInterrupts
/* 0B02B4 800B5854 809F0004 */  lwz     r4, 4(r31)
/* 0B02B8 800B5858 80BF0000 */  lwz     r5, 0(r31)
/* 0B02BC 800B585C 28040000 */  cmplwi  r4, 0
/* 0B02C0 800B5860 4182000C */  beq     lbl_800B586C
/* 0B02C4 800B5864 28050000 */  cmplwi  r5, 0
/* 0B02C8 800B5868 40820010 */  bne     lbl_800B5878
lbl_800B586C:
/* 0B02CC 800B586C 4BFE94B9 */  bl      OSRestoreInterrupts
/* 0B02D0 800B5870 38600000 */  li      r3, 0
/* 0B02D4 800B5874 48000014 */  b       lbl_800B5888
lbl_800B5878:
/* 0B02D8 800B5878 90A40000 */  stw     r5, 0(r4)
/* 0B02DC 800B587C 90850004 */  stw     r4, 4(r5)
/* 0B02E0 800B5880 4BFE94A5 */  bl      OSRestoreInterrupts
/* 0B02E4 800B5884 38600001 */  li      r3, 1
lbl_800B5888:
/* 0B02E8 800B5888 8001001C */  lwz     r0, 0x1c(r1)
/* 0B02EC 800B588C 83E10014 */  lwz     r31, 0x14(r1)
/* 0B02F0 800B5890 38210018 */  addi    r1, r1, 0x18
/* 0B02F4 800B5894 7C0803A6 */  mtlr    r0
/* 0B02F8 800B5898 4E800020 */  blr     

.section .bss, "wa"

.balign 4

/* 0012F6B8 80132638 0020 */
WaitingQueue:
    .skip 32
