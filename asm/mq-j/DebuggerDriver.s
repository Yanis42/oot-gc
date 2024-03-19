# DebuggerDriver.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800D10DC - 0x800D1B5C

glabel DBClose
/* 0CE0DC 800D10DC 4E800020 */  blr

glabel DBOpen
/* 0CE0E0 800D10E0 4E800020 */  blr

glabel DBWrite
/* 0CE0E4 800D10E4 7C0802A6 */  mflr      r0
/* 0CE0E8 800D10E8 90010004 */  stw       r0, 0x4(r1)
/* 0CE0EC 800D10EC 9421FF88 */  stwu      r1, -0x78(r1)
/* 0CE0F0 800D10F0 BF010058 */  stmw      r24, 0x58(r1)
/* 0CE0F4 800D10F4 3B430000 */  addi      r26, r3, 0x0
/* 0CE0F8 800D10F8 3B640000 */  addi      r27, r4, 0x0
/* 0CE0FC 800D10FC 4BFCD14D */  bl        OSDisableInterrupts
/* 0CE100 800D1100 3B830000 */  addi      r28, r3, 0x0
/* 0CE104 800D1104 3F20CC00 */  lis       r25, 0xcc00
/* 0CE108 800D1108 3FE04000 */  lis       r31, 0x4000
lbl_800D110C:
/* 0CE10C 800D110C 80196828 */  lwz       r0, 0x6828(r25)
/* 0CE110 800D1110 3BD96800 */  addi      r30, r25, 0x6800
/* 0CE114 800D1114 38610050 */  addi      r3, r1, 0x50
/* 0CE118 800D1118 70000405 */  andi.     r0, r0, 0x405
/* 0CE11C 800D111C 38800002 */  li        r4, 0x2
/* 0CE120 800D1120 38A00001 */  li        r5, 0x1
/* 0CE124 800D1124 600000C0 */  ori       r0, r0, 0xc0
/* 0CE128 800D1128 941E0028 */  stwu      r0, 0x28(r30)
/* 0CE12C 800D112C 93E10050 */  stw       r31, 0x50(r1)
/* 0CE130 800D1130 48000795 */  bl        DBGEXIImm
/* 0CE134 800D1134 7C600034 */  cntlzw    r0, r3
/* 0CE138 800D1138 5418D97E */  srwi      r24, r0, 5
lbl_800D113C:
/* 0CE13C 800D113C 3BB96800 */  addi      r29, r25, 0x6800
/* 0CE140 800D1140 841D0034 */  lwzu      r0, 0x34(r29)
/* 0CE144 800D1144 540007FF */  clrlwi.   r0, r0, 31
/* 0CE148 800D1148 4082FFF4 */  bne       lbl_800D113C
/* 0CE14C 800D114C 38610054 */  addi      r3, r1, 0x54
/* 0CE150 800D1150 38800004 */  li        r4, 0x4
/* 0CE154 800D1154 38A00000 */  li        r5, 0x0
/* 0CE158 800D1158 4800076D */  bl        DBGEXIImm
lbl_800D115C:
/* 0CE15C 800D115C 801D0000 */  lwz       r0, 0x0(r29)
/* 0CE160 800D1160 540007FF */  clrlwi.   r0, r0, 31
/* 0CE164 800D1164 4082FFF8 */  bne       lbl_800D115C
/* 0CE168 800D1168 801E0000 */  lwz       r0, 0x0(r30)
/* 0CE16C 800D116C 70000405 */  andi.     r0, r0, 0x405
/* 0CE170 800D1170 901E0000 */  stw       r0, 0x0(r30)
/* 0CE174 800D1174 80010054 */  lwz       r0, 0x54(r1)
/* 0CE178 800D1178 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 0CE17C 800D117C 4082FF90 */  bne       lbl_800D110C
/* 0CE180 800D1180 886D8880 */  lbz       r3, SendCount@sda21(r0)
/* 0CE184 800D1184 38030001 */  addi      r0, r3, 0x1
/* 0CE188 800D1188 980D8880 */  stb       r0, SendCount@sda21(r0)
/* 0CE18C 800D118C 880D8880 */  lbz       r0, SendCount@sda21(r0)
/* 0CE190 800D1190 540007FF */  clrlwi.   r0, r0, 31
/* 0CE194 800D1194 4182000C */  beq       lbl_800D11A0
/* 0CE198 800D1198 38601000 */  li        r3, 0x1000
/* 0CE19C 800D119C 48000008 */  b         lbl_800D11A4
lbl_800D11A0:
/* 0CE1A0 800D11A0 38600000 */  li        r3, 0x0
lbl_800D11A4:
/* 0CE1A4 800D11A4 381B0003 */  addi      r0, r27, 0x3
/* 0CE1A8 800D11A8 64790001 */  oris      r25, r3, 0x1
/* 0CE1AC 800D11AC 5418003A */  clrrwi    r24, r0, 2
/* 0CE1B0 800D11B0 6339C000 */  ori       r25, r25, 0xc000
lbl_800D11B4:
/* 0CE1B4 800D11B4 38790000 */  addi      r3, r25, 0x0
/* 0CE1B8 800D11B8 389A0000 */  addi      r4, r26, 0x0
/* 0CE1BC 800D11BC 38B80000 */  addi      r5, r24, 0x0
/* 0CE1C0 800D11C0 480004A1 */  bl        DBGWrite
/* 0CE1C4 800D11C4 2C030000 */  cmpwi     r3, 0x0
/* 0CE1C8 800D11C8 4182FFEC */  beq       lbl_800D11B4
/* 0CE1CC 800D11CC 3FE04000 */  lis       r31, 0x4000
lbl_800D11D0:
/* 0CE1D0 800D11D0 801E0000 */  lwz       r0, 0x0(r30)
/* 0CE1D4 800D11D4 3861004C */  addi      r3, r1, 0x4c
/* 0CE1D8 800D11D8 38800002 */  li        r4, 0x2
/* 0CE1DC 800D11DC 70000405 */  andi.     r0, r0, 0x405
/* 0CE1E0 800D11E0 38A00001 */  li        r5, 0x1
/* 0CE1E4 800D11E4 600000C0 */  ori       r0, r0, 0xc0
/* 0CE1E8 800D11E8 901E0000 */  stw       r0, 0x0(r30)
/* 0CE1EC 800D11EC 93E1004C */  stw       r31, 0x4c(r1)
/* 0CE1F0 800D11F0 480006D5 */  bl        DBGEXIImm
/* 0CE1F4 800D11F4 7C600034 */  cntlzw    r0, r3
/* 0CE1F8 800D11F8 541AD97E */  srwi      r26, r0, 5
lbl_800D11FC:
/* 0CE1FC 800D11FC 801D0000 */  lwz       r0, 0x0(r29)
/* 0CE200 800D1200 540007FF */  clrlwi.   r0, r0, 31
/* 0CE204 800D1204 4082FFF8 */  bne       lbl_800D11FC
/* 0CE208 800D1208 38610054 */  addi      r3, r1, 0x54
/* 0CE20C 800D120C 38800004 */  li        r4, 0x4
/* 0CE210 800D1210 38A00000 */  li        r5, 0x0
/* 0CE214 800D1214 480006B1 */  bl        DBGEXIImm
lbl_800D1218:
/* 0CE218 800D1218 801D0000 */  lwz       r0, 0x0(r29)
/* 0CE21C 800D121C 540007FF */  clrlwi.   r0, r0, 31
/* 0CE220 800D1220 4082FFF8 */  bne       lbl_800D1218
/* 0CE224 800D1224 801E0000 */  lwz       r0, 0x0(r30)
/* 0CE228 800D1228 70000405 */  andi.     r0, r0, 0x405
/* 0CE22C 800D122C 901E0000 */  stw       r0, 0x0(r30)
/* 0CE230 800D1230 80010054 */  lwz       r0, 0x54(r1)
/* 0CE234 800D1234 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 0CE238 800D1238 4082FF98 */  bne       lbl_800D11D0
/* 0CE23C 800D123C 880D8880 */  lbz       r0, SendCount@sda21(r0)
/* 0CE240 800D1240 5400801E */  slwi      r0, r0, 16
/* 0CE244 800D1244 64001F00 */  oris      r0, r0, 0x1f00
/* 0CE248 800D1248 7C00DB78 */  or        r0, r0, r27
/* 0CE24C 800D124C 540000FE */  clrlwi    r0, r0, 3
/* 0CE250 800D1250 6418C000 */  oris      r24, r0, 0xc000
lbl_800D1254:
/* 0CE254 800D1254 801E0000 */  lwz       r0, 0x0(r30)
/* 0CE258 800D1258 38610044 */  addi      r3, r1, 0x44
/* 0CE25C 800D125C 38800004 */  li        r4, 0x4
/* 0CE260 800D1260 70000405 */  andi.     r0, r0, 0x405
/* 0CE264 800D1264 38A00001 */  li        r5, 0x1
/* 0CE268 800D1268 600000C0 */  ori       r0, r0, 0xc0
/* 0CE26C 800D126C 901E0000 */  stw       r0, 0x0(r30)
/* 0CE270 800D1270 93010044 */  stw       r24, 0x44(r1)
/* 0CE274 800D1274 48000651 */  bl        DBGEXIImm
/* 0CE278 800D1278 7C600034 */  cntlzw    r0, r3
/* 0CE27C 800D127C 5403D97E */  srwi      r3, r0, 5
lbl_800D1280:
/* 0CE280 800D1280 801D0000 */  lwz       r0, 0x0(r29)
/* 0CE284 800D1284 540007FF */  clrlwi.   r0, r0, 31
/* 0CE288 800D1288 4082FFF8 */  bne       lbl_800D1280
/* 0CE28C 800D128C 801E0000 */  lwz       r0, 0x0(r30)
/* 0CE290 800D1290 70000405 */  andi.     r0, r0, 0x405
/* 0CE294 800D1294 2C030000 */  cmpwi     r3, 0x0
/* 0CE298 800D1298 901E0000 */  stw       r0, 0x0(r30)
/* 0CE29C 800D129C 4082FFB8 */  bne       lbl_800D1254
/* 0CE2A0 800D12A0 3F604000 */  lis       r27, 0x4000
lbl_800D12A4:
/* 0CE2A4 800D12A4 801E0000 */  lwz       r0, 0x0(r30)
/* 0CE2A8 800D12A8 3861003C */  addi      r3, r1, 0x3c
/* 0CE2AC 800D12AC 38800002 */  li        r4, 0x2
/* 0CE2B0 800D12B0 70000405 */  andi.     r0, r0, 0x405
/* 0CE2B4 800D12B4 38A00001 */  li        r5, 0x1
/* 0CE2B8 800D12B8 600000C0 */  ori       r0, r0, 0xc0
/* 0CE2BC 800D12BC 901E0000 */  stw       r0, 0x0(r30)
/* 0CE2C0 800D12C0 9361003C */  stw       r27, 0x3c(r1)
/* 0CE2C4 800D12C4 48000601 */  bl        DBGEXIImm
/* 0CE2C8 800D12C8 7C600034 */  cntlzw    r0, r3
/* 0CE2CC 800D12CC 541AD97E */  srwi      r26, r0, 5
lbl_800D12D0:
/* 0CE2D0 800D12D0 801D0000 */  lwz       r0, 0x0(r29)
/* 0CE2D4 800D12D4 540007FF */  clrlwi.   r0, r0, 31
/* 0CE2D8 800D12D8 4082FFF8 */  bne       lbl_800D12D0
/* 0CE2DC 800D12DC 38610054 */  addi      r3, r1, 0x54
/* 0CE2E0 800D12E0 38800004 */  li        r4, 0x4
/* 0CE2E4 800D12E4 38A00000 */  li        r5, 0x0
/* 0CE2E8 800D12E8 480005DD */  bl        DBGEXIImm
/* 0CE2EC 800D12EC 7C600034 */  cntlzw    r0, r3
/* 0CE2F0 800D12F0 5400D97E */  srwi      r0, r0, 5
/* 0CE2F4 800D12F4 7F430378 */  or        r3, r26, r0
lbl_800D12F8:
/* 0CE2F8 800D12F8 801D0000 */  lwz       r0, 0x0(r29)
/* 0CE2FC 800D12FC 540007FF */  clrlwi.   r0, r0, 31
/* 0CE300 800D1300 4082FFF8 */  bne       lbl_800D12F8
/* 0CE304 800D1304 801E0000 */  lwz       r0, 0x0(r30)
/* 0CE308 800D1308 70000405 */  andi.     r0, r0, 0x405
/* 0CE30C 800D130C 2C030000 */  cmpwi     r3, 0x0
/* 0CE310 800D1310 901E0000 */  stw       r0, 0x0(r30)
/* 0CE314 800D1314 4082FF90 */  bne       lbl_800D12A4
/* 0CE318 800D1318 80010054 */  lwz       r0, 0x54(r1)
/* 0CE31C 800D131C 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 0CE320 800D1320 4082FF84 */  bne       lbl_800D12A4
/* 0CE324 800D1324 7F83E378 */  mr        r3, r28
/* 0CE328 800D1328 4BFCCF49 */  bl        OSRestoreInterrupts
/* 0CE32C 800D132C BB010058 */  lmw       r24, 0x58(r1)
/* 0CE330 800D1330 38600000 */  li        r3, 0x0
/* 0CE334 800D1334 8001007C */  lwz       r0, 0x7c(r1)
/* 0CE338 800D1338 38210078 */  addi      r1, r1, 0x78
/* 0CE33C 800D133C 7C0803A6 */  mtlr      r0
/* 0CE340 800D1340 4E800020 */  blr

