# OSCache.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009CC84 - 0x8009D2D4

glabel DCEnable
/* 099C84 8009CC84 7C0004AC */  sync
/* 099C88 8009CC88 7C70FAA6 */  mfspr     r3, HID0
/* 099C8C 8009CC8C 60634000 */  ori       r3, r3, 0x4000
/* 099C90 8009CC90 7C70FBA6 */  mtspr     HID0, r3
/* 099C94 8009CC94 4E800020 */  blr

glabel DCInvalidateRange
/* 099C98 8009CC98 28040000 */  cmplwi    r4, 0x0
/* 099C9C 8009CC9C 4C810020 */  blelr
/* 099CA0 8009CCA0 546506FE */  clrlwi    r5, r3, 27
/* 099CA4 8009CCA4 7C842A14 */  add       r4, r4, r5
/* 099CA8 8009CCA8 3884001F */  addi      r4, r4, 0x1f
/* 099CAC 8009CCAC 5484D97E */  srwi      r4, r4, 5
/* 099CB0 8009CCB0 7C8903A6 */  mtctr     r4
lbl_8009CCB4:
/* 099CB4 8009CCB4 7C001BAC */  dcbi      r0, r3
/* 099CB8 8009CCB8 38630020 */  addi      r3, r3, 0x20
/* 099CBC 8009CCBC 4200FFF8 */  bdnz      lbl_8009CCB4
/* 099CC0 8009CCC0 4E800020 */  blr

glabel DCFlushRange
/* 099CC4 8009CCC4 28040000 */  cmplwi    r4, 0x0
/* 099CC8 8009CCC8 4C810020 */  blelr
/* 099CCC 8009CCCC 546506FE */  clrlwi    r5, r3, 27
/* 099CD0 8009CCD0 7C842A14 */  add       r4, r4, r5
/* 099CD4 8009CCD4 3884001F */  addi      r4, r4, 0x1f
/* 099CD8 8009CCD8 5484D97E */  srwi      r4, r4, 5
/* 099CDC 8009CCDC 7C8903A6 */  mtctr     r4
lbl_8009CCE0:
/* 099CE0 8009CCE0 7C0018AC */  dcbf      r0, r3
/* 099CE4 8009CCE4 38630020 */  addi      r3, r3, 0x20
/* 099CE8 8009CCE8 4200FFF8 */  bdnz      lbl_8009CCE0
/* 099CEC 8009CCEC 44000002 */  sc
/* 099CF0 8009CCF0 4E800020 */  blr

glabel DCStoreRange
/* 099CF4 8009CCF4 28040000 */  cmplwi    r4, 0x0
/* 099CF8 8009CCF8 4C810020 */  blelr
/* 099CFC 8009CCFC 546506FE */  clrlwi    r5, r3, 27
/* 099D00 8009CD00 7C842A14 */  add       r4, r4, r5
/* 099D04 8009CD04 3884001F */  addi      r4, r4, 0x1f
/* 099D08 8009CD08 5484D97E */  srwi      r4, r4, 5
/* 099D0C 8009CD0C 7C8903A6 */  mtctr     r4
lbl_8009CD10:
/* 099D10 8009CD10 7C00186C */  dcbst     r0, r3
/* 099D14 8009CD14 38630020 */  addi      r3, r3, 0x20
/* 099D18 8009CD18 4200FFF8 */  bdnz      lbl_8009CD10
/* 099D1C 8009CD1C 44000002 */  sc
/* 099D20 8009CD20 4E800020 */  blr

glabel DCFlushRangeNoSync
/* 099D24 8009CD24 28040000 */  cmplwi    r4, 0x0
/* 099D28 8009CD28 4C810020 */  blelr
/* 099D2C 8009CD2C 546506FE */  clrlwi    r5, r3, 27
/* 099D30 8009CD30 7C842A14 */  add       r4, r4, r5
/* 099D34 8009CD34 3884001F */  addi      r4, r4, 0x1f
/* 099D38 8009CD38 5484D97E */  srwi      r4, r4, 5
/* 099D3C 8009CD3C 7C8903A6 */  mtctr     r4
lbl_8009CD40:
/* 099D40 8009CD40 7C0018AC */  dcbf      r0, r3
/* 099D44 8009CD44 38630020 */  addi      r3, r3, 0x20
/* 099D48 8009CD48 4200FFF8 */  bdnz      lbl_8009CD40
/* 099D4C 8009CD4C 4E800020 */  blr

