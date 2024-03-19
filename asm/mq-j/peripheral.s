# peripheral.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x80096F70 - 0x80097564

glabel peripheralEvent
/* 093F70 80096F70 7C0802A6 */  mflr      r0
/* 093F74 80096F74 2C040003 */  cmpwi     r4, 0x3
/* 093F78 80096F78 90010004 */  stw       r0, 0x4(r1)
/* 093F7C 80096F7C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 093F80 80096F80 93E1001C */  stw       r31, 0x1c(r1)
/* 093F84 80096F84 3BE50000 */  addi      r31, r5, 0x0
/* 093F88 80096F88 93C10018 */  stw       r30, 0x18(r1)
/* 093F8C 80096F8C 3BC30000 */  addi      r30, r3, 0x0
/* 093F90 80096F90 418200C0 */  beq       lbl_80097050
/* 093F94 80096F94 40800018 */  bge       lbl_80096FAC
/* 093F98 80096F98 2C040002 */  cmpwi     r4, 0x2
/* 093F9C 80096F9C 4080001C */  bge       lbl_80096FB8
/* 093FA0 80096FA0 2C040000 */  cmpwi     r4, 0x0
/* 093FA4 80096FA4 408000AC */  bge       lbl_80097050
/* 093FA8 80096FA8 480000A0 */  b         lbl_80097048
lbl_80096FAC:
/* 093FAC 80096FAC 2C041002 */  cmpwi     r4, 0x1002
/* 093FB0 80096FB0 41820018 */  beq       lbl_80096FC8
/* 093FB4 80096FB4 48000094 */  b         lbl_80097048
lbl_80096FB8:
/* 093FB8 80096FB8 38000000 */  li        r0, 0x0
/* 093FBC 80096FBC 901E0004 */  stw       r0, 0x4(r30)
/* 093FC0 80096FC0 93FE0000 */  stw       r31, 0x0(r30)
/* 093FC4 80096FC4 4800008C */  b         lbl_80097050
lbl_80096FC8:
/* 093FC8 80096FC8 807E0000 */  lwz       r3, 0x0(r30)
/* 093FCC 80096FCC 3CA08009 */  lis       r5, peripheralPut8@ha
/* 093FD0 80096FD0 3CC08009 */  lis       r6, peripheralPut16@ha
/* 093FD4 80096FD4 3CE08009 */  lis       r7, peripheralPut32@ha
/* 093FD8 80096FD8 80630024 */  lwz       r3, 0x24(r3)
/* 093FDC 80096FDC 3C808009 */  lis       r4, peripheralPut64@ha
/* 093FE0 80096FE0 39047184 */  addi      r8, r4, peripheralPut64@l
/* 093FE4 80096FE4 38A57518 */  addi      r5, r5, peripheralPut8@l
/* 093FE8 80096FE8 38C67510 */  addi      r6, r6, peripheralPut16@l
/* 093FEC 80096FEC 38E7718C */  addi      r7, r7, peripheralPut32@l
/* 093FF0 80096FF0 389F0000 */  addi      r4, r31, 0x0
/* 093FF4 80096FF4 4BF9D8F1 */  bl        cpuSetDevicePut
/* 093FF8 80096FF8 2C030000 */  cmpwi     r3, 0x0
/* 093FFC 80096FFC 4082000C */  bne       lbl_80097008
/* 094000 80097000 38600000 */  li        r3, 0x0
/* 094004 80097004 48000050 */  b         lbl_80097054
lbl_80097008:
/* 094008 80097008 807E0000 */  lwz       r3, 0x0(r30)
/* 09400C 8009700C 3CA08009 */  lis       r5, peripheralGet8@ha
/* 094010 80097010 3CC08009 */  lis       r6, peripheralGet16@ha
/* 094014 80097014 3CE08009 */  lis       r7, peripheralGet32@ha
/* 094018 80097018 80630024 */  lwz       r3, 0x24(r3)
/* 09401C 8009701C 3C808009 */  lis       r4, peripheralGet64@ha
/* 094020 80097020 3904706C */  addi      r8, r4, peripheralGet64@l
/* 094024 80097024 38A5717C */  addi      r5, r5, peripheralGet8@l
/* 094028 80097028 38C67174 */  addi      r6, r6, peripheralGet16@l
/* 09402C 8009702C 38E77074 */  addi      r7, r7, peripheralGet32@l
/* 094030 80097030 389F0000 */  addi      r4, r31, 0x0
/* 094034 80097034 4BF9D8C9 */  bl        cpuSetDeviceGet
/* 094038 80097038 2C030000 */  cmpwi     r3, 0x0
/* 09403C 8009703C 40820014 */  bne       lbl_80097050
/* 094040 80097040 38600000 */  li        r3, 0x0
/* 094044 80097044 48000010 */  b         lbl_80097054
lbl_80097048:
/* 094048 80097048 38600000 */  li        r3, 0x0
/* 09404C 8009704C 48000008 */  b         lbl_80097054
lbl_80097050:
/* 094050 80097050 38600001 */  li        r3, 0x1
lbl_80097054:
/* 094054 80097054 80010024 */  lwz       r0, 0x24(r1)
/* 094058 80097058 83E1001C */  lwz       r31, 0x1c(r1)
/* 09405C 8009705C 83C10018 */  lwz       r30, 0x18(r1)
/* 094060 80097060 7C0803A6 */  mtlr      r0
/* 094064 80097064 38210020 */  addi      r1, r1, 0x20
/* 094068 80097068 4E800020 */  blr

