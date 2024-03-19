# GXLight.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800AAF98 - 0x800AB290

glabel GXSetChanAmbColor
/* 0A7F98 800AAF98 2C030003 */  cmpwi     r3, 0x3
/* 0A7F9C 800AAF9C 41820088 */  beq       lbl_800AB024
/* 0A7FA0 800AAFA0 4080001C */  bge       lbl_800AAFBC
/* 0A7FA4 800AAFA4 2C030001 */  cmpwi     r3, 0x1
/* 0A7FA8 800AAFA8 41820044 */  beq       lbl_800AAFEC
/* 0A7FAC 800AAFAC 40800060 */  bge       lbl_800AB00C
/* 0A7FB0 800AAFB0 2C030000 */  cmpwi     r3, 0x0
/* 0A7FB4 800AAFB4 40800018 */  bge       lbl_800AAFCC
/* 0A7FB8 800AAFB8 4E800020 */  blr
lbl_800AAFBC:
/* 0A7FBC 800AAFBC 2C030005 */  cmpwi     r3, 0x5
/* 0A7FC0 800AAFC0 41820088 */  beq       lbl_800AB048
/* 0A7FC4 800AAFC4 4C800020 */  bgelr
/* 0A7FC8 800AAFC8 48000074 */  b         lbl_800AB03C
lbl_800AAFCC:
/* 0A7FCC 800AAFCC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7FD0 800AAFD0 38A00000 */  li        r5, 0x0
/* 0A7FD4 800AAFD4 80040000 */  lwz       r0, 0x0(r4)
/* 0A7FD8 800AAFD8 806300A8 */  lwz       r3, 0xa8(r3)
/* 0A7FDC 800AAFDC 5400002E */  clrrwi    r0, r0, 8
/* 0A7FE0 800AAFE0 7C070378 */  mr        r7, r0
/* 0A7FE4 800AAFE4 5067063E */  rlwimi    r7, r3, 0, 24, 31
/* 0A7FE8 800AAFE8 48000070 */  b         lbl_800AB058
lbl_800AAFEC:
/* 0A7FEC 800AAFEC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7FF0 800AAFF0 38A00001 */  li        r5, 0x1
/* 0A7FF4 800AAFF4 80040000 */  lwz       r0, 0x0(r4)
/* 0A7FF8 800AAFF8 806300AC */  lwz       r3, 0xac(r3)
/* 0A7FFC 800AAFFC 5400002E */  clrrwi    r0, r0, 8
/* 0A8000 800AB000 7C070378 */  mr        r7, r0
/* 0A8004 800AB004 5067063E */  rlwimi    r7, r3, 0, 24, 31
/* 0A8008 800AB008 48000050 */  b         lbl_800AB058
lbl_800AB00C:
/* 0A800C 800AB00C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A8010 800AB010 38A00000 */  li        r5, 0x0
/* 0A8014 800AB014 88E40003 */  lbz       r7, 0x3(r4)
/* 0A8018 800AB018 806300A8 */  lwz       r3, 0xa8(r3)
/* 0A801C 800AB01C 5067002E */  rlwimi    r7, r3, 0, 0, 23
/* 0A8020 800AB020 48000038 */  b         lbl_800AB058
lbl_800AB024:
/* 0A8024 800AB024 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A8028 800AB028 38A00001 */  li        r5, 0x1
/* 0A802C 800AB02C 88E40003 */  lbz       r7, 0x3(r4)
/* 0A8030 800AB030 806300AC */  lwz       r3, 0xac(r3)
/* 0A8034 800AB034 5067002E */  rlwimi    r7, r3, 0, 0, 23
/* 0A8038 800AB038 48000020 */  b         lbl_800AB058
lbl_800AB03C:
/* 0A803C 800AB03C 80E40000 */  lwz       r7, 0x0(r4)
/* 0A8040 800AB040 38A00000 */  li        r5, 0x0
/* 0A8044 800AB044 48000014 */  b         lbl_800AB058
lbl_800AB048:
/* 0A8048 800AB048 80E40000 */  lwz       r7, 0x0(r4)
/* 0A804C 800AB04C 38A00001 */  li        r5, 0x1
/* 0A8050 800AB050 48000008 */  b         lbl_800AB058
/* 0A8054 800AB054 4E800020 */  blr
lbl_800AB058:
/* 0A8058 800AB058 38000010 */  li        r0, 0x10
/* 0A805C 800AB05C 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A8060 800AB060 3CC0CC01 */  lis       r6, 0xcc01
/* 0A8064 800AB064 98068000 */  stb       r0, -0x8000(r6)
/* 0A8068 800AB068 3865100A */  addi      r3, r5, 0x100a
/* 0A806C 800AB06C 54A0103A */  slwi      r0, r5, 2
/* 0A8070 800AB070 90668000 */  stw       r3, -0x8000(r6)
/* 0A8074 800AB074 38A00001 */  li        r5, 0x1
/* 0A8078 800AB078 7C640214 */  add       r3, r4, r0
/* 0A807C 800AB07C 90E68000 */  stw       r7, -0x8000(r6)
/* 0A8080 800AB080 B0A40002 */  sth       r5, 0x2(r4)
/* 0A8084 800AB084 90E300A8 */  stw       r7, 0xa8(r3)
/* 0A8088 800AB088 4E800020 */  blr

