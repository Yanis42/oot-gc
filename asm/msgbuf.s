# msgbuf.c
.include "macros.inc"

.section .text, "ax"

.balign 4

TRKSetBufferUsed:
/* 0C4020 800C95C0 90830004 */  stw     r4, 4(r3)
/* 0C4024 800C95C4 4E800020 */  blr     

glabel TRKInitializeMessageBuffers
/* 0C4028 800C95C8 7C0802A6 */  mflr    r0
/* 0C402C 800C95CC 3C608013 */  lis     r3, gTRKMsgBufs@ha
/* 0C4030 800C95D0 90010004 */  stw     r0, 4(r1)
/* 0C4034 800C95D4 38032B80 */  addi    r0, r3, gTRKMsgBufs@l
/* 0C4038 800C95D8 9421FFF0 */  stwu    r1, -0x10(r1)
/* 0C403C 800C95DC 93E1000C */  stw     r31, 0xc(r1)
/* 0C4040 800C95E0 93C10008 */  stw     r30, 8(r1)
/* 0C4044 800C95E4 3BC00000 */  li      r30, 0
/* 0C4048 800C95E8 1C9E0890 */  mulli   r4, r30, 0x890
/* 0C404C 800C95EC 7FE02214 */  add     r31, r0, r4
lbl_800C95F0:
/* 0C4050 800C95F0 7FE3FB78 */  mr      r3, r31
/* 0C4054 800C95F4 48002161 */  bl      TRKInitializeMutex
/* 0C4058 800C95F8 7FE3FB78 */  mr      r3, r31
/* 0C405C 800C95FC 48002161 */  bl      TRKAcquireMutex
/* 0C4060 800C9600 387F0000 */  addi    r3, r31, 0
/* 0C4064 800C9604 38800000 */  li      r4, 0
/* 0C4068 800C9608 4BFFFFB9 */  bl      TRKSetBufferUsed
/* 0C406C 800C960C 7FE3FB78 */  mr      r3, r31
/* 0C4070 800C9610 48002155 */  bl      TRKReleaseMutex
/* 0C4074 800C9614 3BDE0001 */  addi    r30, r30, 1
/* 0C4078 800C9618 3BFF0890 */  addi    r31, r31, 0x890
/* 0C407C 800C961C 2C1E0003 */  cmpwi   r30, 3
/* 0C4080 800C9620 4180FFD0 */  blt     lbl_800C95F0
/* 0C4084 800C9624 83E1000C */  lwz     r31, 0xc(r1)
/* 0C4088 800C9628 38600000 */  li      r3, 0
/* 0C408C 800C962C 83C10008 */  lwz     r30, 8(r1)
/* 0C4090 800C9630 38210010 */  addi    r1, r1, 0x10
/* 0C4094 800C9634 80010004 */  lwz     r0, 4(r1)
/* 0C4098 800C9638 7C0803A6 */  mtlr    r0
/* 0C409C 800C963C 4E800020 */  blr     

glabel TRKGetFreeBuffer
/* 0C40A0 800C9640 7C0802A6 */  mflr    r0
/* 0C40A4 800C9644 90010004 */  stw     r0, 4(r1)
/* 0C40A8 800C9648 38000000 */  li      r0, 0
/* 0C40AC 800C964C 9421FFE0 */  stwu    r1, -0x20(r1)
/* 0C40B0 800C9650 BF61000C */  stmw    r27, 0xc(r1)
/* 0C40B4 800C9654 3B840000 */  addi    r28, r4, 0
/* 0C40B8 800C9658 3B630000 */  addi    r27, r3, 0
/* 0C40BC 800C965C 3BE00300 */  li      r31, 0x300
/* 0C40C0 800C9660 3BC00000 */  li      r30, 0
/* 0C40C4 800C9664 90040000 */  stw     r0, 0(r4)
/* 0C40C8 800C9668 48000054 */  b       lbl_800C96BC
lbl_800C966C:
/* 0C40CC 800C966C 7FC3F378 */  mr      r3, r30
/* 0C40D0 800C9670 4800006D */  bl      TRKGetBuffer
/* 0C40D4 800C9674 7C7D1B78 */  mr      r29, r3
/* 0C40D8 800C9678 480020E5 */  bl      TRKAcquireMutex
/* 0C40DC 800C967C 801D0004 */  lwz     r0, 4(r29)
/* 0C40E0 800C9680 2C000000 */  cmpwi   r0, 0
/* 0C40E4 800C9684 4082002C */  bne     lbl_800C96B0
/* 0C40E8 800C9688 387D0000 */  addi    r3, r29, 0
/* 0C40EC 800C968C 38800001 */  li      r4, 1
/* 0C40F0 800C9690 480000E1 */  bl      TRKResetBuffer
/* 0C40F4 800C9694 387D0000 */  addi    r3, r29, 0
/* 0C40F8 800C9698 38800001 */  li      r4, 1
/* 0C40FC 800C969C 4BFFFF25 */  bl      TRKSetBufferUsed
/* 0C4100 800C96A0 93BC0000 */  stw     r29, 0(r28)
/* 0C4104 800C96A4 3BE00000 */  li      r31, 0
/* 0C4108 800C96A8 93DB0000 */  stw     r30, 0(r27)
/* 0C410C 800C96AC 3BC00003 */  li      r30, 3
lbl_800C96B0:
/* 0C4110 800C96B0 7FA3EB78 */  mr      r3, r29
/* 0C4114 800C96B4 480020B1 */  bl      TRKReleaseMutex
/* 0C4118 800C96B8 3BDE0001 */  addi    r30, r30, 1
lbl_800C96BC:
/* 0C411C 800C96BC 2C1E0003 */  cmpwi   r30, 3
/* 0C4120 800C96C0 4180FFAC */  blt     lbl_800C966C
/* 0C4124 800C96C4 7FE3FB78 */  mr      r3, r31
/* 0C4128 800C96C8 BB61000C */  lmw     r27, 0xc(r1)
/* 0C412C 800C96CC 38210020 */  addi    r1, r1, 0x20
/* 0C4130 800C96D0 80010004 */  lwz     r0, 4(r1)
/* 0C4134 800C96D4 7C0803A6 */  mtlr    r0
/* 0C4138 800C96D8 4E800020 */  blr     

