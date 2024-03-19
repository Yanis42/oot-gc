# GXBump.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800AC0D8 - 0x800AC450

glabel fn_800AC0D8
/* 0A90D8 800AC0D8 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0A90DC 800AC0DC 548407B6 */  rlwinm    r4, r4, 0, 30, 27
/* 0A90E0 800AC0E0 54A0103A */  slwi      r0, r5, 2
/* 0A90E4 800AC0E4 7C800378 */  or        r0, r4, r0
/* 0A90E8 800AC0E8 81610034 */  lwz       r11, 0x34(r1)
/* 0A90EC 800AC0EC 54050730 */  rlwinm    r5, r0, 0, 28, 24
/* 0A90F0 800AC0F0 89810033 */  lbz       r12, 0x33(r1)
/* 0A90F4 800AC0F4 54C02036 */  slwi      r0, r6, 4
/* 0A90F8 800AC0F8 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A90FC 800AC0FC 7CA00378 */  or        r0, r5, r0
/* 0A9100 800AC100 5405066C */  rlwinm    r5, r0, 0, 25, 22
/* 0A9104 800AC104 55603830 */  slwi      r0, r11, 7
/* 0A9108 800AC108 7CA00378 */  or        r0, r5, r0
/* 0A910C 800AC10C 540505E4 */  rlwinm    r5, r0, 0, 23, 18
/* 0A9110 800AC110 54E0482C */  slwi      r0, r7, 9
/* 0A9114 800AC114 7CA00378 */  or        r0, r5, r0
/* 0A9118 800AC118 540504DE */  rlwinm    r5, r0, 0, 19, 15
/* 0A911C 800AC11C 55006824 */  slwi      r0, r8, 13
/* 0A9120 800AC120 7CA00378 */  or        r0, r5, r0
/* 0A9124 800AC124 38A30010 */  addi      r5, r3, 0x10
/* 0A9128 800AC128 54030418 */  rlwinm    r3, r0, 0, 16, 12
/* 0A912C 800AC12C 5520801E */  slwi      r0, r9, 16
/* 0A9130 800AC130 7C600378 */  or        r0, r3, r0
/* 0A9134 800AC134 54030356 */  rlwinm    r3, r0, 0, 13, 11
/* 0A9138 800AC138 55809818 */  slwi      r0, r12, 19
/* 0A913C 800AC13C 7C600378 */  or        r0, r3, r0
/* 0A9140 800AC140 54030314 */  rlwinm    r3, r0, 0, 12, 10
/* 0A9144 800AC144 5540A116 */  clrlslwi  r0, r10, 24, 20
/* 0A9148 800AC148 7C660378 */  or        r6, r3, r0
/* 0A914C 800AC14C 38000061 */  li        r0, 0x61
/* 0A9150 800AC150 3C60CC01 */  lis       r3, 0xcc01
/* 0A9154 800AC154 98038000 */  stb       r0, -0x8000(r3)
/* 0A9158 800AC158 54A0C00E */  slwi      r0, r5, 24
/* 0A915C 800AC15C 50C0023E */  rlwimi    r0, r6, 0, 8, 31
/* 0A9160 800AC160 90038000 */  stw       r0, -0x8000(r3)
/* 0A9164 800AC164 38000000 */  li        r0, 0x0
/* 0A9168 800AC168 B0040002 */  sth       r0, 0x2(r4)
/* 0A916C 800AC16C 38210028 */  addi      r1, r1, 0x28
/* 0A9170 800AC170 4E800020 */  blr

