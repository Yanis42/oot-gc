# GXGeometry.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A9ECC - 0x800AA27C

glabel __GXSetDirtyState
/* 0A6ECC 800A9ECC 7C0802A6 */  mflr      r0
/* 0A6ED0 800A9ED0 90010004 */  stw       r0, 0x4(r1)
/* 0A6ED4 800A9ED4 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0A6ED8 800A9ED8 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6EDC 800A9EDC 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A6EE0 800A9EE0 540007FF */  clrlwi.   r0, r0, 31
/* 0A6EE4 800A9EE4 41820008 */  beq       lbl_800A9EEC
/* 0A6EE8 800A9EE8 48001E35 */  bl        fn_800ABD1C
lbl_800A9EEC:
/* 0A6EEC 800A9EEC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6EF0 800A9EF0 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A6EF4 800A9EF4 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 0A6EF8 800A9EF8 41820008 */  beq       lbl_800A9F00
/* 0A6EFC 800A9EFC 48002465 */  bl        fn_800AC360
lbl_800A9F00:
/* 0A6F00 800A9F00 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6F04 800A9F04 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A6F08 800A9F08 5400077B */  rlwinm.   r0, r0, 0, 29, 29
/* 0A6F0C 800A9F0C 41820008 */  beq       lbl_800A9F14
/* 0A6F10 800A9F10 48000349 */  bl        __GXSetGenMode
lbl_800A9F14:
/* 0A6F14 800A9F14 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6F18 800A9F18 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A6F1C 800A9F1C 54000739 */  rlwinm.   r0, r0, 0, 28, 28
/* 0A6F20 800A9F20 41820008 */  beq       lbl_800A9F28
/* 0A6F24 800A9F24 4BFFEC11 */  bl        fn_800A8B34
lbl_800A9F28:
/* 0A6F28 800A9F28 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6F2C 800A9F2C 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A6F30 800A9F30 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 0A6F34 800A9F34 41820008 */  beq       lbl_800A9F3C
/* 0A6F38 800A9F38 4BFFF47D */  bl        fn_800A93B4
lbl_800A9F3C:
/* 0A6F3C 800A9F3C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6F40 800A9F40 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A6F44 800A9F44 540006F9 */  rlwinm.   r0, r0, 0, 27, 28
/* 0A6F48 800A9F48 41820008 */  beq       lbl_800A9F50
/* 0A6F4C 800A9F4C 4BFFEC3D */  bl        fn_800A8B88
lbl_800A9F50:
/* 0A6F50 800A9F50 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6F54 800A9F54 38000000 */  li        r0, 0x0
/* 0A6F58 800A9F58 900304F4 */  stw       r0, 0x4f4(r3)
/* 0A6F5C 800A9F5C 8001000C */  lwz       r0, 0xc(r1)
/* 0A6F60 800A9F60 38210008 */  addi      r1, r1, 0x8
/* 0A6F64 800A9F64 7C0803A6 */  mtlr      r0
/* 0A6F68 800A9F68 4E800020 */  blr