glabel TRKGetBuffer
/* 0C413C 800C96DC 2C030000 */  cmpwi   r3, 0
/* 0C4140 800C96E0 38000000 */  li      r0, 0
/* 0C4144 800C96E4 4180001C */  blt     lbl_800C9700
/* 0C4148 800C96E8 2C030003 */  cmpwi   r3, 3
/* 0C414C 800C96EC 40800014 */  bge     lbl_800C9700
/* 0C4150 800C96F0 1C830890 */  mulli   r4, r3, 0x890
/* 0C4154 800C96F4 3C608013 */  lis     r3, gTRKMsgBufs@ha
/* 0C4158 800C96F8 38032B80 */  addi    r0, r3, gTRKMsgBufs@l
/* 0C415C 800C96FC 7C002214 */  add     r0, r0, r4
lbl_800C9700:
/* 0C4160 800C9700 7C030378 */  mr      r3, r0
/* 0C4164 800C9704 4E800020 */  blr     

glabel TRKReleaseBuffer
/* 0C4168 800C9708 7C0802A6 */  mflr    r0
/* 0C416C 800C970C 2C03FFFF */  cmpwi   r3, -1
/* 0C4170 800C9710 90010004 */  stw     r0, 4(r1)
/* 0C4174 800C9714 9421FFF0 */  stwu    r1, -0x10(r1)
/* 0C4178 800C9718 93E1000C */  stw     r31, 0xc(r1)
/* 0C417C 800C971C 41820040 */  beq     lbl_800C975C
/* 0C4180 800C9720 2C030000 */  cmpwi   r3, 0
/* 0C4184 800C9724 41800038 */  blt     lbl_800C975C
/* 0C4188 800C9728 2C030003 */  cmpwi   r3, 3
/* 0C418C 800C972C 40800030 */  bge     lbl_800C975C
/* 0C4190 800C9730 1C830890 */  mulli   r4, r3, 0x890
/* 0C4194 800C9734 3C608013 */  lis     r3, gTRKMsgBufs@ha
/* 0C4198 800C9738 38032B80 */  addi    r0, r3, gTRKMsgBufs@l
/* 0C419C 800C973C 7FE02214 */  add     r31, r0, r4
/* 0C41A0 800C9740 387F0000 */  addi    r3, r31, 0
/* 0C41A4 800C9744 48002019 */  bl      TRKAcquireMutex
/* 0C41A8 800C9748 387F0000 */  addi    r3, r31, 0
/* 0C41AC 800C974C 38800000 */  li      r4, 0
/* 0C41B0 800C9750 4BFFFE71 */  bl      TRKSetBufferUsed
/* 0C41B4 800C9754 7FE3FB78 */  mr      r3, r31
/* 0C41B8 800C9758 4800200D */  bl      TRKReleaseMutex
lbl_800C975C:
/* 0C41BC 800C975C 83E1000C */  lwz     r31, 0xc(r1)
/* 0C41C0 800C9760 38210010 */  addi    r1, r1, 0x10
/* 0C41C4 800C9764 80010004 */  lwz     r0, 4(r1)
/* 0C41C8 800C9768 7C0803A6 */  mtlr    r0
/* 0C41CC 800C976C 4E800020 */  blr     

glabel TRKResetBuffer
/* 0C41D0 800C9770 7C0802A6 */  mflr    r0
/* 0C41D4 800C9774 38A00000 */  li      r5, 0
/* 0C41D8 800C9778 90010004 */  stw     r0, 4(r1)
/* 0C41DC 800C977C 5480063F */  clrlwi. r0, r4, 0x18
/* 0C41E0 800C9780 9421FFF8 */  stwu    r1, -8(r1)
/* 0C41E4 800C9784 90A30008 */  stw     r5, 8(r3)
/* 0C41E8 800C9788 90A3000C */  stw     r5, 0xc(r3)
/* 0C41EC 800C978C 40820014 */  bne     lbl_800C97A0
/* 0C41F0 800C9790 38630010 */  addi    r3, r3, 0x10
/* 0C41F4 800C9794 38800000 */  li      r4, 0
/* 0C41F8 800C9798 38A00880 */  li      r5, 0x880
/* 0C41FC 800C979C 4BF39CBD */  bl      TRK_memcpy
lbl_800C97A0:
/* 0C4200 800C97A0 38210008 */  addi    r1, r1, 8
/* 0C4204 800C97A4 80010004 */  lwz     r0, 4(r1)
/* 0C4208 800C97A8 7C0803A6 */  mtlr    r0
/* 0C420C 800C97AC 4E800020 */  blr     

glabel TRKSetBufferPosition
/* 0C4210 800C97B0 28040880 */  cmplwi  r4, 0x880
/* 0C4214 800C97B4 38A00000 */  li      r5, 0
/* 0C4218 800C97B8 4081000C */  ble     lbl_800C97C4
/* 0C421C 800C97BC 38A00301 */  li      r5, 0x301
/* 0C4220 800C97C0 48000018 */  b       lbl_800C97D8
lbl_800C97C4:
/* 0C4224 800C97C4 9083000C */  stw     r4, 0xc(r3)
/* 0C4228 800C97C8 80030008 */  lwz     r0, 8(r3)
/* 0C422C 800C97CC 7C040040 */  cmplw   r4, r0
/* 0C4230 800C97D0 40810008 */  ble     lbl_800C97D8
/* 0C4234 800C97D4 90830008 */  stw     r4, 8(r3)
lbl_800C97D8:
/* 0C4238 800C97D8 7CA32B78 */  mr      r3, r5
/* 0C423C 800C97DC 4E800020 */  blr     