glabel DBRead
/* 0CE344 800D1344 7C0802A6 */  mflr      r0
/* 0CE348 800D1348 90010004 */  stw       r0, 0x4(r1)
/* 0CE34C 800D134C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0CE350 800D1350 93E1001C */  stw       r31, 0x1c(r1)
/* 0CE354 800D1354 93C10018 */  stw       r30, 0x18(r1)
/* 0CE358 800D1358 3BC40000 */  addi      r30, r4, 0x0
/* 0CE35C 800D135C 93A10014 */  stw       r29, 0x14(r1)
/* 0CE360 800D1360 3BA30000 */  addi      r29, r3, 0x0
/* 0CE364 800D1364 4BFCCEE5 */  bl        OSDisableInterrupts
/* 0CE368 800D1368 800D8FB0 */  lwz       r0, SendMailData@sda21(r0)
/* 0CE36C 800D136C 3BE30000 */  addi      r31, r3, 0x0
/* 0CE370 800D1370 540003DF */  rlwinm.   r0, r0, 0, 15, 15
/* 0CE374 800D1374 4182000C */  beq       lbl_800D1380
/* 0CE378 800D1378 38601000 */  li        r3, 0x1000
/* 0CE37C 800D137C 48000008 */  b         lbl_800D1384
lbl_800D1380:
/* 0CE380 800D1380 38600000 */  li        r3, 0x0
lbl_800D1384:
/* 0CE384 800D1384 3C630002 */  addis     r3, r3, 0x2
/* 0CE388 800D1388 381E0003 */  addi      r0, r30, 0x3
/* 0CE38C 800D138C 389D0000 */  addi      r4, r29, 0x0
/* 0CE390 800D1390 5405003A */  clrrwi    r5, r0, 2
/* 0CE394 800D1394 3863E000 */  subi      r3, r3, 0x2000
/* 0CE398 800D1398 480003A5 */  bl        DBGRead
/* 0CE39C 800D139C 38000000 */  li        r0, 0x0
/* 0CE3A0 800D13A0 900D8FB4 */  stw       r0, RecvDataLeng@sda21(r0)
/* 0CE3A4 800D13A4 7FE3FB78 */  mr        r3, r31
/* 0CE3A8 800D13A8 980D8FBC */  stb       r0, EXIInputFlag@sda21(r0)
/* 0CE3AC 800D13AC 4BFCCEC5 */  bl        OSRestoreInterrupts
/* 0CE3B0 800D13B0 80010024 */  lwz       r0, 0x24(r1)
/* 0CE3B4 800D13B4 38600000 */  li        r3, 0x0
/* 0CE3B8 800D13B8 83E1001C */  lwz       r31, 0x1c(r1)
/* 0CE3BC 800D13BC 83C10018 */  lwz       r30, 0x18(r1)
/* 0CE3C0 800D13C0 83A10014 */  lwz       r29, 0x14(r1)
/* 0CE3C4 800D13C4 38210020 */  addi      r1, r1, 0x20
/* 0CE3C8 800D13C8 7C0803A6 */  mtlr      r0
/* 0CE3CC 800D13CC 4E800020 */  blr

