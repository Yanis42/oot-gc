# THPAudioDecode.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x80010B78 - 0x80010F14

glabel CreateAudioDecodeThread
/* 00DB78 80010B78 7C0802A6 */  mflr      r0
/* 00DB7C 80010B7C 7C852379 */  mr.       r5, r4
/* 00DB80 80010B80 90010004 */  stw       r0, 0x4(r1)
/* 00DB84 80010B84 3C808010 */  lis       r4, D_800FB1B0@ha
/* 00DB88 80010B88 39030000 */  addi      r8, r3, 0x0
/* 00DB8C 80010B8C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 00DB90 80010B90 93E10014 */  stw       r31, 0x14(r1)
/* 00DB94 80010B94 3BE4B1B0 */  addi      r31, r4, D_800FB1B0@l
/* 00DB98 80010B98 41820040 */  beq       lbl_80010BD8
/* 00DB9C 80010B9C 3C608001 */  lis       r3, AudioDecoderForOnMemory@ha
/* 00DBA0 80010BA0 38830CB4 */  addi      r4, r3, AudioDecoderForOnMemory@l
/* 00DBA4 80010BA4 387F0000 */  addi      r3, r31, 0x0
/* 00DBA8 80010BA8 38DF1318 */  addi      r6, r31, 0x1318
/* 00DBAC 80010BAC 38E01000 */  li        r7, 0x1000
/* 00DBB0 80010BB0 39200001 */  li        r9, 0x1
/* 00DBB4 80010BB4 4808FE11 */  bl        OSCreateThread
/* 00DBB8 80010BB8 2C030000 */  cmpwi     r3, 0x0
/* 00DBBC 80010BBC 4082005C */  bne       lbl_80010C18
/* 00DBC0 80010BC0 3C60800F */  lis       r3, D_800EB940@ha
/* 00DBC4 80010BC4 4CC63182 */  crclr     cr1eq
/* 00DBC8 80010BC8 3863B940 */  addi      r3, r3, D_800EB940@l
/* 00DBCC 80010BCC 4808CF79 */  bl        OSReport
/* 00DBD0 80010BD0 38600000 */  li        r3, 0x0
/* 00DBD4 80010BD4 48000070 */  b         lbl_80010C44
lbl_80010BD8:
/* 00DBD8 80010BD8 3C608001 */  lis       r3, AudioDecoder@ha
/* 00DBDC 80010BDC 38830C8C */  addi      r4, r3, AudioDecoder@l
/* 00DBE0 80010BE0 387F0000 */  addi      r3, r31, 0x0
/* 00DBE4 80010BE4 38DF1318 */  addi      r6, r31, 0x1318
/* 00DBE8 80010BE8 38A00000 */  li        r5, 0x0
/* 00DBEC 80010BEC 38E01000 */  li        r7, 0x1000
/* 00DBF0 80010BF0 39200001 */  li        r9, 0x1
/* 00DBF4 80010BF4 4808FDD1 */  bl        OSCreateThread
/* 00DBF8 80010BF8 2C030000 */  cmpwi     r3, 0x0
/* 00DBFC 80010BFC 4082001C */  bne       lbl_80010C18
/* 00DC00 80010C00 3C60800F */  lis       r3, D_800EB940@ha
/* 00DC04 80010C04 4CC63182 */  crclr     cr1eq
/* 00DC08 80010C08 3863B940 */  addi      r3, r3, D_800EB940@l
/* 00DC0C 80010C0C 4808CF39 */  bl        OSReport
/* 00DC10 80010C10 38600000 */  li        r3, 0x0
/* 00DC14 80010C14 48000030 */  b         lbl_80010C44
lbl_80010C18:
/* 00DC18 80010C18 387F1318 */  addi      r3, r31, 0x1318
/* 00DC1C 80010C1C 389F1358 */  addi      r4, r31, 0x1358
/* 00DC20 80010C20 38A00003 */  li        r5, 0x3
/* 00DC24 80010C24 4808DEA9 */  bl        OSInitMessageQueue
/* 00DC28 80010C28 387F1338 */  addi      r3, r31, 0x1338
/* 00DC2C 80010C2C 389F1364 */  addi      r4, r31, 0x1364
/* 00DC30 80010C30 38A00003 */  li        r5, 0x3
/* 00DC34 80010C34 4808DE99 */  bl        OSInitMessageQueue
/* 00DC38 80010C38 38000001 */  li        r0, 0x1
/* 00DC3C 80010C3C 900D8948 */  stw       r0, D_8018B8C8@sda21(r0)
/* 00DC40 80010C40 38600001 */  li        r3, 0x1
lbl_80010C44:
/* 00DC44 80010C44 8001001C */  lwz       r0, 0x1c(r1)
/* 00DC48 80010C48 83E10014 */  lwz       r31, 0x14(r1)
/* 00DC4C 80010C4C 38210018 */  addi      r1, r1, 0x18
/* 00DC50 80010C50 7C0803A6 */  mtlr      r0
/* 00DC54 80010C54 4E800020 */  blr