glabel peripheralGet64
/* 09406C 8009706C 38600000 */  li        r3, 0x0
/* 094070 80097070 4E800020 */  blr

glabel peripheralGet32
/* 094074 80097074 548006BE */  clrlwi    r0, r4, 26
/* 094078 80097078 28000030 */  cmplwi    r0, 0x30
/* 09407C 8009707C 418100E8 */  bgt       lbl_80097164
/* 094080 80097080 3C80800F */  lis       r4, jtbl_800F148C@ha
/* 094084 80097084 3884148C */  addi      r4, r4, jtbl_800F148C@l
/* 094088 80097088 5400103A */  slwi      r0, r0, 2
/* 09408C 8009708C 7C04002E */  lwzx      r0, r4, r0
/* 094090 80097090 7C0903A6 */  mtctr     r0
/* 094094 80097094 4E800420 */  bctr
lbl_80097098:
/* 094098 80097098 80030028 */  lwz       r0, 0x28(r3)
/* 09409C 8009709C 5400023E */  clrlwi    r0, r0, 8
/* 0940A0 800970A0 90050000 */  stw       r0, 0x0(r5)
/* 0940A4 800970A4 480000C8 */  b         lbl_8009716C
lbl_800970A8:
/* 0940A8 800970A8 8003002C */  lwz       r0, 0x2c(r3)
/* 0940AC 800970AC 90050000 */  stw       r0, 0x0(r5)
/* 0940B0 800970B0 480000BC */  b         lbl_8009716C
lbl_800970B4:
/* 0940B4 800970B4 80030008 */  lwz       r0, 0x8(r3)
/* 0940B8 800970B8 5400023E */  clrlwi    r0, r0, 8
/* 0940BC 800970BC 90050000 */  stw       r0, 0x0(r5)
/* 0940C0 800970C0 480000AC */  b         lbl_8009716C
lbl_800970C4:
/* 0940C4 800970C4 8003000C */  lwz       r0, 0xc(r3)
/* 0940C8 800970C8 5400023E */  clrlwi    r0, r0, 8
/* 0940CC 800970CC 90050000 */  stw       r0, 0x0(r5)
/* 0940D0 800970D0 4800009C */  b         lbl_8009716C
lbl_800970D4:
/* 0940D4 800970D4 80030004 */  lwz       r0, 0x4(r3)
/* 0940D8 800970D8 5400077E */  clrlwi    r0, r0, 29
/* 0940DC 800970DC 90050000 */  stw       r0, 0x0(r5)
/* 0940E0 800970E0 4800008C */  b         lbl_8009716C
lbl_800970E4:
/* 0940E4 800970E4 80030010 */  lwz       r0, 0x10(r3)
/* 0940E8 800970E8 5400063E */  clrlwi    r0, r0, 24
/* 0940EC 800970EC 90050000 */  stw       r0, 0x0(r5)
/* 0940F0 800970F0 4800007C */  b         lbl_8009716C
lbl_800970F4:
/* 0940F4 800970F4 80030030 */  lwz       r0, 0x30(r3)
/* 0940F8 800970F8 5400063E */  clrlwi    r0, r0, 24
/* 0940FC 800970FC 90050000 */  stw       r0, 0x0(r5)
/* 094100 80097100 4800006C */  b         lbl_8009716C
lbl_80097104:
/* 094104 80097104 80030020 */  lwz       r0, 0x20(r3)
/* 094108 80097108 5400073E */  clrlwi    r0, r0, 28
/* 09410C 8009710C 90050000 */  stw       r0, 0x0(r5)
/* 094110 80097110 4800005C */  b         lbl_8009716C
lbl_80097114:
/* 094114 80097114 80030018 */  lwz       r0, 0x18(r3)
/* 094118 80097118 540007FE */  clrlwi    r0, r0, 31
/* 09411C 8009711C 90050000 */  stw       r0, 0x0(r5)
/* 094120 80097120 4800004C */  b         lbl_8009716C
lbl_80097124:
/* 094124 80097124 80030014 */  lwz       r0, 0x14(r3)
/* 094128 80097128 5400063E */  clrlwi    r0, r0, 24
/* 09412C 8009712C 90050000 */  stw       r0, 0x0(r5)
/* 094130 80097130 4800003C */  b         lbl_8009716C
lbl_80097134:
/* 094134 80097134 80030034 */  lwz       r0, 0x34(r3)
/* 094138 80097138 5400063E */  clrlwi    r0, r0, 24
/* 09413C 8009713C 90050000 */  stw       r0, 0x0(r5)
/* 094140 80097140 4800002C */  b         lbl_8009716C
lbl_80097144:
/* 094144 80097144 80030024 */  lwz       r0, 0x24(r3)
/* 094148 80097148 5400073E */  clrlwi    r0, r0, 28
/* 09414C 8009714C 90050000 */  stw       r0, 0x0(r5)
/* 094150 80097150 4800001C */  b         lbl_8009716C
lbl_80097154:
/* 094154 80097154 8003001C */  lwz       r0, 0x1c(r3)
/* 094158 80097158 540007FE */  clrlwi    r0, r0, 31
/* 09415C 8009715C 90050000 */  stw       r0, 0x0(r5)
/* 094160 80097160 4800000C */  b         lbl_8009716C
lbl_80097164:
/* 094164 80097164 38600000 */  li        r3, 0x0
/* 094168 80097168 4E800020 */  blr
lbl_8009716C:
/* 09416C 8009716C 38600001 */  li        r3, 0x1
/* 094170 80097170 4E800020 */  blr