glabel TRKAppendBuffer
/* 0C4240 800C97E0 7C0802A6 */  mflr    r0
/* 0C4244 800C97E4 90010004 */  stw     r0, 4(r1)
/* 0C4248 800C97E8 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C424C 800C97EC 93E10014 */  stw     r31, 0x14(r1)
/* 0C4250 800C97F0 3BE00000 */  li      r31, 0
/* 0C4254 800C97F4 93C10010 */  stw     r30, 0x10(r1)
/* 0C4258 800C97F8 7CBE2B79 */  or.     r30, r5, r5
/* 0C425C 800C97FC 93A1000C */  stw     r29, 0xc(r1)
/* 0C4260 800C9800 3BA30000 */  addi    r29, r3, 0
/* 0C4264 800C9804 4082000C */  bne     lbl_800C9810
/* 0C4268 800C9808 38600000 */  li      r3, 0
/* 0C426C 800C980C 4800005C */  b       lbl_800C9868
lbl_800C9810:
/* 0C4270 800C9810 807D000C */  lwz     r3, 0xc(r29)
/* 0C4274 800C9814 20030880 */  subfic  r0, r3, 0x880
/* 0C4278 800C9818 7C00F040 */  cmplw   r0, r30
/* 0C427C 800C981C 4080000C */  bge     lbl_800C9828
/* 0C4280 800C9820 3BE00301 */  li      r31, 0x301
/* 0C4284 800C9824 7C1E0378 */  mr      r30, r0
lbl_800C9828:
/* 0C4288 800C9828 281E0001 */  cmplwi  r30, 1
/* 0C428C 800C982C 40820014 */  bne     lbl_800C9840
/* 0C4290 800C9830 88040000 */  lbz     r0, 0(r4)
/* 0C4294 800C9834 7C7D1A14 */  add     r3, r29, r3
/* 0C4298 800C9838 98030010 */  stb     r0, 0x10(r3)
/* 0C429C 800C983C 48000014 */  b       lbl_800C9850
lbl_800C9840:
/* 0C42A0 800C9840 38630010 */  addi    r3, r3, 0x10
/* 0C42A4 800C9844 38BE0000 */  addi    r5, r30, 0
/* 0C42A8 800C9848 7C7D1A14 */  add     r3, r29, r3
/* 0C42AC 800C984C 4BF39C0D */  bl      TRK_memcpy
lbl_800C9850:
/* 0C42B0 800C9850 801D000C */  lwz     r0, 0xc(r29)
/* 0C42B4 800C9854 387F0000 */  addi    r3, r31, 0
/* 0C42B8 800C9858 7C00F214 */  add     r0, r0, r30
/* 0C42BC 800C985C 901D000C */  stw     r0, 0xc(r29)
/* 0C42C0 800C9860 801D000C */  lwz     r0, 0xc(r29)
/* 0C42C4 800C9864 901D0008 */  stw     r0, 8(r29)
lbl_800C9868:
/* 0C42C8 800C9868 83E10014 */  lwz     r31, 0x14(r1)
/* 0C42CC 800C986C 83C10010 */  lwz     r30, 0x10(r1)
/* 0C42D0 800C9870 83A1000C */  lwz     r29, 0xc(r1)
/* 0C42D4 800C9874 38210018 */  addi    r1, r1, 0x18
/* 0C42D8 800C9878 80010004 */  lwz     r0, 4(r1)
/* 0C42DC 800C987C 7C0803A6 */  mtlr    r0
/* 0C42E0 800C9880 4E800020 */  blr     

glabel TRKReadBuffer
/* 0C42E4 800C9884 7C0802A6 */  mflr    r0
/* 0C42E8 800C9888 90010004 */  stw     r0, 4(r1)
/* 0C42EC 800C988C 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C42F0 800C9890 93E10014 */  stw     r31, 0x14(r1)
/* 0C42F4 800C9894 3BE00000 */  li      r31, 0
/* 0C42F8 800C9898 93C10010 */  stw     r30, 0x10(r1)
/* 0C42FC 800C989C 7CBE2B79 */  or.     r30, r5, r5
/* 0C4300 800C98A0 93A1000C */  stw     r29, 0xc(r1)
/* 0C4304 800C98A4 3BA30000 */  addi    r29, r3, 0
/* 0C4308 800C98A8 38640000 */  addi    r3, r4, 0
/* 0C430C 800C98AC 4082000C */  bne     lbl_800C98B8
/* 0C4310 800C98B0 38600000 */  li      r3, 0
/* 0C4314 800C98B4 48000040 */  b       lbl_800C98F4
lbl_800C98B8:
/* 0C4318 800C98B8 809D000C */  lwz     r4, 0xc(r29)
/* 0C431C 800C98BC 801D0008 */  lwz     r0, 8(r29)
/* 0C4320 800C98C0 7C040050 */  subf    r0, r4, r0
/* 0C4324 800C98C4 7C1E0040 */  cmplw   r30, r0
/* 0C4328 800C98C8 4081000C */  ble     lbl_800C98D4
/* 0C432C 800C98CC 3BE00302 */  li      r31, 0x302
/* 0C4330 800C98D0 7C1E0378 */  mr      r30, r0
lbl_800C98D4:
/* 0C4334 800C98D4 38840010 */  addi    r4, r4, 0x10
/* 0C4338 800C98D8 38BE0000 */  addi    r5, r30, 0
/* 0C433C 800C98DC 7C9D2214 */  add     r4, r29, r4
/* 0C4340 800C98E0 4BF39B79 */  bl      TRK_memcpy
/* 0C4344 800C98E4 801D000C */  lwz     r0, 0xc(r29)
/* 0C4348 800C98E8 387F0000 */  addi    r3, r31, 0
/* 0C434C 800C98EC 7C00F214 */  add     r0, r0, r30
/* 0C4350 800C98F0 901D000C */  stw     r0, 0xc(r29)
lbl_800C98F4:
/* 0C4354 800C98F4 83E10014 */  lwz     r31, 0x14(r1)
/* 0C4358 800C98F8 83C10010 */  lwz     r30, 0x10(r1)
/* 0C435C 800C98FC 83A1000C */  lwz     r29, 0xc(r1)
/* 0C4360 800C9900 38210018 */  addi    r1, r1, 0x18
/* 0C4364 800C9904 80010004 */  lwz     r0, 4(r1)
/* 0C4368 800C9908 7C0803A6 */  mtlr    r0
/* 0C436C 800C990C 4E800020 */  blr     

