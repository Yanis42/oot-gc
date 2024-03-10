# GXFifo.c
.include "macros.inc"

.section .text, "ax"

.balign 4

GXCPInterruptHandler:
/* 0A4064 800A9604 7C0802A6 */  mflr    r0
/* 0A4068 800A9608 90010004 */  stw     r0, 4(r1)
/* 0A406C 800A960C 9421FD20 */  stwu    r1, -0x2e0(r1)
/* 0A4070 800A9610 93E102DC */  stw     r31, 0x2dc(r1)
/* 0A4074 800A9614 7C9F2378 */  mr      r31, r4
/* 0A4078 800A9618 80AD8C3C */  lwz     r5, __cpReg@sda21(r13)
/* 0A407C 800A961C 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A4080 800A9620 A0050000 */  lhz     r0, 0(r5)
/* 0A4084 800A9624 9003000C */  stw     r0, 0xc(r3)
/* 0A4088 800A9628 80030008 */  lwz     r0, 8(r3)
/* 0A408C 800A962C 5400EFFF */  rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 0A4090 800A9630 41820038 */  beq     lbl_800A9668
/* 0A4094 800A9634 8003000C */  lwz     r0, 0xc(r3)
/* 0A4098 800A9638 5400FFFF */  rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 0A409C 800A963C 4182002C */  beq     lbl_800A9668
/* 0A40A0 800A9640 806D8C68 */  lwz     r3, __GXCurrentThread@sda21(r13)
/* 0A40A4 800A9644 4BFF85D1 */  bl      OSResumeThread
/* 0A40A8 800A9648 38000000 */  li      r0, 0
/* 0A40AC 800A964C 900D8C70 */  stw     r0, GXOverflowSuspendInProgress@sda21(r13)
/* 0A40B0 800A9650 38600001 */  li      r3, 1
/* 0A40B4 800A9654 38800001 */  li      r4, 1
/* 0A40B8 800A9658 48000605 */  bl      __GXWriteFifoIntReset
/* 0A40BC 800A965C 38600001 */  li      r3, 1
/* 0A40C0 800A9660 38800000 */  li      r4, 0
/* 0A40C4 800A9664 480005C9 */  bl      __GXWriteFifoIntEnable
lbl_800A9668:
/* 0A40C8 800A9668 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A40CC 800A966C 80030008 */  lwz     r0, 8(r3)
/* 0A40D0 800A9670 5400F7FF */  rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 0A40D4 800A9674 41820044 */  beq     lbl_800A96B8
/* 0A40D8 800A9678 8003000C */  lwz     r0, 0xc(r3)
/* 0A40DC 800A967C 540007FF */  clrlwi. r0, r0, 0x1f
/* 0A40E0 800A9680 41820038 */  beq     lbl_800A96B8
/* 0A40E4 800A9684 80AD8C78 */  lwz     r5, __GXOverflowCount@sda21(r13)
/* 0A40E8 800A9688 38600000 */  li      r3, 0
/* 0A40EC 800A968C 38800001 */  li      r4, 1
/* 0A40F0 800A9690 38050001 */  addi    r0, r5, 1
/* 0A40F4 800A9694 900D8C78 */  stw     r0, __GXOverflowCount@sda21(r13)
/* 0A40F8 800A9698 48000595 */  bl      __GXWriteFifoIntEnable
/* 0A40FC 800A969C 38600001 */  li      r3, 1
/* 0A4100 800A96A0 38800000 */  li      r4, 0
/* 0A4104 800A96A4 480005B9 */  bl      __GXWriteFifoIntReset
/* 0A4108 800A96A8 38000001 */  li      r0, 1
/* 0A410C 800A96AC 806D8C68 */  lwz     r3, __GXCurrentThread@sda21(r13)
/* 0A4110 800A96B0 900D8C70 */  stw     r0, GXOverflowSuspendInProgress@sda21(r13)
/* 0A4114 800A96B4 4BFF87E9 */  bl      OSSuspendThread
lbl_800A96B8:
/* 0A4118 800A96B8 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A411C 800A96BC 80830008 */  lwz     r4, 8(r3)
/* 0A4120 800A96C0 5480DFFF */  rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 0A4124 800A96C4 41820060 */  beq     lbl_800A9724
/* 0A4128 800A96C8 8003000C */  lwz     r0, 0xc(r3)
/* 0A412C 800A96CC 5400E7FF */  rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 0A4130 800A96D0 41820054 */  beq     lbl_800A9724
/* 0A4134 800A96D4 38000000 */  li      r0, 0
/* 0A4138 800A96D8 50042EB4 */  rlwimi  r4, r0, 5, 0x1a, 0x1a
/* 0A413C 800A96DC 90830008 */  stw     r4, 8(r3)
/* 0A4140 800A96E0 80030008 */  lwz     r0, 8(r3)
/* 0A4144 800A96E4 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4148 800A96E8 B0030002 */  sth     r0, 2(r3)
/* 0A414C 800A96EC 800D8C74 */  lwz     r0, BreakPointCB@sda21(r13)
/* 0A4150 800A96F0 28000000 */  cmplwi  r0, 0
/* 0A4154 800A96F4 41820030 */  beq     lbl_800A9724
/* 0A4158 800A96F8 38610010 */  addi    r3, r1, 0x10
/* 0A415C 800A96FC 4BFF4AA9 */  bl      OSClearContext
/* 0A4160 800A9700 38610010 */  addi    r3, r1, 0x10
/* 0A4164 800A9704 4BFF48D9 */  bl      OSSetCurrentContext
/* 0A4168 800A9708 818D8C74 */  lwz     r12, BreakPointCB@sda21(r13)
/* 0A416C 800A970C 7D8803A6 */  mtlr    r12
/* 0A4170 800A9710 4E800021 */  blrl    
/* 0A4174 800A9714 38610010 */  addi    r3, r1, 0x10
/* 0A4178 800A9718 4BFF4A8D */  bl      OSClearContext
/* 0A417C 800A971C 7FE3FB78 */  mr      r3, r31
/* 0A4180 800A9720 4BFF48BD */  bl      OSSetCurrentContext
lbl_800A9724:
/* 0A4184 800A9724 800102E4 */  lwz     r0, 0x2e4(r1)
/* 0A4188 800A9728 83E102DC */  lwz     r31, 0x2dc(r1)
/* 0A418C 800A972C 382102E0 */  addi    r1, r1, 0x2e0
/* 0A4190 800A9730 7C0803A6 */  mtlr    r0
/* 0A4194 800A9734 4E800020 */  blr     