glabel AudioDecodeThreadStart
/* 00DC58 80010C58 7C0802A6 */  mflr      r0
/* 00DC5C 80010C5C 90010004 */  stw       r0, 0x4(r1)
/* 00DC60 80010C60 9421FFF8 */  stwu      r1, -0x8(r1)
/* 00DC64 80010C64 800D8948 */  lwz       r0, D_8018B8C8@sda21(r0)
/* 00DC68 80010C68 2C000000 */  cmpwi     r0, 0x0
/* 00DC6C 80010C6C 41820010 */  beq       lbl_80010C7C
/* 00DC70 80010C70 3C608010 */  lis       r3, D_800FB1B0@ha
/* 00DC74 80010C74 3863B1B0 */  addi      r3, r3, D_800FB1B0@l
/* 00DC78 80010C78 480901D5 */  bl        OSResumeThread
lbl_80010C7C:
/* 00DC7C 80010C7C 8001000C */  lwz       r0, 0xc(r1)
/* 00DC80 80010C80 38210008 */  addi      r1, r1, 0x8
/* 00DC84 80010C84 7C0803A6 */  mtlr      r0
/* 00DC88 80010C88 4E800020 */  blr

glabel AudioDecoder
/* 00DC8C 80010C8C 7C0802A6 */  mflr      r0
/* 00DC90 80010C90 90010004 */  stw       r0, 0x4(r1)
/* 00DC94 80010C94 9421FFE8 */  stwu      r1, -0x18(r1)
/* 00DC98 80010C98 93E10014 */  stw       r31, 0x14(r1)
lbl_80010C9C:
/* 00DC9C 80010C9C 48000B0D */  bl        PopReadedBuffer
/* 00DCA0 80010CA0 7C7F1B78 */  mr        r31, r3
/* 00DCA4 80010CA4 480000C1 */  bl        AudioDecode
/* 00DCA8 80010CA8 7FE3FB78 */  mr        r3, r31
/* 00DCAC 80010CAC 48000A69 */  bl        PushReadedBuffer2
/* 00DCB0 80010CB0 4BFFFFEC */  b         lbl_80010C9C