glabel GXBegin
/* 0A6F6C 800A9F6C 7C0802A6 */  mflr      r0
/* 0A6F70 800A9F70 90010004 */  stw       r0, 0x4(r1)
/* 0A6F74 800A9F74 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0A6F78 800A9F78 93E10024 */  stw       r31, 0x24(r1)
/* 0A6F7C 800A9F7C 3BE50000 */  addi      r31, r5, 0x0
/* 0A6F80 800A9F80 93C10020 */  stw       r30, 0x20(r1)
/* 0A6F84 800A9F84 3BC40000 */  addi      r30, r4, 0x0
/* 0A6F88 800A9F88 93A1001C */  stw       r29, 0x1c(r1)
/* 0A6F8C 800A9F8C 3BA30000 */  addi      r29, r3, 0x0
/* 0A6F90 800A9F90 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A6F94 800A9F94 800604F4 */  lwz       r0, 0x4f4(r6)
/* 0A6F98 800A9F98 28000000 */  cmplwi    r0, 0x0
/* 0A6F9C 800A9F9C 41820080 */  beq       lbl_800AA01C
/* 0A6FA0 800A9FA0 540007FF */  clrlwi.   r0, r0, 31
/* 0A6FA4 800A9FA4 41820008 */  beq       lbl_800A9FAC
/* 0A6FA8 800A9FA8 48001D75 */  bl        fn_800ABD1C
lbl_800A9FAC:
/* 0A6FAC 800A9FAC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6FB0 800A9FB0 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A6FB4 800A9FB4 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 0A6FB8 800A9FB8 41820008 */  beq       lbl_800A9FC0
/* 0A6FBC 800A9FBC 480023A5 */  bl        fn_800AC360
lbl_800A9FC0:
/* 0A6FC0 800A9FC0 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6FC4 800A9FC4 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A6FC8 800A9FC8 5400077B */  rlwinm.   r0, r0, 0, 29, 29
/* 0A6FCC 800A9FCC 41820008 */  beq       lbl_800A9FD4
/* 0A6FD0 800A9FD0 48000289 */  bl        __GXSetGenMode
lbl_800A9FD4:
/* 0A6FD4 800A9FD4 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6FD8 800A9FD8 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A6FDC 800A9FDC 54000739 */  rlwinm.   r0, r0, 0, 28, 28
/* 0A6FE0 800A9FE0 41820008 */  beq       lbl_800A9FE8
/* 0A6FE4 800A9FE4 4BFFEB51 */  bl        fn_800A8B34
lbl_800A9FE8:
/* 0A6FE8 800A9FE8 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6FEC 800A9FEC 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A6FF0 800A9FF0 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 0A6FF4 800A9FF4 41820008 */  beq       lbl_800A9FFC
/* 0A6FF8 800A9FF8 4BFFF3BD */  bl        fn_800A93B4
lbl_800A9FFC:
/* 0A6FFC 800A9FFC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7000 800AA000 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A7004 800AA004 540006F9 */  rlwinm.   r0, r0, 0, 27, 28
/* 0A7008 800AA008 41820008 */  beq       lbl_800AA010
/* 0A700C 800AA00C 4BFFEB7D */  bl        fn_800A8B88
lbl_800AA010:
/* 0A7010 800AA010 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7014 800AA014 38000000 */  li        r0, 0x0
/* 0A7018 800AA018 900304F4 */  stw       r0, 0x4f4(r3)
lbl_800AA01C:
/* 0A701C 800AA01C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7020 800AA020 80030000 */  lwz       r0, 0x0(r3)
/* 0A7024 800AA024 28000000 */  cmplwi    r0, 0x0
/* 0A7028 800AA028 40820008 */  bne       lbl_800AA030
/* 0A702C 800AA02C 48000031 */  bl        __GXSendFlushPrim
lbl_800AA030:
/* 0A7030 800AA030 7FC0EB78 */  or        r0, r30, r29
/* 0A7034 800AA034 3C60CC01 */  lis       r3, 0xcc01
/* 0A7038 800AA038 98038000 */  stb       r0, -0x8000(r3)
/* 0A703C 800AA03C B3E38000 */  sth       r31, -0x8000(r3)
/* 0A7040 800AA040 8001002C */  lwz       r0, 0x2c(r1)
/* 0A7044 800AA044 83E10024 */  lwz       r31, 0x24(r1)
/* 0A7048 800AA048 83C10020 */  lwz       r30, 0x20(r1)
/* 0A704C 800AA04C 83A1001C */  lwz       r29, 0x1c(r1)
/* 0A7050 800AA050 38210028 */  addi      r1, r1, 0x28
/* 0A7054 800AA054 7C0803A6 */  mtlr      r0
/* 0A7058 800AA058 4E800020 */  blr