glabel GXInitFifoBase
/* 0A4198 800A9738 7C0802A6 */  mflr    r0
/* 0A419C 800A973C 90010004 */  stw     r0, 4(r1)
/* 0A41A0 800A9740 3805FFFC */  addi    r0, r5, -4
/* 0A41A4 800A9744 9421FFE0 */  stwu    r1, -0x20(r1)
/* 0A41A8 800A9748 93E1001C */  stw     r31, 0x1c(r1)
/* 0A41AC 800A974C 3BE40000 */  addi    r31, r4, 0
/* 0A41B0 800A9750 7C1F0214 */  add     r0, r31, r0
/* 0A41B4 800A9754 93C10018 */  stw     r30, 0x18(r1)
/* 0A41B8 800A9758 3BC30000 */  addi    r30, r3, 0
/* 0A41BC 800A975C 3885C000 */  addi    r4, r5, -16384
/* 0A41C0 800A9760 93E30000 */  stw     r31, 0(r3)
/* 0A41C4 800A9764 90030004 */  stw     r0, 4(r3)
/* 0A41C8 800A9768 38000000 */  li      r0, 0
/* 0A41CC 800A976C 90A30008 */  stw     r5, 8(r3)
/* 0A41D0 800A9770 54A5F874 */  rlwinm  r5, r5, 0x1f, 1, 0x1a
/* 0A41D4 800A9774 901E001C */  stw     r0, 0x1c(r30)
/* 0A41D8 800A9778 4800009D */  bl      GXInitFifoLimits
/* 0A41DC 800A977C 387E0000 */  addi    r3, r30, 0
/* 0A41E0 800A9780 389F0000 */  addi    r4, r31, 0
/* 0A41E4 800A9784 38BF0000 */  addi    r5, r31, 0
/* 0A41E8 800A9788 4800001D */  bl      GXInitFifoPtrs
/* 0A41EC 800A978C 80010024 */  lwz     r0, 0x24(r1)
/* 0A41F0 800A9790 83E1001C */  lwz     r31, 0x1c(r1)
/* 0A41F4 800A9794 83C10018 */  lwz     r30, 0x18(r1)
/* 0A41F8 800A9798 38210020 */  addi    r1, r1, 0x20
/* 0A41FC 800A979C 7C0803A6 */  mtlr    r0
/* 0A4200 800A97A0 4E800020 */  blr     

glabel GXInitFifoPtrs
/* 0A4204 800A97A4 7C0802A6 */  mflr    r0
/* 0A4208 800A97A8 90010004 */  stw     r0, 4(r1)
/* 0A420C 800A97AC 9421FFD8 */  stwu    r1, -0x28(r1)
/* 0A4210 800A97B0 93E10024 */  stw     r31, 0x24(r1)
/* 0A4214 800A97B4 3BE50000 */  addi    r31, r5, 0
/* 0A4218 800A97B8 93C10020 */  stw     r30, 0x20(r1)
/* 0A421C 800A97BC 3BC40000 */  addi    r30, r4, 0
/* 0A4220 800A97C0 93A1001C */  stw     r29, 0x1c(r1)
/* 0A4224 800A97C4 3BA30000 */  addi    r29, r3, 0
/* 0A4228 800A97C8 4BFF5535 */  bl      OSDisableInterrupts
/* 0A422C 800A97CC 93DD0014 */  stw     r30, 0x14(r29)
/* 0A4230 800A97D0 7C1EF850 */  subf    r0, r30, r31
/* 0A4234 800A97D4 93FD0018 */  stw     r31, 0x18(r29)
/* 0A4238 800A97D8 901D001C */  stw     r0, 0x1c(r29)
/* 0A423C 800A97DC 809D001C */  lwz     r4, 0x1c(r29)
/* 0A4240 800A97E0 2C040000 */  cmpwi   r4, 0
/* 0A4244 800A97E4 40800010 */  bge     lbl_800A97F4
/* 0A4248 800A97E8 801D0008 */  lwz     r0, 8(r29)
/* 0A424C 800A97EC 7C040214 */  add     r0, r4, r0
/* 0A4250 800A97F0 901D001C */  stw     r0, 0x1c(r29)
lbl_800A97F4:
/* 0A4254 800A97F4 4BFF5531 */  bl      OSRestoreInterrupts
/* 0A4258 800A97F8 8001002C */  lwz     r0, 0x2c(r1)
/* 0A425C 800A97FC 83E10024 */  lwz     r31, 0x24(r1)
/* 0A4260 800A9800 83C10020 */  lwz     r30, 0x20(r1)
/* 0A4264 800A9804 83A1001C */  lwz     r29, 0x1c(r1)
/* 0A4268 800A9808 38210028 */  addi    r1, r1, 0x28
/* 0A426C 800A980C 7C0803A6 */  mtlr    r0
/* 0A4270 800A9810 4E800020 */  blr     