glabel TRKAppendBuffer1_ui16
/* 0C4370 800C9910 7C0802A6 */  mflr    r0
/* 0C4374 800C9914 3CA08013 */  lis     r5, gTRKBigEndian@ha
/* 0C4378 800C9918 90010004 */  stw     r0, 4(r1)
/* 0C437C 800C991C 9421FFF0 */  stwu    r1, -0x10(r1)
/* 0C4380 800C9920 B0810008 */  sth     r4, 8(r1)
/* 0C4384 800C9924 80052B78 */  lwz     r0, gTRKBigEndian@l(r5)
/* 0C4388 800C9928 2C000000 */  cmpwi   r0, 0
/* 0C438C 800C992C 4182000C */  beq     lbl_800C9938
/* 0C4390 800C9930 38810008 */  addi    r4, r1, 8
/* 0C4394 800C9934 48000018 */  b       lbl_800C994C
lbl_800C9938:
/* 0C4398 800C9938 88010009 */  lbz     r0, 9(r1)
/* 0C439C 800C993C 3881000C */  addi    r4, r1, 0xc
/* 0C43A0 800C9940 9801000C */  stb     r0, 0xc(r1)
/* 0C43A4 800C9944 88010008 */  lbz     r0, 8(r1)
/* 0C43A8 800C9948 9801000D */  stb     r0, 0xd(r1)
lbl_800C994C:
/* 0C43AC 800C994C 38A00002 */  li      r5, 2
/* 0C43B0 800C9950 4BFFFE91 */  bl      TRKAppendBuffer
/* 0C43B4 800C9954 38210010 */  addi    r1, r1, 0x10
/* 0C43B8 800C9958 80010004 */  lwz     r0, 4(r1)
/* 0C43BC 800C995C 7C0803A6 */  mtlr    r0
/* 0C43C0 800C9960 4E800020 */  blr     

glabel TRKAppendBuffer1_ui32
/* 0C43C4 800C9964 7C0802A6 */  mflr    r0
/* 0C43C8 800C9968 3CA08013 */  lis     r5, gTRKBigEndian@ha
/* 0C43CC 800C996C 90010004 */  stw     r0, 4(r1)
/* 0C43D0 800C9970 9421FFF0 */  stwu    r1, -0x10(r1)
/* 0C43D4 800C9974 90810008 */  stw     r4, 8(r1)
/* 0C43D8 800C9978 80052B78 */  lwz     r0, gTRKBigEndian@l(r5)
/* 0C43DC 800C997C 2C000000 */  cmpwi   r0, 0
/* 0C43E0 800C9980 4182000C */  beq     lbl_800C998C
/* 0C43E4 800C9984 38810008 */  addi    r4, r1, 8
/* 0C43E8 800C9988 48000028 */  b       lbl_800C99B0
lbl_800C998C:
/* 0C43EC 800C998C 8801000B */  lbz     r0, 0xb(r1)
/* 0C43F0 800C9990 3881000C */  addi    r4, r1, 0xc
/* 0C43F4 800C9994 9801000C */  stb     r0, 0xc(r1)
/* 0C43F8 800C9998 8801000A */  lbz     r0, 0xa(r1)
/* 0C43FC 800C999C 9801000D */  stb     r0, 0xd(r1)
/* 0C4400 800C99A0 88010009 */  lbz     r0, 9(r1)
/* 0C4404 800C99A4 9801000E */  stb     r0, 0xe(r1)
/* 0C4408 800C99A8 88010008 */  lbz     r0, 8(r1)
/* 0C440C 800C99AC 9801000F */  stb     r0, 0xf(r1)
lbl_800C99B0:
/* 0C4410 800C99B0 38A00004 */  li      r5, 4
/* 0C4414 800C99B4 4BFFFE2D */  bl      TRKAppendBuffer
/* 0C4418 800C99B8 38210010 */  addi    r1, r1, 0x10
/* 0C441C 800C99BC 80010004 */  lwz     r0, 4(r1)
/* 0C4420 800C99C0 7C0803A6 */  mtlr    r0
/* 0C4424 800C99C4 4E800020 */  blr     