glabel AudioDecoderForOnMemory
/* 00DCB4 80010CB4 7C0802A6 */  mflr      r0
/* 00DCB8 80010CB8 3C808010 */  lis       r4, D_800FAFE0@ha
/* 00DCBC 80010CBC 90010004 */  stw       r0, 0x4(r1)
/* 00DCC0 80010CC0 9421FFD0 */  stwu      r1, -0x30(r1)
/* 00DCC4 80010CC4 93E1002C */  stw       r31, 0x2c(r1)
/* 00DCC8 80010CC8 3BE00000 */  li        r31, 0x0
/* 00DCCC 80010CCC 93C10028 */  stw       r30, 0x28(r1)
/* 00DCD0 80010CD0 93A10024 */  stw       r29, 0x24(r1)
/* 00DCD4 80010CD4 3BA4AFE0 */  addi      r29, r4, D_800FAFE0@l
/* 00DCD8 80010CD8 3C808010 */  lis       r4, D_800FB1B0@ha
/* 00DCDC 80010CDC 93810020 */  stw       r28, 0x20(r1)
/* 00DCE0 80010CE0 3BC4B1B0 */  addi      r30, r4, D_800FB1B0@l
/* 00DCE4 80010CE4 839D00BC */  lwz       r28, 0xbc(r29)
/* 00DCE8 80010CE8 90610010 */  stw       r3, 0x10(r1)
lbl_80010CEC:
/* 00DCEC 80010CEC 93E10014 */  stw       r31, 0x14(r1)
/* 00DCF0 80010CF0 38610010 */  addi      r3, r1, 0x10
/* 00DCF4 80010CF4 48000071 */  bl        AudioDecode
/* 00DCF8 80010CF8 801D00C0 */  lwz       r0, 0xc0(r29)
/* 00DCFC 80010CFC 809D0050 */  lwz       r4, 0x50(r29)
/* 00DD00 80010D00 7C7F0214 */  add       r3, r31, r0
/* 00DD04 80010D04 7C032396 */  divwu     r0, r3, r4
/* 00DD08 80010D08 7C0021D6 */  mullw     r0, r0, r4
/* 00DD0C 80010D0C 7C601850 */  subf      r3, r0, r3
/* 00DD10 80010D10 3804FFFF */  subi      r0, r4, 0x1
/* 00DD14 80010D14 7C030040 */  cmplw     r3, r0
/* 00DD18 80010D18 40820030 */  bne       lbl_80010D48
/* 00DD1C 80010D1C 881D00A6 */  lbz       r0, 0xa6(r29)
/* 00DD20 80010D20 540007FF */  clrlwi.   r0, r0, 31
/* 00DD24 80010D24 41820018 */  beq       lbl_80010D3C
/* 00DD28 80010D28 80610010 */  lwz       r3, 0x10(r1)
/* 00DD2C 80010D2C 801D00B4 */  lwz       r0, 0xb4(r29)
/* 00DD30 80010D30 83830000 */  lwz       r28, 0x0(r3)
/* 00DD34 80010D34 90010010 */  stw       r0, 0x10(r1)
/* 00DD38 80010D38 48000024 */  b         lbl_80010D5C
lbl_80010D3C:
/* 00DD3C 80010D3C 7FC3F378 */  mr        r3, r30
/* 00DD40 80010D40 48090395 */  bl        OSSuspendThread
/* 00DD44 80010D44 48000018 */  b         lbl_80010D5C
lbl_80010D48:
/* 00DD48 80010D48 80610010 */  lwz       r3, 0x10(r1)
/* 00DD4C 80010D4C 80830000 */  lwz       r4, 0x0(r3)
/* 00DD50 80010D50 7C03E214 */  add       r0, r3, r28
/* 00DD54 80010D54 90010010 */  stw       r0, 0x10(r1)
/* 00DD58 80010D58 7C9C2378 */  mr        r28, r4
lbl_80010D5C:
/* 00DD5C 80010D5C 3BFF0001 */  addi      r31, r31, 0x1
/* 00DD60 80010D60 4BFFFF8C */  b         lbl_80010CEC