glabel GXInitFifoLimits
/* 0A4274 800A9814 9083000C */  stw     r4, 0xc(r3)
/* 0A4278 800A9818 90A30010 */  stw     r5, 0x10(r3)
/* 0A427C 800A981C 4E800020 */  blr     

glabel GXSetCPUFifo
/* 0A4280 800A9820 7C0802A6 */  mflr    r0
/* 0A4284 800A9824 90010004 */  stw     r0, 4(r1)
/* 0A4288 800A9828 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0A428C 800A982C 93E10014 */  stw     r31, 0x14(r1)
/* 0A4290 800A9830 93C10010 */  stw     r30, 0x10(r1)
/* 0A4294 800A9834 7C7E1B78 */  mr      r30, r3
/* 0A4298 800A9838 4BFF54C5 */  bl      OSDisableInterrupts
/* 0A429C 800A983C 800D8C64 */  lwz     r0, GPFifo@sda21(r13)
/* 0A42A0 800A9840 3BE30000 */  addi    r31, r3, 0
/* 0A42A4 800A9844 93CD8C60 */  stw     r30, CPUFifo@sda21(r13)
/* 0A42A8 800A9848 7C1E0040 */  cmplw   r30, r0
/* 0A42AC 800A984C 40820070 */  bne     lbl_800A98BC
/* 0A42B0 800A9850 801E0000 */  lwz     r0, 0(r30)
/* 0A42B4 800A9854 39000000 */  li      r8, 0
/* 0A42B8 800A9858 806D8C38 */  lwz     r3, __piReg@sda21(r13)
/* 0A42BC 800A985C 38C00000 */  li      r6, 0
/* 0A42C0 800A9860 540000BE */  clrlwi  r0, r0, 2
/* 0A42C4 800A9864 9003000C */  stw     r0, 0xc(r3)
/* 0A42C8 800A9868 38000001 */  li      r0, 1
/* 0A42CC 800A986C 38600001 */  li      r3, 1
/* 0A42D0 800A9870 80FE0004 */  lwz     r7, 4(r30)
/* 0A42D4 800A9874 38800001 */  li      r4, 1
/* 0A42D8 800A9878 80AD8C38 */  lwz     r5, __piReg@sda21(r13)
/* 0A42DC 800A987C 54E700BE */  clrlwi  r7, r7, 2
/* 0A42E0 800A9880 90E50010 */  stw     r7, 0x10(r5)
/* 0A42E4 800A9884 80FE0018 */  lwz     r7, 0x18(r30)
/* 0A42E8 800A9888 80AD8C38 */  lwz     r5, __piReg@sda21(r13)
/* 0A42EC 800A988C 50E801B4 */  rlwimi  r8, r7, 0, 6, 0x1a
/* 0A42F0 800A9890 38E80000 */  addi    r7, r8, 0
/* 0A42F4 800A9894 50C7D14A */  rlwimi  r7, r6, 0x1a, 5, 5
/* 0A42F8 800A9898 90E50014 */  stw     r7, 0x14(r5)
/* 0A42FC 800A989C 980D8C6C */  stb     r0, CPGPLinked@sda21(r13)
/* 0A4300 800A98A0 480003BD */  bl      __GXWriteFifoIntReset
/* 0A4304 800A98A4 38600001 */  li      r3, 1
/* 0A4308 800A98A8 38800000 */  li      r4, 0
/* 0A430C 800A98AC 48000381 */  bl      __GXWriteFifoIntEnable
/* 0A4310 800A98B0 38600001 */  li      r3, 1
/* 0A4314 800A98B4 48000345 */  bl      __GXFifoLink
/* 0A4318 800A98B8 4800006C */  b       lbl_800A9924
lbl_800A98BC:
/* 0A431C 800A98BC 880D8C6C */  lbz     r0, CPGPLinked@sda21(r13)
/* 0A4320 800A98C0 28000000 */  cmplwi  r0, 0
/* 0A4324 800A98C4 41820014 */  beq     lbl_800A98D8
/* 0A4328 800A98C8 38600000 */  li      r3, 0
/* 0A432C 800A98CC 4800032D */  bl      __GXFifoLink
/* 0A4330 800A98D0 38000000 */  li      r0, 0
/* 0A4334 800A98D4 980D8C6C */  stb     r0, CPGPLinked@sda21(r13)
lbl_800A98D8:
/* 0A4338 800A98D8 38600000 */  li      r3, 0
/* 0A433C 800A98DC 38800000 */  li      r4, 0
/* 0A4340 800A98E0 4800034D */  bl      __GXWriteFifoIntEnable
/* 0A4344 800A98E4 809E0000 */  lwz     r4, 0(r30)
/* 0A4348 800A98E8 38A00000 */  li      r5, 0
/* 0A434C 800A98EC 806D8C38 */  lwz     r3, __piReg@sda21(r13)
/* 0A4350 800A98F0 38000000 */  li      r0, 0
/* 0A4354 800A98F4 548400BE */  clrlwi  r4, r4, 2
/* 0A4358 800A98F8 9083000C */  stw     r4, 0xc(r3)
/* 0A435C 800A98FC 809E0004 */  lwz     r4, 4(r30)
/* 0A4360 800A9900 806D8C38 */  lwz     r3, __piReg@sda21(r13)
/* 0A4364 800A9904 548400BE */  clrlwi  r4, r4, 2
/* 0A4368 800A9908 90830010 */  stw     r4, 0x10(r3)
/* 0A436C 800A990C 809E0018 */  lwz     r4, 0x18(r30)
/* 0A4370 800A9910 806D8C38 */  lwz     r3, __piReg@sda21(r13)
/* 0A4374 800A9914 508501B4 */  rlwimi  r5, r4, 0, 6, 0x1a
/* 0A4378 800A9918 38850000 */  addi    r4, r5, 0
/* 0A437C 800A991C 5004D14A */  rlwimi  r4, r0, 0x1a, 5, 5
/* 0A4380 800A9920 90830014 */  stw     r4, 0x14(r3)
lbl_800A9924:
/* 0A4384 800A9924 4BFF21D1 */  bl      PPCSync
/* 0A4388 800A9928 7FE3FB78 */  mr      r3, r31
/* 0A438C 800A992C 4BFF53F9 */  bl      OSRestoreInterrupts
/* 0A4390 800A9930 8001001C */  lwz     r0, 0x1c(r1)
/* 0A4394 800A9934 83E10014 */  lwz     r31, 0x14(r1)
/* 0A4398 800A9938 83C10010 */  lwz     r30, 0x10(r1)
/* 0A439C 800A993C 38210018 */  addi    r1, r1, 0x18
/* 0A43A0 800A9940 7C0803A6 */  mtlr    r0
/* 0A43A4 800A9944 4E800020 */  blr     