glabel TRKAppendBuffer1_ui64
/* 0C4428 800C99C8 7C0802A6 */  mflr    r0
/* 0C442C 800C99CC 3C808013 */  lis     r4, gTRKBigEndian@ha
/* 0C4430 800C99D0 90010004 */  stw     r0, 4(r1)
/* 0C4434 800C99D4 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C4438 800C99D8 90A10008 */  stw     r5, 8(r1)
/* 0C443C 800C99DC 90C1000C */  stw     r6, 0xc(r1)
/* 0C4440 800C99E0 80042B78 */  lwz     r0, gTRKBigEndian@l(r4)
/* 0C4444 800C99E4 2C000000 */  cmpwi   r0, 0
/* 0C4448 800C99E8 4182000C */  beq     lbl_800C99F4
/* 0C444C 800C99EC 38810008 */  addi    r4, r1, 8
/* 0C4450 800C99F0 48000048 */  b       lbl_800C9A38
lbl_800C99F4:
/* 0C4454 800C99F4 8801000F */  lbz     r0, 0xf(r1)
/* 0C4458 800C99F8 38810010 */  addi    r4, r1, 0x10
/* 0C445C 800C99FC 98010010 */  stb     r0, 0x10(r1)
/* 0C4460 800C9A00 8801000E */  lbz     r0, 0xe(r1)
/* 0C4464 800C9A04 98010011 */  stb     r0, 0x11(r1)
/* 0C4468 800C9A08 8801000D */  lbz     r0, 0xd(r1)
/* 0C446C 800C9A0C 98010012 */  stb     r0, 0x12(r1)
/* 0C4470 800C9A10 8801000C */  lbz     r0, 0xc(r1)
/* 0C4474 800C9A14 98010013 */  stb     r0, 0x13(r1)
/* 0C4478 800C9A18 8801000B */  lbz     r0, 0xb(r1)
/* 0C447C 800C9A1C 98010014 */  stb     r0, 0x14(r1)
/* 0C4480 800C9A20 8801000A */  lbz     r0, 0xa(r1)
/* 0C4484 800C9A24 98010015 */  stb     r0, 0x15(r1)
/* 0C4488 800C9A28 88010009 */  lbz     r0, 9(r1)
/* 0C448C 800C9A2C 98010016 */  stb     r0, 0x16(r1)
/* 0C4490 800C9A30 88010008 */  lbz     r0, 8(r1)
/* 0C4494 800C9A34 98010017 */  stb     r0, 0x17(r1)
lbl_800C9A38:
/* 0C4498 800C9A38 38A00008 */  li      r5, 8
/* 0C449C 800C9A3C 4BFFFDA5 */  bl      TRKAppendBuffer
/* 0C44A0 800C9A40 38210018 */  addi    r1, r1, 0x18
/* 0C44A4 800C9A44 80010004 */  lwz     r0, 4(r1)
/* 0C44A8 800C9A48 7C0803A6 */  mtlr    r0
/* 0C44AC 800C9A4C 4E800020 */  blr     

glabel TRKAppendBuffer_ui8
/* 0C44B0 800C9A50 39200000 */  li      r9, 0
/* 0C44B4 800C9A54 38000000 */  li      r0, 0
/* 0C44B8 800C9A58 48000048 */  b       lbl_800C9AA0
lbl_800C9A5C:
/* 0C44BC 800C9A5C 80E3000C */  lwz     r7, 0xc(r3)
/* 0C44C0 800C9A60 89040000 */  lbz     r8, 0(r4)
/* 0C44C4 800C9A64 28070880 */  cmplwi  r7, 0x880
/* 0C44C8 800C9A68 4180000C */  blt     lbl_800C9A74
/* 0C44CC 800C9A6C 38E00301 */  li      r7, 0x301
/* 0C44D0 800C9A70 48000024 */  b       lbl_800C9A94
lbl_800C9A74:
/* 0C44D4 800C9A74 38C70001 */  addi    r6, r7, 1
/* 0C44D8 800C9A78 38070010 */  addi    r0, r7, 0x10
/* 0C44DC 800C9A7C 90C3000C */  stw     r6, 0xc(r3)
/* 0C44E0 800C9A80 38E00000 */  li      r7, 0
/* 0C44E4 800C9A84 7D0301AE */  stbx    r8, r3, r0
/* 0C44E8 800C9A88 80C30008 */  lwz     r6, 8(r3)
/* 0C44EC 800C9A8C 38060001 */  addi    r0, r6, 1
/* 0C44F0 800C9A90 90030008 */  stw     r0, 8(r3)
lbl_800C9A94:
/* 0C44F4 800C9A94 38070000 */  addi    r0, r7, 0
/* 0C44F8 800C9A98 39290001 */  addi    r9, r9, 1
/* 0C44FC 800C9A9C 38840001 */  addi    r4, r4, 1
lbl_800C9AA0:
/* 0C4500 800C9AA0 2C000000 */  cmpwi   r0, 0
/* 0C4504 800C9AA4 4082000C */  bne     lbl_800C9AB0
/* 0C4508 800C9AA8 7C092800 */  cmpw    r9, r5
/* 0C450C 800C9AAC 4180FFB0 */  blt     lbl_800C9A5C
lbl_800C9AB0:
/* 0C4510 800C9AB0 7C030378 */  mr      r3, r0
/* 0C4514 800C9AB4 4E800020 */  blr     

glabel TRKAppendBuffer_ui32
/* 0C4518 800C9AB8 7C0802A6 */  mflr    r0
/* 0C451C 800C9ABC 90010004 */  stw     r0, 4(r1)
/* 0C4520 800C9AC0 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C4524 800C9AC4 93E10014 */  stw     r31, 0x14(r1)
/* 0C4528 800C9AC8 93C10010 */  stw     r30, 0x10(r1)
/* 0C452C 800C9ACC 3BC00000 */  li      r30, 0
/* 0C4530 800C9AD0 57C0103A */  slwi    r0, r30, 2
/* 0C4534 800C9AD4 93A1000C */  stw     r29, 0xc(r1)
/* 0C4538 800C9AD8 7FE40214 */  add     r31, r4, r0
/* 0C453C 800C9ADC 3BA50000 */  addi    r29, r5, 0
/* 0C4540 800C9AE0 93810008 */  stw     r28, 8(r1)
/* 0C4544 800C9AE4 3B830000 */  addi    r28, r3, 0
/* 0C4548 800C9AE8 38600000 */  li      r3, 0
/* 0C454C 800C9AEC 48000018 */  b       lbl_800C9B04
lbl_800C9AF0:
/* 0C4550 800C9AF0 7F83E378 */  mr      r3, r28
/* 0C4554 800C9AF4 809F0000 */  lwz     r4, 0(r31)
/* 0C4558 800C9AF8 4BFFFE6D */  bl      TRKAppendBuffer1_ui32
/* 0C455C 800C9AFC 3BDE0001 */  addi    r30, r30, 1
/* 0C4560 800C9B00 3BFF0004 */  addi    r31, r31, 4
lbl_800C9B04:
/* 0C4564 800C9B04 2C030000 */  cmpwi   r3, 0
/* 0C4568 800C9B08 4082000C */  bne     lbl_800C9B14
/* 0C456C 800C9B0C 7C1EE800 */  cmpw    r30, r29
/* 0C4570 800C9B10 4180FFE0 */  blt     lbl_800C9AF0
lbl_800C9B14:
/* 0C4574 800C9B14 83E10014 */  lwz     r31, 0x14(r1)
/* 0C4578 800C9B18 83C10010 */  lwz     r30, 0x10(r1)
/* 0C457C 800C9B1C 83A1000C */  lwz     r29, 0xc(r1)
/* 0C4580 800C9B20 83810008 */  lwz     r28, 8(r1)
/* 0C4584 800C9B24 38210018 */  addi    r1, r1, 0x18
/* 0C4588 800C9B28 80010004 */  lwz     r0, 4(r1)
/* 0C458C 800C9B2C 7C0803A6 */  mtlr    r0
/* 0C4590 800C9B30 4E800020 */  blr     