glabel DCZeroRange
/* 099D50 8009CD50 28040000 */  cmplwi    r4, 0x0
/* 099D54 8009CD54 4C810020 */  blelr
/* 099D58 8009CD58 546506FE */  clrlwi    r5, r3, 27
/* 099D5C 8009CD5C 7C842A14 */  add       r4, r4, r5
/* 099D60 8009CD60 3884001F */  addi      r4, r4, 0x1f
/* 099D64 8009CD64 5484D97E */  srwi      r4, r4, 5
/* 099D68 8009CD68 7C8903A6 */  mtctr     r4
lbl_8009CD6C:
/* 099D6C 8009CD6C 7C001FEC */  dcbz      r0, r3
/* 099D70 8009CD70 38630020 */  addi      r3, r3, 0x20
/* 099D74 8009CD74 4200FFF8 */  bdnz      lbl_8009CD6C
/* 099D78 8009CD78 4E800020 */  blr

glabel ICInvalidateRange
/* 099D7C 8009CD7C 28040000 */  cmplwi    r4, 0x0
/* 099D80 8009CD80 4C810020 */  blelr
/* 099D84 8009CD84 546506FE */  clrlwi    r5, r3, 27
/* 099D88 8009CD88 7C842A14 */  add       r4, r4, r5
/* 099D8C 8009CD8C 3884001F */  addi      r4, r4, 0x1f
/* 099D90 8009CD90 5484D97E */  srwi      r4, r4, 5
/* 099D94 8009CD94 7C8903A6 */  mtctr     r4
lbl_8009CD98:
/* 099D98 8009CD98 7C001FAC */  icbi      r0, r3
/* 099D9C 8009CD9C 38630020 */  addi      r3, r3, 0x20
/* 099DA0 8009CDA0 4200FFF8 */  bdnz      lbl_8009CD98
/* 099DA4 8009CDA4 7C0004AC */  sync
/* 099DA8 8009CDA8 4C00012C */  isync
/* 099DAC 8009CDAC 4E800020 */  blr

glabel ICFlashInvalidate
/* 099DB0 8009CDB0 7C70FAA6 */  mfspr     r3, HID0
/* 099DB4 8009CDB4 60630800 */  ori       r3, r3, 0x800
/* 099DB8 8009CDB8 7C70FBA6 */  mtspr     HID0, r3
/* 099DBC 8009CDBC 4E800020 */  blr

glabel ICEnable
/* 099DC0 8009CDC0 4C00012C */  isync
/* 099DC4 8009CDC4 7C70FAA6 */  mfspr     r3, HID0
/* 099DC8 8009CDC8 60638000 */  ori       r3, r3, 0x8000
/* 099DCC 8009CDCC 7C70FBA6 */  mtspr     HID0, r3
/* 099DD0 8009CDD0 4E800020 */  blr

glabel __LCEnable
/* 099DD4 8009CDD4 7CA000A6 */  mfmsr     r5
/* 099DD8 8009CDD8 60A51000 */  ori       r5, r5, 0x1000
/* 099DDC 8009CDDC 7CA00124 */  mtmsr     r5
/* 099DE0 8009CDE0 3C608000 */  lis       r3, 0x8000
/* 099DE4 8009CDE4 38800400 */  li        r4, 0x400
/* 099DE8 8009CDE8 7C8903A6 */  mtctr     r4
lbl_8009CDEC:
/* 099DEC 8009CDEC 7C001A2C */  dcbt      r0, r3
/* 099DF0 8009CDF0 7C00186C */  dcbst     r0, r3
/* 099DF4 8009CDF4 38630020 */  addi      r3, r3, 0x20
/* 099DF8 8009CDF8 4200FFF4 */  bdnz      lbl_8009CDEC
/* 099DFC 8009CDFC 7C98E2A6 */  mfspr     r4, HID2
/* 099E00 8009CE00 6484100F */  oris      r4, r4, 0x100f
/* 099E04 8009CE04 7C98E3A6 */  mtspr     HID2, r4
/* 099E08 8009CE08 60000000 */  nop
/* 099E0C 8009CE0C 60000000 */  nop
/* 099E10 8009CE10 60000000 */  nop
/* 099E14 8009CE14 60000000 */  nop
/* 099E18 8009CE18 60000000 */  nop
/* 099E1C 8009CE1C 60000000 */  nop
/* 099E20 8009CE20 60000000 */  nop
/* 099E24 8009CE24 60000000 */  nop
/* 099E28 8009CE28 60000000 */  nop
/* 099E2C 8009CE2C 60000000 */  nop
/* 099E30 8009CE30 60000000 */  nop
/* 099E34 8009CE34 60000000 */  nop
/* 099E38 8009CE38 3C60E000 */  lis       r3, 0xe000
/* 099E3C 8009CE3C 60630002 */  ori       r3, r3, 0x2
/* 099E40 8009CE40 7C7F83A6 */  mtdbatl   3, r3
/* 099E44 8009CE44 606301FE */  ori       r3, r3, 0x1fe
/* 099E48 8009CE48 7C7E83A6 */  mtdbatu   3, r3
/* 099E4C 8009CE4C 4C00012C */  isync
/* 099E50 8009CE50 3C60E000 */  lis       r3, 0xe000
/* 099E54 8009CE54 38C00200 */  li        r6, 0x200
/* 099E58 8009CE58 7CC903A6 */  mtctr     r6
/* 099E5C 8009CE5C 38C00000 */  li        r6, 0x0
lbl_8009CE60:
/* 099E60 8009CE60 10061FEC */  dcbz_l    r6, r3
/* 099E64 8009CE64 38630020 */  addi      r3, r3, 0x20
/* 099E68 8009CE68 4200FFF8 */  bdnz      lbl_8009CE60
/* 099E6C 8009CE6C 60000000 */  nop
/* 099E70 8009CE70 60000000 */  nop
/* 099E74 8009CE74 60000000 */  nop
/* 099E78 8009CE78 60000000 */  nop
/* 099E7C 8009CE7C 60000000 */  nop
/* 099E80 8009CE80 60000000 */  nop
/* 099E84 8009CE84 60000000 */  nop
/* 099E88 8009CE88 60000000 */  nop
/* 099E8C 8009CE8C 60000000 */  nop
/* 099E90 8009CE90 60000000 */  nop
/* 099E94 8009CE94 60000000 */  nop
/* 099E98 8009CE98 60000000 */  nop
/* 099E9C 8009CE9C 4E800020 */  blr