glabel __GXSendFlushPrim
/* 0A705C 800AA05C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7060 800AA060 38000098 */  li        r0, 0x98
/* 0A7064 800AA064 3CA0CC01 */  lis       r5, 0xcc01
/* 0A7068 800AA068 A0C30004 */  lhz       r6, 0x4(r3)
/* 0A706C 800AA06C 38800000 */  li        r4, 0x0
/* 0A7070 800AA070 A0630006 */  lhz       r3, 0x6(r3)
/* 0A7074 800AA074 7CE619D6 */  mullw     r7, r6, r3
/* 0A7078 800AA078 98058000 */  stb       r0, -0x8000(r5)
/* 0A707C 800AA07C B0C58000 */  sth       r6, -0x8000(r5)
/* 0A7080 800AA080 38670003 */  addi      r3, r7, 0x3
/* 0A7084 800AA084 28070000 */  cmplwi    r7, 0x0
/* 0A7088 800AA088 5463F0BE */  srwi      r3, r3, 2
/* 0A708C 800AA08C 40810048 */  ble       lbl_800AA0D4
/* 0A7090 800AA090 5460E8FF */  srwi.     r0, r3, 3
/* 0A7094 800AA094 7C0903A6 */  mtctr     r0
/* 0A7098 800AA098 41820030 */  beq       lbl_800AA0C8
lbl_800AA09C:
/* 0A709C 800AA09C 90858000 */  stw       r4, -0x8000(r5)
/* 0A70A0 800AA0A0 90858000 */  stw       r4, -0x8000(r5)
/* 0A70A4 800AA0A4 90858000 */  stw       r4, -0x8000(r5)
/* 0A70A8 800AA0A8 90858000 */  stw       r4, -0x8000(r5)
/* 0A70AC 800AA0AC 90858000 */  stw       r4, -0x8000(r5)
/* 0A70B0 800AA0B0 90858000 */  stw       r4, -0x8000(r5)
/* 0A70B4 800AA0B4 90858000 */  stw       r4, -0x8000(r5)
/* 0A70B8 800AA0B8 90858000 */  stw       r4, -0x8000(r5)
/* 0A70BC 800AA0BC 4200FFE0 */  bdnz      lbl_800AA09C
/* 0A70C0 800AA0C0 70630007 */  andi.     r3, r3, 0x7
/* 0A70C4 800AA0C4 41820010 */  beq       lbl_800AA0D4
lbl_800AA0C8:
/* 0A70C8 800AA0C8 7C6903A6 */  mtctr     r3
lbl_800AA0CC:
/* 0A70CC 800AA0CC 90858000 */  stw       r4, -0x8000(r5)
/* 0A70D0 800AA0D0 4200FFFC */  bdnz      lbl_800AA0CC
lbl_800AA0D4:
/* 0A70D4 800AA0D4 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A70D8 800AA0D8 38000001 */  li        r0, 0x1
/* 0A70DC 800AA0DC B0030002 */  sth       r0, 0x2(r3)
/* 0A70E0 800AA0E0 4E800020 */  blr

glabel GXSetLineWidth
/* 0A70E4 800AA0E4 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A70E8 800AA0E8 5486801E */  slwi      r6, r4, 16
/* 0A70EC 800AA0EC 38A00061 */  li        r5, 0x61
/* 0A70F0 800AA0F0 8007007C */  lwz       r0, 0x7c(r7)
/* 0A70F4 800AA0F4 3C80CC01 */  lis       r4, 0xcc01
/* 0A70F8 800AA0F8 5400002E */  clrrwi    r0, r0, 8
/* 0A70FC 800AA0FC 5060063E */  rlwimi    r0, r3, 0, 24, 31
/* 0A7100 800AA100 9007007C */  stw       r0, 0x7c(r7)
/* 0A7104 800AA104 38000000 */  li        r0, 0x0
/* 0A7108 800AA108 8067007C */  lwz       r3, 0x7c(r7)
/* 0A710C 800AA10C 54630418 */  rlwinm    r3, r3, 0, 16, 12
/* 0A7110 800AA110 7C633378 */  or        r3, r3, r6
/* 0A7114 800AA114 9067007C */  stw       r3, 0x7c(r7)
/* 0A7118 800AA118 98A48000 */  stb       r5, -0x8000(r4)
/* 0A711C 800AA11C 8067007C */  lwz       r3, 0x7c(r7)
/* 0A7120 800AA120 90648000 */  stw       r3, -0x8000(r4)
/* 0A7124 800AA124 B0070002 */  sth       r0, 0x2(r7)
/* 0A7128 800AA128 4E800020 */  blr