glabel GXSetGPFifo
/* 0A43A8 800A9948 7C0802A6 */  mflr    r0
/* 0A43AC 800A994C 90010004 */  stw     r0, 4(r1)
/* 0A43B0 800A9950 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0A43B4 800A9954 93E10014 */  stw     r31, 0x14(r1)
/* 0A43B8 800A9958 93C10010 */  stw     r30, 0x10(r1)
/* 0A43BC 800A995C 7C7E1B78 */  mr      r30, r3
/* 0A43C0 800A9960 4BFF539D */  bl      OSDisableInterrupts
/* 0A43C4 800A9964 7C7F1B78 */  mr      r31, r3
/* 0A43C8 800A9968 4800026D */  bl      __GXFifoReadDisable
/* 0A43CC 800A996C 38600000 */  li      r3, 0
/* 0A43D0 800A9970 38800000 */  li      r4, 0
/* 0A43D4 800A9974 480002B9 */  bl      __GXWriteFifoIntEnable
/* 0A43D8 800A9978 93CD8C64 */  stw     r30, GPFifo@sda21(r13)
/* 0A43DC 800A997C 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A43E0 800A9980 801E0000 */  lwz     r0, 0(r30)
/* 0A43E4 800A9984 B0030020 */  sth     r0, 0x20(r3)
/* 0A43E8 800A9988 801E0004 */  lwz     r0, 4(r30)
/* 0A43EC 800A998C 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A43F0 800A9990 B0030024 */  sth     r0, 0x24(r3)
/* 0A43F4 800A9994 801E001C */  lwz     r0, 0x1c(r30)
/* 0A43F8 800A9998 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A43FC 800A999C B0030030 */  sth     r0, 0x30(r3)
/* 0A4400 800A99A0 801E0018 */  lwz     r0, 0x18(r30)
/* 0A4404 800A99A4 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4408 800A99A8 B0030034 */  sth     r0, 0x34(r3)
/* 0A440C 800A99AC 801E0014 */  lwz     r0, 0x14(r30)
/* 0A4410 800A99B0 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4414 800A99B4 B0030038 */  sth     r0, 0x38(r3)
/* 0A4418 800A99B8 801E000C */  lwz     r0, 0xc(r30)
/* 0A441C 800A99BC 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4420 800A99C0 B0030028 */  sth     r0, 0x28(r3)
/* 0A4424 800A99C4 801E0010 */  lwz     r0, 0x10(r30)
/* 0A4428 800A99C8 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A442C 800A99CC B003002C */  sth     r0, 0x2c(r3)
/* 0A4430 800A99D0 801E0000 */  lwz     r0, 0(r30)
/* 0A4434 800A99D4 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4438 800A99D8 540084BE */  rlwinm  r0, r0, 0x10, 0x12, 0x1f
/* 0A443C 800A99DC B0030022 */  sth     r0, 0x22(r3)
/* 0A4440 800A99E0 801E0004 */  lwz     r0, 4(r30)
/* 0A4444 800A99E4 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4448 800A99E8 540084BE */  rlwinm  r0, r0, 0x10, 0x12, 0x1f
/* 0A444C 800A99EC B0030026 */  sth     r0, 0x26(r3)
/* 0A4450 800A99F0 801E001C */  lwz     r0, 0x1c(r30)
/* 0A4454 800A99F4 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4458 800A99F8 7C008670 */  srawi   r0, r0, 0x10
/* 0A445C 800A99FC B0030032 */  sth     r0, 0x32(r3)
/* 0A4460 800A9A00 801E0018 */  lwz     r0, 0x18(r30)
/* 0A4464 800A9A04 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4468 800A9A08 540084BE */  rlwinm  r0, r0, 0x10, 0x12, 0x1f
/* 0A446C 800A9A0C B0030036 */  sth     r0, 0x36(r3)
/* 0A4470 800A9A10 801E0014 */  lwz     r0, 0x14(r30)
/* 0A4474 800A9A14 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4478 800A9A18 540084BE */  rlwinm  r0, r0, 0x10, 0x12, 0x1f
/* 0A447C 800A9A1C B003003A */  sth     r0, 0x3a(r3)
/* 0A4480 800A9A20 801E000C */  lwz     r0, 0xc(r30)
/* 0A4484 800A9A24 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4488 800A9A28 5400843E */  srwi    r0, r0, 0x10
/* 0A448C 800A9A2C B003002A */  sth     r0, 0x2a(r3)
/* 0A4490 800A9A30 801E0010 */  lwz     r0, 0x10(r30)
/* 0A4494 800A9A34 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4498 800A9A38 5400843E */  srwi    r0, r0, 0x10
/* 0A449C 800A9A3C B003002E */  sth     r0, 0x2e(r3)
/* 0A44A0 800A9A40 4BFF20B5 */  bl      PPCSync
/* 0A44A4 800A9A44 806D8C60 */  lwz     r3, CPUFifo@sda21(r13)
/* 0A44A8 800A9A48 800D8C64 */  lwz     r0, GPFifo@sda21(r13)
/* 0A44AC 800A9A4C 7C030040 */  cmplw   r3, r0
/* 0A44B0 800A9A50 40820024 */  bne     lbl_800A9A74
/* 0A44B4 800A9A54 38000001 */  li      r0, 1
/* 0A44B8 800A9A58 980D8C6C */  stb     r0, CPGPLinked@sda21(r13)
/* 0A44BC 800A9A5C 38600001 */  li      r3, 1
/* 0A44C0 800A9A60 38800000 */  li      r4, 0
/* 0A44C4 800A9A64 480001C9 */  bl      __GXWriteFifoIntEnable
/* 0A44C8 800A9A68 38600001 */  li      r3, 1
/* 0A44CC 800A9A6C 4800018D */  bl      __GXFifoLink
/* 0A44D0 800A9A70 48000020 */  b       lbl_800A9A90
lbl_800A9A74:
/* 0A44D4 800A9A74 38000000 */  li      r0, 0
/* 0A44D8 800A9A78 980D8C6C */  stb     r0, CPGPLinked@sda21(r13)
/* 0A44DC 800A9A7C 38600000 */  li      r3, 0
/* 0A44E0 800A9A80 38800000 */  li      r4, 0
/* 0A44E4 800A9A84 480001A9 */  bl      __GXWriteFifoIntEnable
/* 0A44E8 800A9A88 38600000 */  li      r3, 0
/* 0A44EC 800A9A8C 4800016D */  bl      __GXFifoLink
lbl_800A9A90:
/* 0A44F0 800A9A90 38600001 */  li      r3, 1
/* 0A44F4 800A9A94 38800001 */  li      r4, 1
/* 0A44F8 800A9A98 480001C5 */  bl      __GXWriteFifoIntReset
/* 0A44FC 800A9A9C 48000115 */  bl      __GXFifoReadEnable
/* 0A4500 800A9AA0 7FE3FB78 */  mr      r3, r31
/* 0A4504 800A9AA4 4BFF5281 */  bl      OSRestoreInterrupts
/* 0A4508 800A9AA8 8001001C */  lwz     r0, 0x1c(r1)
/* 0A450C 800A9AAC 83E10014 */  lwz     r31, 0x14(r1)
/* 0A4510 800A9AB0 83C10010 */  lwz     r30, 0x10(r1)
/* 0A4514 800A9AB4 38210018 */  addi    r1, r1, 0x18
/* 0A4518 800A9AB8 7C0803A6 */  mtlr    r0
/* 0A451C 800A9ABC 4E800020 */  blr     