glabel LCEnable
/* 099EA0 8009CEA0 7C0802A6 */  mflr      r0
/* 099EA4 8009CEA4 90010004 */  stw       r0, 0x4(r1)
/* 099EA8 8009CEA8 9421FFF0 */  stwu      r1, -0x10(r1)
/* 099EAC 8009CEAC 93E1000C */  stw       r31, 0xc(r1)
/* 099EB0 8009CEB0 48001399 */  bl        OSDisableInterrupts
/* 099EB4 8009CEB4 7C7F1B78 */  mr        r31, r3
/* 099EB8 8009CEB8 4BFFFF1D */  bl        __LCEnable
/* 099EBC 8009CEBC 7FE3FB78 */  mr        r3, r31
/* 099EC0 8009CEC0 480013B1 */  bl        OSRestoreInterrupts
/* 099EC4 8009CEC4 80010014 */  lwz       r0, 0x14(r1)
/* 099EC8 8009CEC8 83E1000C */  lwz       r31, 0xc(r1)
/* 099ECC 8009CECC 38210010 */  addi      r1, r1, 0x10
/* 099ED0 8009CED0 7C0803A6 */  mtlr      r0
/* 099ED4 8009CED4 4E800020 */  blr

glabel LCDisable
/* 099ED8 8009CED8 3C60E000 */  lis       r3, 0xe000
/* 099EDC 8009CEDC 38800200 */  li        r4, 0x200
/* 099EE0 8009CEE0 7C8903A6 */  mtctr     r4
lbl_8009CEE4:
/* 099EE4 8009CEE4 7C001BAC */  dcbi      r0, r3
/* 099EE8 8009CEE8 38630020 */  addi      r3, r3, 0x20
/* 099EEC 8009CEEC 4200FFF8 */  bdnz      lbl_8009CEE4
/* 099EF0 8009CEF0 7C98E2A6 */  mfspr     r4, HID2
/* 099EF4 8009CEF4 54840104 */  rlwinm    r4, r4, 0, 4, 2
/* 099EF8 8009CEF8 7C98E3A6 */  mtspr     HID2, r4
/* 099EFC 8009CEFC 4E800020 */  blr

glabel LCStoreBlocks
/* 099F00 8009CF00 54A6F6FE */  extrwi    r6, r5, 5, 25
/* 099F04 8009CF04 5463013E */  clrlwi    r3, r3, 4
/* 099F08 8009CF08 7CC61B78 */  or        r6, r6, r3
/* 099F0C 8009CF0C 7CDAE3A6 */  mtspr     DMA_U, r6
/* 099F10 8009CF10 54A6173A */  clrlslwi  r6, r5, 30, 2
/* 099F14 8009CF14 7CC62378 */  or        r6, r6, r4
/* 099F18 8009CF18 60C60002 */  ori       r6, r6, 0x2
/* 099F1C 8009CF1C 7CDBE3A6 */  mtspr     DMA_L, r6
/* 099F20 8009CF20 4E800020 */  blr