glabel DBQueryData
/* 0CE3D0 800D13D0 7C0802A6 */  mflr      r0
/* 0CE3D4 800D13D4 38600000 */  li        r3, 0x0
/* 0CE3D8 800D13D8 90010004 */  stw       r0, 0x4(r1)
/* 0CE3DC 800D13DC 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0CE3E0 800D13E0 93E10014 */  stw       r31, 0x14(r1)
/* 0CE3E4 800D13E4 800D8FB4 */  lwz       r0, RecvDataLeng@sda21(r0)
/* 0CE3E8 800D13E8 986D8FBC */  stb       r3, EXIInputFlag@sda21(r0)
/* 0CE3EC 800D13EC 2C000000 */  cmpwi     r0, 0x0
/* 0CE3F0 800D13F0 40820064 */  bne       lbl_800D1454
/* 0CE3F4 800D13F4 4BFCCE55 */  bl        OSDisableInterrupts
/* 0CE3F8 800D13F8 3BE30000 */  addi      r31, r3, 0x0
/* 0CE3FC 800D13FC 38610008 */  addi      r3, r1, 0x8
/* 0CE400 800D1400 480001B5 */  bl        DBGReadStatus
/* 0CE404 800D1404 80010008 */  lwz       r0, 0x8(r1)
/* 0CE408 800D1408 540007FF */  clrlwi.   r0, r0, 31
/* 0CE40C 800D140C 41820040 */  beq       lbl_800D144C
/* 0CE410 800D1410 38610008 */  addi      r3, r1, 0x8
/* 0CE414 800D1414 48000405 */  bl        DBGReadMailbox
/* 0CE418 800D1418 80010008 */  lwz       r0, 0x8(r1)
/* 0CE41C 800D141C 540000FE */  clrlwi    r0, r0, 3
/* 0CE420 800D1420 90010008 */  stw       r0, 0x8(r1)
/* 0CE424 800D1424 80810008 */  lwz       r4, 0x8(r1)
/* 0CE428 800D1428 548300CE */  rlwinm    r3, r4, 0, 3, 7
/* 0CE42C 800D142C 3C03E100 */  subis     r0, r3, 0x1f00
/* 0CE430 800D1430 28000000 */  cmplwi    r0, 0x0
/* 0CE434 800D1434 40820018 */  bne       lbl_800D144C
/* 0CE438 800D1438 5483047E */  clrlwi    r3, r4, 17
/* 0CE43C 800D143C 908D8FB0 */  stw       r4, SendMailData@sda21(r0)
/* 0CE440 800D1440 38000001 */  li        r0, 0x1
/* 0CE444 800D1444 906D8FB4 */  stw       r3, RecvDataLeng@sda21(r0)
/* 0CE448 800D1448 980D8FBC */  stb       r0, EXIInputFlag@sda21(r0)
lbl_800D144C:
/* 0CE44C 800D144C 7FE3FB78 */  mr        r3, r31
/* 0CE450 800D1450 4BFCCE21 */  bl        OSRestoreInterrupts
lbl_800D1454:
/* 0CE454 800D1454 806D8FB4 */  lwz       r3, RecvDataLeng@sda21(r0)
/* 0CE458 800D1458 8001001C */  lwz       r0, 0x1c(r1)
/* 0CE45C 800D145C 83E10014 */  lwz       r31, 0x14(r1)
/* 0CE460 800D1460 38210018 */  addi      r1, r1, 0x18
/* 0CE464 800D1464 7C0803A6 */  mtlr      r0
/* 0CE468 800D1468 4E800020 */  blr

glabel DBInitInterrupts
/* 0CE46C 800D146C 7C0802A6 */  mflr      r0
/* 0CE470 800D1470 3C600002 */  lis       r3, 0x2
/* 0CE474 800D1474 90010004 */  stw       r0, 0x4(r1)
/* 0CE478 800D1478 38638000 */  addi      r3, r3, -0x8000
/* 0CE47C 800D147C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0CE480 800D1480 4BFCD191 */  bl        __OSMaskInterrupts
/* 0CE484 800D1484 38600040 */  li        r3, 0x40
/* 0CE488 800D1488 4BFCD189 */  bl        __OSMaskInterrupts
/* 0CE48C 800D148C 3C60800D */  lis       r3, MWCallback@ha
/* 0CE490 800D1490 38031578 */  addi      r0, r3, MWCallback@l
/* 0CE494 800D1494 3C60800D */  lis       r3, DBGHandler@ha
/* 0CE498 800D1498 900D8FAC */  stw       r0, DBGCallback@sda21(r0)
/* 0CE49C 800D149C 38831538 */  addi      r4, r3, DBGHandler@l
/* 0CE4A0 800D14A0 38600019 */  li        r3, 0x19
/* 0CE4A4 800D14A4 4BFCCDF1 */  bl        __OSSetInterruptHandler
/* 0CE4A8 800D14A8 38600040 */  li        r3, 0x40
/* 0CE4AC 800D14AC 4BFCD1ED */  bl        __OSUnmaskInterrupts
/* 0CE4B0 800D14B0 8001000C */  lwz       r0, 0xc(r1)
/* 0CE4B4 800D14B4 38210008 */  addi      r1, r1, 0x8
/* 0CE4B8 800D14B8 7C0803A6 */  mtlr      r0
/* 0CE4BC 800D14BC 4E800020 */  blr