glabel fn_800AC174
/* 0A9174 800AC174 2C030002 */  cmpwi     r3, 0x2
/* 0A9178 800AC178 418200C8 */  beq       lbl_800AC240
/* 0A917C 800AC17C 40800014 */  bge       lbl_800AC190
/* 0A9180 800AC180 2C030000 */  cmpwi     r3, 0x0
/* 0A9184 800AC184 41820018 */  beq       lbl_800AC19C
/* 0A9188 800AC188 40800064 */  bge       lbl_800AC1EC
/* 0A918C 800AC18C 48000154 */  b         lbl_800AC2E0
lbl_800AC190:
/* 0A9190 800AC190 2C030004 */  cmpwi     r3, 0x4
/* 0A9194 800AC194 4080014C */  bge       lbl_800AC2E0
/* 0A9198 800AC198 480000F8 */  b         lbl_800AC290
lbl_800AC19C:
/* 0A919C 800AC19C 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A91A0 800AC1A0 54A52036 */  slwi      r5, r5, 4
/* 0A91A4 800AC1A4 38000061 */  li        r0, 0x61
/* 0A91A8 800AC1A8 80C70128 */  lwz       r6, 0x128(r7)
/* 0A91AC 800AC1AC 3C60CC01 */  lis       r3, 0xcc01
/* 0A91B0 800AC1B0 54C60036 */  clrrwi    r6, r6, 4
/* 0A91B4 800AC1B4 7CC42378 */  or        r4, r6, r4
/* 0A91B8 800AC1B8 90870128 */  stw       r4, 0x128(r7)
/* 0A91BC 800AC1BC 80870128 */  lwz       r4, 0x128(r7)
/* 0A91C0 800AC1C0 5484072E */  rlwinm    r4, r4, 0, 28, 23
/* 0A91C4 800AC1C4 7C842B78 */  or        r4, r4, r5
/* 0A91C8 800AC1C8 90870128 */  stw       r4, 0x128(r7)
/* 0A91CC 800AC1CC 80870128 */  lwz       r4, 0x128(r7)
/* 0A91D0 800AC1D0 5484023E */  clrlwi    r4, r4, 8
/* 0A91D4 800AC1D4 64842500 */  oris      r4, r4, 0x2500
/* 0A91D8 800AC1D8 90870128 */  stw       r4, 0x128(r7)
/* 0A91DC 800AC1DC 98038000 */  stb       r0, -0x8000(r3)
/* 0A91E0 800AC1E0 80070128 */  lwz       r0, 0x128(r7)
/* 0A91E4 800AC1E4 90038000 */  stw       r0, -0x8000(r3)
/* 0A91E8 800AC1E8 480000F8 */  b         lbl_800AC2E0
lbl_800AC1EC:
/* 0A91EC 800AC1EC 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A91F0 800AC1F0 5486402E */  slwi      r6, r4, 8
/* 0A91F4 800AC1F4 54A46026 */  slwi      r4, r5, 12
/* 0A91F8 800AC1F8 80A70128 */  lwz       r5, 0x128(r7)
/* 0A91FC 800AC1FC 38000061 */  li        r0, 0x61
/* 0A9200 800AC200 3C60CC01 */  lis       r3, 0xcc01
/* 0A9204 800AC204 54A50626 */  rlwinm    r5, r5, 0, 24, 19
/* 0A9208 800AC208 7CA53378 */  or        r5, r5, r6
/* 0A920C 800AC20C 90A70128 */  stw       r5, 0x128(r7)
/* 0A9210 800AC210 80A70128 */  lwz       r5, 0x128(r7)
/* 0A9214 800AC214 54A5051E */  rlwinm    r5, r5, 0, 20, 15
/* 0A9218 800AC218 7CA42378 */  or        r4, r5, r4
/* 0A921C 800AC21C 90870128 */  stw       r4, 0x128(r7)
/* 0A9220 800AC220 80870128 */  lwz       r4, 0x128(r7)
/* 0A9224 800AC224 5484023E */  clrlwi    r4, r4, 8
/* 0A9228 800AC228 64842500 */  oris      r4, r4, 0x2500
/* 0A922C 800AC22C 90870128 */  stw       r4, 0x128(r7)
/* 0A9230 800AC230 98038000 */  stb       r0, -0x8000(r3)
/* 0A9234 800AC234 80070128 */  lwz       r0, 0x128(r7)
/* 0A9238 800AC238 90038000 */  stw       r0, -0x8000(r3)
/* 0A923C 800AC23C 480000A4 */  b         lbl_800AC2E0
lbl_800AC240:
/* 0A9240 800AC240 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A9244 800AC244 54A52036 */  slwi      r5, r5, 4
/* 0A9248 800AC248 38000061 */  li        r0, 0x61
/* 0A924C 800AC24C 80C7012C */  lwz       r6, 0x12c(r7)
/* 0A9250 800AC250 3C60CC01 */  lis       r3, 0xcc01
/* 0A9254 800AC254 54C60036 */  clrrwi    r6, r6, 4
/* 0A9258 800AC258 7CC42378 */  or        r4, r6, r4
/* 0A925C 800AC25C 9087012C */  stw       r4, 0x12c(r7)
/* 0A9260 800AC260 8087012C */  lwz       r4, 0x12c(r7)
/* 0A9264 800AC264 5484072E */  rlwinm    r4, r4, 0, 28, 23
/* 0A9268 800AC268 7C842B78 */  or        r4, r4, r5
/* 0A926C 800AC26C 9087012C */  stw       r4, 0x12c(r7)
/* 0A9270 800AC270 8087012C */  lwz       r4, 0x12c(r7)
/* 0A9274 800AC274 5484023E */  clrlwi    r4, r4, 8
/* 0A9278 800AC278 64842600 */  oris      r4, r4, 0x2600
/* 0A927C 800AC27C 9087012C */  stw       r4, 0x12c(r7)
/* 0A9280 800AC280 98038000 */  stb       r0, -0x8000(r3)
/* 0A9284 800AC284 8007012C */  lwz       r0, 0x12c(r7)
/* 0A9288 800AC288 90038000 */  stw       r0, -0x8000(r3)
/* 0A928C 800AC28C 48000054 */  b         lbl_800AC2E0
lbl_800AC290:
/* 0A9290 800AC290 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A9294 800AC294 5486402E */  slwi      r6, r4, 8
/* 0A9298 800AC298 54A46026 */  slwi      r4, r5, 12
/* 0A929C 800AC29C 80A7012C */  lwz       r5, 0x12c(r7)
/* 0A92A0 800AC2A0 38000061 */  li        r0, 0x61
/* 0A92A4 800AC2A4 3C60CC01 */  lis       r3, 0xcc01
/* 0A92A8 800AC2A8 54A50626 */  rlwinm    r5, r5, 0, 24, 19
/* 0A92AC 800AC2AC 7CA53378 */  or        r5, r5, r6
/* 0A92B0 800AC2B0 90A7012C */  stw       r5, 0x12c(r7)
/* 0A92B4 800AC2B4 80A7012C */  lwz       r5, 0x12c(r7)
/* 0A92B8 800AC2B8 54A5051E */  rlwinm    r5, r5, 0, 20, 15
/* 0A92BC 800AC2BC 7CA42378 */  or        r4, r5, r4
/* 0A92C0 800AC2C0 9087012C */  stw       r4, 0x12c(r7)
/* 0A92C4 800AC2C4 8087012C */  lwz       r4, 0x12c(r7)
/* 0A92C8 800AC2C8 5484023E */  clrlwi    r4, r4, 8
/* 0A92CC 800AC2CC 64842600 */  oris      r4, r4, 0x2600
/* 0A92D0 800AC2D0 9087012C */  stw       r4, 0x12c(r7)
/* 0A92D4 800AC2D4 98038000 */  stb       r0, -0x8000(r3)
/* 0A92D8 800AC2D8 8007012C */  lwz       r0, 0x12c(r7)
/* 0A92DC 800AC2DC 90038000 */  stw       r0, -0x8000(r3)
lbl_800AC2E0:
/* 0A92E0 800AC2E0 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A92E4 800AC2E4 38000000 */  li        r0, 0x0
/* 0A92E8 800AC2E8 B0030002 */  sth       r0, 0x2(r3)
/* 0A92EC 800AC2EC 4E800020 */  blr