glabel GXSetChanMatColor
/* 0A808C 800AB08C 2C030003 */  cmpwi     r3, 0x3
/* 0A8090 800AB090 41820088 */  beq       lbl_800AB118
/* 0A8094 800AB094 4080001C */  bge       lbl_800AB0B0
/* 0A8098 800AB098 2C030001 */  cmpwi     r3, 0x1
/* 0A809C 800AB09C 41820044 */  beq       lbl_800AB0E0
/* 0A80A0 800AB0A0 40800060 */  bge       lbl_800AB100
/* 0A80A4 800AB0A4 2C030000 */  cmpwi     r3, 0x0
/* 0A80A8 800AB0A8 40800018 */  bge       lbl_800AB0C0
/* 0A80AC 800AB0AC 4E800020 */  blr
lbl_800AB0B0:
/* 0A80B0 800AB0B0 2C030005 */  cmpwi     r3, 0x5
/* 0A80B4 800AB0B4 41820088 */  beq       lbl_800AB13C
/* 0A80B8 800AB0B8 4C800020 */  bgelr
/* 0A80BC 800AB0BC 48000074 */  b         lbl_800AB130
lbl_800AB0C0:
/* 0A80C0 800AB0C0 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A80C4 800AB0C4 38A00000 */  li        r5, 0x0
/* 0A80C8 800AB0C8 80040000 */  lwz       r0, 0x0(r4)
/* 0A80CC 800AB0CC 806300B0 */  lwz       r3, 0xb0(r3)
/* 0A80D0 800AB0D0 5400002E */  clrrwi    r0, r0, 8
/* 0A80D4 800AB0D4 7C070378 */  mr        r7, r0
/* 0A80D8 800AB0D8 5067063E */  rlwimi    r7, r3, 0, 24, 31
/* 0A80DC 800AB0DC 48000070 */  b         lbl_800AB14C
lbl_800AB0E0:
/* 0A80E0 800AB0E0 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A80E4 800AB0E4 38A00001 */  li        r5, 0x1
/* 0A80E8 800AB0E8 80040000 */  lwz       r0, 0x0(r4)
/* 0A80EC 800AB0EC 806300B4 */  lwz       r3, 0xb4(r3)
/* 0A80F0 800AB0F0 5400002E */  clrrwi    r0, r0, 8
/* 0A80F4 800AB0F4 7C070378 */  mr        r7, r0
/* 0A80F8 800AB0F8 5067063E */  rlwimi    r7, r3, 0, 24, 31
/* 0A80FC 800AB0FC 48000050 */  b         lbl_800AB14C
lbl_800AB100:
/* 0A8100 800AB100 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A8104 800AB104 38A00000 */  li        r5, 0x0
/* 0A8108 800AB108 88E40003 */  lbz       r7, 0x3(r4)
/* 0A810C 800AB10C 806300B0 */  lwz       r3, 0xb0(r3)
/* 0A8110 800AB110 5067002E */  rlwimi    r7, r3, 0, 0, 23
/* 0A8114 800AB114 48000038 */  b         lbl_800AB14C
lbl_800AB118:
/* 0A8118 800AB118 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A811C 800AB11C 38A00001 */  li        r5, 0x1
/* 0A8120 800AB120 88E40003 */  lbz       r7, 0x3(r4)
/* 0A8124 800AB124 806300B4 */  lwz       r3, 0xb4(r3)
/* 0A8128 800AB128 5067002E */  rlwimi    r7, r3, 0, 0, 23
/* 0A812C 800AB12C 48000020 */  b         lbl_800AB14C
lbl_800AB130:
/* 0A8130 800AB130 80E40000 */  lwz       r7, 0x0(r4)
/* 0A8134 800AB134 38A00000 */  li        r5, 0x0
/* 0A8138 800AB138 48000014 */  b         lbl_800AB14C
lbl_800AB13C:
/* 0A813C 800AB13C 80E40000 */  lwz       r7, 0x0(r4)
/* 0A8140 800AB140 38A00001 */  li        r5, 0x1
/* 0A8144 800AB144 48000008 */  b         lbl_800AB14C
/* 0A8148 800AB148 4E800020 */  blr
lbl_800AB14C:
/* 0A814C 800AB14C 38000010 */  li        r0, 0x10
/* 0A8150 800AB150 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A8154 800AB154 3CC0CC01 */  lis       r6, 0xcc01
/* 0A8158 800AB158 98068000 */  stb       r0, -0x8000(r6)
/* 0A815C 800AB15C 3865100C */  addi      r3, r5, 0x100c
/* 0A8160 800AB160 54A0103A */  slwi      r0, r5, 2
/* 0A8164 800AB164 90668000 */  stw       r3, -0x8000(r6)
/* 0A8168 800AB168 38A00001 */  li        r5, 0x1
/* 0A816C 800AB16C 7C640214 */  add       r3, r4, r0
/* 0A8170 800AB170 90E68000 */  stw       r7, -0x8000(r6)
/* 0A8174 800AB174 B0A40002 */  sth       r5, 0x2(r4)
/* 0A8178 800AB178 90E300B0 */  stw       r7, 0xb0(r3)
/* 0A817C 800AB17C 4E800020 */  blr