glabel LCStoreData
/* 099F24 8009CF24 7C0802A6 */  mflr      r0
/* 099F28 8009CF28 90010004 */  stw       r0, 0x4(r1)
/* 099F2C 8009CF2C 9421FFD8 */  stwu      r1, -0x28(r1)
/* 099F30 8009CF30 93E10024 */  stw       r31, 0x24(r1)
/* 099F34 8009CF34 93C10020 */  stw       r30, 0x20(r1)
/* 099F38 8009CF38 93A1001C */  stw       r29, 0x1c(r1)
/* 099F3C 8009CF3C 93810018 */  stw       r28, 0x18(r1)
/* 099F40 8009CF40 7C7C1B78 */  mr        r28, r3
/* 099F44 8009CF44 7C9D2378 */  mr        r29, r4
/* 099F48 8009CF48 3805001F */  addi      r0, r5, 0x1f
/* 099F4C 8009CF4C 5403D97E */  srwi      r3, r0, 5
/* 099F50 8009CF50 3803007F */  addi      r0, r3, 0x7f
/* 099F54 8009CF54 7C7F1B78 */  mr        r31, r3
/* 099F58 8009CF58 541EC9FE */  srwi      r30, r0, 7
/* 099F5C 8009CF5C 48000004 */  b         lbl_8009CF60
lbl_8009CF60:
/* 099F60 8009CF60 48000004 */  b         lbl_8009CF64
lbl_8009CF64:
/* 099F64 8009CF64 48000040 */  b         lbl_8009CFA4
lbl_8009CF68:
/* 099F68 8009CF68 281F0080 */  cmplwi    r31, 0x80
/* 099F6C 8009CF6C 4080001C */  bge       lbl_8009CF88
/* 099F70 8009CF70 7F83E378 */  mr        r3, r28
/* 099F74 8009CF74 7FA4EB78 */  mr        r4, r29
/* 099F78 8009CF78 7FE5FB78 */  mr        r5, r31
/* 099F7C 8009CF7C 4BFFFF85 */  bl        LCStoreBlocks
/* 099F80 8009CF80 3BE00000 */  li        r31, 0x0
/* 099F84 8009CF84 48000020 */  b         lbl_8009CFA4
lbl_8009CF88:
/* 099F88 8009CF88 7F83E378 */  mr        r3, r28
/* 099F8C 8009CF8C 7FA4EB78 */  mr        r4, r29
/* 099F90 8009CF90 38A00000 */  li        r5, 0x0
/* 099F94 8009CF94 4BFFFF6D */  bl        LCStoreBlocks
/* 099F98 8009CF98 3BFFFF80 */  subi      r31, r31, 0x80
/* 099F9C 8009CF9C 3B9C1000 */  addi      r28, r28, 0x1000
/* 099FA0 8009CFA0 3BBD1000 */  addi      r29, r29, 0x1000
lbl_8009CFA4:
/* 099FA4 8009CFA4 281F0000 */  cmplwi    r31, 0x0
/* 099FA8 8009CFA8 4082FFC0 */  bne       lbl_8009CF68
/* 099FAC 8009CFAC 7FC3F378 */  mr        r3, r30
/* 099FB0 8009CFB0 8001002C */  lwz       r0, 0x2c(r1)
/* 099FB4 8009CFB4 83E10024 */  lwz       r31, 0x24(r1)
/* 099FB8 8009CFB8 83C10020 */  lwz       r30, 0x20(r1)
/* 099FBC 8009CFBC 83A1001C */  lwz       r29, 0x1c(r1)
/* 099FC0 8009CFC0 83810018 */  lwz       r28, 0x18(r1)
/* 099FC4 8009CFC4 38210028 */  addi      r1, r1, 0x28
/* 099FC8 8009CFC8 7C0803A6 */  mtlr      r0
/* 099FCC 8009CFCC 4E800020 */  blr

glabel LCQueueWait
/* 099FD0 8009CFD0 38630001 */  addi      r3, r3, 0x1
lbl_8009CFD4:
/* 099FD4 8009CFD4 7C98E2A6 */  mfspr     r4, HID2
/* 099FD8 8009CFD8 5484473E */  extrwi    r4, r4, 4, 4
/* 099FDC 8009CFDC 7D041800 */  cmpw      cr2, r4, r3
/* 099FE0 8009CFE0 4088FFF4 */  bge       cr2, lbl_8009CFD4
/* 099FE4 8009CFE4 4E800020 */  blr

