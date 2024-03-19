# OSAudioSystem.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009C9F0 - 0x8009CC84

glabel __OSInitAudioSystem
/* 0999F0 8009C9F0 7C0802A6 */  mflr      r0
/* 0999F4 8009C9F4 90010004 */  stw       r0, 0x4(r1)
/* 0999F8 8009C9F8 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0999FC 8009C9FC BF210014 */  stmw      r25, 0x14(r1)
/* 099A00 8009CA00 4BFFFFD1 */  bl        OSGetArenaHi
/* 099A04 8009CA04 3C808100 */  lis       r4, 0x8100
/* 099A08 8009CA08 38A00080 */  li        r5, 0x80
/* 099A0C 8009CA0C 3863FF80 */  subi      r3, r3, 0x80
/* 099A10 8009CA10 4BF68A05 */  bl        memcpy
/* 099A14 8009CA14 3C60800F */  lis       r3, DSPInitCode@ha
/* 099A18 8009CA18 38832088 */  addi      r4, r3, DSPInitCode@l
/* 099A1C 8009CA1C 3C608100 */  lis       r3, 0x8100
/* 099A20 8009CA20 38A00080 */  li        r5, 0x80
/* 099A24 8009CA24 4BF689F1 */  bl        memcpy
/* 099A28 8009CA28 3C608100 */  lis       r3, 0x8100
/* 099A2C 8009CA2C 38800080 */  li        r4, 0x80
/* 099A30 8009CA30 48000295 */  bl        DCFlushRange
/* 099A34 8009CA34 3C60CC00 */  lis       r3, 0xcc00
/* 099A38 8009CA38 38635000 */  addi      r3, r3, 0x5000
/* 099A3C 8009CA3C 38000043 */  li        r0, 0x43
/* 099A40 8009CA40 B0030012 */  sth       r0, 0x12(r3)
/* 099A44 8009CA44 3BE3000A */  addi      r31, r3, 0xa
/* 099A48 8009CA48 380008AC */  li        r0, 0x8ac
/* 099A4C 8009CA4C B003000A */  sth       r0, 0xa(r3)
/* 099A50 8009CA50 A003000A */  lhz       r0, 0xa(r3)
/* 099A54 8009CA54 60000001 */  ori       r0, r0, 0x1
/* 099A58 8009CA58 B003000A */  sth       r0, 0xa(r3)
lbl_8009CA5C:
/* 099A5C 8009CA5C A01F0000 */  lhz       r0, 0x0(r31)
/* 099A60 8009CA60 540007FF */  clrlwi.   r0, r0, 31
/* 099A64 8009CA64 4082FFF8 */  bne       lbl_8009CA5C
/* 099A68 8009CA68 38000000 */  li        r0, 0x0
/* 099A6C 8009CA6C 3C80CC00 */  lis       r4, 0xcc00
/* 099A70 8009CA70 B0045000 */  sth       r0, 0x5000(r4)
lbl_8009CA74:
/* 099A74 8009CA74 3BC45000 */  addi      r30, r4, 0x5000
/* 099A78 8009CA78 A47E0004 */  lhzu      r3, 0x4(r30)
/* 099A7C 8009CA7C 3BA45000 */  addi      r29, r4, 0x5000
/* 099A80 8009CA80 A41D0006 */  lhzu      r0, 0x6(r29)
/* 099A84 8009CA84 5060801E */  rlwimi    r0, r3, 16, 0, 15
/* 099A88 8009CA88 54000001 */  clrrwi.   r0, r0, 31
/* 099A8C 8009CA8C 4082FFE8 */  bne       lbl_8009CA74
/* 099A90 8009CA90 3C60CC00 */  lis       r3, 0xcc00
/* 099A94 8009CA94 3C000100 */  lis       r0, 0x100
/* 099A98 8009CA98 3B635000 */  addi      r27, r3, 0x5000
/* 099A9C 8009CA9C 941B0020 */  stwu      r0, 0x20(r27)
/* 099AA0 8009CAA0 38000000 */  li        r0, 0x0
/* 099AA4 8009CAA4 3B435000 */  addi      r26, r3, 0x5000
/* 099AA8 8009CAA8 941A0024 */  stwu      r0, 0x24(r26)
/* 099AAC 8009CAAC 38000020 */  li        r0, 0x20
/* 099AB0 8009CAB0 3B235000 */  addi      r25, r3, 0x5000
/* 099AB4 8009CAB4 94190028 */  stwu      r0, 0x28(r25)
/* 099AB8 8009CAB8 A07F0000 */  lhz       r3, 0x0(r31)
/* 099ABC 8009CABC 48000008 */  b         lbl_8009CAC4
lbl_8009CAC0:
/* 099AC0 8009CAC0 A07F0000 */  lhz       r3, 0x0(r31)
lbl_8009CAC4:
/* 099AC4 8009CAC4 546006B5 */  rlwinm.   r0, r3, 0, 26, 26
/* 099AC8 8009CAC8 4182FFF8 */  beq       lbl_8009CAC0
/* 099ACC 8009CACC B07F0000 */  sth       r3, 0x0(r31)
/* 099AD0 8009CAD0 48004A29 */  bl        OSGetTick
/* 099AD4 8009CAD4 7C7C1B78 */  mr        r28, r3
lbl_8009CAD8:
/* 099AD8 8009CAD8 48004A21 */  bl        OSGetTick
/* 099ADC 8009CADC 7C1C1850 */  subf      r0, r28, r3
/* 099AE0 8009CAE0 2C000892 */  cmpwi     r0, 0x892
/* 099AE4 8009CAE4 4180FFF4 */  blt       lbl_8009CAD8
/* 099AE8 8009CAE8 3C000100 */  lis       r0, 0x100
/* 099AEC 8009CAEC 901B0000 */  stw       r0, 0x0(r27)
/* 099AF0 8009CAF0 38600000 */  li        r3, 0x0
/* 099AF4 8009CAF4 38000020 */  li        r0, 0x20
/* 099AF8 8009CAF8 907A0000 */  stw       r3, 0x0(r26)
/* 099AFC 8009CAFC 90190000 */  stw       r0, 0x0(r25)
/* 099B00 8009CB00 A07F0000 */  lhz       r3, 0x0(r31)
/* 099B04 8009CB04 48000008 */  b         lbl_8009CB0C
lbl_8009CB08:
/* 099B08 8009CB08 A07F0000 */  lhz       r3, 0x0(r31)
lbl_8009CB0C:
/* 099B0C 8009CB0C 546006B5 */  rlwinm.   r0, r3, 0, 26, 26
/* 099B10 8009CB10 4182FFF8 */  beq       lbl_8009CB08
/* 099B14 8009CB14 B07F0000 */  sth       r3, 0x0(r31)
/* 099B18 8009CB18 A01F0000 */  lhz       r0, 0x0(r31)
/* 099B1C 8009CB1C 54000566 */  rlwinm    r0, r0, 0, 21, 19
/* 099B20 8009CB20 B01F0000 */  sth       r0, 0x0(r31)
lbl_8009CB24:
/* 099B24 8009CB24 A01F0000 */  lhz       r0, 0x0(r31)
/* 099B28 8009CB28 5400056B */  rlwinm.   r0, r0, 0, 21, 21
/* 099B2C 8009CB2C 4082FFF8 */  bne       lbl_8009CB24
/* 099B30 8009CB30 A01F0000 */  lhz       r0, 0x0(r31)
/* 099B34 8009CB34 540007B8 */  rlwinm    r0, r0, 0, 30, 28
/* 099B38 8009CB38 B01F0000 */  sth       r0, 0x0(r31)
/* 099B3C 8009CB3C A01E0000 */  lhz       r0, 0x0(r30)
/* 099B40 8009CB40 48000008 */  b         lbl_8009CB48
lbl_8009CB44:
/* 099B44 8009CB44 A01E0000 */  lhz       r0, 0x0(r30)
lbl_8009CB48:
/* 099B48 8009CB48 5405043E */  clrlwi    r5, r0, 16
/* 099B4C 8009CB4C 54000421 */  rlwinm.   r0, r0, 0, 16, 16
/* 099B50 8009CB50 4182FFF4 */  beq       lbl_8009CB44
/* 099B54 8009CB54 A01F0000 */  lhz       r0, 0x0(r31)
/* 099B58 8009CB58 A09D0000 */  lhz       r4, 0x0(r29)
/* 099B5C 8009CB5C 60000004 */  ori       r0, r0, 0x4
/* 099B60 8009CB60 B01F0000 */  sth       r0, 0x0(r31)
/* 099B64 8009CB64 380008AC */  li        r0, 0x8ac
/* 099B68 8009CB68 B01F0000 */  sth       r0, 0x0(r31)
/* 099B6C 8009CB6C A01F0000 */  lhz       r0, 0x0(r31)
/* 099B70 8009CB70 60000001 */  ori       r0, r0, 0x1
/* 099B74 8009CB74 B01F0000 */  sth       r0, 0x0(r31)
lbl_8009CB78:
/* 099B78 8009CB78 A01F0000 */  lhz       r0, 0x0(r31)
/* 099B7C 8009CB7C 540007FF */  clrlwi.   r0, r0, 31
/* 099B80 8009CB80 4082FFF8 */  bne       lbl_8009CB78
/* 099B84 8009CB84 4BFFFE4D */  bl        OSGetArenaHi
/* 099B88 8009CB88 3883FF80 */  subi      r4, r3, 0x80
/* 099B8C 8009CB8C 3C608100 */  lis       r3, 0x8100
/* 099B90 8009CB90 38A00080 */  li        r5, 0x80
/* 099B94 8009CB94 4BF68881 */  bl        memcpy
/* 099B98 8009CB98 BB210014 */  lmw       r25, 0x14(r1)
/* 099B9C 8009CB9C 80010034 */  lwz       r0, 0x34(r1)
/* 099BA0 8009CBA0 38210030 */  addi      r1, r1, 0x30
/* 099BA4 8009CBA4 7C0803A6 */  mtlr      r0
/* 099BA8 8009CBA8 4E800020 */  blr