glabel GXSetPointSize
/* 0A712C 800AA12C 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A7130 800AA130 54869818 */  slwi      r6, r4, 19
/* 0A7134 800AA134 38A00061 */  li        r5, 0x61
/* 0A7138 800AA138 8007007C */  lwz       r0, 0x7c(r7)
/* 0A713C 800AA13C 3C80CC01 */  lis       r4, 0xcc01
/* 0A7140 800AA140 5400061E */  rlwinm    r0, r0, 0, 24, 15
/* 0A7144 800AA144 5060442E */  rlwimi    r0, r3, 8, 16, 23
/* 0A7148 800AA148 9007007C */  stw       r0, 0x7c(r7)
/* 0A714C 800AA14C 38000000 */  li        r0, 0x0
/* 0A7150 800AA150 8067007C */  lwz       r3, 0x7c(r7)
/* 0A7154 800AA154 54630352 */  rlwinm    r3, r3, 0, 13, 9
/* 0A7158 800AA158 7C633378 */  or        r3, r3, r6
/* 0A715C 800AA15C 9067007C */  stw       r3, 0x7c(r7)
/* 0A7160 800AA160 98A48000 */  stb       r5, -0x8000(r4)
/* 0A7164 800AA164 8067007C */  lwz       r3, 0x7c(r7)
/* 0A7168 800AA168 90648000 */  stw       r3, -0x8000(r4)
/* 0A716C 800AA16C B0070002 */  sth       r0, 0x2(r7)
/* 0A7170 800AA170 4E800020 */  blr

glabel GXEnableTexOffsets
/* 0A7174 800AA174 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A7178 800AA178 5468103A */  slwi      r8, r3, 2
/* 0A717C 800AA17C 7CE64214 */  add       r7, r6, r8
/* 0A7180 800AA180 800700B8 */  lwz       r0, 0xb8(r7)
/* 0A7184 800AA184 7D264214 */  add       r9, r6, r8
/* 0A7188 800AA188 54030398 */  rlwinm    r3, r0, 0, 14, 12
/* 0A718C 800AA18C 5480919A */  clrlslwi  r0, r4, 24, 18
/* 0A7190 800AA190 7C600378 */  or        r0, r3, r0
/* 0A7194 800AA194 900700B8 */  stw       r0, 0xb8(r7)
/* 0A7198 800AA198 54A09958 */  clrlslwi  r0, r5, 24, 19
/* 0A719C 800AA19C 38A00061 */  li        r5, 0x61
/* 0A71A0 800AA1A0 806900B8 */  lwz       r3, 0xb8(r9)
/* 0A71A4 800AA1A4 3C80CC01 */  lis       r4, 0xcc01
/* 0A71A8 800AA1A8 54630356 */  rlwinm    r3, r3, 0, 13, 11
/* 0A71AC 800AA1AC 7C600378 */  or        r0, r3, r0
/* 0A71B0 800AA1B0 900900B8 */  stw       r0, 0xb8(r9)
/* 0A71B4 800AA1B4 7C664214 */  add       r3, r6, r8
/* 0A71B8 800AA1B8 38000000 */  li        r0, 0x0
/* 0A71BC 800AA1BC 98A48000 */  stb       r5, -0x8000(r4)
/* 0A71C0 800AA1C0 806300B8 */  lwz       r3, 0xb8(r3)
/* 0A71C4 800AA1C4 90648000 */  stw       r3, -0x8000(r4)
/* 0A71C8 800AA1C8 B0060002 */  sth       r0, 0x2(r6)
/* 0A71CC 800AA1CC 4E800020 */  blr