glabel DBInitComm
/* 0CE4C0 800D14C0 7C0802A6 */  mflr      r0
/* 0CE4C4 800D14C4 90010004 */  stw       r0, 0x4(r1)
/* 0CE4C8 800D14C8 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0CE4CC 800D14CC 93E1001C */  stw       r31, 0x1c(r1)
/* 0CE4D0 800D14D0 93C10018 */  stw       r30, 0x18(r1)
/* 0CE4D4 800D14D4 3BC40000 */  addi      r30, r4, 0x0
/* 0CE4D8 800D14D8 93A10014 */  stw       r29, 0x14(r1)
/* 0CE4DC 800D14DC 3BA30000 */  addi      r29, r3, 0x0
/* 0CE4E0 800D14E0 4BFCCD69 */  bl        OSDisableInterrupts
/* 0CE4E4 800D14E4 380D8FBC */  li        r0, EXIInputFlag@sda21
/* 0CE4E8 800D14E8 900D8FB8 */  stw       r0, pEXIInputFlag@sda21(r0)
/* 0CE4EC 800D14EC 3C800002 */  lis       r4, 0x2
/* 0CE4F0 800D14F0 3BE30000 */  addi      r31, r3, 0x0
/* 0CE4F4 800D14F4 800D8FB8 */  lwz       r0, pEXIInputFlag@sda21(r0)
/* 0CE4F8 800D14F8 38648000 */  addi      r3, r4, -0x8000
/* 0CE4FC 800D14FC 901D0000 */  stw       r0, 0x0(r29)
/* 0CE500 800D1500 93CD8FA8 */  stw       r30, MTRCallback@sda21(r0)
/* 0CE504 800D1504 4BFCD10D */  bl        __OSMaskInterrupts
/* 0CE508 800D1508 3C60CC00 */  lis       r3, 0xcc00
/* 0CE50C 800D150C 38000000 */  li        r0, 0x0
/* 0CE510 800D1510 90036828 */  stw       r0, 0x6828(r3)
/* 0CE514 800D1514 7FE3FB78 */  mr        r3, r31
/* 0CE518 800D1518 4BFCCD59 */  bl        OSRestoreInterrupts
/* 0CE51C 800D151C 80010024 */  lwz       r0, 0x24(r1)
/* 0CE520 800D1520 83E1001C */  lwz       r31, 0x1c(r1)
/* 0CE524 800D1524 83C10018 */  lwz       r30, 0x18(r1)
/* 0CE528 800D1528 83A10014 */  lwz       r29, 0x14(r1)
/* 0CE52C 800D152C 38210020 */  addi      r1, r1, 0x20
/* 0CE530 800D1530 7C0803A6 */  mtlr      r0
/* 0CE534 800D1534 4E800020 */  blr

glabel DBGHandler
/* 0CE538 800D1538 7C0802A6 */  mflr      r0
/* 0CE53C 800D153C 3CA0CC00 */  lis       r5, 0xcc00
/* 0CE540 800D1540 90010004 */  stw       r0, 0x4(r1)
/* 0CE544 800D1544 38001000 */  li        r0, 0x1000
/* 0CE548 800D1548 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0CE54C 800D154C 818D8FAC */  lwz       r12, DBGCallback@sda21(r0)
/* 0CE550 800D1550 90053000 */  stw       r0, 0x3000(r5)
/* 0CE554 800D1554 280C0000 */  cmplwi    r12, 0x0
/* 0CE558 800D1558 41820010 */  beq       lbl_800D1568
/* 0CE55C 800D155C 7D8803A6 */  mtlr      r12
/* 0CE560 800D1560 7C630734 */  extsh     r3, r3
/* 0CE564 800D1564 4E800021 */  blrl
lbl_800D1568:
/* 0CE568 800D1568 8001000C */  lwz       r0, 0xc(r1)
/* 0CE56C 800D156C 38210008 */  addi      r1, r1, 0x8
/* 0CE570 800D1570 7C0803A6 */  mtlr      r0
/* 0CE574 800D1574 4E800020 */  blr

glabel MWCallback
/* 0CE578 800D1578 7C0802A6 */  mflr      r0
/* 0CE57C 800D157C 90010004 */  stw       r0, 0x4(r1)
/* 0CE580 800D1580 38000001 */  li        r0, 0x1
/* 0CE584 800D1584 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0CE588 800D1588 818D8FA8 */  lwz       r12, MTRCallback@sda21(r0)
/* 0CE58C 800D158C 980D8FBC */  stb       r0, EXIInputFlag@sda21(r0)
/* 0CE590 800D1590 280C0000 */  cmplwi    r12, 0x0
/* 0CE594 800D1594 41820010 */  beq       lbl_800D15A4
/* 0CE598 800D1598 7D8803A6 */  mtlr      r12
/* 0CE59C 800D159C 38600000 */  li        r3, 0x0
/* 0CE5A0 800D15A0 4E800021 */  blrl
lbl_800D15A4:
/* 0CE5A4 800D15A4 8001000C */  lwz       r0, 0xc(r1)
/* 0CE5A8 800D15A8 38210008 */  addi      r1, r1, 0x8
/* 0CE5AC 800D15AC 7C0803A6 */  mtlr      r0
/* 0CE5B0 800D15B0 4E800020 */  blr

glabel DBGReadStatus
/* 0CE5B4 800D15B4 7C0802A6 */  mflr      r0
/* 0CE5B8 800D15B8 38800002 */  li        r4, 0x2
/* 0CE5BC 800D15BC 90010004 */  stw       r0, 0x4(r1)
/* 0CE5C0 800D15C0 3C004000 */  lis       r0, 0x4000
/* 0CE5C4 800D15C4 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0CE5C8 800D15C8 BF610024 */  stmw      r27, 0x24(r1)
/* 0CE5CC 800D15CC 3FC0CC00 */  lis       r30, 0xcc00
/* 0CE5D0 800D15D0 3B630000 */  addi      r27, r3, 0x0
/* 0CE5D4 800D15D4 3BBE6800 */  addi      r29, r30, 0x6800
/* 0CE5D8 800D15D8 38610018 */  addi      r3, r1, 0x18
/* 0CE5DC 800D15DC 80BE6828 */  lwz       r5, 0x6828(r30)
/* 0CE5E0 800D15E0 70A50405 */  andi.     r5, r5, 0x405
/* 0CE5E4 800D15E4 60A500C0 */  ori       r5, r5, 0xc0
/* 0CE5E8 800D15E8 94BD0028 */  stwu      r5, 0x28(r29)
/* 0CE5EC 800D15EC 38A00001 */  li        r5, 0x1
/* 0CE5F0 800D15F0 90010018 */  stw       r0, 0x18(r1)
/* 0CE5F4 800D15F4 480002D1 */  bl        DBGEXIImm
/* 0CE5F8 800D15F8 7C600034 */  cntlzw    r0, r3
/* 0CE5FC 800D15FC 541FD97E */  srwi      r31, r0, 5
lbl_800D1600:
/* 0CE600 800D1600 3B9E6800 */  addi      r28, r30, 0x6800
/* 0CE604 800D1604 841C0034 */  lwzu      r0, 0x34(r28)
/* 0CE608 800D1608 540007FF */  clrlwi.   r0, r0, 31
/* 0CE60C 800D160C 4082FFF4 */  bne       lbl_800D1600
/* 0CE610 800D1610 387B0000 */  addi      r3, r27, 0x0
/* 0CE614 800D1614 38800004 */  li        r4, 0x4
/* 0CE618 800D1618 38A00000 */  li        r5, 0x0
/* 0CE61C 800D161C 480002A9 */  bl        DBGEXIImm
/* 0CE620 800D1620 7C600034 */  cntlzw    r0, r3
/* 0CE624 800D1624 5400D97E */  srwi      r0, r0, 5
/* 0CE628 800D1628 7FE30378 */  or        r3, r31, r0
lbl_800D162C:
/* 0CE62C 800D162C 801C0000 */  lwz       r0, 0x0(r28)
/* 0CE630 800D1630 540007FF */  clrlwi.   r0, r0, 31
/* 0CE634 800D1634 4082FFF8 */  bne       lbl_800D162C
/* 0CE638 800D1638 809D0000 */  lwz       r4, 0x0(r29)
/* 0CE63C 800D163C 7C600034 */  cntlzw    r0, r3
/* 0CE640 800D1640 5403D97E */  srwi      r3, r0, 5
/* 0CE644 800D1644 70800405 */  andi.     r0, r4, 0x405
/* 0CE648 800D1648 901D0000 */  stw       r0, 0x0(r29)
/* 0CE64C 800D164C BB610024 */  lmw       r27, 0x24(r1)
/* 0CE650 800D1650 8001003C */  lwz       r0, 0x3c(r1)
/* 0CE654 800D1654 38210038 */  addi      r1, r1, 0x38
/* 0CE658 800D1658 7C0803A6 */  mtlr      r0
/* 0CE65C 800D165C 4E800020 */  blr