glabel GXSetNumChans
/* 0A8180 800AB180 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A8184 800AB184 54602536 */  clrlslwi  r0, r3, 24, 4
/* 0A8188 800AB188 5468063E */  clrlwi    r8, r3, 24
/* 0A818C 800AB18C 80A60204 */  lwz       r5, 0x204(r6)
/* 0A8190 800AB190 38800010 */  li        r4, 0x10
/* 0A8194 800AB194 3C60CC01 */  lis       r3, 0xcc01
/* 0A8198 800AB198 54A50730 */  rlwinm    r5, r5, 0, 28, 24
/* 0A819C 800AB19C 7CA00378 */  or        r0, r5, r0
/* 0A81A0 800AB1A0 90060204 */  stw       r0, 0x204(r6)
/* 0A81A4 800AB1A4 38001009 */  li        r0, 0x1009
/* 0A81A8 800AB1A8 98838000 */  stb       r4, -0x8000(r3)
/* 0A81AC 800AB1AC 90038000 */  stw       r0, -0x8000(r3)
/* 0A81B0 800AB1B0 91038000 */  stw       r8, -0x8000(r3)
/* 0A81B4 800AB1B4 800604F4 */  lwz       r0, 0x4f4(r6)
/* 0A81B8 800AB1B8 60000004 */  ori       r0, r0, 0x4
/* 0A81BC 800AB1BC 900604F4 */  stw       r0, 0x4f4(r6)
/* 0A81C0 800AB1C0 4E800020 */  blr