glabel GXSetCullMode
/* 0A71D0 800AA1D0 2C030002 */  cmpwi     r3, 0x2
/* 0A71D4 800AA1D4 4182001C */  beq       lbl_800AA1F0
/* 0A71D8 800AA1D8 4080001C */  bge       lbl_800AA1F4
/* 0A71DC 800AA1DC 2C030001 */  cmpwi     r3, 0x1
/* 0A71E0 800AA1E0 40800008 */  bge       lbl_800AA1E8
/* 0A71E4 800AA1E4 48000010 */  b         lbl_800AA1F4
lbl_800AA1E8:
/* 0A71E8 800AA1E8 38600002 */  li        r3, 0x2
/* 0A71EC 800AA1EC 48000008 */  b         lbl_800AA1F4
lbl_800AA1F0:
/* 0A71F0 800AA1F0 38600001 */  li        r3, 0x1
lbl_800AA1F4:
/* 0A71F4 800AA1F4 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A71F8 800AA1F8 54607022 */  slwi      r0, r3, 14
/* 0A71FC 800AA1FC 80640204 */  lwz       r3, 0x204(r4)
/* 0A7200 800AA200 5463049E */  rlwinm    r3, r3, 0, 18, 15
/* 0A7204 800AA204 7C600378 */  or        r0, r3, r0
/* 0A7208 800AA208 90040204 */  stw       r0, 0x204(r4)
/* 0A720C 800AA20C 800404F4 */  lwz       r0, 0x4f4(r4)
/* 0A7210 800AA210 60000004 */  ori       r0, r0, 0x4
/* 0A7214 800AA214 900404F4 */  stw       r0, 0x4f4(r4)
/* 0A7218 800AA218 4E800020 */  blr

glabel GXSetCoPlanar
/* 0A721C 800AA21C 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A7220 800AA220 54609958 */  clrlslwi  r0, r3, 24, 19
/* 0A7224 800AA224 38800061 */  li        r4, 0x61
/* 0A7228 800AA228 80A60204 */  lwz       r5, 0x204(r6)
/* 0A722C 800AA22C 3C60CC01 */  lis       r3, 0xcc01
/* 0A7230 800AA230 54A50356 */  rlwinm    r5, r5, 0, 13, 11
/* 0A7234 800AA234 7CA00378 */  or        r0, r5, r0
/* 0A7238 800AA238 90060204 */  stw       r0, 0x204(r6)
/* 0A723C 800AA23C 3C00FE08 */  lis       r0, 0xfe08
/* 0A7240 800AA240 98838000 */  stb       r4, -0x8000(r3)
/* 0A7244 800AA244 90038000 */  stw       r0, -0x8000(r3)
/* 0A7248 800AA248 98838000 */  stb       r4, -0x8000(r3)
/* 0A724C 800AA24C 80060204 */  lwz       r0, 0x204(r6)
/* 0A7250 800AA250 90038000 */  stw       r0, -0x8000(r3)
/* 0A7254 800AA254 4E800020 */  blr

glabel __GXSetGenMode
/* 0A7258 800AA258 38000061 */  li        r0, 0x61
/* 0A725C 800AA25C 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A7260 800AA260 3CA0CC01 */  lis       r5, 0xcc01
/* 0A7264 800AA264 98058000 */  stb       r0, -0x8000(r5)
/* 0A7268 800AA268 38000000 */  li        r0, 0x0
/* 0A726C 800AA26C 80640204 */  lwz       r3, 0x204(r4)
/* 0A7270 800AA270 90658000 */  stw       r3, -0x8000(r5)
/* 0A7274 800AA274 B0040002 */  sth       r0, 0x2(r4)
/* 0A7278 800AA278 4E800020 */  blr