glabel fn_800AC2F0
/* 0A92F0 800AC2F0 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A92F4 800AC2F4 5460821E */  clrlslwi  r0, r3, 24, 16
/* 0A92F8 800AC2F8 80640204 */  lwz       r3, 0x204(r4)
/* 0A92FC 800AC2FC 54630418 */  rlwinm    r3, r3, 0, 16, 12
/* 0A9300 800AC300 7C600378 */  or        r0, r3, r0
/* 0A9304 800AC304 90040204 */  stw       r0, 0x204(r4)
/* 0A9308 800AC308 800404F4 */  lwz       r0, 0x4f4(r4)
/* 0A930C 800AC30C 60000006 */  ori       r0, r0, 0x6
/* 0A9310 800AC310 900404F4 */  stw       r0, 0x4f4(r4)
/* 0A9314 800AC314 4E800020 */  blr

glabel fn_800AC318
/* 0A9318 800AC318 7C0802A6 */  mflr      r0
/* 0A931C 800AC31C 38800000 */  li        r4, 0x0
/* 0A9320 800AC320 90010004 */  stw       r0, 0x4(r1)
/* 0A9324 800AC324 38000000 */  li        r0, 0x0
/* 0A9328 800AC328 38A00000 */  li        r5, 0x0
/* 0A932C 800AC32C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A9330 800AC330 38C00000 */  li        r6, 0x0
/* 0A9334 800AC334 38E00000 */  li        r7, 0x0
/* 0A9338 800AC338 90010008 */  stw       r0, 0x8(r1)
/* 0A933C 800AC33C 39000000 */  li        r8, 0x0
/* 0A9340 800AC340 39200000 */  li        r9, 0x0
/* 0A9344 800AC344 9001000C */  stw       r0, 0xc(r1)
/* 0A9348 800AC348 39400000 */  li        r10, 0x0
/* 0A934C 800AC34C 4BFFFD8D */  bl        fn_800AC0D8
/* 0A9350 800AC350 8001001C */  lwz       r0, 0x1c(r1)
/* 0A9354 800AC354 38210018 */  addi      r1, r1, 0x18
/* 0A9358 800AC358 7C0803A6 */  mtlr      r0
/* 0A935C 800AC35C 4E800020 */  blr