glabel peripheralGet16
/* 094174 80097174 38600000 */  li        r3, 0x0
/* 094178 80097178 4E800020 */  blr

glabel peripheralGet8
/* 09417C 8009717C 38600000 */  li        r3, 0x0
/* 094180 80097180 4E800020 */  blr

glabel peripheralPut64
/* 094184 80097184 38600000 */  li        r3, 0x0
/* 094188 80097188 4E800020 */  blr

glabel peripheralPut32
/* 09418C 8009718C 7C0802A6 */  mflr      r0
/* 094190 80097190 90010004 */  stw       r0, 0x4(r1)
/* 094194 80097194 548006BE */  clrlwi    r0, r4, 26
/* 094198 80097198 28000030 */  cmplwi    r0, 0x30
/* 09419C 8009719C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0941A0 800971A0 93E1001C */  stw       r31, 0x1c(r1)
/* 0941A4 800971A4 3BE00001 */  li        r31, 0x1
/* 0941A8 800971A8 93C10018 */  stw       r30, 0x18(r1)
/* 0941AC 800971AC 3BC30000 */  addi      r30, r3, 0x0
/* 0941B0 800971B0 4181033C */  bgt       lbl_800974EC
/* 0941B4 800971B4 3C60800F */  lis       r3, jtbl_800F1550@ha
/* 0941B8 800971B8 38631550 */  addi      r3, r3, jtbl_800F1550@l
/* 0941BC 800971BC 5400103A */  slwi      r0, r0, 2
/* 0941C0 800971C0 7C03002E */  lwzx      r0, r3, r0
/* 0941C4 800971C4 7C0903A6 */  mtctr     r0
/* 0941C8 800971C8 4E800420 */  bctr
lbl_800971CC:
/* 0941CC 800971CC 80050000 */  lwz       r0, 0x0(r5)
/* 0941D0 800971D0 5400023E */  clrlwi    r0, r0, 8
/* 0941D4 800971D4 901E0028 */  stw       r0, 0x28(r30)
/* 0941D8 800971D8 4800031C */  b         lbl_800974F4
lbl_800971DC:
/* 0941DC 800971DC 80050000 */  lwz       r0, 0x0(r5)
/* 0941E0 800971E0 901E002C */  stw       r0, 0x2c(r30)
/* 0941E4 800971E4 48000310 */  b         lbl_800974F4
lbl_800971E8:
/* 0941E8 800971E8 80650000 */  lwz       r3, 0x0(r5)
/* 0941EC 800971EC 3C000500 */  lis       r0, 0x500
/* 0941F0 800971F0 5463023E */  clrlwi    r3, r3, 8
/* 0941F4 800971F4 907E0008 */  stw       r3, 0x8(r30)
/* 0941F8 800971F8 809E002C */  lwz       r4, 0x2c(r30)
/* 0941FC 800971FC 7C002000 */  cmpw      r0, r4
/* 094200 80097200 41810014 */  bgt       lbl_80097214
/* 094204 80097204 3C600600 */  lis       r3, 0x600
/* 094208 80097208 3803FFFF */  subi      r0, r3, 0x1
/* 09420C 8009720C 7C040000 */  cmpw      r4, r0
/* 094210 80097210 408100C4 */  ble       lbl_800972D4
lbl_80097214:
/* 094214 80097214 3C000600 */  lis       r0, 0x600
/* 094218 80097218 7C002000 */  cmpw      r0, r4
/* 09421C 8009721C 41810014 */  bgt       lbl_80097230
/* 094220 80097220 3C600800 */  lis       r3, 0x800
/* 094224 80097224 3803FFFF */  subi      r0, r3, 0x1
/* 094228 80097228 7C040000 */  cmpw      r4, r0
/* 09422C 8009722C 408100A8 */  ble       lbl_800972D4
lbl_80097230:
/* 094230 80097230 3C000800 */  lis       r0, 0x800
/* 094234 80097234 7C002000 */  cmpw      r0, r4
/* 094238 80097238 4181009C */  bgt       lbl_800972D4
/* 09423C 8009723C 3C601000 */  lis       r3, 0x1000
/* 094240 80097240 3803FFFF */  subi      r0, r3, 0x1
/* 094244 80097244 7C040000 */  cmpw      r4, r0
/* 094248 80097248 4181008C */  bgt       lbl_800972D4
/* 09424C 8009724C 807E0000 */  lwz       r3, 0x0(r30)
/* 094250 80097250 38810014 */  addi      r4, r1, 0x14
/* 094254 80097254 4BF960C9 */  bl        systemGetStorageDevice
/* 094258 80097258 2C030000 */  cmpwi     r3, 0x0
/* 09425C 8009725C 4082000C */  bne       lbl_80097268
/* 094260 80097260 38600000 */  li        r3, 0x0
/* 094264 80097264 48000294 */  b         lbl_800974F8
lbl_80097268:
/* 094268 80097268 80010014 */  lwz       r0, 0x14(r1)
/* 09426C 8009726C 2C000009 */  cmpwi     r0, 0x9
/* 094270 80097270 40820030 */  bne       lbl_800972A0
/* 094274 80097274 807E0000 */  lwz       r3, 0x0(r30)
/* 094278 80097278 80BE0008 */  lwz       r5, 0x8(r30)
/* 09427C 8009727C 80630048 */  lwz       r3, 0x48(r3)
/* 094280 80097280 809E0028 */  lwz       r4, 0x28(r30)
/* 094284 80097284 38C50001 */  addi      r6, r5, 0x1
/* 094288 80097288 80BE002C */  lwz       r5, 0x2c(r30)
/* 09428C 8009728C 4BFF68C9 */  bl        sramTransferSRAM
/* 094290 80097290 2C030000 */  cmpwi     r3, 0x0
/* 094294 80097294 40820040 */  bne       lbl_800972D4
/* 094298 80097298 38600000 */  li        r3, 0x0
/* 09429C 8009729C 4800025C */  b         lbl_800974F8
lbl_800972A0:
/* 0942A0 800972A0 2C000008 */  cmpwi     r0, 0x8
/* 0942A4 800972A4 40820030 */  bne       lbl_800972D4
/* 0942A8 800972A8 807E0000 */  lwz       r3, 0x0(r30)
/* 0942AC 800972AC 80BE0008 */  lwz       r5, 0x8(r30)
/* 0942B0 800972B0 80630044 */  lwz       r3, 0x44(r3)
/* 0942B4 800972B4 809E0028 */  lwz       r4, 0x28(r30)
/* 0942B8 800972B8 38C50001 */  addi      r6, r5, 0x1
/* 0942BC 800972BC 80BE002C */  lwz       r5, 0x2c(r30)
/* 0942C0 800972C0 4BFF63C9 */  bl        flashTransferFLASH
/* 0942C4 800972C4 2C030000 */  cmpwi     r3, 0x0
/* 0942C8 800972C8 4082000C */  bne       lbl_800972D4
/* 0942CC 800972CC 38600000 */  li        r3, 0x0
/* 0942D0 800972D0 48000228 */  b         lbl_800974F8
lbl_800972D4:
/* 0942D4 800972D4 807E0000 */  lwz       r3, 0x0(r30)
/* 0942D8 800972D8 38801000 */  li        r4, 0x1000
/* 0942DC 800972DC 38A00009 */  li        r5, 0x9
/* 0942E0 800972E0 4BF708ED */  bl        xlObjectEvent
/* 0942E4 800972E4 48000210 */  b         lbl_800974F4
lbl_800972E8:
/* 0942E8 800972E8 80650000 */  lwz       r3, 0x0(r5)
/* 0942EC 800972EC 3C000500 */  lis       r0, 0x500
/* 0942F0 800972F0 5463023E */  clrlwi    r3, r3, 8
/* 0942F4 800972F4 907E000C */  stw       r3, 0xc(r30)
/* 0942F8 800972F8 809E002C */  lwz       r4, 0x2c(r30)
/* 0942FC 800972FC 7C002000 */  cmpw      r0, r4
/* 094300 80097300 41810014 */  bgt       lbl_80097314
/* 094304 80097304 3C600600 */  lis       r3, 0x600
/* 094308 80097308 3803FFFF */  subi      r0, r3, 0x1
/* 09430C 8009730C 7C040000 */  cmpw      r4, r0
/* 094310 80097310 40810120 */  ble       lbl_80097430
lbl_80097314:
/* 094314 80097314 3C000600 */  lis       r0, 0x600
/* 094318 80097318 7C002000 */  cmpw      r0, r4
/* 09431C 8009731C 41810014 */  bgt       lbl_80097330
/* 094320 80097320 3C600800 */  lis       r3, 0x800
/* 094324 80097324 3803FFFF */  subi      r0, r3, 0x1
/* 094328 80097328 7C040000 */  cmpw      r4, r0
/* 09432C 8009732C 40810104 */  ble       lbl_80097430
lbl_80097330:
/* 094330 80097330 3C000800 */  lis       r0, 0x800
/* 094334 80097334 7C002000 */  cmpw      r0, r4
/* 094338 80097338 4181009C */  bgt       lbl_800973D4
/* 09433C 8009733C 3C601000 */  lis       r3, 0x1000
/* 094340 80097340 3803FFFF */  subi      r0, r3, 0x1
/* 094344 80097344 7C040000 */  cmpw      r4, r0
/* 094348 80097348 4181008C */  bgt       lbl_800973D4
/* 09434C 8009734C 807E0000 */  lwz       r3, 0x0(r30)
/* 094350 80097350 38810014 */  addi      r4, r1, 0x14
/* 094354 80097354 4BF95FC9 */  bl        systemGetStorageDevice
/* 094358 80097358 2C030000 */  cmpwi     r3, 0x0
/* 09435C 8009735C 4082000C */  bne       lbl_80097368
/* 094360 80097360 38600000 */  li        r3, 0x0
/* 094364 80097364 48000194 */  b         lbl_800974F8
lbl_80097368:
/* 094368 80097368 80010014 */  lwz       r0, 0x14(r1)
/* 09436C 8009736C 2C000009 */  cmpwi     r0, 0x9
/* 094370 80097370 40820030 */  bne       lbl_800973A0
/* 094374 80097374 807E0000 */  lwz       r3, 0x0(r30)
/* 094378 80097378 80BE000C */  lwz       r5, 0xc(r30)
/* 09437C 8009737C 80630048 */  lwz       r3, 0x48(r3)
/* 094380 80097380 809E0028 */  lwz       r4, 0x28(r30)
/* 094384 80097384 38C50001 */  addi      r6, r5, 0x1
/* 094388 80097388 80BE002C */  lwz       r5, 0x2c(r30)
/* 09438C 8009738C 4BFF6841 */  bl        sramCopySRAM
/* 094390 80097390 2C030000 */  cmpwi     r3, 0x0
/* 094394 80097394 4082009C */  bne       lbl_80097430
/* 094398 80097398 38600000 */  li        r3, 0x0
/* 09439C 8009739C 4800015C */  b         lbl_800974F8
lbl_800973A0:
/* 0943A0 800973A0 2C000008 */  cmpwi     r0, 0x8
/* 0943A4 800973A4 4082008C */  bne       lbl_80097430
/* 0943A8 800973A8 807E0000 */  lwz       r3, 0x0(r30)
/* 0943AC 800973AC 80BE000C */  lwz       r5, 0xc(r30)
/* 0943B0 800973B0 80630044 */  lwz       r3, 0x44(r3)
/* 0943B4 800973B4 809E0028 */  lwz       r4, 0x28(r30)
/* 0943B8 800973B8 38C50001 */  addi      r6, r5, 0x1
/* 0943BC 800973BC 80BE002C */  lwz       r5, 0x2c(r30)
/* 0943C0 800973C0 4BFF63DD */  bl        flashCopyFLASH
/* 0943C4 800973C4 2C030000 */  cmpwi     r3, 0x0
/* 0943C8 800973C8 40820068 */  bne       lbl_80097430
/* 0943CC 800973CC 38600000 */  li        r3, 0x0
/* 0943D0 800973D0 48000128 */  b         lbl_800974F8
lbl_800973D4:
/* 0943D4 800973D4 3C001000 */  lis       r0, 0x1000
/* 0943D8 800973D8 7C002000 */  cmpw      r0, r4
/* 0943DC 800973DC 41810054 */  bgt       lbl_80097430
/* 0943E0 800973E0 3C601FC0 */  lis       r3, 0x1fc0
/* 0943E4 800973E4 3803FFFF */  subi      r0, r3, 0x1
/* 0943E8 800973E8 7C040000 */  cmpw      r4, r0
/* 0943EC 800973EC 41810044 */  bgt       lbl_80097430
/* 0943F0 800973F0 801E0004 */  lwz       r0, 0x4(r30)
/* 0943F4 800973F4 3C608009 */  lis       r3, peripheralDMA_Complete@ha
/* 0943F8 800973F8 38E37520 */  addi      r7, r3, peripheralDMA_Complete@l
/* 0943FC 800973FC 60000003 */  ori       r0, r0, 0x3
/* 094400 80097400 901E0004 */  stw       r0, 0x4(r30)
/* 094404 80097404 3BE00000 */  li        r31, 0x0
/* 094408 80097408 80BE000C */  lwz       r5, 0xc(r30)
/* 09440C 8009740C 807E0000 */  lwz       r3, 0x0(r30)
/* 094410 80097410 38C50001 */  addi      r6, r5, 0x1
/* 094414 80097414 809E0028 */  lwz       r4, 0x28(r30)
/* 094418 80097418 80BE002C */  lwz       r5, 0x2c(r30)
/* 09441C 8009741C 4BF960D5 */  bl        systemCopyROM
/* 094420 80097420 2C030000 */  cmpwi     r3, 0x0
/* 094424 80097424 4082000C */  bne       lbl_80097430
/* 094428 80097428 38600000 */  li        r3, 0x0
/* 09442C 8009742C 480000CC */  b         lbl_800974F8
lbl_80097430:
/* 094430 80097430 2C1F0000 */  cmpwi     r31, 0x0
/* 094434 80097434 418200C0 */  beq       lbl_800974F4
/* 094438 80097438 807E0000 */  lwz       r3, 0x0(r30)
/* 09443C 8009743C 38801000 */  li        r4, 0x1000
/* 094440 80097440 38A00009 */  li        r5, 0x9
/* 094444 80097444 4BF70789 */  bl        xlObjectEvent
/* 094448 80097448 480000AC */  b         lbl_800974F4
lbl_8009744C:
/* 09444C 8009744C 80050000 */  lwz       r0, 0x0(r5)
/* 094450 80097450 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 094454 80097454 418200A0 */  beq       lbl_800974F4
/* 094458 80097458 807E0000 */  lwz       r3, 0x0(r30)
/* 09445C 8009745C 38801001 */  li        r4, 0x1001
/* 094460 80097460 38A00009 */  li        r5, 0x9
/* 094464 80097464 4BF70769 */  bl        xlObjectEvent
/* 094468 80097468 4800008C */  b         lbl_800974F4
lbl_8009746C:
/* 09446C 8009746C 80050000 */  lwz       r0, 0x0(r5)
/* 094470 80097470 5400063E */  clrlwi    r0, r0, 24
/* 094474 80097474 901E0010 */  stw       r0, 0x10(r30)
/* 094478 80097478 4800007C */  b         lbl_800974F4
lbl_8009747C:
/* 09447C 8009747C 80050000 */  lwz       r0, 0x0(r5)
/* 094480 80097480 5400063E */  clrlwi    r0, r0, 24
/* 094484 80097484 901E0030 */  stw       r0, 0x30(r30)
/* 094488 80097488 4800006C */  b         lbl_800974F4
lbl_8009748C:
/* 09448C 8009748C 80050000 */  lwz       r0, 0x0(r5)
/* 094490 80097490 5400073E */  clrlwi    r0, r0, 28
/* 094494 80097494 901E0020 */  stw       r0, 0x20(r30)
/* 094498 80097498 4800005C */  b         lbl_800974F4
lbl_8009749C:
/* 09449C 8009749C 80050000 */  lwz       r0, 0x0(r5)
/* 0944A0 800974A0 540007FE */  clrlwi    r0, r0, 31
/* 0944A4 800974A4 901E0018 */  stw       r0, 0x18(r30)
/* 0944A8 800974A8 4800004C */  b         lbl_800974F4
lbl_800974AC:
/* 0944AC 800974AC 80050000 */  lwz       r0, 0x0(r5)
/* 0944B0 800974B0 5400063E */  clrlwi    r0, r0, 24
/* 0944B4 800974B4 901E0014 */  stw       r0, 0x14(r30)
/* 0944B8 800974B8 4800003C */  b         lbl_800974F4
lbl_800974BC:
/* 0944BC 800974BC 80050000 */  lwz       r0, 0x0(r5)
/* 0944C0 800974C0 5400063E */  clrlwi    r0, r0, 24
/* 0944C4 800974C4 901E0034 */  stw       r0, 0x34(r30)
/* 0944C8 800974C8 4800002C */  b         lbl_800974F4
lbl_800974CC:
/* 0944CC 800974CC 80050000 */  lwz       r0, 0x0(r5)
/* 0944D0 800974D0 5400073E */  clrlwi    r0, r0, 28
/* 0944D4 800974D4 901E0024 */  stw       r0, 0x24(r30)
/* 0944D8 800974D8 4800001C */  b         lbl_800974F4
lbl_800974DC:
/* 0944DC 800974DC 80050000 */  lwz       r0, 0x0(r5)
/* 0944E0 800974E0 540007FE */  clrlwi    r0, r0, 31
/* 0944E4 800974E4 901E001C */  stw       r0, 0x1c(r30)
/* 0944E8 800974E8 4800000C */  b         lbl_800974F4
lbl_800974EC:
/* 0944EC 800974EC 38600000 */  li        r3, 0x0
/* 0944F0 800974F0 48000008 */  b         lbl_800974F8
lbl_800974F4:
/* 0944F4 800974F4 38600001 */  li        r3, 0x1
lbl_800974F8:
/* 0944F8 800974F8 80010024 */  lwz       r0, 0x24(r1)
/* 0944FC 800974FC 83E1001C */  lwz       r31, 0x1c(r1)
/* 094500 80097500 83C10018 */  lwz       r30, 0x18(r1)
/* 094504 80097504 7C0803A6 */  mtlr      r0
/* 094508 80097508 38210020 */  addi      r1, r1, 0x20
/* 09450C 8009750C 4E800020 */  blr