glabel TRKReadBuffer1_ui8
/* 0C4594 800C9B34 7C0802A6 */  mflr    r0
/* 0C4598 800C9B38 38A00001 */  li      r5, 1
/* 0C459C 800C9B3C 90010004 */  stw     r0, 4(r1)
/* 0C45A0 800C9B40 9421FFF8 */  stwu    r1, -8(r1)
/* 0C45A4 800C9B44 4BFFFD41 */  bl      TRKReadBuffer
/* 0C45A8 800C9B48 38210008 */  addi    r1, r1, 8
/* 0C45AC 800C9B4C 80010004 */  lwz     r0, 4(r1)
/* 0C45B0 800C9B50 7C0803A6 */  mtlr    r0
/* 0C45B4 800C9B54 4E800020 */  blr     

glabel TRKReadBuffer1_ui16
/* 0C45B8 800C9B58 7C0802A6 */  mflr    r0
/* 0C45BC 800C9B5C 3CA08013 */  lis     r5, gTRKBigEndian@ha
/* 0C45C0 800C9B60 90010004 */  stw     r0, 4(r1)
/* 0C45C4 800C9B64 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C45C8 800C9B68 93E10014 */  stw     r31, 0x14(r1)
/* 0C45CC 800C9B6C 93C10010 */  stw     r30, 0x10(r1)
/* 0C45D0 800C9B70 3BC40000 */  addi    r30, r4, 0
/* 0C45D4 800C9B74 80052B78 */  lwz     r0, gTRKBigEndian@l(r5)
/* 0C45D8 800C9B78 2C000000 */  cmpwi   r0, 0
/* 0C45DC 800C9B7C 4182000C */  beq     lbl_800C9B88
/* 0C45E0 800C9B80 7FDFF378 */  mr      r31, r30
/* 0C45E4 800C9B84 48000008 */  b       lbl_800C9B8C
lbl_800C9B88:
/* 0C45E8 800C9B88 3BE10008 */  addi    r31, r1, 8
lbl_800C9B8C:
/* 0C45EC 800C9B8C 389F0000 */  addi    r4, r31, 0
/* 0C45F0 800C9B90 38A00002 */  li      r5, 2
/* 0C45F4 800C9B94 4BFFFCF1 */  bl      TRKReadBuffer
/* 0C45F8 800C9B98 3C808013 */  lis     r4, gTRKBigEndian@ha
/* 0C45FC 800C9B9C 80042B78 */  lwz     r0, gTRKBigEndian@l(r4)
/* 0C4600 800C9BA0 2C000000 */  cmpwi   r0, 0
/* 0C4604 800C9BA4 4082001C */  bne     lbl_800C9BC0
/* 0C4608 800C9BA8 2C030000 */  cmpwi   r3, 0
/* 0C460C 800C9BAC 40820014 */  bne     lbl_800C9BC0
/* 0C4610 800C9BB0 881F0001 */  lbz     r0, 1(r31)
/* 0C4614 800C9BB4 981E0000 */  stb     r0, 0(r30)
/* 0C4618 800C9BB8 881F0000 */  lbz     r0, 0(r31)
/* 0C461C 800C9BBC 981E0001 */  stb     r0, 1(r30)
lbl_800C9BC0:
/* 0C4620 800C9BC0 83E10014 */  lwz     r31, 0x14(r1)
/* 0C4624 800C9BC4 83C10010 */  lwz     r30, 0x10(r1)
/* 0C4628 800C9BC8 38210018 */  addi    r1, r1, 0x18
/* 0C462C 800C9BCC 80010004 */  lwz     r0, 4(r1)
/* 0C4630 800C9BD0 7C0803A6 */  mtlr    r0
/* 0C4634 800C9BD4 4E800020 */  blr     