glabel AudioDecode
/* 00DD64 80010D64 7C0802A6 */  mflr      r0
/* 00DD68 80010D68 3C808010 */  lis       r4, D_800FAFE0@ha
/* 00DD6C 80010D6C 90010004 */  stw       r0, 0x4(r1)
/* 00DD70 80010D70 9421FFE0 */  stwu      r1, -0x20(r1)
/* 00DD74 80010D74 93E1001C */  stw       r31, 0x1c(r1)
/* 00DD78 80010D78 3BE4AFE0 */  addi      r31, r4, D_800FAFE0@l
/* 00DD7C 80010D7C 93C10018 */  stw       r30, 0x18(r1)
/* 00DD80 80010D80 3BDF006C */  addi      r30, r31, 0x6c
/* 00DD84 80010D84 93A10014 */  stw       r29, 0x14(r1)
/* 00DD88 80010D88 93810010 */  stw       r28, 0x10(r1)
/* 00DD8C 80010D8C 801F006C */  lwz       r0, 0x6c(r31)
/* 00DD90 80010D90 80A30000 */  lwz       r5, 0x0(r3)
/* 00DD94 80010D94 5403103A */  slwi      r3, r0, 2
/* 00DD98 80010D98 3B830008 */  addi      r28, r3, 0x8
/* 00DD9C 80010D9C 3BA50008 */  addi      r29, r5, 0x8
/* 00DDA0 80010DA0 7F85E214 */  add       r28, r5, r28
/* 00DDA4 80010DA4 48000099 */  bl        PopFreeAudioBuffer
/* 00DDA8 80010DA8 801E0000 */  lwz       r0, 0x0(r30)
/* 00DDAC 80010DAC 3BC30000 */  addi      r30, r3, 0x0
/* 00DDB0 80010DB0 28000000 */  cmplwi    r0, 0x0
/* 00DDB4 80010DB4 7C0903A6 */  mtctr     r0
/* 00DDB8 80010DB8 40810064 */  ble       lbl_80010E1C
lbl_80010DBC:
/* 00DDBC 80010DBC 881F0070 */  lbz       r0, 0x70(r31)
/* 00DDC0 80010DC0 2C000001 */  cmpwi     r0, 0x1
/* 00DDC4 80010DC4 41820008 */  beq       lbl_80010DCC
/* 00DDC8 80010DC8 48000040 */  b         lbl_80010E08
lbl_80010DCC:
/* 00DDCC 80010DCC 3C608010 */  lis       r3, D_800FAFE0@ha
/* 00DDD0 80010DD0 80DD0000 */  lwz       r6, 0x0(r29)
/* 00DDD4 80010DD4 3883AFE0 */  addi      r4, r3, D_800FAFE0@l
/* 00DDD8 80010DD8 807E0000 */  lwz       r3, 0x0(r30)
/* 00DDDC 80010DDC 800400EC */  lwz       r0, 0xec(r4)
/* 00DDE0 80010DE0 38A00000 */  li        r5, 0x0
/* 00DDE4 80010DE4 7C0601D6 */  mullw     r0, r6, r0
/* 00DDE8 80010DE8 7C9C0214 */  add       r4, r28, r0
/* 00DDEC 80010DEC 480B6819 */  bl        THPAudioDecode
/* 00DDF0 80010DF0 907E0008 */  stw       r3, 0x8(r30)
/* 00DDF4 80010DF4 7FC3F378 */  mr        r3, r30
/* 00DDF8 80010DF8 801E0000 */  lwz       r0, 0x0(r30)
/* 00DDFC 80010DFC 901E0004 */  stw       r0, 0x4(r30)
/* 00DE00 80010E00 480000E5 */  bl        PushDecodedAudioBuffer
/* 00DE04 80010E04 48000018 */  b         lbl_80010E1C
lbl_80010E08:
/* 00DE08 80010E08 801D0000 */  lwz       r0, 0x0(r29)
/* 00DE0C 80010E0C 3BBD0004 */  addi      r29, r29, 0x4
/* 00DE10 80010E10 3BFF0001 */  addi      r31, r31, 0x1
/* 00DE14 80010E14 7F9C0214 */  add       r28, r28, r0
/* 00DE18 80010E18 4200FFA4 */  bdnz      lbl_80010DBC
lbl_80010E1C:
/* 00DE1C 80010E1C 80010024 */  lwz       r0, 0x24(r1)
/* 00DE20 80010E20 83E1001C */  lwz       r31, 0x1c(r1)
/* 00DE24 80010E24 83C10018 */  lwz       r30, 0x18(r1)
/* 00DE28 80010E28 7C0803A6 */  mtlr      r0
/* 00DE2C 80010E2C 83A10014 */  lwz       r29, 0x14(r1)
/* 00DE30 80010E30 83810010 */  lwz       r28, 0x10(r1)
/* 00DE34 80010E34 38210020 */  addi      r1, r1, 0x20
/* 00DE38 80010E38 4E800020 */  blr

glabel PopFreeAudioBuffer
/* 00DE3C 80010E3C 7C0802A6 */  mflr      r0
/* 00DE40 80010E40 3C608010 */  lis       r3, D_800FC4C8@ha
/* 00DE44 80010E44 90010004 */  stw       r0, 0x4(r1)
/* 00DE48 80010E48 3863C4C8 */  addi      r3, r3, D_800FC4C8@l
/* 00DE4C 80010E4C 38A00001 */  li        r5, 0x1
/* 00DE50 80010E50 9421FFF0 */  stwu      r1, -0x10(r1)
/* 00DE54 80010E54 38810008 */  addi      r4, r1, 0x8
/* 00DE58 80010E58 4808DD9D */  bl        OSReceiveMessage
/* 00DE5C 80010E5C 80010014 */  lwz       r0, 0x14(r1)
/* 00DE60 80010E60 80610008 */  lwz       r3, 0x8(r1)
/* 00DE64 80010E64 38210010 */  addi      r1, r1, 0x10
/* 00DE68 80010E68 7C0803A6 */  mtlr      r0
/* 00DE6C 80010E6C 4E800020 */  blr