glabel peripheralPut16
/* 094510 80097510 38600000 */  li        r3, 0x0
/* 094514 80097514 4E800020 */  blr

glabel peripheralPut8
/* 094518 80097518 38600000 */  li        r3, 0x0
/* 09451C 8009751C 4E800020 */  blr

glabel peripheralDMA_Complete
/* 094520 80097520 7C0802A6 */  mflr      r0
/* 094524 80097524 38801000 */  li        r4, 0x1000
/* 094528 80097528 90010004 */  stw       r0, 0x4(r1)
/* 09452C 8009752C 38A00009 */  li        r5, 0x9
/* 094530 80097530 9421FFF8 */  stwu      r1, -0x8(r1)
/* 094534 80097534 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 094538 80097538 8063005C */  lwz       r3, 0x5c(r3)
/* 09453C 8009753C 80030004 */  lwz       r0, 0x4(r3)
/* 094540 80097540 5400003A */  clrrwi    r0, r0, 2
/* 094544 80097544 90030004 */  stw       r0, 0x4(r3)
/* 094548 80097548 80630000 */  lwz       r3, 0x0(r3)
/* 09454C 8009754C 4BF70681 */  bl        xlObjectEvent
/* 094550 80097550 8001000C */  lwz       r0, 0xc(r1)
/* 094554 80097554 38600001 */  li        r3, 0x1
/* 094558 80097558 38210008 */  addi      r1, r1, 0x8
/* 09455C 8009755C 7C0803A6 */  mtlr      r0
/* 094560 80097560 4E800020 */  blr

# 0x800F1470 - 0x800F1618
.section .data, "wa"

.balign 8

glabel D_800F1470
	.string "PERIPHERAL"

glabel gap_05_800F147B_data
.hidden gap_05_800F147B_data
	.byte 0x00

glabel gClassPeripheral
	.long D_800F1470
	.long 0x00000038
	.long 0x00000000
	.long peripheralEvent

jtbl_800F148C:
	.long peripheralGet32, lbl_80097098
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_800970A8
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_800970B4
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_800970C4
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_800970D4
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_800970E4
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_800970F4
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097104
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097114
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097124
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097134
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097144
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097164
	.long peripheralGet32, lbl_80097154

jtbl_800F1550:
	.long peripheralPut32, lbl_800971CC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800971DC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800971E8
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800972E8
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_8009744C
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_8009746C
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_8009747C
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_8009748C
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_8009749C
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974AC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974BC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974CC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974EC
	.long peripheralPut32, lbl_800974DC

glabel gap_05_800F1614_data
.hidden gap_05_800F1614_data
	.long 0x00000000