glabel TRKReadBuffer1_ui32
/* 0C4638 800C9BD8 7C0802A6 */  mflr    r0
/* 0C463C 800C9BDC 3CA08013 */  lis     r5, gTRKBigEndian@ha
/* 0C4640 800C9BE0 90010004 */  stw     r0, 4(r1)
/* 0C4644 800C9BE4 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C4648 800C9BE8 93E10014 */  stw     r31, 0x14(r1)
/* 0C464C 800C9BEC 93C10010 */  stw     r30, 0x10(r1)
/* 0C4650 800C9BF0 3BC40000 */  addi    r30, r4, 0
/* 0C4654 800C9BF4 80052B78 */  lwz     r0, gTRKBigEndian@l(r5)
/* 0C4658 800C9BF8 2C000000 */  cmpwi   r0, 0
/* 0C465C 800C9BFC 4182000C */  beq     lbl_800C9C08
/* 0C4660 800C9C00 7FDFF378 */  mr      r31, r30
/* 0C4664 800C9C04 48000008 */  b       lbl_800C9C0C
lbl_800C9C08:
/* 0C4668 800C9C08 3BE10008 */  addi    r31, r1, 8
lbl_800C9C0C:
/* 0C466C 800C9C0C 389F0000 */  addi    r4, r31, 0
/* 0C4670 800C9C10 38A00004 */  li      r5, 4
/* 0C4674 800C9C14 4BFFFC71 */  bl      TRKReadBuffer
/* 0C4678 800C9C18 3C808013 */  lis     r4, gTRKBigEndian@ha
/* 0C467C 800C9C1C 80042B78 */  lwz     r0, gTRKBigEndian@l(r4)
/* 0C4680 800C9C20 2C000000 */  cmpwi   r0, 0
/* 0C4684 800C9C24 4082002C */  bne     lbl_800C9C50
/* 0C4688 800C9C28 2C030000 */  cmpwi   r3, 0
/* 0C468C 800C9C2C 40820024 */  bne     lbl_800C9C50
/* 0C4690 800C9C30 881F0003 */  lbz     r0, 3(r31)
/* 0C4694 800C9C34 981E0000 */  stb     r0, 0(r30)
/* 0C4698 800C9C38 881F0002 */  lbz     r0, 2(r31)
/* 0C469C 800C9C3C 981E0001 */  stb     r0, 1(r30)
/* 0C46A0 800C9C40 881F0001 */  lbz     r0, 1(r31)
/* 0C46A4 800C9C44 981E0002 */  stb     r0, 2(r30)
/* 0C46A8 800C9C48 881F0000 */  lbz     r0, 0(r31)
/* 0C46AC 800C9C4C 981E0003 */  stb     r0, 3(r30)
lbl_800C9C50:
/* 0C46B0 800C9C50 83E10014 */  lwz     r31, 0x14(r1)
/* 0C46B4 800C9C54 83C10010 */  lwz     r30, 0x10(r1)
/* 0C46B8 800C9C58 38210018 */  addi    r1, r1, 0x18
/* 0C46BC 800C9C5C 80010004 */  lwz     r0, 4(r1)
/* 0C46C0 800C9C60 7C0803A6 */  mtlr    r0
/* 0C46C4 800C9C64 4E800020 */  blr     

glabel TRKReadBuffer1_ui64
/* 0C46C8 800C9C68 7C0802A6 */  mflr    r0
/* 0C46CC 800C9C6C 3CA08013 */  lis     r5, gTRKBigEndian@ha
/* 0C46D0 800C9C70 90010004 */  stw     r0, 4(r1)
/* 0C46D4 800C9C74 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C46D8 800C9C78 93E10014 */  stw     r31, 0x14(r1)
/* 0C46DC 800C9C7C 93C10010 */  stw     r30, 0x10(r1)
/* 0C46E0 800C9C80 3BC40000 */  addi    r30, r4, 0
/* 0C46E4 800C9C84 80052B78 */  lwz     r0, gTRKBigEndian@l(r5)
/* 0C46E8 800C9C88 2C000000 */  cmpwi   r0, 0
/* 0C46EC 800C9C8C 4182000C */  beq     lbl_800C9C98
/* 0C46F0 800C9C90 7FDFF378 */  mr      r31, r30
/* 0C46F4 800C9C94 48000008 */  b       lbl_800C9C9C
lbl_800C9C98:
/* 0C46F8 800C9C98 3BE10008 */  addi    r31, r1, 8
lbl_800C9C9C:
/* 0C46FC 800C9C9C 389F0000 */  addi    r4, r31, 0
/* 0C4700 800C9CA0 38A00008 */  li      r5, 8
/* 0C4704 800C9CA4 4BFFFBE1 */  bl      TRKReadBuffer
/* 0C4708 800C9CA8 3C808013 */  lis     r4, gTRKBigEndian@ha
/* 0C470C 800C9CAC 80042B78 */  lwz     r0, gTRKBigEndian@l(r4)
/* 0C4710 800C9CB0 2C000000 */  cmpwi   r0, 0
/* 0C4714 800C9CB4 4082004C */  bne     lbl_800C9D00
/* 0C4718 800C9CB8 2C030000 */  cmpwi   r3, 0
/* 0C471C 800C9CBC 40820044 */  bne     lbl_800C9D00
/* 0C4720 800C9CC0 881F0007 */  lbz     r0, 7(r31)
/* 0C4724 800C9CC4 981E0000 */  stb     r0, 0(r30)
/* 0C4728 800C9CC8 881F0006 */  lbz     r0, 6(r31)
/* 0C472C 800C9CCC 981E0001 */  stb     r0, 1(r30)
/* 0C4730 800C9CD0 881F0005 */  lbz     r0, 5(r31)
/* 0C4734 800C9CD4 981E0002 */  stb     r0, 2(r30)
/* 0C4738 800C9CD8 881F0004 */  lbz     r0, 4(r31)
/* 0C473C 800C9CDC 981E0003 */  stb     r0, 3(r30)
/* 0C4740 800C9CE0 881F0003 */  lbz     r0, 3(r31)
/* 0C4744 800C9CE4 981E0004 */  stb     r0, 4(r30)
/* 0C4748 800C9CE8 881F0002 */  lbz     r0, 2(r31)
/* 0C474C 800C9CEC 981E0005 */  stb     r0, 5(r30)
/* 0C4750 800C9CF0 881F0001 */  lbz     r0, 1(r31)
/* 0C4754 800C9CF4 981E0006 */  stb     r0, 6(r30)
/* 0C4758 800C9CF8 881F0000 */  lbz     r0, 0(r31)
/* 0C475C 800C9CFC 981E0007 */  stb     r0, 7(r30)
lbl_800C9D00:
/* 0C4760 800C9D00 83E10014 */  lwz     r31, 0x14(r1)
/* 0C4764 800C9D04 83C10010 */  lwz     r30, 0x10(r1)
/* 0C4768 800C9D08 38210018 */  addi    r1, r1, 0x18
/* 0C476C 800C9D0C 80010004 */  lwz     r0, 4(r1)
/* 0C4770 800C9D10 7C0803A6 */  mtlr    r0
/* 0C4774 800C9D14 4E800020 */  blr     