glabel PushFreeAudioBuffer
/* 00DE70 80010E70 7C0802A6 */  mflr      r0
/* 00DE74 80010E74 3CA08010 */  lis       r5, D_800FC4C8@ha
/* 00DE78 80010E78 90010004 */  stw       r0, 0x4(r1)
/* 00DE7C 80010E7C 38830000 */  addi      r4, r3, 0x0
/* 00DE80 80010E80 3865C4C8 */  addi      r3, r5, D_800FC4C8@l
/* 00DE84 80010E84 9421FFF8 */  stwu      r1, -0x8(r1)
/* 00DE88 80010E88 38A00000 */  li        r5, 0x0
/* 00DE8C 80010E8C 4808DCA1 */  bl        OSSendMessage
/* 00DE90 80010E90 8001000C */  lwz       r0, 0xc(r1)
/* 00DE94 80010E94 38210008 */  addi      r1, r1, 0x8
/* 00DE98 80010E98 7C0803A6 */  mtlr      r0
/* 00DE9C 80010E9C 4E800020 */  blr

glabel PopDecodedAudioBuffer
/* 00DEA0 80010EA0 7C0802A6 */  mflr      r0
/* 00DEA4 80010EA4 3C808010 */  lis       r4, D_800FC4E8@ha
/* 00DEA8 80010EA8 90010004 */  stw       r0, 0x4(r1)
/* 00DEAC 80010EAC 38A30000 */  addi      r5, r3, 0x0
/* 00DEB0 80010EB0 3864C4E8 */  addi      r3, r4, D_800FC4E8@l
/* 00DEB4 80010EB4 9421FFF0 */  stwu      r1, -0x10(r1)
/* 00DEB8 80010EB8 3881000C */  addi      r4, r1, 0xc
/* 00DEBC 80010EBC 4808DD39 */  bl        OSReceiveMessage
/* 00DEC0 80010EC0 2C030001 */  cmpwi     r3, 0x1
/* 00DEC4 80010EC4 4082000C */  bne       lbl_80010ED0
/* 00DEC8 80010EC8 8061000C */  lwz       r3, 0xc(r1)
/* 00DECC 80010ECC 48000008 */  b         lbl_80010ED4
lbl_80010ED0:
/* 00DED0 80010ED0 38600000 */  li        r3, 0x0
lbl_80010ED4:
/* 00DED4 80010ED4 80010014 */  lwz       r0, 0x14(r1)
/* 00DED8 80010ED8 38210010 */  addi      r1, r1, 0x10
/* 00DEDC 80010EDC 7C0803A6 */  mtlr      r0
/* 00DEE0 80010EE0 4E800020 */  blr

glabel PushDecodedAudioBuffer
/* 00DEE4 80010EE4 7C0802A6 */  mflr      r0
/* 00DEE8 80010EE8 3CA08010 */  lis       r5, D_800FC4E8@ha
/* 00DEEC 80010EEC 90010004 */  stw       r0, 0x4(r1)
/* 00DEF0 80010EF0 38830000 */  addi      r4, r3, 0x0
/* 00DEF4 80010EF4 3865C4E8 */  addi      r3, r5, D_800FC4E8@l
/* 00DEF8 80010EF8 9421FFF8 */  stwu      r1, -0x8(r1)
/* 00DEFC 80010EFC 38A00001 */  li        r5, 0x1
/* 00DF00 80010F00 4808DC2D */  bl        OSSendMessage
/* 00DF04 80010F04 8001000C */  lwz       r0, 0xc(r1)
/* 00DF08 80010F08 38210008 */  addi      r1, r1, 0x8
/* 00DF0C 80010F0C 7C0803A6 */  mtlr      r0
/* 00DF10 80010F10 4E800020 */  blr

# 0x800EB940 - 0x800EB968
.section .data, "wa"

.balign 8

glabel D_800EB940
	.long 0x43616E27
	.long 0x74206372
	.long 0x65617465
	.long 0x20617564
	.long 0x696F2064
	.long 0x65636F64
	.long 0x65207468
	.long 0x72656164
	.long 0x0A000000
	.long 0x00000000

# 0x800FB1B0 - 0x800FC520
.section .bss, "wa"

glabel D_800FB1B0
	.skip 0x318

glabel D_800FB4C8
	.skip 0x1000

glabel D_800FC4C8
	.skip 0x20

glabel D_800FC4E8
	.skip 0x20

glabel gap_06_800FC508_bss
.hidden gap_06_800FC508_bss
	.skip 0xC

glabel D_800FC514
	.skip 0xC

# 0x8018B8C8 - 0x8018B8D0
.section .sbss, "wa"

glabel D_8018B8C8
	.skip 0x8