glabel DBGWrite
/* 0CE660 800D1660 7C0802A6 */  mflr      r0
/* 0CE664 800D1664 90010004 */  stw       r0, 0x4(r1)
/* 0CE668 800D1668 546041EA */  rlwinm    r0, r3, 8, 7, 21
/* 0CE66C 800D166C 6400A000 */  oris      r0, r0, 0xa000
/* 0CE670 800D1670 9421FFC0 */  stwu      r1, -0x40(r1)
/* 0CE674 800D1674 BF410028 */  stmw      r26, 0x28(r1)
/* 0CE678 800D1678 3FA0CC00 */  lis       r29, 0xcc00
/* 0CE67C 800D167C 3BC50000 */  addi      r30, r5, 0x0
/* 0CE680 800D1680 3B440000 */  addi      r26, r4, 0x0
/* 0CE684 800D1684 3BFD6800 */  addi      r31, r29, 0x6800
/* 0CE688 800D1688 38610024 */  addi      r3, r1, 0x24
/* 0CE68C 800D168C 38800004 */  li        r4, 0x4
/* 0CE690 800D1690 38A00001 */  li        r5, 0x1
/* 0CE694 800D1694 80DD6828 */  lwz       r6, 0x6828(r29)
/* 0CE698 800D1698 70C60405 */  andi.     r6, r6, 0x405
/* 0CE69C 800D169C 60C600C0 */  ori       r6, r6, 0xc0
/* 0CE6A0 800D16A0 94DF0028 */  stwu      r6, 0x28(r31)
/* 0CE6A4 800D16A4 90010024 */  stw       r0, 0x24(r1)
/* 0CE6A8 800D16A8 4800021D */  bl        DBGEXIImm
/* 0CE6AC 800D16AC 7C600034 */  cntlzw    r0, r3
/* 0CE6B0 800D16B0 5400D97E */  srwi      r0, r0, 5
/* 0CE6B4 800D16B4 7C1B0378 */  mr        r27, r0
lbl_800D16B8:
/* 0CE6B8 800D16B8 3B9D6800 */  addi      r28, r29, 0x6800
/* 0CE6BC 800D16BC 841C0034 */  lwzu      r0, 0x34(r28)
/* 0CE6C0 800D16C0 540007FF */  clrlwi.   r0, r0, 31
/* 0CE6C4 800D16C4 4082FFF4 */  bne       lbl_800D16B8
/* 0CE6C8 800D16C8 48000044 */  b         lbl_800D170C
lbl_800D16CC:
/* 0CE6CC 800D16CC 801A0000 */  lwz       r0, 0x0(r26)
/* 0CE6D0 800D16D0 38610020 */  addi      r3, r1, 0x20
/* 0CE6D4 800D16D4 38800004 */  li        r4, 0x4
/* 0CE6D8 800D16D8 90010020 */  stw       r0, 0x20(r1)
/* 0CE6DC 800D16DC 38A00001 */  li        r5, 0x1
/* 0CE6E0 800D16E0 3B5A0004 */  addi      r26, r26, 0x4
/* 0CE6E4 800D16E4 480001E1 */  bl        DBGEXIImm
/* 0CE6E8 800D16E8 7C600034 */  cntlzw    r0, r3
/* 0CE6EC 800D16EC 5400D97E */  srwi      r0, r0, 5
/* 0CE6F0 800D16F0 7F7B0378 */  or        r27, r27, r0
lbl_800D16F4:
/* 0CE6F4 800D16F4 801C0000 */  lwz       r0, 0x0(r28)
/* 0CE6F8 800D16F8 540007FF */  clrlwi.   r0, r0, 31
/* 0CE6FC 800D16FC 4082FFF8 */  bne       lbl_800D16F4
/* 0CE700 800D1700 37DEFFFC */  subic.    r30, r30, 0x4
/* 0CE704 800D1704 40800008 */  bge       lbl_800D170C
/* 0CE708 800D1708 3BC00000 */  li        r30, 0x0
lbl_800D170C:
/* 0CE70C 800D170C 2C1E0000 */  cmpwi     r30, 0x0
/* 0CE710 800D1710 4082FFBC */  bne       lbl_800D16CC
/* 0CE714 800D1714 809F0000 */  lwz       r4, 0x0(r31)
/* 0CE718 800D1718 7F600034 */  cntlzw    r0, r27
/* 0CE71C 800D171C 5403D97E */  srwi      r3, r0, 5
/* 0CE720 800D1720 70800405 */  andi.     r0, r4, 0x405
/* 0CE724 800D1724 901F0000 */  stw       r0, 0x0(r31)
/* 0CE728 800D1728 BB410028 */  lmw       r26, 0x28(r1)
/* 0CE72C 800D172C 80010044 */  lwz       r0, 0x44(r1)
/* 0CE730 800D1730 38210040 */  addi      r1, r1, 0x40
/* 0CE734 800D1734 7C0803A6 */  mtlr      r0
/* 0CE738 800D1738 4E800020 */  blr