glabel TRKReadBuffer_ui8
/* 0C4778 800C9D18 7C0802A6 */  mflr    r0
/* 0C477C 800C9D1C 90010004 */  stw     r0, 4(r1)
/* 0C4780 800C9D20 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C4784 800C9D24 93E10014 */  stw     r31, 0x14(r1)
/* 0C4788 800C9D28 3BE00000 */  li      r31, 0
/* 0C478C 800C9D2C 93C10010 */  stw     r30, 0x10(r1)
/* 0C4790 800C9D30 3BC50000 */  addi    r30, r5, 0
/* 0C4794 800C9D34 93A1000C */  stw     r29, 0xc(r1)
/* 0C4798 800C9D38 3BA40000 */  addi    r29, r4, 0
/* 0C479C 800C9D3C 93810008 */  stw     r28, 8(r1)
/* 0C47A0 800C9D40 3B830000 */  addi    r28, r3, 0
/* 0C47A4 800C9D44 38600000 */  li      r3, 0
/* 0C47A8 800C9D48 48000014 */  b       lbl_800C9D5C
lbl_800C9D4C:
/* 0C47AC 800C9D4C 387C0000 */  addi    r3, r28, 0
/* 0C47B0 800C9D50 7C9DFA14 */  add     r4, r29, r31
/* 0C47B4 800C9D54 4BFFFDE1 */  bl      TRKReadBuffer1_ui8
/* 0C47B8 800C9D58 3BFF0001 */  addi    r31, r31, 1
lbl_800C9D5C:
/* 0C47BC 800C9D5C 2C030000 */  cmpwi   r3, 0
/* 0C47C0 800C9D60 4082000C */  bne     lbl_800C9D6C
/* 0C47C4 800C9D64 7C1FF000 */  cmpw    r31, r30
/* 0C47C8 800C9D68 4180FFE4 */  blt     lbl_800C9D4C
lbl_800C9D6C:
/* 0C47CC 800C9D6C 83E10014 */  lwz     r31, 0x14(r1)
/* 0C47D0 800C9D70 83C10010 */  lwz     r30, 0x10(r1)
/* 0C47D4 800C9D74 83A1000C */  lwz     r29, 0xc(r1)
/* 0C47D8 800C9D78 83810008 */  lwz     r28, 8(r1)
/* 0C47DC 800C9D7C 38210018 */  addi    r1, r1, 0x18
/* 0C47E0 800C9D80 80010004 */  lwz     r0, 4(r1)
/* 0C47E4 800C9D84 7C0803A6 */  mtlr    r0
/* 0C47E8 800C9D88 4E800020 */  blr     

glabel TRKReadBuffer_ui32
/* 0C47EC 800C9D8C 7C0802A6 */  mflr    r0
/* 0C47F0 800C9D90 90010004 */  stw     r0, 4(r1)
/* 0C47F4 800C9D94 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0C47F8 800C9D98 93E10014 */  stw     r31, 0x14(r1)
/* 0C47FC 800C9D9C 93C10010 */  stw     r30, 0x10(r1)
/* 0C4800 800C9DA0 3BC00000 */  li      r30, 0
/* 0C4804 800C9DA4 57C0103A */  slwi    r0, r30, 2
/* 0C4808 800C9DA8 93A1000C */  stw     r29, 0xc(r1)
/* 0C480C 800C9DAC 7FE40214 */  add     r31, r4, r0
/* 0C4810 800C9DB0 3BA50000 */  addi    r29, r5, 0
/* 0C4814 800C9DB4 93810008 */  stw     r28, 8(r1)
/* 0C4818 800C9DB8 3B830000 */  addi    r28, r3, 0
/* 0C481C 800C9DBC 38600000 */  li      r3, 0
/* 0C4820 800C9DC0 48000018 */  b       lbl_800C9DD8
lbl_800C9DC4:
/* 0C4824 800C9DC4 387C0000 */  addi    r3, r28, 0
/* 0C4828 800C9DC8 389F0000 */  addi    r4, r31, 0
/* 0C482C 800C9DCC 4BFFFE0D */  bl      TRKReadBuffer1_ui32
/* 0C4830 800C9DD0 3BDE0001 */  addi    r30, r30, 1
/* 0C4834 800C9DD4 3BFF0004 */  addi    r31, r31, 4
lbl_800C9DD8:
/* 0C4838 800C9DD8 2C030000 */  cmpwi   r3, 0
/* 0C483C 800C9DDC 4082000C */  bne     lbl_800C9DE8
/* 0C4840 800C9DE0 7C1EE800 */  cmpw    r30, r29
/* 0C4844 800C9DE4 4180FFE0 */  blt     lbl_800C9DC4
lbl_800C9DE8:
/* 0C4848 800C9DE8 83E10014 */  lwz     r31, 0x14(r1)
/* 0C484C 800C9DEC 83C10010 */  lwz     r30, 0x10(r1)
/* 0C4850 800C9DF0 83A1000C */  lwz     r29, 0xc(r1)
/* 0C4854 800C9DF4 83810008 */  lwz     r28, 8(r1)
/* 0C4858 800C9DF8 38210018 */  addi    r1, r1, 0x18
/* 0C485C 800C9DFC 80010004 */  lwz     r0, 4(r1)
/* 0C4860 800C9E00 7C0803A6 */  mtlr    r0
/* 0C4864 800C9E04 4E800020 */  blr     

.section .bss, "wa"

.balign 8

/* 0012FC00 80132B80 19B0 */
glabel gTRKMsgBufs
    .skip 6576