glabel L2GlobalInvalidate
/* 099FE8 8009CFE8 7C0802A6 */  mflr      r0
/* 099FEC 8009CFEC 90010004 */  stw       r0, 0x4(r1)
/* 099FF0 8009CFF0 9421FFF0 */  stwu      r1, -0x10(r1)
/* 099FF4 8009CFF4 93E1000C */  stw       r31, 0xc(r1)
/* 099FF8 8009CFF8 7C0004AC */  sync
/* 099FFC 8009CFFC 4BFFE2A9 */  bl        PPCMfl2cr
/* 09A000 8009D000 5463007E */  clrlwi    r3, r3, 1
/* 09A004 8009D004 4BFFE2A9 */  bl        PPCMtl2cr
/* 09A008 8009D008 7C0004AC */  sync
/* 09A00C 8009D00C 4BFFE299 */  bl        PPCMfl2cr
/* 09A010 8009D010 64630020 */  oris      r3, r3, 0x20
/* 09A014 8009D014 4BFFE299 */  bl        PPCMtl2cr
/* 09A018 8009D018 48000004 */  b         lbl_8009D01C
lbl_8009D01C:
/* 09A01C 8009D01C 48000004 */  b         lbl_8009D020
lbl_8009D020:
/* 09A020 8009D020 4BFFE285 */  bl        PPCMfl2cr
/* 09A024 8009D024 546007FE */  clrlwi    r0, r3, 31
/* 09A028 8009D028 28000000 */  cmplwi    r0, 0x0
/* 09A02C 8009D02C 4082FFF4 */  bne       lbl_8009D020
/* 09A030 8009D030 4BFFE275 */  bl        PPCMfl2cr
/* 09A034 8009D034 546302D2 */  rlwinm    r3, r3, 0, 11, 9
/* 09A038 8009D038 4BFFE275 */  bl        PPCMtl2cr
/* 09A03C 8009D03C 48000004 */  b         lbl_8009D040
lbl_8009D040:
/* 09A040 8009D040 3C60800F */  lis       r3, "@69"@ha
/* 09A044 8009D044 3BE32108 */  addi      r31, r3, "@69"@l
/* 09A048 8009D048 48000004 */  b         lbl_8009D04C
lbl_8009D04C:
/* 09A04C 8009D04C 48000010 */  b         lbl_8009D05C
lbl_8009D050:
/* 09A050 8009D050 7FE3FB78 */  mr        r3, r31
/* 09A054 8009D054 4CC63182 */  crclr     cr1eq
/* 09A058 8009D058 48009805 */  bl        DBPrintf
lbl_8009D05C:
/* 09A05C 8009D05C 4BFFE249 */  bl        PPCMfl2cr
/* 09A060 8009D060 546007FE */  clrlwi    r0, r3, 31
/* 09A064 8009D064 28000000 */  cmplwi    r0, 0x0
/* 09A068 8009D068 4082FFE8 */  bne       lbl_8009D050
/* 09A06C 8009D06C 80010014 */  lwz       r0, 0x14(r1)
/* 09A070 8009D070 83E1000C */  lwz       r31, 0xc(r1)
/* 09A074 8009D074 38210010 */  addi      r1, r1, 0x10
/* 09A078 8009D078 7C0803A6 */  mtlr      r0
/* 09A07C 8009D07C 4E800020 */  blr