glabel __OSStopAudioSystem
/* 099BAC 8009CBAC 7C0802A6 */  mflr      r0
/* 099BB0 8009CBB0 3C60CC00 */  lis       r3, 0xcc00
/* 099BB4 8009CBB4 90010004 */  stw       r0, 0x4(r1)
/* 099BB8 8009CBB8 38000804 */  li        r0, 0x804
/* 099BBC 8009CBBC 9421FFF0 */  stwu      r1, -0x10(r1)
/* 099BC0 8009CBC0 93E1000C */  stw       r31, 0xc(r1)
/* 099BC4 8009CBC4 3BE35000 */  addi      r31, r3, 0x5000
/* 099BC8 8009CBC8 38635000 */  addi      r3, r3, 0x5000
/* 099BCC 8009CBCC 93C10008 */  stw       r30, 0x8(r1)
/* 099BD0 8009CBD0 B01F000A */  sth       r0, 0xa(r31)
/* 099BD4 8009CBD4 A0030036 */  lhz       r0, 0x36(r3)
/* 099BD8 8009CBD8 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 099BDC 8009CBDC B0030036 */  sth       r0, 0x36(r3)
/* 099BE0 8009CBE0 A41F000A */  lhzu      r0, 0xa(r31)
/* 099BE4 8009CBE4 48000008 */  b         lbl_8009CBEC
lbl_8009CBE8:
/* 099BE8 8009CBE8 A01F0000 */  lhz       r0, 0x0(r31)
lbl_8009CBEC:
/* 099BEC 8009CBEC 5400056B */  rlwinm.   r0, r0, 0, 21, 21
/* 099BF0 8009CBF0 4082FFF8 */  bne       lbl_8009CBE8
/* 099BF4 8009CBF4 A01F0000 */  lhz       r0, 0x0(r31)
/* 099BF8 8009CBF8 48000008 */  b         lbl_8009CC00
lbl_8009CBFC:
/* 099BFC 8009CBFC A01F0000 */  lhz       r0, 0x0(r31)
lbl_8009CC00:
/* 099C00 8009CC00 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 099C04 8009CC04 4082FFF8 */  bne       lbl_8009CBFC
/* 099C08 8009CC08 380008AC */  li        r0, 0x8ac
/* 099C0C 8009CC0C 3C60CC00 */  lis       r3, 0xcc00
/* 099C10 8009CC10 B01F0000 */  sth       r0, 0x0(r31)
/* 099C14 8009CC14 38000000 */  li        r0, 0x0
/* 099C18 8009CC18 B0035000 */  sth       r0, 0x5000(r3)
/* 099C1C 8009CC1C 38835000 */  addi      r4, r3, 0x5000
lbl_8009CC20:
/* 099C20 8009CC20 A0640004 */  lhz       r3, 0x4(r4)
/* 099C24 8009CC24 A0040006 */  lhz       r0, 0x6(r4)
/* 099C28 8009CC28 5060801E */  rlwimi    r0, r3, 16, 0, 15
/* 099C2C 8009CC2C 54000001 */  clrrwi.   r0, r0, 31
/* 099C30 8009CC30 4082FFF0 */  bne       lbl_8009CC20
/* 099C34 8009CC34 480048C5 */  bl        OSGetTick
/* 099C38 8009CC38 7C7E1B78 */  mr        r30, r3
lbl_8009CC3C:
/* 099C3C 8009CC3C 480048BD */  bl        OSGetTick
/* 099C40 8009CC40 7C1E1850 */  subf      r0, r30, r3
/* 099C44 8009CC44 2C00002C */  cmpwi     r0, 0x2c
/* 099C48 8009CC48 4180FFF4 */  blt       lbl_8009CC3C
/* 099C4C 8009CC4C A01F0000 */  lhz       r0, 0x0(r31)
/* 099C50 8009CC50 60000001 */  ori       r0, r0, 0x1
/* 099C54 8009CC54 B01F0000 */  sth       r0, 0x0(r31)
/* 099C58 8009CC58 A01F0000 */  lhz       r0, 0x0(r31)
/* 099C5C 8009CC5C 48000008 */  b         lbl_8009CC64
lbl_8009CC60:
/* 099C60 8009CC60 A01F0000 */  lhz       r0, 0x0(r31)
lbl_8009CC64:
/* 099C64 8009CC64 540007FF */  clrlwi.   r0, r0, 31
/* 099C68 8009CC68 4082FFF8 */  bne       lbl_8009CC60
/* 099C6C 8009CC6C 80010014 */  lwz       r0, 0x14(r1)
/* 099C70 8009CC70 83E1000C */  lwz       r31, 0xc(r1)
/* 099C74 8009CC74 83C10008 */  lwz       r30, 0x8(r1)
/* 099C78 8009CC78 38210010 */  addi      r1, r1, 0x10
/* 099C7C 8009CC7C 7C0803A6 */  mtlr      r0
/* 099C80 8009CC80 4E800020 */  blr

# 0x800F2088 - 0x800F2108
.section .data, "wa"

.balign 8

DSPInitCode:
	.long 0x029F0010
	.long 0x029F0033
	.long 0x029F0034
	.long 0x029F0035
	.long 0x029F0036
	.long 0x029F0037
	.long 0x029F0038
	.long 0x029F0039
	.long 0x12061203
	.long 0x12041205
	.long 0x00808000
	.long 0x0088FFFF
	.long 0x00841000
	.long 0x0064001D
	.long 0x02180000
	.long 0x81001C1E
	.long 0x00441B1E
	.long 0x00840800
	.long 0x00640027
	.long 0x191E0000
	.long 0x00DEFFFC
	.long 0x02A08000
	.long 0x029C0028
	.long 0x16FC0054
	.long 0x16FD4348
	.long 0x002102FF
	.long 0x02FF02FF
	.long 0x02FF02FF
	.long 0x02FF02FF
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
