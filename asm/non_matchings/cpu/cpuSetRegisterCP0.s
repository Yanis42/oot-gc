glabel cpuSetRegisterCP0
/* 02FFD0 80035570 7C0802A6 */  mflr    r0
/* 02FFD4 80035574 90010004 */  stw     r0, 4(r1)
/* 02FFD8 80035578 9421FFC8 */  stwu    r1, -0x38(r1)
/* 02FFDC 8003557C BF410020 */  stmw    r26, 0x20(r1)
/* 02FFE0 80035580 3B640000 */  addi    r27, r4, 0
/* 02FFE4 80035584 3C80800F */  lis     r4, gClassCPU@ha
/* 02FFE8 80035588 281B001F */  cmplwi  r27, 0x1f
/* 02FFEC 8003558C 3B430000 */  addi    r26, r3, 0
/* 02FFF0 80035590 3BA50000 */  addi    r29, r5, 0
/* 02FFF4 80035594 3B860000 */  addi    r28, r6, 0
/* 02FFF8 80035598 3BE4B658 */  addi    r31, r4, gClassCPU@l
/* 02FFFC 8003559C 3BC00000 */  li      r30, 0
/* 030000 800355A0 41810154 */  bgt     lbl_800356F4
/* 030004 800355A4 3C60800F */  lis     r3, jtbl_800ED5F4@ha
/* 030008 800355A8 3863D5F4 */  addi    r3, r3, jtbl_800ED5F4@l
/* 03000C 800355AC 5760103A */  slwi    r0, r27, 2
/* 030010 800355B0 7C03002E */  lwzx    r0, r3, r0
/* 030014 800355B4 7C0903A6 */  mtctr   r0
/* 030018 800355B8 4E800420 */  bctr    
.global lbl_800355BC
lbl_800355BC:
/* 03001C 800355BC 3BC00001 */  li      r30, 1
/* 030020 800355C0 48000138 */  b       lbl_800356F8
.global lbl_800355C4
lbl_800355C4:
/* 030024 800355C4 807A0008 */  lwz     r3, 8(r26)
/* 030028 800355C8 3BC00001 */  li      r30, 1
/* 03002C 800355CC 38801001 */  li      r4, 0x1001
/* 030030 800355D0 38A00003 */  li      r5, 3
/* 030034 800355D4 4BFD2699 */  bl      xlObjectEvent
/* 030038 800355D8 80DA0000 */  lwz     r6, 0(r26)
/* 03003C 800355DC 54C007FF */  clrlwi. r0, r6, 0x1f
/* 030040 800355E0 40820030 */  bne     lbl_80035610
/* 030044 800355E4 57601838 */  slwi    r0, r27, 3
/* 030048 800355E8 7C9F0214 */  add     r4, r31, r0
/* 03004C 800355EC 80640630 */  lwz     r3, 0x630(r4)
/* 030050 800355F0 38000000 */  li      r0, 0
/* 030054 800355F4 80A40634 */  lwz     r5, 0x634(r4)
/* 030058 800355F8 7FA41838 */  and     r4, r29, r3
/* 03005C 800355FC 7F832838 */  and     r3, r28, r5
/* 030060 80035600 7C630278 */  xor     r3, r3, r0
/* 030064 80035604 7C800278 */  xor     r0, r4, r0
/* 030068 80035608 7C600379 */  or.     r0, r3, r0
/* 03006C 8003560C 40820014 */  bne     lbl_80035620
lbl_80035610:
/* 030070 80035610 801A0000 */  lwz     r0, 0(r26)
/* 030074 80035614 5400003C */  rlwinm  r0, r0, 0, 0, 0x1e
/* 030078 80035618 901A0000 */  stw     r0, 0(r26)
/* 03007C 8003561C 480000DC */  b       lbl_800356F8
lbl_80035620:
/* 030080 80035620 60C00001 */  ori     r0, r6, 1
/* 030084 80035624 901A0000 */  stw     r0, 0(r26)
/* 030088 80035628 480000D0 */  b       lbl_800356F8
.global lbl_8003562C
lbl_8003562C:
/* 03008C 8003562C 57601838 */  slwi    r0, r27, 3
/* 030090 80035630 7C9F0214 */  add     r4, r31, r0
/* 030094 80035634 80040630 */  lwz     r0, 0x630(r4)
/* 030098 80035638 7F43D378 */  mr      r3, r26
/* 03009C 8003563C 80840634 */  lwz     r4, 0x634(r4)
/* 0300A0 80035640 38E00000 */  li      r7, 0
/* 0300A4 80035644 7FA50038 */  and     r5, r29, r0
/* 0300A8 80035648 7F862038 */  and     r6, r28, r4
/* 0300AC 8003564C 480000F1 */  bl      cpuSetCP0_Status
/* 0300B0 80035650 480000A8 */  b       lbl_800356F8
.global lbl_80035654
lbl_80035654:
/* 0300B4 80035654 38000100 */  li      r0, 0x100
/* 0300B8 80035658 38800000 */  li      r4, 0
/* 0300BC 8003565C 7F830038 */  and     r3, r28, r0
/* 0300C0 80035660 7FA02038 */  and     r0, r29, r4
/* 0300C4 80035664 7C632278 */  xor     r3, r3, r4
/* 0300C8 80035668 7C002278 */  xor     r0, r0, r4
/* 0300CC 8003566C 7C600379 */  or.     r0, r3, r0
/* 0300D0 80035670 4182000C */  beq     lbl_8003567C
/* 0300D4 80035674 38801000 */  li      r4, 0x1000
/* 0300D8 80035678 48000008 */  b       lbl_80035680
lbl_8003567C:
/* 0300DC 8003567C 38801001 */  li      r4, 0x1001
lbl_80035680:
/* 0300E0 80035680 807A0008 */  lwz     r3, 8(r26)
/* 0300E4 80035684 38A00000 */  li      r5, 0
/* 0300E8 80035688 4BFD25E5 */  bl      xlObjectEvent
/* 0300EC 8003568C 38000200 */  li      r0, 0x200
/* 0300F0 80035690 38800000 */  li      r4, 0
/* 0300F4 80035694 7F830038 */  and     r3, r28, r0
/* 0300F8 80035698 7FA02038 */  and     r0, r29, r4
/* 0300FC 8003569C 7C632278 */  xor     r3, r3, r4
/* 030100 800356A0 7C002278 */  xor     r0, r0, r4
/* 030104 800356A4 7C600379 */  or.     r0, r3, r0
/* 030108 800356A8 4182000C */  beq     lbl_800356B4
/* 03010C 800356AC 38801000 */  li      r4, 0x1000
/* 030110 800356B0 48000008 */  b       lbl_800356B8
lbl_800356B4:
/* 030114 800356B4 38801001 */  li      r4, 0x1001
lbl_800356B8:
/* 030118 800356B8 807A0008 */  lwz     r3, 8(r26)
/* 03011C 800356BC 38A00001 */  li      r5, 1
/* 030120 800356C0 4BFD25AD */  bl      xlObjectEvent
/* 030124 800356C4 3BC00001 */  li      r30, 1
/* 030128 800356C8 48000030 */  b       lbl_800356F8
.global lbl_800356CC
lbl_800356CC:
/* 03012C 800356CC 3BC00001 */  li      r30, 1
/* 030130 800356D0 48000028 */  b       lbl_800356F8
.global lbl_800356D4
lbl_800356D4:
/* 030134 800356D4 57601838 */  slwi    r0, r27, 3
/* 030138 800356D8 7C7F0214 */  add     r3, r31, r0
/* 03013C 800356DC 80630634 */  lwz     r3, 0x634(r3)
/* 030140 800356E0 38000000 */  li      r0, 0
/* 030144 800356E4 7F831838 */  and     r3, r28, r3
/* 030148 800356E8 907A0AC4 */  stw     r3, 0xac4(r26)
/* 03014C 800356EC 901A0AC0 */  stw     r0, 0xac0(r26)
/* 030150 800356F0 48000008 */  b       lbl_800356F8
.global lbl_800356F4
lbl_800356F4:
/* 030154 800356F4 3BC00001 */  li      r30, 1
.global lbl_800356F8
lbl_800356F8:
/* 030158 800356F8 2C1E0000 */  cmpwi   r30, 0
/* 03015C 800356FC 41820028 */  beq     lbl_80035724
/* 030160 80035700 57631838 */  slwi    r3, r27, 3
/* 030164 80035704 7C9F1A14 */  add     r4, r31, r3
/* 030168 80035708 80040634 */  lwz     r0, 0x634(r4)
/* 03016C 8003570C 7C7A1A14 */  add     r3, r26, r3
/* 030170 80035710 80840630 */  lwz     r4, 0x630(r4)
/* 030174 80035714 7F800038 */  and     r0, r28, r0
/* 030178 80035718 90030A44 */  stw     r0, 0xa44(r3)
/* 03017C 8003571C 7FA02038 */  and     r0, r29, r4
/* 030180 80035720 90030A40 */  stw     r0, 0xa40(r3)
lbl_80035724:
/* 030184 80035724 BB410020 */  lmw     r26, 0x20(r1)
/* 030188 80035728 38600001 */  li      r3, 1
/* 03018C 8003572C 8001003C */  lwz     r0, 0x3c(r1)
/* 030190 80035730 38210038 */  addi    r1, r1, 0x38
/* 030194 80035734 7C0803A6 */  mtlr    r0
/* 030198 80035738 4E800020 */  blr     

.section .data

jtbl_800ED5F4:
    .word lbl_800356F4
    .word lbl_800356F8
    .word lbl_800356F4
    .word lbl_800356F4
    .word lbl_800356F4
    .word lbl_800356F4
    .word lbl_800356F4
    .word lbl_800356F8
    .word lbl_800356F8
    .word lbl_800355BC
    .word lbl_800356F4
    .word lbl_800355C4
    .word lbl_8003562C
    .word lbl_80035654
    .word lbl_800356CC
    .word lbl_800356F8
    .word lbl_800356D4
    .word lbl_800356F4
    .word lbl_800356F4
    .word lbl_800356F4
    .word lbl_800356F4
    .word lbl_800356F8
    .word lbl_800356F8
    .word lbl_800356F8
    .word lbl_800356F8
    .word lbl_800356F8
    .word lbl_800356F4
    .word lbl_800356F8
    .word lbl_800356F4
    .word lbl_800356F4
    .word lbl_800356F4
    .word lbl_800356F8