glabel GXGetGPStatus
/* 0A4520 800A9AC0 812D8C3C */  lwz     r9, __cpReg@sda21(r13)
/* 0A4524 800A9AC4 81028400 */  lwz     r8, __GXData@sda21(r2)
/* 0A4528 800A9AC8 A0090000 */  lhz     r0, 0(r9)
/* 0A452C 800A9ACC 9008000C */  stw     r0, 0xc(r8)
/* 0A4530 800A9AD0 8008000C */  lwz     r0, 0xc(r8)
/* 0A4534 800A9AD4 540007FE */  clrlwi  r0, r0, 0x1f
/* 0A4538 800A9AD8 98030000 */  stb     r0, 0(r3)
/* 0A453C 800A9ADC 8008000C */  lwz     r0, 0xc(r8)
/* 0A4540 800A9AE0 5400FFFE */  rlwinm  r0, r0, 0x1f, 0x1f, 0x1f
/* 0A4544 800A9AE4 98040000 */  stb     r0, 0(r4)
/* 0A4548 800A9AE8 8008000C */  lwz     r0, 0xc(r8)
/* 0A454C 800A9AEC 5400F7FE */  rlwinm  r0, r0, 0x1e, 0x1f, 0x1f
/* 0A4550 800A9AF0 98050000 */  stb     r0, 0(r5)
/* 0A4554 800A9AF4 8008000C */  lwz     r0, 0xc(r8)
/* 0A4558 800A9AF8 5400EFFE */  rlwinm  r0, r0, 0x1d, 0x1f, 0x1f
/* 0A455C 800A9AFC 98060000 */  stb     r0, 0(r6)
/* 0A4560 800A9B00 8008000C */  lwz     r0, 0xc(r8)
/* 0A4564 800A9B04 5400E7FE */  rlwinm  r0, r0, 0x1c, 0x1f, 0x1f
/* 0A4568 800A9B08 98070000 */  stb     r0, 0(r7)
/* 0A456C 800A9B0C 4E800020 */  blr     