glabel fn_800AC360
/* 0A9360 800AC360 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A9364 800AC364 38C00000 */  li        r6, 0x0
/* 0A9368 800AC368 38800000 */  li        r4, 0x0
/* 0A936C 800AC36C 80030204 */  lwz       r0, 0x204(r3)
/* 0A9370 800AC370 5400877E */  extrwi    r0, r0, 3, 13
/* 0A9374 800AC374 28000000 */  cmplwi    r0, 0x0
/* 0A9378 800AC378 7C0903A6 */  mtctr     r0
/* 0A937C 800AC37C 4081006C */  ble       lbl_800AC3E8
lbl_800AC380:
/* 0A9380 800AC380 2C040002 */  cmpwi     r4, 0x2
/* 0A9384 800AC384 4182003C */  beq       lbl_800AC3C0
/* 0A9388 800AC388 40800014 */  bge       lbl_800AC39C
/* 0A938C 800AC38C 2C040000 */  cmpwi     r4, 0x0
/* 0A9390 800AC390 41820018 */  beq       lbl_800AC3A8
/* 0A9394 800AC394 40800020 */  bge       lbl_800AC3B4
/* 0A9398 800AC398 4800003C */  b         lbl_800AC3D4
lbl_800AC39C:
/* 0A939C 800AC39C 2C040004 */  cmpwi     r4, 0x4
/* 0A93A0 800AC3A0 40800034 */  bge       lbl_800AC3D4
/* 0A93A4 800AC3A4 48000028 */  b         lbl_800AC3CC
lbl_800AC3A8:
/* 0A93A8 800AC3A8 80030120 */  lwz       r0, 0x120(r3)
/* 0A93AC 800AC3AC 5405077E */  clrlwi    r5, r0, 29
/* 0A93B0 800AC3B0 48000024 */  b         lbl_800AC3D4
lbl_800AC3B4:
/* 0A93B4 800AC3B4 80030120 */  lwz       r0, 0x120(r3)
/* 0A93B8 800AC3B8 5405D77E */  extrwi    r5, r0, 3, 23
/* 0A93BC 800AC3BC 48000018 */  b         lbl_800AC3D4
lbl_800AC3C0:
/* 0A93C0 800AC3C0 80030120 */  lwz       r0, 0x120(r3)
/* 0A93C4 800AC3C4 5405A77E */  extrwi    r5, r0, 3, 17
/* 0A93C8 800AC3C8 4800000C */  b         lbl_800AC3D4
lbl_800AC3CC:
/* 0A93CC 800AC3CC 80030120 */  lwz       r0, 0x120(r3)
/* 0A93D0 800AC3D0 5405777E */  extrwi    r5, r0, 3, 11
lbl_800AC3D4:
/* 0A93D4 800AC3D4 38000001 */  li        r0, 0x1
/* 0A93D8 800AC3D8 7C002830 */  slw       r0, r0, r5
/* 0A93DC 800AC3DC 7CC60378 */  or        r6, r6, r0
/* 0A93E0 800AC3E0 38840001 */  addi      r4, r4, 0x1
/* 0A93E4 800AC3E4 4200FF9C */  bdnz      lbl_800AC380
lbl_800AC3E8:
/* 0A93E8 800AC3E8 38830124 */  addi      r4, r3, 0x124
/* 0A93EC 800AC3EC 80630124 */  lwz       r3, 0x124(r3)
/* 0A93F0 800AC3F0 5460063E */  clrlwi    r0, r3, 24
/* 0A93F4 800AC3F4 7C003040 */  cmplw     r0, r6
/* 0A93F8 800AC3F8 4D820020 */  beqlr
/* 0A93FC 800AC3FC 5460002E */  clrrwi    r0, r3, 8
/* 0A9400 800AC400 7C003378 */  or        r0, r0, r6
/* 0A9404 800AC404 90040000 */  stw       r0, 0x0(r4)
/* 0A9408 800AC408 38000061 */  li        r0, 0x61
/* 0A940C 800AC40C 3CA0CC01 */  lis       r5, 0xcc01
/* 0A9410 800AC410 98058000 */  stb       r0, -0x8000(r5)
/* 0A9414 800AC414 38000000 */  li        r0, 0x0
/* 0A9418 800AC418 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A941C 800AC41C 80640124 */  lwz       r3, 0x124(r4)
/* 0A9420 800AC420 90658000 */  stw       r3, -0x8000(r5)
/* 0A9424 800AC424 B0040002 */  sth       r0, 0x2(r4)
/* 0A9428 800AC428 4E800020 */  blr

glabel __GXFlushTextureState
/* 0A942C 800AC42C 38000061 */  li        r0, 0x61
/* 0A9430 800AC430 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A9434 800AC434 3CA0CC01 */  lis       r5, 0xcc01
/* 0A9438 800AC438 98058000 */  stb       r0, -0x8000(r5)
/* 0A943C 800AC43C 38000000 */  li        r0, 0x0
/* 0A9440 800AC440 80640124 */  lwz       r3, 0x124(r4)
/* 0A9444 800AC444 90658000 */  stw       r3, -0x8000(r5)
/* 0A9448 800AC448 B0040002 */  sth       r0, 0x2(r4)
/* 0A944C 800AC44C 4E800020 */  blr