glabel DBGRead
/* 0CE73C 800D173C 7C0802A6 */  mflr      r0
/* 0CE740 800D1740 90010004 */  stw       r0, 0x4(r1)
/* 0CE744 800D1744 546041EA */  rlwinm    r0, r3, 8, 7, 21
/* 0CE748 800D1748 64002000 */  oris      r0, r0, 0x2000
/* 0CE74C 800D174C 9421FFC0 */  stwu      r1, -0x40(r1)
/* 0CE750 800D1750 BF410028 */  stmw      r26, 0x28(r1)
/* 0CE754 800D1754 3FA0CC00 */  lis       r29, 0xcc00
/* 0CE758 800D1758 3BC50000 */  addi      r30, r5, 0x0
/* 0CE75C 800D175C 3B440000 */  addi      r26, r4, 0x0
/* 0CE760 800D1760 3BFD6800 */  addi      r31, r29, 0x6800
/* 0CE764 800D1764 38610024 */  addi      r3, r1, 0x24
/* 0CE768 800D1768 38800004 */  li        r4, 0x4
/* 0CE76C 800D176C 38A00001 */  li        r5, 0x1
/* 0CE770 800D1770 80DD6828 */  lwz       r6, 0x6828(r29)
/* 0CE774 800D1774 70C60405 */  andi.     r6, r6, 0x405
/* 0CE778 800D1778 60C600C0 */  ori       r6, r6, 0xc0
/* 0CE77C 800D177C 94DF0028 */  stwu      r6, 0x28(r31)
/* 0CE780 800D1780 90010024 */  stw       r0, 0x24(r1)
/* 0CE784 800D1784 48000141 */  bl        DBGEXIImm
/* 0CE788 800D1788 7C600034 */  cntlzw    r0, r3
/* 0CE78C 800D178C 5400D97E */  srwi      r0, r0, 5
/* 0CE790 800D1790 7C1B0378 */  mr        r27, r0
lbl_800D1794:
/* 0CE794 800D1794 3B9D6800 */  addi      r28, r29, 0x6800
/* 0CE798 800D1798 841C0034 */  lwzu      r0, 0x34(r28)
/* 0CE79C 800D179C 540007FF */  clrlwi.   r0, r0, 31
/* 0CE7A0 800D17A0 4082FFF4 */  bne       lbl_800D1794
/* 0CE7A4 800D17A4 48000044 */  b         lbl_800D17E8
lbl_800D17A8:
/* 0CE7A8 800D17A8 38610020 */  addi      r3, r1, 0x20
/* 0CE7AC 800D17AC 38800004 */  li        r4, 0x4
/* 0CE7B0 800D17B0 38A00000 */  li        r5, 0x0
/* 0CE7B4 800D17B4 48000111 */  bl        DBGEXIImm
/* 0CE7B8 800D17B8 7C600034 */  cntlzw    r0, r3
/* 0CE7BC 800D17BC 5400D97E */  srwi      r0, r0, 5
/* 0CE7C0 800D17C0 7F7B0378 */  or        r27, r27, r0
lbl_800D17C4:
/* 0CE7C4 800D17C4 801C0000 */  lwz       r0, 0x0(r28)
/* 0CE7C8 800D17C8 540007FF */  clrlwi.   r0, r0, 31
/* 0CE7CC 800D17CC 4082FFF8 */  bne       lbl_800D17C4
/* 0CE7D0 800D17D0 80010020 */  lwz       r0, 0x20(r1)
/* 0CE7D4 800D17D4 37DEFFFC */  subic.    r30, r30, 0x4
/* 0CE7D8 800D17D8 901A0000 */  stw       r0, 0x0(r26)
/* 0CE7DC 800D17DC 3B5A0004 */  addi      r26, r26, 0x4
/* 0CE7E0 800D17E0 40800008 */  bge       lbl_800D17E8
/* 0CE7E4 800D17E4 3BC00000 */  li        r30, 0x0
lbl_800D17E8:
/* 0CE7E8 800D17E8 2C1E0000 */  cmpwi     r30, 0x0
/* 0CE7EC 800D17EC 4082FFBC */  bne       lbl_800D17A8
/* 0CE7F0 800D17F0 809F0000 */  lwz       r4, 0x0(r31)
/* 0CE7F4 800D17F4 7F600034 */  cntlzw    r0, r27
/* 0CE7F8 800D17F8 5403D97E */  srwi      r3, r0, 5
/* 0CE7FC 800D17FC 70800405 */  andi.     r0, r4, 0x405
/* 0CE800 800D1800 901F0000 */  stw       r0, 0x0(r31)
/* 0CE804 800D1804 BB410028 */  lmw       r26, 0x28(r1)
/* 0CE808 800D1808 80010044 */  lwz       r0, 0x44(r1)
/* 0CE80C 800D180C 38210040 */  addi      r1, r1, 0x40
/* 0CE810 800D1810 7C0803A6 */  mtlr      r0
/* 0CE814 800D1814 4E800020 */  blr

glabel DBGReadMailbox
/* 0CE818 800D1818 7C0802A6 */  mflr      r0
/* 0CE81C 800D181C 38800002 */  li        r4, 0x2
/* 0CE820 800D1820 90010004 */  stw       r0, 0x4(r1)
/* 0CE824 800D1824 3C006000 */  lis       r0, 0x6000
/* 0CE828 800D1828 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0CE82C 800D182C BF610024 */  stmw      r27, 0x24(r1)
/* 0CE830 800D1830 3FC0CC00 */  lis       r30, 0xcc00
/* 0CE834 800D1834 3B630000 */  addi      r27, r3, 0x0
/* 0CE838 800D1838 3BBE6800 */  addi      r29, r30, 0x6800
/* 0CE83C 800D183C 38610018 */  addi      r3, r1, 0x18
/* 0CE840 800D1840 80BE6828 */  lwz       r5, 0x6828(r30)
/* 0CE844 800D1844 70A50405 */  andi.     r5, r5, 0x405
/* 0CE848 800D1848 60A500C0 */  ori       r5, r5, 0xc0
/* 0CE84C 800D184C 94BD0028 */  stwu      r5, 0x28(r29)
/* 0CE850 800D1850 38A00001 */  li        r5, 0x1
/* 0CE854 800D1854 90010018 */  stw       r0, 0x18(r1)
/* 0CE858 800D1858 4800006D */  bl        DBGEXIImm
/* 0CE85C 800D185C 7C600034 */  cntlzw    r0, r3
/* 0CE860 800D1860 541FD97E */  srwi      r31, r0, 5
lbl_800D1864:
/* 0CE864 800D1864 3B9E6800 */  addi      r28, r30, 0x6800
/* 0CE868 800D1868 841C0034 */  lwzu      r0, 0x34(r28)
/* 0CE86C 800D186C 540007FF */  clrlwi.   r0, r0, 31
/* 0CE870 800D1870 4082FFF4 */  bne       lbl_800D1864
/* 0CE874 800D1874 387B0000 */  addi      r3, r27, 0x0
/* 0CE878 800D1878 38800004 */  li        r4, 0x4
/* 0CE87C 800D187C 38A00000 */  li        r5, 0x0
/* 0CE880 800D1880 48000045 */  bl        DBGEXIImm
/* 0CE884 800D1884 7C600034 */  cntlzw    r0, r3
/* 0CE888 800D1888 5400D97E */  srwi      r0, r0, 5
/* 0CE88C 800D188C 7FE30378 */  or        r3, r31, r0
lbl_800D1890:
/* 0CE890 800D1890 801C0000 */  lwz       r0, 0x0(r28)
/* 0CE894 800D1894 540007FF */  clrlwi.   r0, r0, 31
/* 0CE898 800D1898 4082FFF8 */  bne       lbl_800D1890
/* 0CE89C 800D189C 809D0000 */  lwz       r4, 0x0(r29)
/* 0CE8A0 800D18A0 7C600034 */  cntlzw    r0, r3
/* 0CE8A4 800D18A4 5403D97E */  srwi      r3, r0, 5
/* 0CE8A8 800D18A8 70800405 */  andi.     r0, r4, 0x405
/* 0CE8AC 800D18AC 901D0000 */  stw       r0, 0x0(r29)
/* 0CE8B0 800D18B0 BB610024 */  lmw       r27, 0x24(r1)
/* 0CE8B4 800D18B4 8001003C */  lwz       r0, 0x3c(r1)
/* 0CE8B8 800D18B8 38210038 */  addi      r1, r1, 0x38
/* 0CE8BC 800D18BC 7C0803A6 */  mtlr      r0
/* 0CE8C0 800D18C0 4E800020 */  blr