glabel GXSetChanCtrl
/* 0A81C4 800AB1C4 54800DFC */  clrlslwi  r0, r4, 24, 1
/* 0A81C8 800AB1C8 7C003378 */  or        r0, r0, r6
/* 0A81CC 800AB1CC 540406B0 */  rlwinm    r4, r0, 0, 26, 24
/* 0A81D0 800AB1D0 54A03032 */  slwi      r0, r5, 6
/* 0A81D4 800AB1D4 2C090000 */  cmpwi     r9, 0x0
/* 0A81D8 800AB1D8 546A07BE */  clrlwi    r10, r3, 30
/* 0A81DC 800AB1DC 7C860378 */  or        r6, r4, r0
/* 0A81E0 800AB1E0 40820008 */  bne       lbl_800AB1E8
/* 0A81E4 800AB1E4 39000000 */  li        r8, 0x0
lbl_800AB1E8:
/* 0A81E8 800AB1E8 20890002 */  subfic    r4, r9, 0x2
/* 0A81EC 800AB1EC 3004FFFF */  subic     r0, r4, 0x1
/* 0A81F0 800AB1F0 7CA02110 */  subfe     r5, r0, r4
/* 0A81F4 800AB1F4 7C8900D0 */  neg       r4, r9
/* 0A81F8 800AB1F8 3004FFFF */  subic     r0, r4, 0x1
/* 0A81FC 800AB1FC 7C002110 */  subfe     r0, r0, r4
/* 0A8200 800AB200 54C6066C */  rlwinm    r6, r6, 0, 25, 22
/* 0A8204 800AB204 55043830 */  slwi      r4, r8, 7
/* 0A8208 800AB208 7CC42378 */  or        r4, r6, r4
/* 0A820C 800AB20C 548605EA */  rlwinm    r6, r4, 0, 23, 21
/* 0A8210 800AB210 54A4482C */  slwi      r4, r5, 9
/* 0A8214 800AB214 7CC42378 */  or        r4, r6, r4
/* 0A8218 800AB218 548405A8 */  rlwinm    r4, r4, 0, 22, 20
/* 0A821C 800AB21C 5400502A */  slwi      r0, r0, 10
/* 0A8220 800AB220 7C860378 */  or        r6, r4, r0
/* 0A8224 800AB224 54C607B2 */  rlwinm    r6, r6, 0, 30, 25
/* 0A8228 800AB228 50E616BA */  rlwimi    r6, r7, 2, 26, 29
/* 0A822C 800AB22C 54C60560 */  rlwinm    r6, r6, 0, 21, 16
/* 0A8230 800AB230 38A00010 */  li        r5, 0x10
/* 0A8234 800AB234 3C80CC01 */  lis       r4, 0xcc01
/* 0A8238 800AB238 98A48000 */  stb       r5, -0x8000(r4)
/* 0A823C 800AB23C 380A100E */  addi      r0, r10, 0x100e
/* 0A8240 800AB240 50E63C68 */  rlwimi    r6, r7, 7, 17, 20
/* 0A8244 800AB244 90048000 */  stw       r0, -0x8000(r4)
/* 0A8248 800AB248 2C030004 */  cmpwi     r3, 0x4
/* 0A824C 800AB24C 90C48000 */  stw       r6, -0x8000(r4)
/* 0A8250 800AB250 40820018 */  bne       lbl_800AB268
/* 0A8254 800AB254 98A48000 */  stb       r5, -0x8000(r4)
/* 0A8258 800AB258 38001010 */  li        r0, 0x1010
/* 0A825C 800AB25C 90048000 */  stw       r0, -0x8000(r4)
/* 0A8260 800AB260 90C48000 */  stw       r6, -0x8000(r4)
/* 0A8264 800AB264 4800001C */  b         lbl_800AB280
lbl_800AB268:
/* 0A8268 800AB268 2C030005 */  cmpwi     r3, 0x5
/* 0A826C 800AB26C 40820014 */  bne       lbl_800AB280
/* 0A8270 800AB270 98A48000 */  stb       r5, -0x8000(r4)
/* 0A8274 800AB274 38001011 */  li        r0, 0x1011
/* 0A8278 800AB278 90048000 */  stw       r0, -0x8000(r4)
/* 0A827C 800AB27C 90C48000 */  stw       r6, -0x8000(r4)
lbl_800AB280:
/* 0A8280 800AB280 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A8284 800AB284 38000001 */  li        r0, 0x1
/* 0A8288 800AB288 B0030002 */  sth       r0, 0x2(r3)
/* 0A828C 800AB28C 4E800020 */  blr