glabel DMAErrorHandler
/* 09A080 8009D080 7C0802A6 */  mflr      r0
/* 09A084 8009D084 90010004 */  stw       r0, 0x4(r1)
/* 09A088 8009D088 9421FF80 */  stwu      r1, -0x80(r1)
/* 09A08C 8009D08C 93E1007C */  stw       r31, 0x7c(r1)
/* 09A090 8009D090 93C10078 */  stw       r30, 0x78(r1)
/* 09A094 8009D094 93A10074 */  stw       r29, 0x74(r1)
/* 09A098 8009D098 40860024 */  bne       cr1, lbl_8009D0BC
/* 09A09C 8009D09C D8210028 */  stfd      f1, 0x28(r1)
/* 09A0A0 8009D0A0 D8410030 */  stfd      f2, 0x30(r1)
/* 09A0A4 8009D0A4 D8610038 */  stfd      f3, 0x38(r1)
/* 09A0A8 8009D0A8 D8810040 */  stfd      f4, 0x40(r1)
/* 09A0AC 8009D0AC D8A10048 */  stfd      f5, 0x48(r1)
/* 09A0B0 8009D0B0 D8C10050 */  stfd      f6, 0x50(r1)
/* 09A0B4 8009D0B4 D8E10058 */  stfd      f7, 0x58(r1)
/* 09A0B8 8009D0B8 D9010060 */  stfd      f8, 0x60(r1)
lbl_8009D0BC:
/* 09A0BC 8009D0BC 90610008 */  stw       r3, 0x8(r1)
/* 09A0C0 8009D0C0 9081000C */  stw       r4, 0xc(r1)
/* 09A0C4 8009D0C4 90A10010 */  stw       r5, 0x10(r1)
/* 09A0C8 8009D0C8 90C10014 */  stw       r6, 0x14(r1)
/* 09A0CC 8009D0CC 90E10018 */  stw       r7, 0x18(r1)
/* 09A0D0 8009D0D0 9101001C */  stw       r8, 0x1c(r1)
/* 09A0D4 8009D0D4 91210020 */  stw       r9, 0x20(r1)
/* 09A0D8 8009D0D8 91410024 */  stw       r10, 0x24(r1)
/* 09A0DC 8009D0DC 7C9D2378 */  mr        r29, r4
/* 09A0E0 8009D0E0 3C60800F */  lis       r3, "@69"@ha
/* 09A0E4 8009D0E4 3BE32108 */  addi      r31, r3, "@69"@l
/* 09A0E8 8009D0E8 4BFFE239 */  bl        PPCMfhid2
/* 09A0EC 8009D0EC 7C7E1B78 */  mr        r30, r3
/* 09A0F0 8009D0F0 4CC63182 */  crclr     cr1eq
/* 09A0F4 8009D0F4 387F002C */  addi      r3, r31, 0x2c
/* 09A0F8 8009D0F8 48000A4D */  bl        OSReport
/* 09A0FC 8009D0FC 80BD019C */  lwz       r5, 0x19c(r29)
/* 09A100 8009D100 7FC4F378 */  mr        r4, r30
/* 09A104 8009D104 387F0044 */  addi      r3, r31, 0x44
/* 09A108 8009D108 4CC63182 */  crclr     cr1eq
/* 09A10C 8009D10C 48000A39 */  bl        OSReport
/* 09A110 8009D110 57C00216 */  rlwinm    r0, r30, 0, 8, 11
/* 09A114 8009D114 28000000 */  cmplwi    r0, 0x0
/* 09A118 8009D118 41820014 */  beq       lbl_8009D12C
/* 09A11C 8009D11C 801D019C */  lwz       r0, 0x19c(r29)
/* 09A120 8009D120 54000294 */  rlwinm    r0, r0, 0, 10, 10
/* 09A124 8009D124 28000000 */  cmplwi    r0, 0x0
/* 09A128 8009D128 4082001C */  bne       lbl_8009D144
lbl_8009D12C:
/* 09A12C 8009D12C 387F0060 */  addi      r3, r31, 0x60
/* 09A130 8009D130 4CC63182 */  crclr     cr1eq
/* 09A134 8009D134 48000A11 */  bl        OSReport
/* 09A138 8009D138 7FA3EB78 */  mr        r3, r29
/* 09A13C 8009D13C 48000695 */  bl        OSDumpContext
/* 09A140 8009D140 4BFFE185 */  bl        PPCHalt
lbl_8009D144:
/* 09A144 8009D144 387F0090 */  addi      r3, r31, 0x90
/* 09A148 8009D148 4CC63182 */  crclr     cr1eq
/* 09A14C 8009D14C 480009F9 */  bl        OSReport
/* 09A150 8009D150 387F00CC */  addi      r3, r31, 0xcc
/* 09A154 8009D154 4CC63182 */  crclr     cr1eq
/* 09A158 8009D158 480009ED */  bl        OSReport
/* 09A15C 8009D15C 57C00210 */  rlwinm    r0, r30, 0, 8, 8
/* 09A160 8009D160 28000000 */  cmplwi    r0, 0x0
/* 09A164 8009D164 41820010 */  beq       lbl_8009D174
/* 09A168 8009D168 387F0104 */  addi      r3, r31, 0x104
/* 09A16C 8009D16C 4CC63182 */  crclr     cr1eq
/* 09A170 8009D170 480009D5 */  bl        OSReport
lbl_8009D174:
/* 09A174 8009D174 57C00252 */  rlwinm    r0, r30, 0, 9, 9
/* 09A178 8009D178 28000000 */  cmplwi    r0, 0x0
/* 09A17C 8009D17C 41820010 */  beq       lbl_8009D18C
/* 09A180 8009D180 387F0144 */  addi      r3, r31, 0x144
/* 09A184 8009D184 4CC63182 */  crclr     cr1eq
/* 09A188 8009D188 480009BD */  bl        OSReport
lbl_8009D18C:
/* 09A18C 8009D18C 57C00294 */  rlwinm    r0, r30, 0, 10, 10
/* 09A190 8009D190 28000000 */  cmplwi    r0, 0x0
/* 09A194 8009D194 41820010 */  beq       lbl_8009D1A4
/* 09A198 8009D198 387F0170 */  addi      r3, r31, 0x170
/* 09A19C 8009D19C 4CC63182 */  crclr     cr1eq
/* 09A1A0 8009D1A0 480009A5 */  bl        OSReport
lbl_8009D1A4:
/* 09A1A4 8009D1A4 57C002D6 */  rlwinm    r0, r30, 0, 11, 11
/* 09A1A8 8009D1A8 28000000 */  cmplwi    r0, 0x0
/* 09A1AC 8009D1AC 41820010 */  beq       lbl_8009D1BC
/* 09A1B0 8009D1B0 387F0190 */  addi      r3, r31, 0x190
/* 09A1B4 8009D1B4 4CC63182 */  crclr     cr1eq
/* 09A1B8 8009D1B8 4800098D */  bl        OSReport
lbl_8009D1BC:
/* 09A1BC 8009D1BC 7FC3F378 */  mr        r3, r30
/* 09A1C0 8009D1C0 4BFFE169 */  bl        PPCMthid2
/* 09A1C4 8009D1C4 80010084 */  lwz       r0, 0x84(r1)
/* 09A1C8 8009D1C8 83E1007C */  lwz       r31, 0x7c(r1)
/* 09A1CC 8009D1CC 83C10078 */  lwz       r30, 0x78(r1)
/* 09A1D0 8009D1D0 83A10074 */  lwz       r29, 0x74(r1)
/* 09A1D4 8009D1D4 38210080 */  addi      r1, r1, 0x80
/* 09A1D8 8009D1D8 7C0803A6 */  mtlr      r0
/* 09A1DC 8009D1DC 4E800020 */  blr

