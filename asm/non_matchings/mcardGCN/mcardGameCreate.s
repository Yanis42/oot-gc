glabel mcardGameCreate
/* 0127C0 80017D60 7C0802A6 */  mflr    r0
/* 0127C4 80017D64 90010004 */  stw     r0, 4(r1)
/* 0127C8 80017D68 9421FFC0 */  stwu    r1, -0x40(r1)
/* 0127CC 80017D6C BF010020 */  stmw    r24, 0x20(r1)
/* 0127D0 80017D70 7C791B78 */  mr      r25, r3
/* 0127D4 80017D74 3BC40000 */  addi    r30, r4, 0
/* 0127D8 80017D78 3BA50000 */  addi    r29, r5, 0
/* 0127DC 80017D7C 3B660000 */  addi    r27, r6, 0
/* 0127E0 80017D80 80030470 */  lwz     r0, 0x470(r3)
/* 0127E4 80017D84 2C000001 */  cmpwi   r0, 1
/* 0127E8 80017D88 40820858 */  bne     lbl_800185E0
/* 0127EC 80017D8C 38790000 */  addi    r3, r25, 0
/* 0127F0 80017D90 389E0000 */  addi    r4, r30, 0
/* 0127F4 80017D94 48000EBD */  bl      mcardGameSet
/* 0127F8 80017D98 2C030001 */  cmpwi   r3, 1
/* 0127FC 80017D9C 40820080 */  bne     lbl_80017E1C
/* 012800 80017DA0 801907A4 */  lwz     r0, 0x7a4(r25)
/* 012804 80017DA4 2C000000 */  cmpwi   r0, 0
/* 012808 80017DA8 40820038 */  bne     lbl_80017DE0
/* 01280C 80017DAC 8019003C */  lwz     r0, 0x3c(r25)
/* 012810 80017DB0 28000000 */  cmplwi  r0, 0
/* 012814 80017DB4 41820014 */  beq     lbl_80017DC8
/* 012818 80017DB8 3879003C */  addi    r3, r25, 0x3c
/* 01281C 80017DBC 4BFEF2DD */  bl      xlHeapFree
/* 012820 80017DC0 2C030000 */  cmpwi   r3, 0
/* 012824 80017DC4 41820048 */  beq     lbl_80017E0C
lbl_80017DC8:
/* 012828 80017DC8 38000000 */  li      r0, 0
/* 01282C 80017DCC 90190034 */  stw     r0, 0x34(r25)
/* 012830 80017DD0 38790030 */  addi    r3, r25, 0x30
/* 012834 80017DD4 38800000 */  li      r4, 0
/* 012838 80017DD8 38A00004 */  li      r5, 4
/* 01283C 80017DDC 4BFED5F5 */  bl      memset
lbl_80017DE0:
/* 012840 80017DE0 80190040 */  lwz     r0, 0x40(r25)
/* 012844 80017DE4 28000000 */  cmplwi  r0, 0
/* 012848 80017DE8 41820014 */  beq     lbl_80017DFC
/* 01284C 80017DEC 38790040 */  addi    r3, r25, 0x40
/* 012850 80017DF0 4BFEF2A9 */  bl      xlHeapFree
/* 012854 80017DF4 2C030000 */  cmpwi   r3, 0
/* 012858 80017DF8 41820014 */  beq     lbl_80017E0C
lbl_80017DFC:
/* 01285C 80017DFC 38000000 */  li      r0, 0
/* 012860 80017E00 90190044 */  stw     r0, 0x44(r25)
/* 012864 80017E04 38000010 */  li      r0, 0x10
/* 012868 80017E08 90190000 */  stw     r0, 0(r25)
lbl_80017E0C:
/* 01286C 80017E0C 38000016 */  li      r0, 0x16
/* 012870 80017E10 9019035C */  stw     r0, 0x35c(r25)
/* 012874 80017E14 38600000 */  li      r3, 0
/* 012878 80017E18 480007CC */  b       lbl_800185E4
lbl_80017E1C:
/* 01287C 80017E1C 801907A4 */  lwz     r0, 0x7a4(r25)
/* 012880 80017E20 2C000000 */  cmpwi   r0, 0
/* 012884 80017E24 40820038 */  bne     lbl_80017E5C
/* 012888 80017E28 8019003C */  lwz     r0, 0x3c(r25)
/* 01288C 80017E2C 28000000 */  cmplwi  r0, 0
/* 012890 80017E30 41820014 */  beq     lbl_80017E44
/* 012894 80017E34 3879003C */  addi    r3, r25, 0x3c
/* 012898 80017E38 4BFEF261 */  bl      xlHeapFree
/* 01289C 80017E3C 2C030000 */  cmpwi   r3, 0
/* 0128A0 80017E40 41820048 */  beq     lbl_80017E88
lbl_80017E44:
/* 0128A4 80017E44 38000000 */  li      r0, 0
/* 0128A8 80017E48 90190034 */  stw     r0, 0x34(r25)
/* 0128AC 80017E4C 38790030 */  addi    r3, r25, 0x30
/* 0128B0 80017E50 38800000 */  li      r4, 0
/* 0128B4 80017E54 38A00004 */  li      r5, 4
/* 0128B8 80017E58 4BFED579 */  bl      memset
lbl_80017E5C:
/* 0128BC 80017E5C 80190040 */  lwz     r0, 0x40(r25)
/* 0128C0 80017E60 28000000 */  cmplwi  r0, 0
/* 0128C4 80017E64 41820014 */  beq     lbl_80017E78
/* 0128C8 80017E68 38790040 */  addi    r3, r25, 0x40
/* 0128CC 80017E6C 4BFEF22D */  bl      xlHeapFree
/* 0128D0 80017E70 2C030000 */  cmpwi   r3, 0
/* 0128D4 80017E74 41820014 */  beq     lbl_80017E88
lbl_80017E78:
/* 0128D8 80017E78 38000000 */  li      r0, 0
/* 0128DC 80017E7C 90190044 */  stw     r0, 0x44(r25)
/* 0128E0 80017E80 38000010 */  li      r0, 0x10
/* 0128E4 80017E84 90190000 */  stw     r0, 0(r25)
lbl_80017E88:
/* 0128E8 80017E88 38000002 */  li      r0, 2
/* 0128EC 80017E8C 7C0903A6 */  mtctr   r0
/* 0128F0 80017E90 38790000 */  addi    r3, r25, 0
/* 0128F4 80017E94 3B400000 */  li      r26, 0
lbl_80017E98:
/* 0128F8 80017E98 80030050 */  lwz     r0, 0x50(r3)
/* 0128FC 80017E9C 2C000000 */  cmpwi   r0, 0
/* 012900 80017EA0 4182009C */  beq     lbl_80017F3C
/* 012904 80017EA4 80030054 */  lwz     r0, 0x54(r3)
/* 012908 80017EA8 38630004 */  addi    r3, r3, 4
/* 01290C 80017EAC 3B5A0001 */  addi    r26, r26, 1
/* 012910 80017EB0 2C000000 */  cmpwi   r0, 0
/* 012914 80017EB4 41820088 */  beq     lbl_80017F3C
/* 012918 80017EB8 80030054 */  lwz     r0, 0x54(r3)
/* 01291C 80017EBC 38630004 */  addi    r3, r3, 4
/* 012920 80017EC0 3B5A0001 */  addi    r26, r26, 1
/* 012924 80017EC4 2C000000 */  cmpwi   r0, 0
/* 012928 80017EC8 41820074 */  beq     lbl_80017F3C
/* 01292C 80017ECC 80030054 */  lwz     r0, 0x54(r3)
/* 012930 80017ED0 38630004 */  addi    r3, r3, 4
/* 012934 80017ED4 3B5A0001 */  addi    r26, r26, 1
/* 012938 80017ED8 2C000000 */  cmpwi   r0, 0
/* 01293C 80017EDC 41820060 */  beq     lbl_80017F3C
/* 012940 80017EE0 80030054 */  lwz     r0, 0x54(r3)
/* 012944 80017EE4 38630004 */  addi    r3, r3, 4
/* 012948 80017EE8 3B5A0001 */  addi    r26, r26, 1
/* 01294C 80017EEC 2C000000 */  cmpwi   r0, 0
/* 012950 80017EF0 4182004C */  beq     lbl_80017F3C
/* 012954 80017EF4 80030054 */  lwz     r0, 0x54(r3)
/* 012958 80017EF8 38630004 */  addi    r3, r3, 4
/* 01295C 80017EFC 3B5A0001 */  addi    r26, r26, 1
/* 012960 80017F00 2C000000 */  cmpwi   r0, 0
/* 012964 80017F04 41820038 */  beq     lbl_80017F3C
/* 012968 80017F08 80030054 */  lwz     r0, 0x54(r3)
/* 01296C 80017F0C 38630004 */  addi    r3, r3, 4
/* 012970 80017F10 3B5A0001 */  addi    r26, r26, 1
/* 012974 80017F14 2C000000 */  cmpwi   r0, 0
/* 012978 80017F18 41820024 */  beq     lbl_80017F3C
/* 01297C 80017F1C 80030054 */  lwz     r0, 0x54(r3)
/* 012980 80017F20 38630004 */  addi    r3, r3, 4
/* 012984 80017F24 3B5A0001 */  addi    r26, r26, 1
/* 012988 80017F28 2C000000 */  cmpwi   r0, 0
/* 01298C 80017F2C 41820010 */  beq     lbl_80017F3C
/* 012990 80017F30 38630004 */  addi    r3, r3, 4
/* 012994 80017F34 3B5A0001 */  addi    r26, r26, 1
/* 012998 80017F38 4200FF60 */  bdnz    lbl_80017E98
lbl_80017F3C:
/* 01299C 80017F3C 2C1A0000 */  cmpwi   r26, 0
/* 0129A0 80017F40 93790034 */  stw     r27, 0x34(r25)
/* 0129A4 80017F44 40820010 */  bne     lbl_80017F54
/* 0129A8 80017F48 38000000 */  li      r0, 0
/* 0129AC 80017F4C 90190038 */  stw     r0, 0x38(r25)
/* 0129B0 80017F50 48000040 */  b       lbl_80017F90
lbl_80017F54:
/* 0129B4 80017F54 5740103A */  slwi    r0, r26, 2
/* 0129B8 80017F58 7CB90214 */  add     r5, r25, r0
/* 0129BC 80017F5C 8085004C */  lwz     r4, 0x4c(r5)
/* 0129C0 80017F60 3C600020 */  lis     r3, 0x20
/* 0129C4 80017F64 38630401 */  addi    r3, r3, 0x401
/* 0129C8 80017F68 80A5008C */  lwz     r5, 0x8c(r5)
/* 0129CC 80017F6C 38041FFB */  addi    r0, r4, 0x1ffb
/* 0129D0 80017F70 7C630016 */  mulhwu  r3, r3, r0
/* 0129D4 80017F74 7C030050 */  subf    r0, r3, r0
/* 0129D8 80017F78 5400F87E */  srwi    r0, r0, 1
/* 0129DC 80017F7C 7C001A14 */  add     r0, r0, r3
/* 0129E0 80017F80 54000824 */  rlwinm  r0, r0, 1, 0, 0x12
/* 0129E4 80017F84 7C602A14 */  add     r3, r0, r5
/* 0129E8 80017F88 38032000 */  addi    r0, r3, 0x2000
/* 0129EC 80017F8C 90190038 */  stw     r0, 0x38(r25)
lbl_80017F90:
/* 0129F0 80017F90 80190040 */  lwz     r0, 0x40(r25)
/* 0129F4 80017F94 28000000 */  cmplwi  r0, 0
/* 0129F8 80017F98 4182001C */  beq     lbl_80017FB4
/* 0129FC 80017F9C 38790040 */  addi    r3, r25, 0x40
/* 012A00 80017FA0 4BFEF0F9 */  bl      xlHeapFree
/* 012A04 80017FA4 2C030000 */  cmpwi   r3, 0
/* 012A08 80017FA8 4082000C */  bne     lbl_80017FB4
/* 012A0C 80017FAC 38600000 */  li      r3, 0
/* 012A10 80017FB0 48000634 */  b       lbl_800185E4
lbl_80017FB4:
/* 012A14 80017FB4 801907A4 */  lwz     r0, 0x7a4(r25)
/* 012A18 80017FB8 2C000000 */  cmpwi   r0, 0
/* 012A1C 80017FBC 40820058 */  bne     lbl_80018014
/* 012A20 80017FC0 8019003C */  lwz     r0, 0x3c(r25)
/* 012A24 80017FC4 28000000 */  cmplwi  r0, 0
/* 012A28 80017FC8 4182001C */  beq     lbl_80017FE4
/* 012A2C 80017FCC 3879003C */  addi    r3, r25, 0x3c
/* 012A30 80017FD0 4BFEF0C9 */  bl      xlHeapFree
/* 012A34 80017FD4 2C030000 */  cmpwi   r3, 0
/* 012A38 80017FD8 4082000C */  bne     lbl_80017FE4
/* 012A3C 80017FDC 38600000 */  li      r3, 0
/* 012A40 80017FE0 48000604 */  b       lbl_800185E4
lbl_80017FE4:
/* 012A44 80017FE4 80190034 */  lwz     r0, 0x34(r25)
/* 012A48 80017FE8 3879003C */  addi    r3, r25, 0x3c
/* 012A4C 80017FEC 64043000 */  oris    r4, r0, 0x3000
/* 012A50 80017FF0 4BFEF1C5 */  bl      xlHeapTake
/* 012A54 80017FF4 2C030000 */  cmpwi   r3, 0
/* 012A58 80017FF8 4082000C */  bne     lbl_80018004
/* 012A5C 80017FFC 38600000 */  li      r3, 0
/* 012A60 80018000 480005E4 */  b       lbl_800185E4
lbl_80018004:
/* 012A64 80018004 8079003C */  lwz     r3, 0x3c(r25)
/* 012A68 80018008 38BB0000 */  addi    r5, r27, 0
/* 012A6C 8001800C 38800000 */  li      r4, 0
/* 012A70 80018010 4BFED3C1 */  bl      memset
lbl_80018014:
/* 012A74 80018014 80990034 */  lwz     r4, 0x34(r25)
/* 012A78 80018018 3C600020 */  lis     r3, 0x20
/* 012A7C 8001801C 38630401 */  addi    r3, r3, 0x401
/* 012A80 80018020 38041FFB */  addi    r0, r4, 0x1ffb
/* 012A84 80018024 7C630016 */  mulhwu  r3, r3, r0
/* 012A88 80018028 7C030050 */  subf    r0, r3, r0
/* 012A8C 8001802C 5400F87E */  srwi    r0, r0, 1
/* 012A90 80018030 7C001A14 */  add     r0, r0, r3
/* 012A94 80018034 5400B2BA */  rlwinm  r0, r0, 0x16, 0xa, 0x1d
/* 012A98 80018038 38790040 */  addi    r3, r25, 0x40
/* 012A9C 8001803C 64043000 */  oris    r4, r0, 0x3000
/* 012AA0 80018040 4BFEF175 */  bl      xlHeapTake
/* 012AA4 80018044 2C030000 */  cmpwi   r3, 0
/* 012AA8 80018048 4082000C */  bne     lbl_80018054
/* 012AAC 8001804C 38600000 */  li      r3, 0
/* 012AB0 80018050 48000594 */  b       lbl_800185E4
lbl_80018054:
/* 012AB4 80018054 80190034 */  lwz     r0, 0x34(r25)
/* 012AB8 80018058 5744103A */  slwi    r4, r26, 2
/* 012ABC 8001805C 7F992214 */  add     r28, r25, r4
/* 012AC0 80018060 941C0050 */  stwu    r0, 0x50(r28)
/* 012AC4 80018064 7F792214 */  add     r27, r25, r4
/* 012AC8 80018068 3C608010 */  lis     r3, mCard@ha
/* 012ACC 8001806C 80190038 */  lwz     r0, 0x38(r25)
/* 012AD0 80018070 7C992214 */  add     r4, r25, r4
/* 012AD4 80018074 386379B0 */  addi    r3, r3, mCard@l
/* 012AD8 80018078 941B0090 */  stwu    r0, 0x90(r27)
/* 012ADC 8001807C 38000000 */  li      r0, 0
/* 012AE0 80018080 93A400D0 */  stw     r29, 0xd0(r4)
/* 012AE4 80018084 90190044 */  stw     r0, 0x44(r25)
/* 012AE8 80018088 80030470 */  lwz     r0, 0x470(r3)
/* 012AEC 8001808C 2C000001 */  cmpwi   r0, 1
/* 012AF0 80018090 40820018 */  bne     lbl_800180A8
/* 012AF4 80018094 1C7A0021 */  mulli   r3, r26, 0x21
/* 012AF8 80018098 38630110 */  addi    r3, r3, 0x110
/* 012AFC 8001809C 389E0000 */  addi    r4, r30, 0
/* 012B00 800180A0 7C791A14 */  add     r3, r25, r3
/* 012B04 800180A4 480B8905 */  bl      strcpy
lbl_800180A8:
/* 012B08 800180A8 80B9002C */  lwz     r5, 0x2c(r25)
/* 012B0C 800180AC 3C600020 */  lis     r3, 0x20
/* 012B10 800180B0 38830401 */  addi    r4, r3, 0x401
/* 012B14 800180B4 38050001 */  addi    r0, r5, 1
/* 012B18 800180B8 9019002C */  stw     r0, 0x2c(r25)
/* 012B1C 800180BC 807C0000 */  lwz     r3, 0(r28)
/* 012B20 800180C0 80B90004 */  lwz     r5, 4(r25)
/* 012B24 800180C4 38031FFB */  addi    r0, r3, 0x1ffb
/* 012B28 800180C8 7C640016 */  mulhwu  r3, r4, r0
/* 012B2C 800180CC 7C030050 */  subf    r0, r3, r0
/* 012B30 800180D0 5400F87E */  srwi    r0, r0, 1
/* 012B34 800180D4 7C001A14 */  add     r0, r0, r3
/* 012B38 800180D8 54000824 */  rlwinm  r0, r0, 1, 0, 0x12
/* 012B3C 800180DC 7C602A14 */  add     r3, r0, r5
/* 012B40 800180E0 38032000 */  addi    r0, r3, 0x2000
/* 012B44 800180E4 90190004 */  stw     r0, 4(r25)
/* 012B48 800180E8 80190470 */  lwz     r0, 0x470(r25)
/* 012B4C 800180EC 2C000001 */  cmpwi   r0, 1
/* 012B50 800180F0 40820050 */  bne     lbl_80018140
/* 012B54 800180F4 7F23CB78 */  mr      r3, r25
/* 012B58 800180F8 48002EDD */  bl      mcardReadyCard
/* 012B5C 800180FC 2C030000 */  cmpwi   r3, 0
/* 012B60 80018100 4082000C */  bne     lbl_8001810C
/* 012B64 80018104 38000000 */  li      r0, 0
/* 012B68 80018108 4800003C */  b       lbl_80018144
lbl_8001810C:
/* 012B6C 8001810C 80790360 */  lwz     r3, 0x360(r25)
/* 012B70 80018110 38990008 */  addi    r4, r25, 8
/* 012B74 80018114 38B90348 */  addi    r5, r25, 0x348
/* 012B78 80018118 480A8109 */  bl      CARDOpen
/* 012B7C 8001811C 38830000 */  addi    r4, r3, 0
/* 012B80 80018120 38790000 */  addi    r3, r25, 0
/* 012B84 80018124 4800417D */  bl      mcardGCErrorHandler
/* 012B88 80018128 2C030001 */  cmpwi   r3, 1
/* 012B8C 8001812C 41820014 */  beq     lbl_80018140
/* 012B90 80018130 80790360 */  lwz     r3, 0x360(r25)
/* 012B94 80018134 480A73E9 */  bl      CARDUnmount
/* 012B98 80018138 38000000 */  li      r0, 0
/* 012B9C 8001813C 48000008 */  b       lbl_80018144
lbl_80018140:
/* 012BA0 80018140 38000001 */  li      r0, 1
lbl_80018144:
/* 012BA4 80018144 2C000000 */  cmpwi   r0, 0
/* 012BA8 80018148 408200DC */  bne     lbl_80018224
/* 012BAC 8001814C 80B9002C */  lwz     r5, 0x2c(r25)
/* 012BB0 80018150 3C800020 */  lis     r4, 0x20
/* 012BB4 80018154 1C7A0021 */  mulli   r3, r26, 0x21
/* 012BB8 80018158 3805FFFF */  addi    r0, r5, -1
/* 012BBC 8001815C 9019002C */  stw     r0, 0x2c(r25)
/* 012BC0 80018160 38C40401 */  addi    r6, r4, 0x401
/* 012BC4 80018164 38630110 */  addi    r3, r3, 0x110
/* 012BC8 80018168 80BC0000 */  lwz     r5, 0(r28)
/* 012BCC 8001816C 38000000 */  li      r0, 0
/* 012BD0 80018170 80990004 */  lwz     r4, 4(r25)
/* 012BD4 80018174 7C791A14 */  add     r3, r25, r3
/* 012BD8 80018178 38A51FFB */  addi    r5, r5, 0x1ffb
/* 012BDC 8001817C 7CC62816 */  mulhwu  r6, r6, r5
/* 012BE0 80018180 7CA62850 */  subf    r5, r6, r5
/* 012BE4 80018184 54A5F87E */  srwi    r5, r5, 1
/* 012BE8 80018188 7CA53214 */  add     r5, r5, r6
/* 012BEC 8001818C 54A50824 */  rlwinm  r5, r5, 1, 0, 0x12
/* 012BF0 80018190 38A52000 */  addi    r5, r5, 0x2000
/* 012BF4 80018194 7C852050 */  subf    r4, r5, r4
/* 012BF8 80018198 90990004 */  stw     r4, 4(r25)
/* 012BFC 8001819C 38800000 */  li      r4, 0
/* 012C00 800181A0 38A00021 */  li      r5, 0x21
/* 012C04 800181A4 901C0000 */  stw     r0, 0(r28)
/* 012C08 800181A8 901B0000 */  stw     r0, 0(r27)
/* 012C0C 800181AC 4BFED225 */  bl      memset
/* 012C10 800181B0 801907A4 */  lwz     r0, 0x7a4(r25)
/* 012C14 800181B4 2C000000 */  cmpwi   r0, 0
/* 012C18 800181B8 40820038 */  bne     lbl_800181F0
/* 012C1C 800181BC 8019003C */  lwz     r0, 0x3c(r25)
/* 012C20 800181C0 28000000 */  cmplwi  r0, 0
/* 012C24 800181C4 41820014 */  beq     lbl_800181D8
/* 012C28 800181C8 3879003C */  addi    r3, r25, 0x3c
/* 012C2C 800181CC 4BFEEECD */  bl      xlHeapFree
/* 012C30 800181D0 2C030000 */  cmpwi   r3, 0
/* 012C34 800181D4 41820048 */  beq     lbl_8001821C
lbl_800181D8:
/* 012C38 800181D8 38000000 */  li      r0, 0
/* 012C3C 800181DC 90190034 */  stw     r0, 0x34(r25)
/* 012C40 800181E0 38790030 */  addi    r3, r25, 0x30
/* 012C44 800181E4 38800000 */  li      r4, 0
/* 012C48 800181E8 38A00004 */  li      r5, 4
/* 012C4C 800181EC 4BFED1E5 */  bl      memset
lbl_800181F0:
/* 012C50 800181F0 80190040 */  lwz     r0, 0x40(r25)
/* 012C54 800181F4 28000000 */  cmplwi  r0, 0
/* 012C58 800181F8 41820014 */  beq     lbl_8001820C
/* 012C5C 800181FC 38790040 */  addi    r3, r25, 0x40
/* 012C60 80018200 4BFEEE99 */  bl      xlHeapFree
/* 012C64 80018204 2C030000 */  cmpwi   r3, 0
/* 012C68 80018208 41820014 */  beq     lbl_8001821C
lbl_8001820C:
/* 012C6C 8001820C 38000000 */  li      r0, 0
/* 012C70 80018210 90190044 */  stw     r0, 0x44(r25)
/* 012C74 80018214 38000010 */  li      r0, 0x10
/* 012C78 80018218 90190000 */  stw     r0, 0(r25)
lbl_8001821C:
/* 012C7C 8001821C 38600000 */  li      r3, 0
/* 012C80 80018220 480003C4 */  b       lbl_800185E4
lbl_80018224:
/* 012C84 80018224 80190470 */  lwz     r0, 0x470(r25)
/* 012C88 80018228 2C000001 */  cmpwi   r0, 1
/* 012C8C 8001822C 40820104 */  bne     lbl_80018330
/* 012C90 80018230 3C60800F */  lis     r3, D_800EA740@ha
/* 012C94 80018234 3883A740 */  addi    r4, r3, D_800EA740@l
/* 012C98 80018238 38790370 */  addi    r3, r25, 0x370
/* 012C9C 8001823C 480B876D */  bl      strcpy
/* 012CA0 80018240 3BC00000 */  li      r30, 0
/* 012CA4 80018244 3C600020 */  lis     r3, 0x20
/* 012CA8 80018248 3B1E0000 */  addi    r24, r30, 0
/* 012CAC 8001824C 57DD6824 */  slwi    r29, r30, 0xd
/* 012CB0 80018250 3BE30401 */  addi    r31, r3, 0x401
/* 012CB4 80018254 480000B8 */  b       lbl_8001830C
lbl_80018258:
/* 012CB8 80018258 3803FFFF */  addi    r0, r3, -1
/* 012CBC 8001825C 7C1E0040 */  cmplw   r30, r0
/* 012CC0 80018260 40800020 */  bge     lbl_80018280
/* 012CC4 80018264 80790474 */  lwz     r3, 0x474(r25)
/* 012CC8 80018268 38A01FFC */  li      r5, 0x1ffc
/* 012CCC 8001826C 8019003C */  lwz     r0, 0x3c(r25)
/* 012CD0 80018270 38630004 */  addi    r3, r3, 4
/* 012CD4 80018274 7C80C214 */  add     r4, r0, r24
/* 012CD8 80018278 4BFED24D */  bl      memcpy
/* 012CDC 8001827C 4800001C */  b       lbl_80018298
lbl_80018280:
/* 012CE0 80018280 80790474 */  lwz     r3, 0x474(r25)
/* 012CE4 80018284 7CB82050 */  subf    r5, r24, r4
/* 012CE8 80018288 8019003C */  lwz     r0, 0x3c(r25)
/* 012CEC 8001828C 38630004 */  addi    r3, r3, 4
/* 012CF0 80018290 7C80C214 */  add     r4, r0, r24
/* 012CF4 80018294 4BFED231 */  bl      memcpy
lbl_80018298:
/* 012CF8 80018298 38790000 */  addi    r3, r25, 0
/* 012CFC 8001829C 38810018 */  addi    r4, r1, 0x18
/* 012D00 800182A0 48003FA1 */  bl      mcardCalculateChecksum
/* 012D04 800182A4 80790474 */  lwz     r3, 0x474(r25)
/* 012D08 800182A8 38810018 */  addi    r4, r1, 0x18
/* 012D0C 800182AC 38A00004 */  li      r5, 4
/* 012D10 800182B0 4BFED215 */  bl      memcpy
/* 012D14 800182B4 80990034 */  lwz     r4, 0x34(r25)
/* 012D18 800182B8 7F23CB78 */  mr      r3, r25
/* 012D1C 800182BC 80B90038 */  lwz     r5, 0x38(r25)
/* 012D20 800182C0 38FD0000 */  addi    r7, r29, 0
/* 012D24 800182C4 38041FFB */  addi    r0, r4, 0x1ffb
/* 012D28 800182C8 7C9F0016 */  mulhwu  r4, r31, r0
/* 012D2C 800182CC 80D90474 */  lwz     r6, 0x474(r25)
/* 012D30 800182D0 7C040050 */  subf    r0, r4, r0
/* 012D34 800182D4 5400F87E */  srwi    r0, r0, 1
/* 012D38 800182D8 7C002214 */  add     r0, r0, r4
/* 012D3C 800182DC 7C85EA14 */  add     r4, r5, r29
/* 012D40 800182E0 54080824 */  rlwinm  r8, r0, 1, 0, 0x12
/* 012D44 800182E4 38A02000 */  li      r5, 0x2000
/* 012D48 800182E8 38846000 */  addi    r4, r4, 0x6000
/* 012D4C 800182EC 48002831 */  bl      mcardWriteAnywherePartial
/* 012D50 800182F0 2C030000 */  cmpwi   r3, 0
/* 012D54 800182F4 4082000C */  bne     lbl_80018300
/* 012D58 800182F8 38000000 */  li      r0, 0
/* 012D5C 800182FC 48000038 */  b       lbl_80018334
lbl_80018300:
/* 012D60 80018300 3BBD2000 */  addi    r29, r29, 0x2000
/* 012D64 80018304 3BDE0001 */  addi    r30, r30, 1
/* 012D68 80018308 3B181FFC */  addi    r24, r24, 0x1ffc
lbl_8001830C:
/* 012D6C 8001830C 80990034 */  lwz     r4, 0x34(r25)
/* 012D70 80018310 38041FFB */  addi    r0, r4, 0x1ffb
/* 012D74 80018314 7C7F0016 */  mulhwu  r3, r31, r0
/* 012D78 80018318 7C030050 */  subf    r0, r3, r0
/* 012D7C 8001831C 5400F87E */  srwi    r0, r0, 1
/* 012D80 80018320 7C001A14 */  add     r0, r0, r3
/* 012D84 80018324 5403A33E */  srwi    r3, r0, 0xc
/* 012D88 80018328 7C1E1840 */  cmplw   r30, r3
/* 012D8C 8001832C 4180FF2C */  blt     lbl_80018258
lbl_80018330:
/* 012D90 80018330 38000001 */  li      r0, 1
lbl_80018334:
/* 012D94 80018334 2C000000 */  cmpwi   r0, 0
/* 012D98 80018338 40820104 */  bne     lbl_8001843C
/* 012D9C 8001833C 80B9002C */  lwz     r5, 0x2c(r25)
/* 012DA0 80018340 3C800020 */  lis     r4, 0x20
/* 012DA4 80018344 1C7A0021 */  mulli   r3, r26, 0x21
/* 012DA8 80018348 3805FFFF */  addi    r0, r5, -1
/* 012DAC 8001834C 9019002C */  stw     r0, 0x2c(r25)
/* 012DB0 80018350 38C40401 */  addi    r6, r4, 0x401
/* 012DB4 80018354 38630110 */  addi    r3, r3, 0x110
/* 012DB8 80018358 80BC0000 */  lwz     r5, 0(r28)
/* 012DBC 8001835C 38000000 */  li      r0, 0
/* 012DC0 80018360 80990004 */  lwz     r4, 4(r25)
/* 012DC4 80018364 7C791A14 */  add     r3, r25, r3
/* 012DC8 80018368 38A51FFB */  addi    r5, r5, 0x1ffb
/* 012DCC 8001836C 7CC62816 */  mulhwu  r6, r6, r5
/* 012DD0 80018370 7CA62850 */  subf    r5, r6, r5
/* 012DD4 80018374 54A5F87E */  srwi    r5, r5, 1
/* 012DD8 80018378 7CA53214 */  add     r5, r5, r6
/* 012DDC 8001837C 54A50824 */  rlwinm  r5, r5, 1, 0, 0x12
/* 012DE0 80018380 38A52000 */  addi    r5, r5, 0x2000
/* 012DE4 80018384 7C852050 */  subf    r4, r5, r4
/* 012DE8 80018388 90990004 */  stw     r4, 4(r25)
/* 012DEC 8001838C 38800000 */  li      r4, 0
/* 012DF0 80018390 38A00021 */  li      r5, 0x21
/* 012DF4 80018394 901C0000 */  stw     r0, 0(r28)
/* 012DF8 80018398 901B0000 */  stw     r0, 0(r27)
/* 012DFC 8001839C 4BFED035 */  bl      memset
/* 012E00 800183A0 801907A4 */  lwz     r0, 0x7a4(r25)
/* 012E04 800183A4 2C000000 */  cmpwi   r0, 0
/* 012E08 800183A8 40820038 */  bne     lbl_800183E0
/* 012E0C 800183AC 8019003C */  lwz     r0, 0x3c(r25)
/* 012E10 800183B0 28000000 */  cmplwi  r0, 0
/* 012E14 800183B4 41820014 */  beq     lbl_800183C8
/* 012E18 800183B8 3879003C */  addi    r3, r25, 0x3c
/* 012E1C 800183BC 4BFEECDD */  bl      xlHeapFree
/* 012E20 800183C0 2C030000 */  cmpwi   r3, 0
/* 012E24 800183C4 41820048 */  beq     lbl_8001840C
lbl_800183C8:
/* 012E28 800183C8 38000000 */  li      r0, 0
/* 012E2C 800183CC 90190034 */  stw     r0, 0x34(r25)
/* 012E30 800183D0 38790030 */  addi    r3, r25, 0x30
/* 012E34 800183D4 38800000 */  li      r4, 0
/* 012E38 800183D8 38A00004 */  li      r5, 4
/* 012E3C 800183DC 4BFECFF5 */  bl      memset
lbl_800183E0:
/* 012E40 800183E0 80190040 */  lwz     r0, 0x40(r25)
/* 012E44 800183E4 28000000 */  cmplwi  r0, 0
/* 012E48 800183E8 41820014 */  beq     lbl_800183FC
/* 012E4C 800183EC 38790040 */  addi    r3, r25, 0x40
/* 012E50 800183F0 4BFEECA9 */  bl      xlHeapFree
/* 012E54 800183F4 2C030000 */  cmpwi   r3, 0
/* 012E58 800183F8 41820014 */  beq     lbl_8001840C
lbl_800183FC:
/* 012E5C 800183FC 38000000 */  li      r0, 0
/* 012E60 80018400 90190044 */  stw     r0, 0x44(r25)
/* 012E64 80018404 38000010 */  li      r0, 0x10
/* 012E68 80018408 90190000 */  stw     r0, 0(r25)
lbl_8001840C:
/* 012E6C 8001840C 80190470 */  lwz     r0, 0x470(r25)
/* 012E70 80018410 2C000001 */  cmpwi   r0, 1
/* 012E74 80018414 40820020 */  bne     lbl_80018434
/* 012E78 80018418 80190348 */  lwz     r0, 0x348(r25)
/* 012E7C 8001841C 2C00FFFF */  cmpwi   r0, -1
/* 012E80 80018420 4182000C */  beq     lbl_8001842C
/* 012E84 80018424 38790348 */  addi    r3, r25, 0x348
/* 012E88 80018428 480A7F15 */  bl      CARDClose
lbl_8001842C:
/* 012E8C 8001842C 80790360 */  lwz     r3, 0x360(r25)
/* 012E90 80018430 480A70ED */  bl      CARDUnmount
lbl_80018434:
/* 012E94 80018434 38600000 */  li      r3, 0
/* 012E98 80018438 480001AC */  b       lbl_800185E4
lbl_8001843C:
/* 012E9C 8001843C 7F23CB78 */  mr      r3, r25
/* 012EA0 80018440 480020FD */  bl      mcardWriteFileHeader
/* 012EA4 80018444 2C030000 */  cmpwi   r3, 0
/* 012EA8 80018448 40820104 */  bne     lbl_8001854C
/* 012EAC 8001844C 80B9002C */  lwz     r5, 0x2c(r25)
/* 012EB0 80018450 3C800020 */  lis     r4, 0x20
/* 012EB4 80018454 1C7A0021 */  mulli   r3, r26, 0x21
/* 012EB8 80018458 3805FFFF */  addi    r0, r5, -1
/* 012EBC 8001845C 9019002C */  stw     r0, 0x2c(r25)
/* 012EC0 80018460 38C40401 */  addi    r6, r4, 0x401
/* 012EC4 80018464 38630110 */  addi    r3, r3, 0x110
/* 012EC8 80018468 80BC0000 */  lwz     r5, 0(r28)
/* 012ECC 8001846C 38000000 */  li      r0, 0
/* 012ED0 80018470 80990004 */  lwz     r4, 4(r25)
/* 012ED4 80018474 7C791A14 */  add     r3, r25, r3
/* 012ED8 80018478 38A51FFB */  addi    r5, r5, 0x1ffb
/* 012EDC 8001847C 7CC62816 */  mulhwu  r6, r6, r5
/* 012EE0 80018480 7CA62850 */  subf    r5, r6, r5
/* 012EE4 80018484 54A5F87E */  srwi    r5, r5, 1
/* 012EE8 80018488 7CA53214 */  add     r5, r5, r6
/* 012EEC 8001848C 54A50824 */  rlwinm  r5, r5, 1, 0, 0x12
/* 012EF0 80018490 38A52000 */  addi    r5, r5, 0x2000
/* 012EF4 80018494 7C852050 */  subf    r4, r5, r4
/* 012EF8 80018498 90990004 */  stw     r4, 4(r25)
/* 012EFC 8001849C 38800000 */  li      r4, 0
/* 012F00 800184A0 38A00021 */  li      r5, 0x21
/* 012F04 800184A4 901C0000 */  stw     r0, 0(r28)
/* 012F08 800184A8 901B0000 */  stw     r0, 0(r27)
/* 012F0C 800184AC 4BFECF25 */  bl      memset
/* 012F10 800184B0 801907A4 */  lwz     r0, 0x7a4(r25)
/* 012F14 800184B4 2C000000 */  cmpwi   r0, 0
/* 012F18 800184B8 40820038 */  bne     lbl_800184F0
/* 012F1C 800184BC 8019003C */  lwz     r0, 0x3c(r25)
/* 012F20 800184C0 28000000 */  cmplwi  r0, 0
/* 012F24 800184C4 41820014 */  beq     lbl_800184D8
/* 012F28 800184C8 3879003C */  addi    r3, r25, 0x3c
/* 012F2C 800184CC 4BFEEBCD */  bl      xlHeapFree
/* 012F30 800184D0 2C030000 */  cmpwi   r3, 0
/* 012F34 800184D4 41820048 */  beq     lbl_8001851C
lbl_800184D8:
/* 012F38 800184D8 38000000 */  li      r0, 0
/* 012F3C 800184DC 90190034 */  stw     r0, 0x34(r25)
/* 012F40 800184E0 38790030 */  addi    r3, r25, 0x30
/* 012F44 800184E4 38800000 */  li      r4, 0
/* 012F48 800184E8 38A00004 */  li      r5, 4
/* 012F4C 800184EC 4BFECEE5 */  bl      memset
lbl_800184F0:
/* 012F50 800184F0 80190040 */  lwz     r0, 0x40(r25)
/* 012F54 800184F4 28000000 */  cmplwi  r0, 0
/* 012F58 800184F8 41820014 */  beq     lbl_8001850C
/* 012F5C 800184FC 38790040 */  addi    r3, r25, 0x40
/* 012F60 80018500 4BFEEB99 */  bl      xlHeapFree
/* 012F64 80018504 2C030000 */  cmpwi   r3, 0
/* 012F68 80018508 41820014 */  beq     lbl_8001851C
lbl_8001850C:
/* 012F6C 8001850C 38000000 */  li      r0, 0
/* 012F70 80018510 90190044 */  stw     r0, 0x44(r25)
/* 012F74 80018514 38000010 */  li      r0, 0x10
/* 012F78 80018518 90190000 */  stw     r0, 0(r25)
lbl_8001851C:
/* 012F7C 8001851C 80190470 */  lwz     r0, 0x470(r25)
/* 012F80 80018520 2C000001 */  cmpwi   r0, 1
/* 012F84 80018524 40820020 */  bne     lbl_80018544
/* 012F88 80018528 80190348 */  lwz     r0, 0x348(r25)
/* 012F8C 8001852C 2C00FFFF */  cmpwi   r0, -1
/* 012F90 80018530 4182000C */  beq     lbl_8001853C
/* 012F94 80018534 38790348 */  addi    r3, r25, 0x348
/* 012F98 80018538 480A7E05 */  bl      CARDClose
lbl_8001853C:
/* 012F9C 8001853C 80790360 */  lwz     r3, 0x360(r25)
/* 012FA0 80018540 480A6FDD */  bl      CARDUnmount
lbl_80018544:
/* 012FA4 80018544 38600000 */  li      r3, 0
/* 012FA8 80018548 4800009C */  b       lbl_800185E4
lbl_8001854C:
/* 012FAC 8001854C 801907A4 */  lwz     r0, 0x7a4(r25)
/* 012FB0 80018550 2C000000 */  cmpwi   r0, 0
/* 012FB4 80018554 40820038 */  bne     lbl_8001858C
/* 012FB8 80018558 8019003C */  lwz     r0, 0x3c(r25)
/* 012FBC 8001855C 28000000 */  cmplwi  r0, 0
/* 012FC0 80018560 41820014 */  beq     lbl_80018574
/* 012FC4 80018564 3879003C */  addi    r3, r25, 0x3c
/* 012FC8 80018568 4BFEEB31 */  bl      xlHeapFree
/* 012FCC 8001856C 2C030000 */  cmpwi   r3, 0
/* 012FD0 80018570 41820048 */  beq     lbl_800185B8
lbl_80018574:
/* 012FD4 80018574 38000000 */  li      r0, 0
/* 012FD8 80018578 90190034 */  stw     r0, 0x34(r25)
/* 012FDC 8001857C 38790030 */  addi    r3, r25, 0x30
/* 012FE0 80018580 38800000 */  li      r4, 0
/* 012FE4 80018584 38A00004 */  li      r5, 4
/* 012FE8 80018588 4BFECE49 */  bl      memset
lbl_8001858C:
/* 012FEC 8001858C 80190040 */  lwz     r0, 0x40(r25)
/* 012FF0 80018590 28000000 */  cmplwi  r0, 0
/* 012FF4 80018594 41820014 */  beq     lbl_800185A8
/* 012FF8 80018598 38790040 */  addi    r3, r25, 0x40
/* 012FFC 8001859C 4BFEEAFD */  bl      xlHeapFree
/* 013000 800185A0 2C030000 */  cmpwi   r3, 0
/* 013004 800185A4 41820014 */  beq     lbl_800185B8
lbl_800185A8:
/* 013008 800185A8 38000000 */  li      r0, 0
/* 01300C 800185AC 90190044 */  stw     r0, 0x44(r25)
/* 013010 800185B0 38000010 */  li      r0, 0x10
/* 013014 800185B4 90190000 */  stw     r0, 0(r25)
lbl_800185B8:
/* 013018 800185B8 80190470 */  lwz     r0, 0x470(r25)
/* 01301C 800185BC 2C000001 */  cmpwi   r0, 1
/* 013020 800185C0 40820020 */  bne     lbl_800185E0
/* 013024 800185C4 80190348 */  lwz     r0, 0x348(r25)
/* 013028 800185C8 2C00FFFF */  cmpwi   r0, -1
/* 01302C 800185CC 4182000C */  beq     lbl_800185D8
/* 013030 800185D0 38790348 */  addi    r3, r25, 0x348
/* 013034 800185D4 480A7D69 */  bl      CARDClose
lbl_800185D8:
/* 013038 800185D8 80790360 */  lwz     r3, 0x360(r25)
/* 01303C 800185DC 480A6F41 */  bl      CARDUnmount
lbl_800185E0:
/* 013040 800185E0 38600001 */  li      r3, 1
lbl_800185E4:
/* 013044 800185E4 BB010020 */  lmw     r24, 0x20(r1)
/* 013048 800185E8 80010044 */  lwz     r0, 0x44(r1)
/* 01304C 800185EC 38210040 */  addi    r1, r1, 0x40
/* 013050 800185F0 7C0803A6 */  mtlr    r0
/* 013054 800185F4 4E800020 */  blr     