glabel GXGetFifoBase
/* 0A4570 800A9B10 80630000 */  lwz     r3, 0(r3)
/* 0A4574 800A9B14 4E800020 */  blr     

glabel GXGetFifoSize
/* 0A4578 800A9B18 80630008 */  lwz     r3, 8(r3)
/* 0A457C 800A9B1C 4E800020 */  blr     

glabel GXSetBreakPtCallback
/* 0A4580 800A9B20 7C0802A6 */  mflr    r0
/* 0A4584 800A9B24 90010004 */  stw     r0, 4(r1)
/* 0A4588 800A9B28 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0A458C 800A9B2C 93E10014 */  stw     r31, 0x14(r1)
/* 0A4590 800A9B30 93C10010 */  stw     r30, 0x10(r1)
/* 0A4594 800A9B34 7C7E1B78 */  mr      r30, r3
/* 0A4598 800A9B38 83ED8C74 */  lwz     r31, BreakPointCB@sda21(r13)
/* 0A459C 800A9B3C 4BFF51C1 */  bl      OSDisableInterrupts
/* 0A45A0 800A9B40 93CD8C74 */  stw     r30, BreakPointCB@sda21(r13)
/* 0A45A4 800A9B44 4BFF51E1 */  bl      OSRestoreInterrupts
/* 0A45A8 800A9B48 7FE3FB78 */  mr      r3, r31
/* 0A45AC 800A9B4C 8001001C */  lwz     r0, 0x1c(r1)
/* 0A45B0 800A9B50 83E10014 */  lwz     r31, 0x14(r1)
/* 0A45B4 800A9B54 83C10010 */  lwz     r30, 0x10(r1)
/* 0A45B8 800A9B58 38210018 */  addi    r1, r1, 0x18
/* 0A45BC 800A9B5C 7C0803A6 */  mtlr    r0
/* 0A45C0 800A9B60 4E800020 */  blr     

glabel __GXFifoInit
/* 0A45C4 800A9B64 7C0802A6 */  mflr    r0
/* 0A45C8 800A9B68 3C60800B */  lis     r3, GXCPInterruptHandler@ha
/* 0A45CC 800A9B6C 90010004 */  stw     r0, 4(r1)
/* 0A45D0 800A9B70 38839604 */  addi    r4, r3, GXCPInterruptHandler@l
/* 0A45D4 800A9B74 38600011 */  li      r3, 0x11
/* 0A45D8 800A9B78 9421FFF8 */  stwu    r1, -8(r1)
/* 0A45DC 800A9B7C 4BFF51CD */  bl      __OSSetInterruptHandler
/* 0A45E0 800A9B80 38604000 */  li      r3, 0x4000
/* 0A45E4 800A9B84 4BFF55C9 */  bl      __OSUnmaskInterrupts
/* 0A45E8 800A9B88 4BFF76BD */  bl      OSGetCurrentThread
/* 0A45EC 800A9B8C 38000000 */  li      r0, 0
/* 0A45F0 800A9B90 906D8C68 */  stw     r3, __GXCurrentThread@sda21(r13)
/* 0A45F4 800A9B94 900D8C70 */  stw     r0, GXOverflowSuspendInProgress@sda21(r13)
/* 0A45F8 800A9B98 900D8C60 */  stw     r0, CPUFifo@sda21(r13)
/* 0A45FC 800A9B9C 900D8C64 */  stw     r0, GPFifo@sda21(r13)
/* 0A4600 800A9BA0 8001000C */  lwz     r0, 0xc(r1)
/* 0A4604 800A9BA4 38210008 */  addi    r1, r1, 8
/* 0A4608 800A9BA8 7C0803A6 */  mtlr    r0
/* 0A460C 800A9BAC 4E800020 */  blr     

__GXFifoReadEnable:
/* 0A4610 800A9BB0 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A4614 800A9BB4 38000001 */  li      r0, 1
/* 0A4618 800A9BB8 80640008 */  lwz     r3, 8(r4)
/* 0A461C 800A9BBC 500307FE */  rlwimi  r3, r0, 0, 0x1f, 0x1f
/* 0A4620 800A9BC0 90640008 */  stw     r3, 8(r4)
/* 0A4624 800A9BC4 80040008 */  lwz     r0, 8(r4)
/* 0A4628 800A9BC8 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A462C 800A9BCC B0030002 */  sth     r0, 2(r3)
/* 0A4630 800A9BD0 4E800020 */  blr     