glabel DBGEXIImm
/* 0CE8C4 800D18C4 9421FFB8 */  stwu      r1, -0x48(r1)
/* 0CE8C8 800D18C8 28050000 */  cmplwi    r5, 0x0
/* 0CE8CC 800D18CC BEC10020 */  stmw      r22, 0x20(r1)
/* 0CE8D0 800D18D0 41820138 */  beq       lbl_800D1A08
/* 0CE8D4 800D18D4 3BA00000 */  li        r29, 0x0
/* 0CE8D8 800D18D8 7C1D2000 */  cmpw      r29, r4
/* 0CE8DC 800D18DC 3BC00000 */  li        r30, 0x0
/* 0CE8E0 800D18E0 40800120 */  bge       lbl_800D1A00
/* 0CE8E4 800D18E4 2C040008 */  cmpwi     r4, 0x8
/* 0CE8E8 800D18E8 38C4FFF8 */  subi      r6, r4, 0x8
/* 0CE8EC 800D18EC 4081025C */  ble       lbl_800D1B48
/* 0CE8F0 800D18F0 38060007 */  addi      r0, r6, 0x7
/* 0CE8F4 800D18F4 5400E8FE */  srwi      r0, r0, 3
/* 0CE8F8 800D18F8 2C060000 */  cmpwi     r6, 0x0
/* 0CE8FC 800D18FC 7C0903A6 */  mtctr     r0
/* 0CE900 800D1900 3BE30000 */  addi      r31, r3, 0x0
/* 0CE904 800D1904 40810244 */  ble       lbl_800D1B48
lbl_800D1908:
/* 0CE908 800D1908 20DD0003 */  subfic    r6, r29, 0x3
/* 0CE90C 800D190C 899F0000 */  lbz       r12, 0x0(r31)
/* 0CE910 800D1910 381D0001 */  addi      r0, r29, 0x1
/* 0CE914 800D1914 897F0001 */  lbz       r11, 0x1(r31)
/* 0CE918 800D1918 54CA1838 */  slwi      r10, r6, 3
/* 0CE91C 800D191C 893F0002 */  lbz       r9, 0x2(r31)
/* 0CE920 800D1920 21000003 */  subfic    r8, r0, 0x3
/* 0CE924 800D1924 88FF0003 */  lbz       r7, 0x3(r31)
/* 0CE928 800D1928 38DD0002 */  addi      r6, r29, 0x2
/* 0CE92C 800D192C 881F0004 */  lbz       r0, 0x4(r31)
/* 0CE930 800D1930 7D8C5030 */  slw       r12, r12, r10
/* 0CE934 800D1934 8AFF0005 */  lbz       r23, 0x5(r31)
/* 0CE938 800D1938 550A1838 */  slwi      r10, r8, 3
/* 0CE93C 800D193C 8B3F0006 */  lbz       r25, 0x6(r31)
/* 0CE940 800D1940 20C60003 */  subfic    r6, r6, 0x3
/* 0CE944 800D1944 8B7F0007 */  lbz       r27, 0x7(r31)
/* 0CE948 800D1948 54C81838 */  slwi      r8, r6, 3
/* 0CE94C 800D194C 7CDD00D0 */  neg       r6, r29
/* 0CE950 800D1950 3ADD0004 */  addi      r22, r29, 0x4
/* 0CE954 800D1954 54C61838 */  slwi      r6, r6, 3
/* 0CE958 800D1958 22D60003 */  subfic    r22, r22, 0x3
/* 0CE95C 800D195C 3B1D0005 */  addi      r24, r29, 0x5
/* 0CE960 800D1960 56D61838 */  slwi      r22, r22, 3
/* 0CE964 800D1964 23180003 */  subfic    r24, r24, 0x3
/* 0CE968 800D1968 3B5D0006 */  addi      r26, r29, 0x6
/* 0CE96C 800D196C 57181838 */  slwi      r24, r24, 3
/* 0CE970 800D1970 235A0003 */  subfic    r26, r26, 0x3
/* 0CE974 800D1974 3B9D0007 */  addi      r28, r29, 0x7
/* 0CE978 800D1978 575A1838 */  slwi      r26, r26, 3
/* 0CE97C 800D197C 239C0003 */  subfic    r28, r28, 0x3
/* 0CE980 800D1980 579C1838 */  slwi      r28, r28, 3
/* 0CE984 800D1984 7FDE6378 */  or        r30, r30, r12
/* 0CE988 800D1988 7D6A5030 */  slw       r10, r11, r10
/* 0CE98C 800D198C 7FDE5378 */  or        r30, r30, r10
/* 0CE990 800D1990 7D284030 */  slw       r8, r9, r8
/* 0CE994 800D1994 7FDE4378 */  or        r30, r30, r8
/* 0CE998 800D1998 7CE63030 */  slw       r6, r7, r6
/* 0CE99C 800D199C 7FDE3378 */  or        r30, r30, r6
/* 0CE9A0 800D19A0 7C00B030 */  slw       r0, r0, r22
/* 0CE9A4 800D19A4 7FDE0378 */  or        r30, r30, r0
/* 0CE9A8 800D19A8 7EE0C030 */  slw       r0, r23, r24
/* 0CE9AC 800D19AC 7FDE0378 */  or        r30, r30, r0
/* 0CE9B0 800D19B0 7F20D030 */  slw       r0, r25, r26
/* 0CE9B4 800D19B4 7FDE0378 */  or        r30, r30, r0
/* 0CE9B8 800D19B8 7F60E030 */  slw       r0, r27, r28
/* 0CE9BC 800D19BC 7FDE0378 */  or        r30, r30, r0
/* 0CE9C0 800D19C0 3BFF0008 */  addi      r31, r31, 0x8
/* 0CE9C4 800D19C4 3BBD0008 */  addi      r29, r29, 0x8
/* 0CE9C8 800D19C8 4200FF40 */  bdnz      lbl_800D1908
/* 0CE9CC 800D19CC 4800017C */  b         lbl_800D1B48
lbl_800D19D0:
/* 0CE9D0 800D19D0 7C1D2050 */  subf      r0, r29, r4
/* 0CE9D4 800D19D4 7C1D2000 */  cmpw      r29, r4
/* 0CE9D8 800D19D8 7C0903A6 */  mtctr     r0
/* 0CE9DC 800D19DC 40800024 */  bge       lbl_800D1A00
lbl_800D19E0:
/* 0CE9E0 800D19E0 201D0003 */  subfic    r0, r29, 0x3
/* 0CE9E4 800D19E4 88C70000 */  lbz       r6, 0x0(r7)
/* 0CE9E8 800D19E8 54001838 */  slwi      r0, r0, 3
/* 0CE9EC 800D19EC 7CC00030 */  slw       r0, r6, r0
/* 0CE9F0 800D19F0 7FDE0378 */  or        r30, r30, r0
/* 0CE9F4 800D19F4 38E70001 */  addi      r7, r7, 0x1
/* 0CE9F8 800D19F8 3BBD0001 */  addi      r29, r29, 0x1
/* 0CE9FC 800D19FC 4200FFE4 */  bdnz      lbl_800D19E0
lbl_800D1A00:
/* 0CEA00 800D1A00 3CC0CC00 */  lis       r6, 0xcc00
/* 0CEA04 800D1A04 93C66838 */  stw       r30, 0x6838(r6)
lbl_800D1A08:
/* 0CEA08 800D1A08 3804FFFF */  subi      r0, r4, 0x1
/* 0CEA0C 800D1A0C 3CC0CC00 */  lis       r6, 0xcc00
/* 0CEA10 800D1A10 54A7103A */  slwi      r7, r5, 2
/* 0CEA14 800D1A14 39066800 */  addi      r8, r6, 0x6800
/* 0CEA18 800D1A18 60E60001 */  ori       r6, r7, 0x1
/* 0CEA1C 800D1A1C 54002036 */  slwi      r0, r0, 4
/* 0CEA20 800D1A20 7CC00378 */  or        r0, r6, r0
/* 0CEA24 800D1A24 94080034 */  stwu      r0, 0x34(r8)
lbl_800D1A28:
/* 0CEA28 800D1A28 80080000 */  lwz       r0, 0x0(r8)
/* 0CEA2C 800D1A2C 540007FF */  clrlwi.   r0, r0, 31
/* 0CEA30 800D1A30 4082FFF8 */  bne       lbl_800D1A28
/* 0CEA34 800D1A34 28050000 */  cmplwi    r5, 0x0
/* 0CEA38 800D1A38 40820108 */  bne       lbl_800D1B40
/* 0CEA3C 800D1A3C 38A00000 */  li        r5, 0x0
/* 0CEA40 800D1A40 3CC0CC00 */  lis       r6, 0xcc00
/* 0CEA44 800D1A44 7C052000 */  cmpw      r5, r4
/* 0CEA48 800D1A48 80066838 */  lwz       r0, 0x6838(r6)
/* 0CEA4C 800D1A4C 408000F4 */  bge       lbl_800D1B40
/* 0CEA50 800D1A50 2C040008 */  cmpwi     r4, 0x8
/* 0CEA54 800D1A54 38E4FFF8 */  subi      r7, r4, 0x8
/* 0CEA58 800D1A58 408100BC */  ble       lbl_800D1B14
/* 0CEA5C 800D1A5C 38C70007 */  addi      r6, r7, 0x7
/* 0CEA60 800D1A60 54C6E8FE */  srwi      r6, r6, 3
/* 0CEA64 800D1A64 2C070000 */  cmpwi     r7, 0x0
/* 0CEA68 800D1A68 7CC903A6 */  mtctr     r6
/* 0CEA6C 800D1A6C 408100A8 */  ble       lbl_800D1B14
lbl_800D1A70:
/* 0CEA70 800D1A70 20C50003 */  subfic    r6, r5, 0x3
/* 0CEA74 800D1A74 54C71838 */  slwi      r7, r6, 3
/* 0CEA78 800D1A78 38C50001 */  addi      r6, r5, 0x1
/* 0CEA7C 800D1A7C 7C083C30 */  srw       r8, r0, r7
/* 0CEA80 800D1A80 20C60003 */  subfic    r6, r6, 0x3
/* 0CEA84 800D1A84 99030000 */  stb       r8, 0x0(r3)
/* 0CEA88 800D1A88 54C71838 */  slwi      r7, r6, 3
/* 0CEA8C 800D1A8C 38C50002 */  addi      r6, r5, 0x2
/* 0CEA90 800D1A90 7C0C3C30 */  srw       r12, r0, r7
/* 0CEA94 800D1A94 20C60003 */  subfic    r6, r6, 0x3
/* 0CEA98 800D1A98 99830001 */  stb       r12, 0x1(r3)
/* 0CEA9C 800D1A9C 54C61838 */  slwi      r6, r6, 3
/* 0CEAA0 800D1AA0 7C0B3430 */  srw       r11, r0, r6
/* 0CEAA4 800D1AA4 7CC500D0 */  neg       r6, r5
/* 0CEAA8 800D1AA8 99630002 */  stb       r11, 0x2(r3)
/* 0CEAAC 800D1AAC 54C71838 */  slwi      r7, r6, 3
/* 0CEAB0 800D1AB0 38C50004 */  addi      r6, r5, 0x4
/* 0CEAB4 800D1AB4 7C0A3C30 */  srw       r10, r0, r7
/* 0CEAB8 800D1AB8 20C60003 */  subfic    r6, r6, 0x3
/* 0CEABC 800D1ABC 99430003 */  stb       r10, 0x3(r3)
/* 0CEAC0 800D1AC0 54C71838 */  slwi      r7, r6, 3
/* 0CEAC4 800D1AC4 38C50005 */  addi      r6, r5, 0x5
/* 0CEAC8 800D1AC8 7C093C30 */  srw       r9, r0, r7
/* 0CEACC 800D1ACC 20C60003 */  subfic    r6, r6, 0x3
/* 0CEAD0 800D1AD0 99230004 */  stb       r9, 0x4(r3)
/* 0CEAD4 800D1AD4 54C71838 */  slwi      r7, r6, 3
/* 0CEAD8 800D1AD8 7C083C30 */  srw       r8, r0, r7
/* 0CEADC 800D1ADC 38C50006 */  addi      r6, r5, 0x6
/* 0CEAE0 800D1AE0 99030005 */  stb       r8, 0x5(r3)
/* 0CEAE4 800D1AE4 20E60003 */  subfic    r7, r6, 0x3
/* 0CEAE8 800D1AE8 38C50007 */  addi      r6, r5, 0x7
/* 0CEAEC 800D1AEC 54E71838 */  slwi      r7, r7, 3
/* 0CEAF0 800D1AF0 7C073C30 */  srw       r7, r0, r7
/* 0CEAF4 800D1AF4 20C60003 */  subfic    r6, r6, 0x3
/* 0CEAF8 800D1AF8 98E30006 */  stb       r7, 0x6(r3)
/* 0CEAFC 800D1AFC 54C61838 */  slwi      r6, r6, 3
/* 0CEB00 800D1B00 7C063430 */  srw       r6, r0, r6
/* 0CEB04 800D1B04 98C30007 */  stb       r6, 0x7(r3)
/* 0CEB08 800D1B08 38630008 */  addi      r3, r3, 0x8
/* 0CEB0C 800D1B0C 38A50008 */  addi      r5, r5, 0x8
/* 0CEB10 800D1B10 4200FF60 */  bdnz      lbl_800D1A70
lbl_800D1B14:
/* 0CEB14 800D1B14 7CC52050 */  subf      r6, r5, r4
/* 0CEB18 800D1B18 7C052000 */  cmpw      r5, r4
/* 0CEB1C 800D1B1C 7CC903A6 */  mtctr     r6
/* 0CEB20 800D1B20 40800020 */  bge       lbl_800D1B40
lbl_800D1B24:
/* 0CEB24 800D1B24 20850003 */  subfic    r4, r5, 0x3
/* 0CEB28 800D1B28 54841838 */  slwi      r4, r4, 3
/* 0CEB2C 800D1B2C 7C042430 */  srw       r4, r0, r4
/* 0CEB30 800D1B30 98830000 */  stb       r4, 0x0(r3)
/* 0CEB34 800D1B34 38630001 */  addi      r3, r3, 0x1
/* 0CEB38 800D1B38 38A50001 */  addi      r5, r5, 0x1
/* 0CEB3C 800D1B3C 4200FFE8 */  bdnz      lbl_800D1B24
lbl_800D1B40:
/* 0CEB40 800D1B40 38600001 */  li        r3, 0x1
/* 0CEB44 800D1B44 4800000C */  b         lbl_800D1B50
lbl_800D1B48:
/* 0CEB48 800D1B48 7CE3EA14 */  add       r7, r3, r29
/* 0CEB4C 800D1B4C 4BFFFE84 */  b         lbl_800D19D0
lbl_800D1B50:
/* 0CEB50 800D1B50 BAC10020 */  lmw       r22, 0x20(r1)
/* 0CEB54 800D1B54 38210048 */  addi      r1, r1, 0x48
/* 0CEB58 800D1B58 4E800020 */  blr

# 0x8018B800 - 0x8018B801
.section .sdata, "wa"

glabel SendCount
	.byte 0x80

# 0x8018BF28 - 0x8018BF3D
.section .sbss, "wa"

glabel MTRCallback
	.skip 0x4

glabel DBGCallback
	.skip 0x4

glabel SendMailData
	.skip 0x4

glabel RecvDataLeng
	.skip 0x4

glabel pEXIInputFlag
	.skip 0x4

glabel EXIInputFlag
	.skip 0x1