glabel __OSCacheInit
/* 09A1E0 8009D1E0 7C0802A6 */  mflr      r0
/* 09A1E4 8009D1E4 90010004 */  stw       r0, 0x4(r1)
/* 09A1E8 8009D1E8 9421FFF0 */  stwu      r1, -0x10(r1)
/* 09A1EC 8009D1EC 93E1000C */  stw       r31, 0xc(r1)
/* 09A1F0 8009D1F0 93C10008 */  stw       r30, 0x8(r1)
/* 09A1F4 8009D1F4 3C60800F */  lis       r3, "@69"@ha
/* 09A1F8 8009D1F8 3BE32108 */  addi      r31, r3, "@69"@l
/* 09A1FC 8009D1FC 4BFFE099 */  bl        PPCMfhid0
/* 09A200 8009D200 54600420 */  rlwinm    r0, r3, 0, 16, 16
/* 09A204 8009D204 28000000 */  cmplwi    r0, 0x0
/* 09A208 8009D208 40820014 */  bne       lbl_8009D21C
/* 09A20C 8009D20C 4BFFFBB5 */  bl        ICEnable
/* 09A210 8009D210 387F01AC */  addi      r3, r31, 0x1ac
/* 09A214 8009D214 4CC63182 */  crclr     cr1eq
/* 09A218 8009D218 48009645 */  bl        DBPrintf
lbl_8009D21C:
/* 09A21C 8009D21C 4BFFE079 */  bl        PPCMfhid0
/* 09A220 8009D220 54600462 */  rlwinm    r0, r3, 0, 17, 17
/* 09A224 8009D224 28000000 */  cmplwi    r0, 0x0
/* 09A228 8009D228 40820014 */  bne       lbl_8009D23C
/* 09A22C 8009D22C 4BFFFA59 */  bl        DCEnable
/* 09A230 8009D230 387F01C8 */  addi      r3, r31, 0x1c8
/* 09A234 8009D234 4CC63182 */  crclr     cr1eq
/* 09A238 8009D238 48009625 */  bl        DBPrintf
lbl_8009D23C:
/* 09A23C 8009D23C 4BFFE069 */  bl        PPCMfl2cr
/* 09A240 8009D240 54600000 */  clrrwi    r0, r3, 31
/* 09A244 8009D244 28000000 */  cmplwi    r0, 0x0
/* 09A248 8009D248 40820058 */  bne       lbl_8009D2A0
/* 09A24C 8009D24C 4BFFE039 */  bl        PPCMfmsr
/* 09A250 8009D250 7C7E1B78 */  mr        r30, r3
/* 09A254 8009D254 7C0004AC */  sync
/* 09A258 8009D258 38600030 */  li        r3, 0x30
/* 09A25C 8009D25C 4BFFE031 */  bl        PPCMtmsr
/* 09A260 8009D260 7C0004AC */  sync
/* 09A264 8009D264 7C0004AC */  sync
/* 09A268 8009D268 4BFFE03D */  bl        PPCMfl2cr
/* 09A26C 8009D26C 5463007E */  clrlwi    r3, r3, 1
/* 09A270 8009D270 4BFFE03D */  bl        PPCMtl2cr
/* 09A274 8009D274 7C0004AC */  sync
/* 09A278 8009D278 4BFFFD71 */  bl        L2GlobalInvalidate
/* 09A27C 8009D27C 7FC3F378 */  mr        r3, r30
/* 09A280 8009D280 4BFFE00D */  bl        PPCMtmsr
/* 09A284 8009D284 4BFFE021 */  bl        PPCMfl2cr
/* 09A288 8009D288 64608000 */  oris      r0, r3, 0x8000
/* 09A28C 8009D28C 540302D2 */  rlwinm    r3, r0, 0, 11, 9
/* 09A290 8009D290 4BFFE01D */  bl        PPCMtl2cr
/* 09A294 8009D294 387F01E4 */  addi      r3, r31, 0x1e4
/* 09A298 8009D298 4CC63182 */  crclr     cr1eq
/* 09A29C 8009D29C 480095C1 */  bl        DBPrintf
lbl_8009D2A0:
/* 09A2A0 8009D2A0 3C60800A */  lis       r3, DMAErrorHandler@ha
/* 09A2A4 8009D2A4 3883D080 */  addi      r4, r3, DMAErrorHandler@l
/* 09A2A8 8009D2A8 38600001 */  li        r3, 0x1
/* 09A2AC 8009D2AC 48000A45 */  bl        OSSetErrorHandler
/* 09A2B0 8009D2B0 387F01FC */  addi      r3, r31, 0x1fc
/* 09A2B4 8009D2B4 4CC63182 */  crclr     cr1eq
/* 09A2B8 8009D2B8 480095A5 */  bl        DBPrintf
/* 09A2BC 8009D2BC 80010014 */  lwz       r0, 0x14(r1)
/* 09A2C0 8009D2C0 83E1000C */  lwz       r31, 0xc(r1)
/* 09A2C4 8009D2C4 83C10008 */  lwz       r30, 0x8(r1)
/* 09A2C8 8009D2C8 38210010 */  addi      r1, r1, 0x10
/* 09A2CC 8009D2CC 7C0803A6 */  mtlr      r0
/* 09A2D0 8009D2D0 4E800020 */  blr