__GXFifoReadDisable:
/* 0A4634 800A9BD4 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A4638 800A9BD8 38000000 */  li      r0, 0
/* 0A463C 800A9BDC 80640008 */  lwz     r3, 8(r4)
/* 0A4640 800A9BE0 500307FE */  rlwimi  r3, r0, 0, 0x1f, 0x1f
/* 0A4644 800A9BE4 90640008 */  stw     r3, 8(r4)
/* 0A4648 800A9BE8 80040008 */  lwz     r0, 8(r4)
/* 0A464C 800A9BEC 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4650 800A9BF0 B0030002 */  sth     r0, 2(r3)
/* 0A4654 800A9BF4 4E800020 */  blr     

__GXFifoLink:
/* 0A4658 800A9BF8 5460063F */  clrlwi. r0, r3, 0x18
/* 0A465C 800A9BFC 4182000C */  beq     lbl_800A9C08
/* 0A4660 800A9C00 38800001 */  li      r4, 1
/* 0A4664 800A9C04 48000008 */  b       lbl_800A9C0C
lbl_800A9C08:
/* 0A4668 800A9C08 38800000 */  li      r4, 0
lbl_800A9C0C:
/* 0A466C 800A9C0C 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A4670 800A9C10 80030008 */  lwz     r0, 8(r3)
/* 0A4674 800A9C14 508026F6 */  rlwimi  r0, r4, 4, 0x1b, 0x1b
/* 0A4678 800A9C18 90030008 */  stw     r0, 8(r3)
/* 0A467C 800A9C1C 80030008 */  lwz     r0, 8(r3)
/* 0A4680 800A9C20 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A4684 800A9C24 B0030002 */  sth     r0, 2(r3)
/* 0A4688 800A9C28 4E800020 */  blr     

__GXWriteFifoIntEnable:
/* 0A468C 800A9C2C 80A28400 */  lwz     r5, __GXData@sda21(r2)
/* 0A4690 800A9C30 5480063E */  clrlwi  r0, r4, 0x18
/* 0A4694 800A9C34 80850008 */  lwz     r4, 8(r5)
/* 0A4698 800A9C38 5064177A */  rlwimi  r4, r3, 2, 0x1d, 0x1d
/* 0A469C 800A9C3C 90850008 */  stw     r4, 8(r5)
/* 0A46A0 800A9C40 80650008 */  lwz     r3, 8(r5)
/* 0A46A4 800A9C44 50031F38 */  rlwimi  r3, r0, 3, 0x1c, 0x1c
/* 0A46A8 800A9C48 90650008 */  stw     r3, 8(r5)
/* 0A46AC 800A9C4C 80050008 */  lwz     r0, 8(r5)
/* 0A46B0 800A9C50 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A46B4 800A9C54 B0030002 */  sth     r0, 2(r3)
/* 0A46B8 800A9C58 4E800020 */  blr     

__GXWriteFifoIntReset:
/* 0A46BC 800A9C5C 80A28400 */  lwz     r5, __GXData@sda21(r2)
/* 0A46C0 800A9C60 5480063E */  clrlwi  r0, r4, 0x18
/* 0A46C4 800A9C64 80850010 */  lwz     r4, 0x10(r5)
/* 0A46C8 800A9C68 506407FE */  rlwimi  r4, r3, 0, 0x1f, 0x1f
/* 0A46CC 800A9C6C 90850010 */  stw     r4, 0x10(r5)
/* 0A46D0 800A9C70 80650010 */  lwz     r3, 0x10(r5)
/* 0A46D4 800A9C74 50030FBC */  rlwimi  r3, r0, 1, 0x1e, 0x1e
/* 0A46D8 800A9C78 90650010 */  stw     r3, 0x10(r5)
/* 0A46DC 800A9C7C 80050010 */  lwz     r0, 0x10(r5)
/* 0A46E0 800A9C80 806D8C3C */  lwz     r3, __cpReg@sda21(r13)
/* 0A46E4 800A9C84 B0030004 */  sth     r0, 4(r3)
/* 0A46E8 800A9C88 4E800020 */  blr     

glabel __GXCleanGPFifo
/* 0A46EC 800A9C8C 7C0802A6 */  mflr    r0
/* 0A46F0 800A9C90 90010004 */  stw     r0, 4(r1)
/* 0A46F4 800A9C94 9421FF58 */  stwu    r1, -0xa8(r1)
/* 0A46F8 800A9C98 93E100A4 */  stw     r31, 0xa4(r1)
/* 0A46FC 800A9C9C 93C100A0 */  stw     r30, 0xa0(r1)
/* 0A4700 800A9CA0 93A1009C */  stw     r29, 0x9c(r1)
/* 0A4704 800A9CA4 480000F1 */  bl      GXGetGPFifo
/* 0A4708 800A9CA8 7C7F1B79 */  or.     r31, r3, r3
/* 0A470C 800A9CAC 418200C4 */  beq     lbl_800A9D70
/* 0A4710 800A9CB0 480000DD */  bl      GXGetCPUFifo
/* 0A4714 800A9CB4 38000010 */  li      r0, 0x10
/* 0A4718 800A9CB8 83BF0000 */  lwz     r29, 0(r31)
/* 0A471C 800A9CBC 7C0903A6 */  mtctr   r0
/* 0A4720 800A9CC0 3BC30000 */  addi    r30, r3, 0
/* 0A4724 800A9CC4 38A1000C */  addi    r5, r1, 0xc
/* 0A4728 800A9CC8 389FFFF8 */  addi    r4, r31, -8
lbl_800A9CCC:
/* 0A472C 800A9CCC 84640008 */  lwzu    r3, 8(r4)
/* 0A4730 800A9CD0 80040004 */  lwz     r0, 4(r4)
/* 0A4734 800A9CD4 94650008 */  stwu    r3, 8(r5)
/* 0A4738 800A9CD8 90050004 */  stw     r0, 4(r5)
/* 0A473C 800A9CDC 4200FFF0 */  bdnz    lbl_800A9CCC
/* 0A4740 800A9CE0 4BFF501D */  bl      OSDisableInterrupts
/* 0A4744 800A9CE4 93A10028 */  stw     r29, 0x28(r1)
/* 0A4748 800A9CE8 38000000 */  li      r0, 0
/* 0A474C 800A9CEC 93A1002C */  stw     r29, 0x2c(r1)
/* 0A4750 800A9CF0 90010030 */  stw     r0, 0x30(r1)
/* 0A4754 800A9CF4 80810030 */  lwz     r4, 0x30(r1)
/* 0A4758 800A9CF8 2C040000 */  cmpwi   r4, 0
/* 0A475C 800A9CFC 40800010 */  bge     lbl_800A9D0C
/* 0A4760 800A9D00 8001001C */  lwz     r0, 0x1c(r1)
/* 0A4764 800A9D04 7C040214 */  add     r0, r4, r0
/* 0A4768 800A9D08 90010030 */  stw     r0, 0x30(r1)
lbl_800A9D0C:
/* 0A476C 800A9D0C 4BFF5019 */  bl      OSRestoreInterrupts
/* 0A4770 800A9D10 38610014 */  addi    r3, r1, 0x14
/* 0A4774 800A9D14 4BFFFC35 */  bl      GXSetGPFifo
/* 0A4778 800A9D18 7C1EF840 */  cmplw   r30, r31
/* 0A477C 800A9D1C 4082000C */  bne     lbl_800A9D28
/* 0A4780 800A9D20 38610014 */  addi    r3, r1, 0x14
/* 0A4784 800A9D24 4BFFFAFD */  bl      GXSetCPUFifo
lbl_800A9D28:
/* 0A4788 800A9D28 4BFF4FD5 */  bl      OSDisableInterrupts
/* 0A478C 800A9D2C 93BF0014 */  stw     r29, 0x14(r31)
/* 0A4790 800A9D30 38000000 */  li      r0, 0
/* 0A4794 800A9D34 93BF0018 */  stw     r29, 0x18(r31)
/* 0A4798 800A9D38 901F001C */  stw     r0, 0x1c(r31)
/* 0A479C 800A9D3C 809F001C */  lwz     r4, 0x1c(r31)
/* 0A47A0 800A9D40 2C040000 */  cmpwi   r4, 0
/* 0A47A4 800A9D44 40800010 */  bge     lbl_800A9D54
/* 0A47A8 800A9D48 801F0008 */  lwz     r0, 8(r31)
/* 0A47AC 800A9D4C 7C040214 */  add     r0, r4, r0
/* 0A47B0 800A9D50 901F001C */  stw     r0, 0x1c(r31)
lbl_800A9D54:
/* 0A47B4 800A9D54 4BFF4FD1 */  bl      OSRestoreInterrupts
/* 0A47B8 800A9D58 7FE3FB78 */  mr      r3, r31
/* 0A47BC 800A9D5C 4BFFFBED */  bl      GXSetGPFifo
/* 0A47C0 800A9D60 7C1EF840 */  cmplw   r30, r31
/* 0A47C4 800A9D64 4082000C */  bne     lbl_800A9D70
/* 0A47C8 800A9D68 7FC3F378 */  mr      r3, r30
/* 0A47CC 800A9D6C 4BFFFAB5 */  bl      GXSetCPUFifo
lbl_800A9D70:
/* 0A47D0 800A9D70 800100AC */  lwz     r0, 0xac(r1)
/* 0A47D4 800A9D74 83E100A4 */  lwz     r31, 0xa4(r1)
/* 0A47D8 800A9D78 83C100A0 */  lwz     r30, 0xa0(r1)
/* 0A47DC 800A9D7C 83A1009C */  lwz     r29, 0x9c(r1)
/* 0A47E0 800A9D80 382100A8 */  addi    r1, r1, 0xa8
/* 0A47E4 800A9D84 7C0803A6 */  mtlr    r0
/* 0A47E8 800A9D88 4E800020 */  blr     

glabel GXGetCPUFifo
/* 0A47EC 800A9D8C 806D8C60 */  lwz     r3, CPUFifo@sda21(r13)
/* 0A47F0 800A9D90 4E800020 */  blr     

glabel GXGetGPFifo
/* 0A47F4 800A9D94 806D8C64 */  lwz     r3, GPFifo@sda21(r13)
/* 0A47F8 800A9D98 4E800020 */  blr     

.section .sbss, "wa"

.balign 8

/* 000F1BC0 80135940 0004 */
CPUFifo:
    .skip 4

/* 000F1BC4 80135944 0004 */
GPFifo:
    .skip 4

/* 000F1BC8 80135948 0004 */
__GXCurrentThread:
    .skip 4

/* 000F1BCC 8013594C 0001 */
CPGPLinked:
    .skip 1

.balign 4

/* 000F1BD0 80135950 0004 */
GXOverflowSuspendInProgress:
    .skip 4

/* 000F1BD4 80135954 0004 */
BreakPointCB:
    .skip 4

/* 000F1BD8 80135958 0004 */
__GXOverflowCount:
    .skip 4