# 0x800F2108 - 0x800F2338
.section .data, "wa"

.balign 8

"@69":
	.string ">>> L2 INVALIDATE : SHOULD NEVER HAPPEN\n"

glabel gap_05_800F2131_data
.hidden gap_05_800F2131_data
	.byte 0x00, 0x00, 0x00

glabel D_800F2134
	.string "Machine check received\n"

glabel D_800F214C
	.string "HID2 = 0x%x   SRR1 = 0x%x\n"

glabel gap_05_800F2167_data
.hidden gap_05_800F2167_data
	.byte 0x00

glabel D_800F2168
	.string "Machine check was not DMA/locked cache related\n"

glabel D_800F2198
	.string "DMAErrorHandler(): An error occurred while processing DMA.\n"

glabel D_800F21D4
	.string "The following errors have been detected and cleared :\n"

glabel gap_05_800F220B_data
.hidden gap_05_800F220B_data
	.byte 0x00

glabel D_800F220C
	.string "\t- Requested a locked cache tag that was already in the cache\n"

glabel gap_05_800F224B_data
.hidden gap_05_800F224B_data
	.byte 0x00

glabel D_800F224C
	.string "\t- DMA attempted to access normal cache\n"

glabel gap_05_800F2275_data
.hidden gap_05_800F2275_data
	.byte 0x00, 0x00, 0x00

glabel D_800F2278
	.string "\t- DMA missed in data cache\n"

glabel gap_05_800F2295_data
.hidden gap_05_800F2295_data
	.byte 0x00, 0x00, 0x00

glabel D_800F2298
	.string "\t- DMA queue overflowed\n"

glabel gap_05_800F22B1_data
.hidden gap_05_800F22B1_data
	.byte 0x00, 0x00, 0x00

glabel D_800F22B4
	.string "L1 i-caches initialized\n"

glabel gap_05_800F22CD_data
.hidden gap_05_800F22CD_data
	.byte 0x00, 0x00, 0x00

glabel D_800F22D0
	.string "L1 d-caches initialized\n"

glabel gap_05_800F22E9_data
.hidden gap_05_800F22E9_data
	.byte 0x00, 0x00, 0x00

glabel D_800F22EC
	.string "L2 cache initialized\n"

glabel gap_05_800F2302_data
.hidden gap_05_800F2302_data
	.2byte 0x0000

glabel D_800F2304
	.string "Locked cache machine check handler installed\n"

glabel gap_05_800F2332_data
.hidden gap_05_800F2332_data
	.long 0x00000000
	.2byte 0x0000
