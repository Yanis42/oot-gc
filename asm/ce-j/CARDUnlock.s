# CARDUnlock.c
.include "macros.inc"

.section .text, "ax"

.balign 4

bitrev:
/* 0B6AA0 800BC040 38000008 */  li      r0, 8
/* 0B6AA4 800BC044 7C0903A6 */  mtctr   r0
/* 0B6AA8 800BC048 54660FFE */  srwi    r6, r3, 0x1f
/* 0B6AAC 800BC04C 39200000 */  li      r9, 0
/* 0B6AB0 800BC050 39400001 */  li      r10, 1
/* 0B6AB4 800BC054 38E00000 */  li      r7, 0
/* 0B6AB8 800BC058 39000000 */  li      r8, 0
/* 0B6ABC 800BC05C 38A00001 */  li      r5, 1
lbl_800BC060:
/* 0B6AC0 800BC060 2808000F */  cmplwi  r8, 0xf
/* 0B6AC4 800BC064 4081002C */  ble     lbl_800BC090
/* 0B6AC8 800BC068 2808001F */  cmplwi  r8, 0x1f
/* 0B6ACC 800BC06C 4082000C */  bne     lbl_800BC078
/* 0B6AD0 800BC070 7CE73378 */  or      r7, r7, r6
/* 0B6AD4 800BC074 48000038 */  b       lbl_800BC0AC
lbl_800BC078:
/* 0B6AD8 800BC078 7CA04030 */  slw     r0, r5, r8
/* 0B6ADC 800BC07C 7C600038 */  and     r0, r3, r0
/* 0B6AE0 800BC080 7C005430 */  srw     r0, r0, r10
/* 0B6AE4 800BC084 7CE70378 */  or      r7, r7, r0
/* 0B6AE8 800BC088 394A0002 */  addi    r10, r10, 2
/* 0B6AEC 800BC08C 48000020 */  b       lbl_800BC0AC
lbl_800BC090:
/* 0B6AF0 800BC090 7CA44030 */  slw     r4, r5, r8
/* 0B6AF4 800BC094 2008001F */  subfic  r0, r8, 0x1f
/* 0B6AF8 800BC098 7C090050 */  subf    r0, r9, r0
/* 0B6AFC 800BC09C 7C642038 */  and     r4, r3, r4
/* 0B6B00 800BC0A0 7C800030 */  slw     r0, r4, r0
/* 0B6B04 800BC0A4 7CE70378 */  or      r7, r7, r0
/* 0B6B08 800BC0A8 39290001 */  addi    r9, r9, 1
lbl_800BC0AC:
/* 0B6B0C 800BC0AC 39080001 */  addi    r8, r8, 1
/* 0B6B10 800BC0B0 2808000F */  cmplwi  r8, 0xf
/* 0B6B14 800BC0B4 4081002C */  ble     lbl_800BC0E0
/* 0B6B18 800BC0B8 2808001F */  cmplwi  r8, 0x1f
/* 0B6B1C 800BC0BC 4082000C */  bne     lbl_800BC0C8
/* 0B6B20 800BC0C0 7CE73378 */  or      r7, r7, r6
/* 0B6B24 800BC0C4 48000038 */  b       lbl_800BC0FC
lbl_800BC0C8:
/* 0B6B28 800BC0C8 7CA04030 */  slw     r0, r5, r8
/* 0B6B2C 800BC0CC 7C600038 */  and     r0, r3, r0
/* 0B6B30 800BC0D0 7C005430 */  srw     r0, r0, r10
/* 0B6B34 800BC0D4 7CE70378 */  or      r7, r7, r0
/* 0B6B38 800BC0D8 394A0002 */  addi    r10, r10, 2
/* 0B6B3C 800BC0DC 48000020 */  b       lbl_800BC0FC
lbl_800BC0E0:
/* 0B6B40 800BC0E0 7CA44030 */  slw     r4, r5, r8
/* 0B6B44 800BC0E4 2008001F */  subfic  r0, r8, 0x1f
/* 0B6B48 800BC0E8 7C090050 */  subf    r0, r9, r0
/* 0B6B4C 800BC0EC 7C642038 */  and     r4, r3, r4
/* 0B6B50 800BC0F0 7C800030 */  slw     r0, r4, r0
/* 0B6B54 800BC0F4 7CE70378 */  or      r7, r7, r0
/* 0B6B58 800BC0F8 39290001 */  addi    r9, r9, 1
lbl_800BC0FC:
/* 0B6B5C 800BC0FC 39080001 */  addi    r8, r8, 1
/* 0B6B60 800BC100 2808000F */  cmplwi  r8, 0xf
/* 0B6B64 800BC104 4081002C */  ble     lbl_800BC130
/* 0B6B68 800BC108 2808001F */  cmplwi  r8, 0x1f
/* 0B6B6C 800BC10C 4082000C */  bne     lbl_800BC118
/* 0B6B70 800BC110 7CE73378 */  or      r7, r7, r6
/* 0B6B74 800BC114 48000038 */  b       lbl_800BC14C
lbl_800BC118:
/* 0B6B78 800BC118 7CA04030 */  slw     r0, r5, r8
/* 0B6B7C 800BC11C 7C600038 */  and     r0, r3, r0
/* 0B6B80 800BC120 7C005430 */  srw     r0, r0, r10
/* 0B6B84 800BC124 7CE70378 */  or      r7, r7, r0
/* 0B6B88 800BC128 394A0002 */  addi    r10, r10, 2
/* 0B6B8C 800BC12C 48000020 */  b       lbl_800BC14C
lbl_800BC130:
/* 0B6B90 800BC130 7CA44030 */  slw     r4, r5, r8
/* 0B6B94 800BC134 2008001F */  subfic  r0, r8, 0x1f
/* 0B6B98 800BC138 7C090050 */  subf    r0, r9, r0
/* 0B6B9C 800BC13C 7C642038 */  and     r4, r3, r4
/* 0B6BA0 800BC140 7C800030 */  slw     r0, r4, r0
/* 0B6BA4 800BC144 7CE70378 */  or      r7, r7, r0
/* 0B6BA8 800BC148 39290001 */  addi    r9, r9, 1
lbl_800BC14C:
/* 0B6BAC 800BC14C 39080001 */  addi    r8, r8, 1
/* 0B6BB0 800BC150 2808000F */  cmplwi  r8, 0xf
/* 0B6BB4 800BC154 4081002C */  ble     lbl_800BC180
/* 0B6BB8 800BC158 2808001F */  cmplwi  r8, 0x1f
/* 0B6BBC 800BC15C 4082000C */  bne     lbl_800BC168
/* 0B6BC0 800BC160 7CE73378 */  or      r7, r7, r6
/* 0B6BC4 800BC164 48000038 */  b       lbl_800BC19C
lbl_800BC168:
/* 0B6BC8 800BC168 7CA04030 */  slw     r0, r5, r8
/* 0B6BCC 800BC16C 7C600038 */  and     r0, r3, r0
/* 0B6BD0 800BC170 7C005430 */  srw     r0, r0, r10
/* 0B6BD4 800BC174 7CE70378 */  or      r7, r7, r0
/* 0B6BD8 800BC178 394A0002 */  addi    r10, r10, 2
/* 0B6BDC 800BC17C 48000020 */  b       lbl_800BC19C
lbl_800BC180:
/* 0B6BE0 800BC180 7CA44030 */  slw     r4, r5, r8
/* 0B6BE4 800BC184 2008001F */  subfic  r0, r8, 0x1f
/* 0B6BE8 800BC188 7C090050 */  subf    r0, r9, r0
/* 0B6BEC 800BC18C 7C642038 */  and     r4, r3, r4
/* 0B6BF0 800BC190 7C800030 */  slw     r0, r4, r0
/* 0B6BF4 800BC194 7CE70378 */  or      r7, r7, r0
/* 0B6BF8 800BC198 39290001 */  addi    r9, r9, 1
lbl_800BC19C:
/* 0B6BFC 800BC19C 39080001 */  addi    r8, r8, 1
/* 0B6C00 800BC1A0 4200FEC0 */  bdnz    lbl_800BC060
/* 0B6C04 800BC1A4 7CE33B78 */  mr      r3, r7
/* 0B6C08 800BC1A8 4E800020 */  blr     

ReadArrayUnlock:
/* 0B6C0C 800BC1AC 7C0802A6 */  mflr    r0
/* 0B6C10 800BC1B0 90010004 */  stw     r0, 4(r1)
/* 0B6C14 800BC1B4 9421FFC0 */  stwu    r1, -0x40(r1)
/* 0B6C18 800BC1B8 BF410028 */  stmw    r26, 0x28(r1)
/* 0B6C1C 800BC1BC 3BA30000 */  addi    r29, r3, 0
/* 0B6C20 800BC1C0 3C608013 */  lis     r3, __CARDBlock@ha
/* 0B6C24 800BC1C4 380327D0 */  addi    r0, r3, __CARDBlock@l
/* 0B6C28 800BC1C8 1D1D0110 */  mulli   r8, r29, 0x110
/* 0B6C2C 800BC1CC 3B440000 */  addi    r26, r4, 0
/* 0B6C30 800BC1D0 3BC50000 */  addi    r30, r5, 0
/* 0B6C34 800BC1D4 3BE60000 */  addi    r31, r6, 0
/* 0B6C38 800BC1D8 3B670000 */  addi    r27, r7, 0
/* 0B6C3C 800BC1DC 387D0000 */  addi    r3, r29, 0
/* 0B6C40 800BC1E0 7F804214 */  add     r28, r0, r8
/* 0B6C44 800BC1E4 38800000 */  li      r4, 0
/* 0B6C48 800BC1E8 38A00004 */  li      r5, 4
/* 0B6C4C 800BC1EC 4BFE71D5 */  bl      EXISelect
/* 0B6C50 800BC1F0 2C030000 */  cmpwi   r3, 0
/* 0B6C54 800BC1F4 4082000C */  bne     lbl_800BC200
/* 0B6C58 800BC1F8 3860FFFD */  li      r3, -3
/* 0B6C5C 800BC1FC 480000E0 */  b       lbl_800BC2DC
lbl_800BC200:
/* 0B6C60 800BC200 575A0026 */  rlwinm  r26, r26, 0, 0, 0x13
/* 0B6C64 800BC204 3861001C */  addi    r3, r1, 0x1c
/* 0B6C68 800BC208 38800000 */  li      r4, 0
/* 0B6C6C 800BC20C 38A00005 */  li      r5, 5
/* 0B6C70 800BC210 4BF491C1 */  bl      memset
/* 0B6C74 800BC214 38000052 */  li      r0, 0x52
/* 0B6C78 800BC218 2C1B0000 */  cmpwi   r27, 0
/* 0B6C7C 800BC21C 9801001C */  stb     r0, 0x1c(r1)
/* 0B6C80 800BC220 40820028 */  bne     lbl_800BC248
/* 0B6C84 800BC224 57401FBE */  rlwinm  r0, r26, 3, 0x1e, 0x1f
/* 0B6C88 800BC228 9801001D */  stb     r0, 0x1d(r1)
/* 0B6C8C 800BC22C 57405E3E */  rlwinm  r0, r26, 0xb, 0x18, 0x1f
/* 0B6C90 800BC230 57436FBE */  rlwinm  r3, r26, 0xd, 0x1e, 0x1f
/* 0B6C94 800BC234 9801001E */  stb     r0, 0x1e(r1)
/* 0B6C98 800BC238 5740A67E */  rlwinm  r0, r26, 0x14, 0x19, 0x1f
/* 0B6C9C 800BC23C 9861001F */  stb     r3, 0x1f(r1)
/* 0B6CA0 800BC240 98010020 */  stb     r0, 0x20(r1)
/* 0B6CA4 800BC244 48000014 */  b       lbl_800BC258
lbl_800BC248:
/* 0B6CA8 800BC248 5740463E */  srwi    r0, r26, 0x18
/* 0B6CAC 800BC24C 9801001D */  stb     r0, 0x1d(r1)
/* 0B6CB0 800BC250 5740863E */  rlwinm  r0, r26, 0x10, 0x18, 0x1f
/* 0B6CB4 800BC254 9801001E */  stb     r0, 0x1e(r1)
lbl_800BC258:
/* 0B6CB8 800BC258 387D0000 */  addi    r3, r29, 0
/* 0B6CBC 800BC25C 3881001C */  addi    r4, r1, 0x1c
/* 0B6CC0 800BC260 38A00005 */  li      r5, 5
/* 0B6CC4 800BC264 38C00001 */  li      r6, 1
/* 0B6CC8 800BC268 4BFE684D */  bl      EXIImmEx
/* 0B6CCC 800BC26C 809C0080 */  lwz     r4, 0x80(r28)
/* 0B6CD0 800BC270 7C600034 */  cntlzw  r0, r3
/* 0B6CD4 800BC274 80BC0014 */  lwz     r5, 0x14(r28)
/* 0B6CD8 800BC278 387D0000 */  addi    r3, r29, 0
/* 0B6CDC 800BC27C 541CD97E */  srwi    r28, r0, 5
/* 0B6CE0 800BC280 38840200 */  addi    r4, r4, 0x200
/* 0B6CE4 800BC284 38C00001 */  li      r6, 1
/* 0B6CE8 800BC288 4BFE682D */  bl      EXIImmEx
/* 0B6CEC 800BC28C 7C600034 */  cntlzw  r0, r3
/* 0B6CF0 800BC290 5400D97E */  srwi    r0, r0, 5
/* 0B6CF4 800BC294 387D0000 */  addi    r3, r29, 0
/* 0B6CF8 800BC298 389E0000 */  addi    r4, r30, 0
/* 0B6CFC 800BC29C 38BF0000 */  addi    r5, r31, 0
/* 0B6D00 800BC2A0 7F9C0378 */  or      r28, r28, r0
/* 0B6D04 800BC2A4 38C00000 */  li      r6, 0
/* 0B6D08 800BC2A8 4BFE680D */  bl      EXIImmEx
/* 0B6D0C 800BC2AC 7C600034 */  cntlzw  r0, r3
/* 0B6D10 800BC2B0 5400D97E */  srwi    r0, r0, 5
/* 0B6D14 800BC2B4 387D0000 */  addi    r3, r29, 0
/* 0B6D18 800BC2B8 7F9C0378 */  or      r28, r28, r0
/* 0B6D1C 800BC2BC 4BFE7231 */  bl      EXIDeselect
/* 0B6D20 800BC2C0 7C600034 */  cntlzw  r0, r3
/* 0B6D24 800BC2C4 5400D97E */  srwi    r0, r0, 5
/* 0B6D28 800BC2C8 7F9C0379 */  or.     r28, r28, r0
/* 0B6D2C 800BC2CC 4182000C */  beq     lbl_800BC2D8
/* 0B6D30 800BC2D0 3860FFFD */  li      r3, -3
/* 0B6D34 800BC2D4 48000008 */  b       lbl_800BC2DC
lbl_800BC2D8:
/* 0B6D38 800BC2D8 38600000 */  li      r3, 0
lbl_800BC2DC:
/* 0B6D3C 800BC2DC BB410028 */  lmw     r26, 0x28(r1)
/* 0B6D40 800BC2E0 80010044 */  lwz     r0, 0x44(r1)
/* 0B6D44 800BC2E4 38210040 */  addi    r1, r1, 0x40
/* 0B6D48 800BC2E8 7C0803A6 */  mtlr    r0
/* 0B6D4C 800BC2EC 4E800020 */  blr     

DummyLen:
/* 0B6D50 800BC2F0 7C0802A6 */  mflr    r0
/* 0B6D54 800BC2F4 90010004 */  stw     r0, 4(r1)
/* 0B6D58 800BC2F8 9421FFD8 */  stwu    r1, -0x28(r1)
/* 0B6D5C 800BC2FC 93E10024 */  stw     r31, 0x24(r1)
/* 0B6D60 800BC300 93C10020 */  stw     r30, 0x20(r1)
/* 0B6D64 800BC304 3BC00001 */  li      r30, 1
/* 0B6D68 800BC308 93A1001C */  stw     r29, 0x1c(r1)
/* 0B6D6C 800BC30C 3BA00000 */  li      r29, 0
/* 0B6D70 800BC310 4BFE5FB1 */  bl      OSGetTick
/* 0B6D74 800BC314 906D8870 */  stw     r3, next@sda21(r13)
/* 0B6D78 800BC318 3C6041C6 */  lis     r3, 0x41c6
/* 0B6D7C 800BC31C 3BE34E6D */  addi    r31, r3, 0x4e6d
/* 0B6D80 800BC320 800D8870 */  lwz     r0, next@sda21(r13)
/* 0B6D84 800BC324 7C60F9D6 */  mullw   r3, r0, r31
/* 0B6D88 800BC328 38033039 */  addi    r0, r3, 0x3039
/* 0B6D8C 800BC32C 900D8870 */  stw     r0, next@sda21(r13)
/* 0B6D90 800BC330 800D8870 */  lwz     r0, next@sda21(r13)
/* 0B6D94 800BC334 540386FE */  rlwinm  r3, r0, 0x10, 0x1b, 0x1f
/* 0B6D98 800BC338 38630001 */  addi    r3, r3, 1
/* 0B6D9C 800BC33C 48000040 */  b       lbl_800BC37C
lbl_800BC340:
/* 0B6DA0 800BC340 4BFE5F81 */  bl      OSGetTick
/* 0B6DA4 800BC344 7C60F030 */  slw     r0, r3, r30
/* 0B6DA8 800BC348 3BDE0001 */  addi    r30, r30, 1
/* 0B6DAC 800BC34C 281E0010 */  cmplwi  r30, 0x10
/* 0B6DB0 800BC350 40810008 */  ble     lbl_800BC358
/* 0B6DB4 800BC354 3BC00001 */  li      r30, 1
lbl_800BC358:
/* 0B6DB8 800BC358 900D8870 */  stw     r0, next@sda21(r13)
/* 0B6DBC 800BC35C 3BBD0001 */  addi    r29, r29, 1
/* 0B6DC0 800BC360 800D8870 */  lwz     r0, next@sda21(r13)
/* 0B6DC4 800BC364 7C60F9D6 */  mullw   r3, r0, r31
/* 0B6DC8 800BC368 38033039 */  addi    r0, r3, 0x3039
/* 0B6DCC 800BC36C 900D8870 */  stw     r0, next@sda21(r13)
/* 0B6DD0 800BC370 800D8870 */  lwz     r0, next@sda21(r13)
/* 0B6DD4 800BC374 540386FE */  rlwinm  r3, r0, 0x10, 0x1b, 0x1f
/* 0B6DD8 800BC378 38630001 */  addi    r3, r3, 1
lbl_800BC37C:
/* 0B6DDC 800BC37C 2C030004 */  cmpwi   r3, 4
/* 0B6DE0 800BC380 4080000C */  bge     lbl_800BC38C
/* 0B6DE4 800BC384 281D000A */  cmplwi  r29, 0xa
/* 0B6DE8 800BC388 4180FFB8 */  blt     lbl_800BC340
lbl_800BC38C:
/* 0B6DEC 800BC38C 2C030004 */  cmpwi   r3, 4
/* 0B6DF0 800BC390 40800008 */  bge     lbl_800BC398
/* 0B6DF4 800BC394 38600004 */  li      r3, 4
lbl_800BC398:
/* 0B6DF8 800BC398 8001002C */  lwz     r0, 0x2c(r1)
/* 0B6DFC 800BC39C 83E10024 */  lwz     r31, 0x24(r1)
/* 0B6E00 800BC3A0 83C10020 */  lwz     r30, 0x20(r1)
/* 0B6E04 800BC3A4 83A1001C */  lwz     r29, 0x1c(r1)
/* 0B6E08 800BC3A8 38210028 */  addi    r1, r1, 0x28
/* 0B6E0C 800BC3AC 7C0803A6 */  mtlr    r0
/* 0B6E10 800BC3B0 4E800020 */  blr     

glabel __CARDUnlock
/* 0B6E14 800BC3B4 7C0802A6 */  mflr    r0
/* 0B6E18 800BC3B8 90010004 */  stw     r0, 4(r1)
/* 0B6E1C 800BC3BC 9421FEE0 */  stwu    r1, -0x120(r1)
/* 0B6E20 800BC3C0 BEC100F8 */  stmw    r22, 0xf8(r1)
/* 0B6E24 800BC3C4 3B030000 */  addi    r24, r3, 0
/* 0B6E28 800BC3C8 3C608013 */  lis     r3, __CARDBlock@ha
/* 0B6E2C 800BC3CC 1CB80110 */  mulli   r5, r24, 0x110
/* 0B6E30 800BC3D0 380327D0 */  addi    r0, r3, __CARDBlock@l
/* 0B6E34 800BC3D4 7FE02A14 */  add     r31, r0, r5
/* 0B6E38 800BC3D8 3AE40000 */  addi    r23, r4, 0
/* 0B6E3C 800BC3DC 3BDF0030 */  addi    r30, r31, 0x30
/* 0B6E40 800BC3E0 807F0080 */  lwz     r3, 0x80(r31)
/* 0B6E44 800BC3E4 3803002F */  addi    r0, r3, 0x2f
/* 0B6E48 800BC3E8 541C0034 */  rlwinm  r28, r0, 0, 0, 0x1a
/* 0B6E4C 800BC3EC 3BA30000 */  addi    r29, r3, 0
/* 0B6E50 800BC3F0 3ADC0020 */  addi    r22, r28, 0x20
/* 0B6E54 800BC3F4 4BFE5ECD */  bl      OSGetTick
/* 0B6E58 800BC3F8 906D8870 */  stw     r3, next@sda21(r13)
/* 0B6E5C 800BC3FC 3C6041C6 */  lis     r3, 0x41c6
/* 0B6E60 800BC400 3CA07FED */  lis     r5, 0x7fed
/* 0B6E64 800BC404 808D8870 */  lwz     r4, next@sda21(r13)
/* 0B6E68 800BC408 38034E6D */  addi    r0, r3, 0x4e6d
/* 0B6E6C 800BC40C 3B258000 */  addi    r25, r5, -32768
/* 0B6E70 800BC410 7C6401D6 */  mullw   r3, r4, r0
/* 0B6E74 800BC414 38033039 */  addi    r0, r3, 0x3039
/* 0B6E78 800BC418 900D8870 */  stw     r0, next@sda21(r13)
/* 0B6E7C 800BC41C 800D8870 */  lwz     r0, next@sda21(r13)
/* 0B6E80 800BC420 5400847E */  rlwinm  r0, r0, 0x10, 0x11, 0x1f
/* 0B6E84 800BC424 7F390378 */  or      r25, r25, r0
/* 0B6E88 800BC428 57390026 */  rlwinm  r25, r25, 0, 0, 0x13
/* 0B6E8C 800BC42C 4BFFFEC5 */  bl      DummyLen
/* 0B6E90 800BC430 3B430000 */  addi    r26, r3, 0
/* 0B6E94 800BC434 38DA0000 */  addi    r6, r26, 0
/* 0B6E98 800BC438 38780000 */  addi    r3, r24, 0
/* 0B6E9C 800BC43C 38990000 */  addi    r4, r25, 0
/* 0B6EA0 800BC440 38A100A4 */  addi    r5, r1, 0xa4
/* 0B6EA4 800BC444 38E00000 */  li      r7, 0
/* 0B6EA8 800BC448 4BFFFD65 */  bl      ReadArrayUnlock
/* 0B6EAC 800BC44C 2C030000 */  cmpwi   r3, 0
/* 0B6EB0 800BC450 4080000C */  bge     lbl_800BC45C
/* 0B6EB4 800BC454 3860FFFD */  li      r3, -3
/* 0B6EB8 800BC458 48000AA0 */  b       lbl_800BCEF8
lbl_800BC45C:
/* 0B6EBC 800BC45C 57431838 */  slwi    r3, r26, 3
/* 0B6EC0 800BC460 38830001 */  addi    r4, r3, 1
/* 0B6EC4 800BC464 28040000 */  cmplwi  r4, 0
/* 0B6EC8 800BC468 38600000 */  li      r3, 0
/* 0B6ECC 800BC46C 40810168 */  ble     lbl_800BC5D4
/* 0B6ED0 800BC470 28040008 */  cmplwi  r4, 8
/* 0B6ED4 800BC474 38A4FFF8 */  addi    r5, r4, -8
/* 0B6ED8 800BC478 40810124 */  ble     lbl_800BC59C
/* 0B6EDC 800BC47C 38050007 */  addi    r0, r5, 7
/* 0B6EE0 800BC480 5400E8FE */  srwi    r0, r0, 3
/* 0B6EE4 800BC484 28050000 */  cmplwi  r5, 0
/* 0B6EE8 800BC488 7C0903A6 */  mtctr   r0
/* 0B6EEC 800BC48C 40810110 */  ble     lbl_800BC59C
lbl_800BC490:
/* 0B6EF0 800BC490 5720C9FE */  srwi    r0, r25, 7
/* 0B6EF4 800BC494 57258BFE */  srwi    r5, r25, 0xf
/* 0B6EF8 800BC498 7F200278 */  xor     r0, r25, r0
/* 0B6EFC 800BC49C 7CA00278 */  xor     r0, r5, r0
/* 0B6F00 800BC4A0 57264DFE */  srwi    r6, r25, 0x17
/* 0B6F04 800BC4A4 7CC00238 */  eqv     r0, r6, r0
/* 0B6F08 800BC4A8 5725F87E */  srwi    r5, r25, 1
/* 0B6F0C 800BC4AC 5400F042 */  rlwinm  r0, r0, 0x1e, 1, 1
/* 0B6F10 800BC4B0 7CA70378 */  or      r7, r5, r0
/* 0B6F14 800BC4B4 54E0C9FE */  srwi    r0, r7, 7
/* 0B6F18 800BC4B8 54E58BFE */  srwi    r5, r7, 0xf
/* 0B6F1C 800BC4BC 7CE00278 */  xor     r0, r7, r0
/* 0B6F20 800BC4C0 54E64DFE */  srwi    r6, r7, 0x17
/* 0B6F24 800BC4C4 7CA00278 */  xor     r0, r5, r0
/* 0B6F28 800BC4C8 7CC00238 */  eqv     r0, r6, r0
/* 0B6F2C 800BC4CC 5408F042 */  rlwinm  r8, r0, 0x1e, 1, 1
/* 0B6F30 800BC4D0 50E8F8BE */  rlwimi  r8, r7, 0x1f, 2, 0x1f
/* 0B6F34 800BC4D4 5500C9FE */  srwi    r0, r8, 7
/* 0B6F38 800BC4D8 55058BFE */  srwi    r5, r8, 0xf
/* 0B6F3C 800BC4DC 7D000278 */  xor     r0, r8, r0
/* 0B6F40 800BC4E0 55064DFE */  srwi    r6, r8, 0x17
/* 0B6F44 800BC4E4 7CA00278 */  xor     r0, r5, r0
/* 0B6F48 800BC4E8 7CC00238 */  eqv     r0, r6, r0
/* 0B6F4C 800BC4EC 5407F042 */  rlwinm  r7, r0, 0x1e, 1, 1
/* 0B6F50 800BC4F0 5107F8BE */  rlwimi  r7, r8, 0x1f, 2, 0x1f
/* 0B6F54 800BC4F4 54E0C9FE */  srwi    r0, r7, 7
/* 0B6F58 800BC4F8 54E58BFE */  srwi    r5, r7, 0xf
/* 0B6F5C 800BC4FC 7CE00278 */  xor     r0, r7, r0
/* 0B6F60 800BC500 54E64DFE */  srwi    r6, r7, 0x17
/* 0B6F64 800BC504 7CA00278 */  xor     r0, r5, r0
/* 0B6F68 800BC508 7CC00238 */  eqv     r0, r6, r0
/* 0B6F6C 800BC50C 5408F042 */  rlwinm  r8, r0, 0x1e, 1, 1
/* 0B6F70 800BC510 50E8F8BE */  rlwimi  r8, r7, 0x1f, 2, 0x1f
/* 0B6F74 800BC514 5500C9FE */  srwi    r0, r8, 7
/* 0B6F78 800BC518 55058BFE */  srwi    r5, r8, 0xf
/* 0B6F7C 800BC51C 7D000278 */  xor     r0, r8, r0
/* 0B6F80 800BC520 55064DFE */  srwi    r6, r8, 0x17
/* 0B6F84 800BC524 7CA00278 */  xor     r0, r5, r0
/* 0B6F88 800BC528 7CC00238 */  eqv     r0, r6, r0
/* 0B6F8C 800BC52C 5407F042 */  rlwinm  r7, r0, 0x1e, 1, 1
/* 0B6F90 800BC530 5107F8BE */  rlwimi  r7, r8, 0x1f, 2, 0x1f
/* 0B6F94 800BC534 54E0C9FE */  srwi    r0, r7, 7
/* 0B6F98 800BC538 54E58BFE */  srwi    r5, r7, 0xf
/* 0B6F9C 800BC53C 7CE00278 */  xor     r0, r7, r0
/* 0B6FA0 800BC540 54E64DFE */  srwi    r6, r7, 0x17
/* 0B6FA4 800BC544 7CA00278 */  xor     r0, r5, r0
/* 0B6FA8 800BC548 7CC00238 */  eqv     r0, r6, r0
/* 0B6FAC 800BC54C 5408F042 */  rlwinm  r8, r0, 0x1e, 1, 1
/* 0B6FB0 800BC550 50E8F8BE */  rlwimi  r8, r7, 0x1f, 2, 0x1f
/* 0B6FB4 800BC554 5500C9FE */  srwi    r0, r8, 7
/* 0B6FB8 800BC558 55058BFE */  srwi    r5, r8, 0xf
/* 0B6FBC 800BC55C 7D000278 */  xor     r0, r8, r0
/* 0B6FC0 800BC560 55064DFE */  srwi    r6, r8, 0x17
/* 0B6FC4 800BC564 7CA00278 */  xor     r0, r5, r0
/* 0B6FC8 800BC568 7CC00238 */  eqv     r0, r6, r0
/* 0B6FCC 800BC56C 5407F042 */  rlwinm  r7, r0, 0x1e, 1, 1
/* 0B6FD0 800BC570 5107F8BE */  rlwimi  r7, r8, 0x1f, 2, 0x1f
/* 0B6FD4 800BC574 54E0C9FE */  srwi    r0, r7, 7
/* 0B6FD8 800BC578 54E58BFE */  srwi    r5, r7, 0xf
/* 0B6FDC 800BC57C 7CE00278 */  xor     r0, r7, r0
/* 0B6FE0 800BC580 54E64DFE */  srwi    r6, r7, 0x17
/* 0B6FE4 800BC584 7CA00278 */  xor     r0, r5, r0
/* 0B6FE8 800BC588 7CC00238 */  eqv     r0, r6, r0
/* 0B6FEC 800BC58C 5419F042 */  rlwinm  r25, r0, 0x1e, 1, 1
/* 0B6FF0 800BC590 50F9F8BE */  rlwimi  r25, r7, 0x1f, 2, 0x1f
/* 0B6FF4 800BC594 38630008 */  addi    r3, r3, 8
/* 0B6FF8 800BC598 4200FEF8 */  bdnz    lbl_800BC490
lbl_800BC59C:
/* 0B6FFC 800BC59C 7C032050 */  subf    r0, r3, r4
/* 0B7000 800BC5A0 7C032040 */  cmplw   r3, r4
/* 0B7004 800BC5A4 7C0903A6 */  mtctr   r0
/* 0B7008 800BC5A8 4080002C */  bge     lbl_800BC5D4
lbl_800BC5AC:
/* 0B700C 800BC5AC 5720C9FE */  srwi    r0, r25, 7
/* 0B7010 800BC5B0 57238BFE */  srwi    r3, r25, 0xf
/* 0B7014 800BC5B4 7F200278 */  xor     r0, r25, r0
/* 0B7018 800BC5B8 57244DFE */  srwi    r4, r25, 0x17
/* 0B701C 800BC5BC 7C600278 */  xor     r0, r3, r0
/* 0B7020 800BC5C0 7C800238 */  eqv     r0, r4, r0
/* 0B7024 800BC5C4 5723F87E */  srwi    r3, r25, 1
/* 0B7028 800BC5C8 5400F042 */  rlwinm  r0, r0, 0x1e, 1, 1
/* 0B702C 800BC5CC 7C790378 */  or      r25, r3, r0
/* 0B7030 800BC5D0 4200FFDC */  bdnz    lbl_800BC5AC
lbl_800BC5D4:
/* 0B7034 800BC5D4 5720C9FE */  srwi    r0, r25, 7
/* 0B7038 800BC5D8 57238BFE */  srwi    r3, r25, 0xf
/* 0B703C 800BC5DC 7F200278 */  xor     r0, r25, r0
/* 0B7040 800BC5E0 57244DFE */  srwi    r4, r25, 0x17
/* 0B7044 800BC5E4 7C600278 */  xor     r0, r3, r0
/* 0B7048 800BC5E8 7C800238 */  eqv     r0, r4, r0
/* 0B704C 800BC5EC 5400F800 */  slwi    r0, r0, 0x1f
/* 0B7050 800BC5F0 7F200378 */  or      r0, r25, r0
/* 0B7054 800BC5F4 901F002C */  stw     r0, 0x2c(r31)
/* 0B7058 800BC5F8 807F002C */  lwz     r3, 0x2c(r31)
/* 0B705C 800BC5FC 4BFFFA45 */  bl      bitrev
/* 0B7060 800BC600 907F002C */  stw     r3, 0x2c(r31)
/* 0B7064 800BC604 4BFFFCED */  bl      DummyLen
/* 0B7068 800BC608 3B630000 */  addi    r27, r3, 0
/* 0B706C 800BC60C 38DB0014 */  addi    r6, r27, 0x14
/* 0B7070 800BC610 38780000 */  addi    r3, r24, 0
/* 0B7074 800BC614 38A100A4 */  addi    r5, r1, 0xa4
/* 0B7078 800BC618 38800000 */  li      r4, 0
/* 0B707C 800BC61C 38E00001 */  li      r7, 1
/* 0B7080 800BC620 4BFFFB8D */  bl      ReadArrayUnlock
/* 0B7084 800BC624 2C030000 */  cmpwi   r3, 0
/* 0B7088 800BC628 4080000C */  bge     lbl_800BC634
/* 0B708C 800BC62C 3860FFFD */  li      r3, -3
/* 0B7090 800BC630 480008C8 */  b       lbl_800BCEF8
lbl_800BC634:
/* 0B7094 800BC634 38600004 */  li      r3, 4
/* 0B7098 800BC638 80FF002C */  lwz     r7, 0x2c(r31)
/* 0B709C 800BC63C 832100A4 */  lwz     r25, 0xa4(r1)
/* 0B70A0 800BC640 7C6903A6 */  mtctr   r3
/* 0B70A4 800BC644 834100A8 */  lwz     r26, 0xa8(r1)
/* 0B70A8 800BC648 830100AC */  lwz     r24, 0xac(r1)
/* 0B70AC 800BC64C 7F393A78 */  xor     r25, r25, r7
/* 0B70B0 800BC650 800100B0 */  lwz     r0, 0xb0(r1)
/* 0B70B4 800BC654 80A100B4 */  lwz     r5, 0xb4(r1)
lbl_800BC658:
/* 0B70B8 800BC658 54E33830 */  slwi    r3, r7, 7
/* 0B70BC 800BC65C 54E47820 */  slwi    r4, r7, 0xf
/* 0B70C0 800BC660 7CE31A78 */  xor     r3, r7, r3
/* 0B70C4 800BC664 7C831A78 */  xor     r3, r4, r3
/* 0B70C8 800BC668 54E6B810 */  slwi    r6, r7, 0x17
/* 0B70CC 800BC66C 7CC31A38 */  eqv     r3, r6, r3
/* 0B70D0 800BC670 54E4083C */  slwi    r4, r7, 1
/* 0B70D4 800BC674 546317BC */  rlwinm  r3, r3, 2, 0x1e, 0x1e
/* 0B70D8 800BC678 7C871B78 */  or      r7, r4, r3
/* 0B70DC 800BC67C 54E33830 */  slwi    r3, r7, 7
/* 0B70E0 800BC680 54E47820 */  slwi    r4, r7, 0xf
/* 0B70E4 800BC684 7CE31A78 */  xor     r3, r7, r3
/* 0B70E8 800BC688 54E6B810 */  slwi    r6, r7, 0x17
/* 0B70EC 800BC68C 7C831A78 */  xor     r3, r4, r3
/* 0B70F0 800BC690 7CC31A38 */  eqv     r3, r6, r3
/* 0B70F4 800BC694 546917BC */  rlwinm  r9, r3, 2, 0x1e, 0x1e
/* 0B70F8 800BC698 50E9083A */  rlwimi  r9, r7, 1, 0, 0x1d
/* 0B70FC 800BC69C 55233830 */  slwi    r3, r9, 7
/* 0B7100 800BC6A0 55247820 */  slwi    r4, r9, 0xf
/* 0B7104 800BC6A4 7D231A78 */  xor     r3, r9, r3
/* 0B7108 800BC6A8 5526B810 */  slwi    r6, r9, 0x17
/* 0B710C 800BC6AC 7C831A78 */  xor     r3, r4, r3
/* 0B7110 800BC6B0 7CC31A38 */  eqv     r3, r6, r3
/* 0B7114 800BC6B4 546817BC */  rlwinm  r8, r3, 2, 0x1e, 0x1e
/* 0B7118 800BC6B8 5128083A */  rlwimi  r8, r9, 1, 0, 0x1d
/* 0B711C 800BC6BC 55033830 */  slwi    r3, r8, 7
/* 0B7120 800BC6C0 55047820 */  slwi    r4, r8, 0xf
/* 0B7124 800BC6C4 7D031A78 */  xor     r3, r8, r3
/* 0B7128 800BC6C8 5506B810 */  slwi    r6, r8, 0x17
/* 0B712C 800BC6CC 7C831A78 */  xor     r3, r4, r3
/* 0B7130 800BC6D0 7CC31A38 */  eqv     r3, r6, r3
/* 0B7134 800BC6D4 546717BC */  rlwinm  r7, r3, 2, 0x1e, 0x1e
/* 0B7138 800BC6D8 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B713C 800BC6DC 54E33830 */  slwi    r3, r7, 7
/* 0B7140 800BC6E0 54E47820 */  slwi    r4, r7, 0xf
/* 0B7144 800BC6E4 7CE31A78 */  xor     r3, r7, r3
/* 0B7148 800BC6E8 54E6B810 */  slwi    r6, r7, 0x17
/* 0B714C 800BC6EC 7C831A78 */  xor     r3, r4, r3
/* 0B7150 800BC6F0 7CC31A38 */  eqv     r3, r6, r3
/* 0B7154 800BC6F4 546817BC */  rlwinm  r8, r3, 2, 0x1e, 0x1e
/* 0B7158 800BC6F8 50E8083A */  rlwimi  r8, r7, 1, 0, 0x1d
/* 0B715C 800BC6FC 55033830 */  slwi    r3, r8, 7
/* 0B7160 800BC700 55047820 */  slwi    r4, r8, 0xf
/* 0B7164 800BC704 7D031A78 */  xor     r3, r8, r3
/* 0B7168 800BC708 5506B810 */  slwi    r6, r8, 0x17
/* 0B716C 800BC70C 7C831A78 */  xor     r3, r4, r3
/* 0B7170 800BC710 7CC31A38 */  eqv     r3, r6, r3
/* 0B7174 800BC714 546717BC */  rlwinm  r7, r3, 2, 0x1e, 0x1e
/* 0B7178 800BC718 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B717C 800BC71C 54E33830 */  slwi    r3, r7, 7
/* 0B7180 800BC720 54E47820 */  slwi    r4, r7, 0xf
/* 0B7184 800BC724 7CE31A78 */  xor     r3, r7, r3
/* 0B7188 800BC728 54E6B810 */  slwi    r6, r7, 0x17
/* 0B718C 800BC72C 7C831A78 */  xor     r3, r4, r3
/* 0B7190 800BC730 7CC31A38 */  eqv     r3, r6, r3
/* 0B7194 800BC734 546817BC */  rlwinm  r8, r3, 2, 0x1e, 0x1e
/* 0B7198 800BC738 50E8083A */  rlwimi  r8, r7, 1, 0, 0x1d
/* 0B719C 800BC73C 55033830 */  slwi    r3, r8, 7
/* 0B71A0 800BC740 55047820 */  slwi    r4, r8, 0xf
/* 0B71A4 800BC744 7D031A78 */  xor     r3, r8, r3
/* 0B71A8 800BC748 5506B810 */  slwi    r6, r8, 0x17
/* 0B71AC 800BC74C 7C831A78 */  xor     r3, r4, r3
/* 0B71B0 800BC750 7CC31A38 */  eqv     r3, r6, r3
/* 0B71B4 800BC754 546717BC */  rlwinm  r7, r3, 2, 0x1e, 0x1e
/* 0B71B8 800BC758 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B71BC 800BC75C 4200FEFC */  bdnz    lbl_800BC658
/* 0B71C0 800BC760 54E33830 */  slwi    r3, r7, 7
/* 0B71C4 800BC764 54E47820 */  slwi    r4, r7, 0xf
/* 0B71C8 800BC768 7CE31A78 */  xor     r3, r7, r3
/* 0B71CC 800BC76C 54E6B810 */  slwi    r6, r7, 0x17
/* 0B71D0 800BC770 7C831A78 */  xor     r3, r4, r3
/* 0B71D4 800BC774 7CC31A38 */  eqv     r3, r6, r3
/* 0B71D8 800BC778 54630FFE */  srwi    r3, r3, 0x1f
/* 0B71DC 800BC77C 7CE31B78 */  or      r3, r7, r3
/* 0B71E0 800BC780 907F002C */  stw     r3, 0x2c(r31)
/* 0B71E4 800BC784 38600004 */  li      r3, 4
/* 0B71E8 800BC788 7C6903A6 */  mtctr   r3
/* 0B71EC 800BC78C 80FF002C */  lwz     r7, 0x2c(r31)
/* 0B71F0 800BC790 7F5A3A78 */  xor     r26, r26, r7
lbl_800BC794:
/* 0B71F4 800BC794 54E33830 */  slwi    r3, r7, 7
/* 0B71F8 800BC798 54E47820 */  slwi    r4, r7, 0xf
/* 0B71FC 800BC79C 7CE31A78 */  xor     r3, r7, r3
/* 0B7200 800BC7A0 7C831A78 */  xor     r3, r4, r3
/* 0B7204 800BC7A4 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7208 800BC7A8 7CC31A38 */  eqv     r3, r6, r3
/* 0B720C 800BC7AC 54E4083C */  slwi    r4, r7, 1
/* 0B7210 800BC7B0 546317BC */  rlwinm  r3, r3, 2, 0x1e, 0x1e
/* 0B7214 800BC7B4 7C871B78 */  or      r7, r4, r3
/* 0B7218 800BC7B8 54E33830 */  slwi    r3, r7, 7
/* 0B721C 800BC7BC 54E47820 */  slwi    r4, r7, 0xf
/* 0B7220 800BC7C0 7CE31A78 */  xor     r3, r7, r3
/* 0B7224 800BC7C4 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7228 800BC7C8 7C831A78 */  xor     r3, r4, r3
/* 0B722C 800BC7CC 7CC31A38 */  eqv     r3, r6, r3
/* 0B7230 800BC7D0 546917BC */  rlwinm  r9, r3, 2, 0x1e, 0x1e
/* 0B7234 800BC7D4 50E9083A */  rlwimi  r9, r7, 1, 0, 0x1d
/* 0B7238 800BC7D8 55233830 */  slwi    r3, r9, 7
/* 0B723C 800BC7DC 55247820 */  slwi    r4, r9, 0xf
/* 0B7240 800BC7E0 7D231A78 */  xor     r3, r9, r3
/* 0B7244 800BC7E4 5526B810 */  slwi    r6, r9, 0x17
/* 0B7248 800BC7E8 7C831A78 */  xor     r3, r4, r3
/* 0B724C 800BC7EC 7CC31A38 */  eqv     r3, r6, r3
/* 0B7250 800BC7F0 546817BC */  rlwinm  r8, r3, 2, 0x1e, 0x1e
/* 0B7254 800BC7F4 5128083A */  rlwimi  r8, r9, 1, 0, 0x1d
/* 0B7258 800BC7F8 55033830 */  slwi    r3, r8, 7
/* 0B725C 800BC7FC 55047820 */  slwi    r4, r8, 0xf
/* 0B7260 800BC800 7D031A78 */  xor     r3, r8, r3
/* 0B7264 800BC804 5506B810 */  slwi    r6, r8, 0x17
/* 0B7268 800BC808 7C831A78 */  xor     r3, r4, r3
/* 0B726C 800BC80C 7CC31A38 */  eqv     r3, r6, r3
/* 0B7270 800BC810 546717BC */  rlwinm  r7, r3, 2, 0x1e, 0x1e
/* 0B7274 800BC814 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B7278 800BC818 54E33830 */  slwi    r3, r7, 7
/* 0B727C 800BC81C 54E47820 */  slwi    r4, r7, 0xf
/* 0B7280 800BC820 7CE31A78 */  xor     r3, r7, r3
/* 0B7284 800BC824 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7288 800BC828 7C831A78 */  xor     r3, r4, r3
/* 0B728C 800BC82C 7CC31A38 */  eqv     r3, r6, r3
/* 0B7290 800BC830 546817BC */  rlwinm  r8, r3, 2, 0x1e, 0x1e
/* 0B7294 800BC834 50E8083A */  rlwimi  r8, r7, 1, 0, 0x1d
/* 0B7298 800BC838 55033830 */  slwi    r3, r8, 7
/* 0B729C 800BC83C 55047820 */  slwi    r4, r8, 0xf
/* 0B72A0 800BC840 7D031A78 */  xor     r3, r8, r3
/* 0B72A4 800BC844 5506B810 */  slwi    r6, r8, 0x17
/* 0B72A8 800BC848 7C831A78 */  xor     r3, r4, r3
/* 0B72AC 800BC84C 7CC31A38 */  eqv     r3, r6, r3
/* 0B72B0 800BC850 546717BC */  rlwinm  r7, r3, 2, 0x1e, 0x1e
/* 0B72B4 800BC854 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B72B8 800BC858 54E33830 */  slwi    r3, r7, 7
/* 0B72BC 800BC85C 54E47820 */  slwi    r4, r7, 0xf
/* 0B72C0 800BC860 7CE31A78 */  xor     r3, r7, r3
/* 0B72C4 800BC864 54E6B810 */  slwi    r6, r7, 0x17
/* 0B72C8 800BC868 7C831A78 */  xor     r3, r4, r3
/* 0B72CC 800BC86C 7CC31A38 */  eqv     r3, r6, r3
/* 0B72D0 800BC870 546817BC */  rlwinm  r8, r3, 2, 0x1e, 0x1e
/* 0B72D4 800BC874 50E8083A */  rlwimi  r8, r7, 1, 0, 0x1d
/* 0B72D8 800BC878 55033830 */  slwi    r3, r8, 7
/* 0B72DC 800BC87C 55047820 */  slwi    r4, r8, 0xf
/* 0B72E0 800BC880 7D031A78 */  xor     r3, r8, r3
/* 0B72E4 800BC884 5506B810 */  slwi    r6, r8, 0x17
/* 0B72E8 800BC888 7C831A78 */  xor     r3, r4, r3
/* 0B72EC 800BC88C 7CC31A38 */  eqv     r3, r6, r3
/* 0B72F0 800BC890 546717BC */  rlwinm  r7, r3, 2, 0x1e, 0x1e
/* 0B72F4 800BC894 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B72F8 800BC898 4200FEFC */  bdnz    lbl_800BC794
/* 0B72FC 800BC89C 54E33830 */  slwi    r3, r7, 7
/* 0B7300 800BC8A0 54E47820 */  slwi    r4, r7, 0xf
/* 0B7304 800BC8A4 7CE31A78 */  xor     r3, r7, r3
/* 0B7308 800BC8A8 54E6B810 */  slwi    r6, r7, 0x17
/* 0B730C 800BC8AC 7C831A78 */  xor     r3, r4, r3
/* 0B7310 800BC8B0 7CC31A38 */  eqv     r3, r6, r3
/* 0B7314 800BC8B4 54630FFE */  srwi    r3, r3, 0x1f
/* 0B7318 800BC8B8 7CE31B78 */  or      r3, r7, r3
/* 0B731C 800BC8BC 907F002C */  stw     r3, 0x2c(r31)
/* 0B7320 800BC8C0 38600004 */  li      r3, 4
/* 0B7324 800BC8C4 7C6903A6 */  mtctr   r3
/* 0B7328 800BC8C8 80FF002C */  lwz     r7, 0x2c(r31)
/* 0B732C 800BC8CC 7F183A78 */  xor     r24, r24, r7
lbl_800BC8D0:
/* 0B7330 800BC8D0 54E33830 */  slwi    r3, r7, 7
/* 0B7334 800BC8D4 54E47820 */  slwi    r4, r7, 0xf
/* 0B7338 800BC8D8 7CE31A78 */  xor     r3, r7, r3
/* 0B733C 800BC8DC 7C831A78 */  xor     r3, r4, r3
/* 0B7340 800BC8E0 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7344 800BC8E4 7CC31A38 */  eqv     r3, r6, r3
/* 0B7348 800BC8E8 54E4083C */  slwi    r4, r7, 1
/* 0B734C 800BC8EC 546317BC */  rlwinm  r3, r3, 2, 0x1e, 0x1e
/* 0B7350 800BC8F0 7C871B78 */  or      r7, r4, r3
/* 0B7354 800BC8F4 54E33830 */  slwi    r3, r7, 7
/* 0B7358 800BC8F8 54E47820 */  slwi    r4, r7, 0xf
/* 0B735C 800BC8FC 7CE31A78 */  xor     r3, r7, r3
/* 0B7360 800BC900 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7364 800BC904 7C831A78 */  xor     r3, r4, r3
/* 0B7368 800BC908 7CC31A38 */  eqv     r3, r6, r3
/* 0B736C 800BC90C 546917BC */  rlwinm  r9, r3, 2, 0x1e, 0x1e
/* 0B7370 800BC910 50E9083A */  rlwimi  r9, r7, 1, 0, 0x1d
/* 0B7374 800BC914 55233830 */  slwi    r3, r9, 7
/* 0B7378 800BC918 55247820 */  slwi    r4, r9, 0xf
/* 0B737C 800BC91C 7D231A78 */  xor     r3, r9, r3
/* 0B7380 800BC920 5526B810 */  slwi    r6, r9, 0x17
/* 0B7384 800BC924 7C831A78 */  xor     r3, r4, r3
/* 0B7388 800BC928 7CC31A38 */  eqv     r3, r6, r3
/* 0B738C 800BC92C 546817BC */  rlwinm  r8, r3, 2, 0x1e, 0x1e
/* 0B7390 800BC930 5128083A */  rlwimi  r8, r9, 1, 0, 0x1d
/* 0B7394 800BC934 55033830 */  slwi    r3, r8, 7
/* 0B7398 800BC938 55047820 */  slwi    r4, r8, 0xf
/* 0B739C 800BC93C 7D031A78 */  xor     r3, r8, r3
/* 0B73A0 800BC940 5506B810 */  slwi    r6, r8, 0x17
/* 0B73A4 800BC944 7C831A78 */  xor     r3, r4, r3
/* 0B73A8 800BC948 7CC31A38 */  eqv     r3, r6, r3
/* 0B73AC 800BC94C 546717BC */  rlwinm  r7, r3, 2, 0x1e, 0x1e
/* 0B73B0 800BC950 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B73B4 800BC954 54E33830 */  slwi    r3, r7, 7
/* 0B73B8 800BC958 54E47820 */  slwi    r4, r7, 0xf
/* 0B73BC 800BC95C 7CE31A78 */  xor     r3, r7, r3
/* 0B73C0 800BC960 54E6B810 */  slwi    r6, r7, 0x17
/* 0B73C4 800BC964 7C831A78 */  xor     r3, r4, r3
/* 0B73C8 800BC968 7CC31A38 */  eqv     r3, r6, r3
/* 0B73CC 800BC96C 546817BC */  rlwinm  r8, r3, 2, 0x1e, 0x1e
/* 0B73D0 800BC970 50E8083A */  rlwimi  r8, r7, 1, 0, 0x1d
/* 0B73D4 800BC974 55033830 */  slwi    r3, r8, 7
/* 0B73D8 800BC978 55047820 */  slwi    r4, r8, 0xf
/* 0B73DC 800BC97C 7D031A78 */  xor     r3, r8, r3
/* 0B73E0 800BC980 5506B810 */  slwi    r6, r8, 0x17
/* 0B73E4 800BC984 7C831A78 */  xor     r3, r4, r3
/* 0B73E8 800BC988 7CC31A38 */  eqv     r3, r6, r3
/* 0B73EC 800BC98C 546717BC */  rlwinm  r7, r3, 2, 0x1e, 0x1e
/* 0B73F0 800BC990 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B73F4 800BC994 54E33830 */  slwi    r3, r7, 7
/* 0B73F8 800BC998 54E47820 */  slwi    r4, r7, 0xf
/* 0B73FC 800BC99C 7CE31A78 */  xor     r3, r7, r3
/* 0B7400 800BC9A0 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7404 800BC9A4 7C831A78 */  xor     r3, r4, r3
/* 0B7408 800BC9A8 7CC31A38 */  eqv     r3, r6, r3
/* 0B740C 800BC9AC 546817BC */  rlwinm  r8, r3, 2, 0x1e, 0x1e
/* 0B7410 800BC9B0 50E8083A */  rlwimi  r8, r7, 1, 0, 0x1d
/* 0B7414 800BC9B4 55033830 */  slwi    r3, r8, 7
/* 0B7418 800BC9B8 55047820 */  slwi    r4, r8, 0xf
/* 0B741C 800BC9BC 7D031A78 */  xor     r3, r8, r3
/* 0B7420 800BC9C0 5506B810 */  slwi    r6, r8, 0x17
/* 0B7424 800BC9C4 7C831A78 */  xor     r3, r4, r3
/* 0B7428 800BC9C8 7CC31A38 */  eqv     r3, r6, r3
/* 0B742C 800BC9CC 546717BC */  rlwinm  r7, r3, 2, 0x1e, 0x1e
/* 0B7430 800BC9D0 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B7434 800BC9D4 4200FEFC */  bdnz    lbl_800BC8D0
/* 0B7438 800BC9D8 54E33830 */  slwi    r3, r7, 7
/* 0B743C 800BC9DC 54E47820 */  slwi    r4, r7, 0xf
/* 0B7440 800BC9E0 7CE31A78 */  xor     r3, r7, r3
/* 0B7444 800BC9E4 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7448 800BC9E8 7C831A78 */  xor     r3, r4, r3
/* 0B744C 800BC9EC 7CC31A38 */  eqv     r3, r6, r3
/* 0B7450 800BC9F0 54630FFE */  srwi    r3, r3, 0x1f
/* 0B7454 800BC9F4 7CE31B78 */  or      r3, r7, r3
/* 0B7458 800BC9F8 907F002C */  stw     r3, 0x2c(r31)
/* 0B745C 800BC9FC 38600004 */  li      r3, 4
/* 0B7460 800BCA00 7C6903A6 */  mtctr   r3
/* 0B7464 800BCA04 80FF002C */  lwz     r7, 0x2c(r31)
/* 0B7468 800BCA08 7C003A78 */  xor     r0, r0, r7
lbl_800BCA0C:
/* 0B746C 800BCA0C 54E33830 */  slwi    r3, r7, 7
/* 0B7470 800BCA10 54E47820 */  slwi    r4, r7, 0xf
/* 0B7474 800BCA14 7CE31A78 */  xor     r3, r7, r3
/* 0B7478 800BCA18 7C831A78 */  xor     r3, r4, r3
/* 0B747C 800BCA1C 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7480 800BCA20 7CC31A38 */  eqv     r3, r6, r3
/* 0B7484 800BCA24 54E4083C */  slwi    r4, r7, 1
/* 0B7488 800BCA28 546317BC */  rlwinm  r3, r3, 2, 0x1e, 0x1e
/* 0B748C 800BCA2C 7C871B78 */  or      r7, r4, r3
/* 0B7490 800BCA30 54E33830 */  slwi    r3, r7, 7
/* 0B7494 800BCA34 54E47820 */  slwi    r4, r7, 0xf
/* 0B7498 800BCA38 7CE31A78 */  xor     r3, r7, r3
/* 0B749C 800BCA3C 54E6B810 */  slwi    r6, r7, 0x17
/* 0B74A0 800BCA40 7C831A78 */  xor     r3, r4, r3
/* 0B74A4 800BCA44 7CC31A38 */  eqv     r3, r6, r3
/* 0B74A8 800BCA48 546917BC */  rlwinm  r9, r3, 2, 0x1e, 0x1e
/* 0B74AC 800BCA4C 50E9083A */  rlwimi  r9, r7, 1, 0, 0x1d
/* 0B74B0 800BCA50 55233830 */  slwi    r3, r9, 7
/* 0B74B4 800BCA54 55247820 */  slwi    r4, r9, 0xf
/* 0B74B8 800BCA58 7D231A78 */  xor     r3, r9, r3
/* 0B74BC 800BCA5C 5526B810 */  slwi    r6, r9, 0x17
/* 0B74C0 800BCA60 7C831A78 */  xor     r3, r4, r3
/* 0B74C4 800BCA64 7CC31A38 */  eqv     r3, r6, r3
/* 0B74C8 800BCA68 546817BC */  rlwinm  r8, r3, 2, 0x1e, 0x1e
/* 0B74CC 800BCA6C 5128083A */  rlwimi  r8, r9, 1, 0, 0x1d
/* 0B74D0 800BCA70 55033830 */  slwi    r3, r8, 7
/* 0B74D4 800BCA74 55047820 */  slwi    r4, r8, 0xf
/* 0B74D8 800BCA78 7D031A78 */  xor     r3, r8, r3
/* 0B74DC 800BCA7C 5506B810 */  slwi    r6, r8, 0x17
/* 0B74E0 800BCA80 7C831A78 */  xor     r3, r4, r3
/* 0B74E4 800BCA84 7CC31A38 */  eqv     r3, r6, r3
/* 0B74E8 800BCA88 546717BC */  rlwinm  r7, r3, 2, 0x1e, 0x1e
/* 0B74EC 800BCA8C 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B74F0 800BCA90 54E33830 */  slwi    r3, r7, 7
/* 0B74F4 800BCA94 54E47820 */  slwi    r4, r7, 0xf
/* 0B74F8 800BCA98 7CE31A78 */  xor     r3, r7, r3
/* 0B74FC 800BCA9C 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7500 800BCAA0 7C831A78 */  xor     r3, r4, r3
/* 0B7504 800BCAA4 7CC31A38 */  eqv     r3, r6, r3
/* 0B7508 800BCAA8 546817BC */  rlwinm  r8, r3, 2, 0x1e, 0x1e
/* 0B750C 800BCAAC 50E8083A */  rlwimi  r8, r7, 1, 0, 0x1d
/* 0B7510 800BCAB0 55033830 */  slwi    r3, r8, 7
/* 0B7514 800BCAB4 55047820 */  slwi    r4, r8, 0xf
/* 0B7518 800BCAB8 7D031A78 */  xor     r3, r8, r3
/* 0B751C 800BCABC 5506B810 */  slwi    r6, r8, 0x17
/* 0B7520 800BCAC0 7C831A78 */  xor     r3, r4, r3
/* 0B7524 800BCAC4 7CC31A38 */  eqv     r3, r6, r3
/* 0B7528 800BCAC8 546717BC */  rlwinm  r7, r3, 2, 0x1e, 0x1e
/* 0B752C 800BCACC 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B7530 800BCAD0 54E33830 */  slwi    r3, r7, 7
/* 0B7534 800BCAD4 54E47820 */  slwi    r4, r7, 0xf
/* 0B7538 800BCAD8 7CE31A78 */  xor     r3, r7, r3
/* 0B753C 800BCADC 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7540 800BCAE0 7C831A78 */  xor     r3, r4, r3
/* 0B7544 800BCAE4 7CC31A38 */  eqv     r3, r6, r3
/* 0B7548 800BCAE8 546817BC */  rlwinm  r8, r3, 2, 0x1e, 0x1e
/* 0B754C 800BCAEC 50E8083A */  rlwimi  r8, r7, 1, 0, 0x1d
/* 0B7550 800BCAF0 55033830 */  slwi    r3, r8, 7
/* 0B7554 800BCAF4 55047820 */  slwi    r4, r8, 0xf
/* 0B7558 800BCAF8 7D031A78 */  xor     r3, r8, r3
/* 0B755C 800BCAFC 5506B810 */  slwi    r6, r8, 0x17
/* 0B7560 800BCB00 7C831A78 */  xor     r3, r4, r3
/* 0B7564 800BCB04 7CC31A38 */  eqv     r3, r6, r3
/* 0B7568 800BCB08 546717BC */  rlwinm  r7, r3, 2, 0x1e, 0x1e
/* 0B756C 800BCB0C 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B7570 800BCB10 4200FEFC */  bdnz    lbl_800BCA0C
/* 0B7574 800BCB14 54E33830 */  slwi    r3, r7, 7
/* 0B7578 800BCB18 54E47820 */  slwi    r4, r7, 0xf
/* 0B757C 800BCB1C 7CE31A78 */  xor     r3, r7, r3
/* 0B7580 800BCB20 7C831A78 */  xor     r3, r4, r3
/* 0B7584 800BCB24 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7588 800BCB28 7CC31A38 */  eqv     r3, r6, r3
/* 0B758C 800BCB2C 54630FFE */  srwi    r3, r3, 0x1f
/* 0B7590 800BCB30 7CE31B78 */  or      r3, r7, r3
/* 0B7594 800BCB34 907F002C */  stw     r3, 0x2c(r31)
/* 0B7598 800BCB38 57641838 */  slwi    r4, r27, 3
/* 0B759C 800BCB3C 28040000 */  cmplwi  r4, 0
/* 0B75A0 800BCB40 80DF002C */  lwz     r6, 0x2c(r31)
/* 0B75A4 800BCB44 38600000 */  li      r3, 0
/* 0B75A8 800BCB48 7CA53278 */  xor     r5, r5, r6
/* 0B75AC 800BCB4C 40810168 */  ble     lbl_800BCCB4
/* 0B75B0 800BCB50 28040008 */  cmplwi  r4, 8
/* 0B75B4 800BCB54 3904FFF8 */  addi    r8, r4, -8
/* 0B75B8 800BCB58 40810124 */  ble     lbl_800BCC7C
/* 0B75BC 800BCB5C 38E80007 */  addi    r7, r8, 7
/* 0B75C0 800BCB60 54E7E8FE */  srwi    r7, r7, 3
/* 0B75C4 800BCB64 28080000 */  cmplwi  r8, 0
/* 0B75C8 800BCB68 7CE903A6 */  mtctr   r7
/* 0B75CC 800BCB6C 40810110 */  ble     lbl_800BCC7C
lbl_800BCB70:
/* 0B75D0 800BCB70 54C73830 */  slwi    r7, r6, 7
/* 0B75D4 800BCB74 54C87820 */  slwi    r8, r6, 0xf
/* 0B75D8 800BCB78 7CC73A78 */  xor     r7, r6, r7
/* 0B75DC 800BCB7C 7D073A78 */  xor     r7, r8, r7
/* 0B75E0 800BCB80 54C9B810 */  slwi    r9, r6, 0x17
/* 0B75E4 800BCB84 7D273A38 */  eqv     r7, r9, r7
/* 0B75E8 800BCB88 54C8083C */  slwi    r8, r6, 1
/* 0B75EC 800BCB8C 54E617BC */  rlwinm  r6, r7, 2, 0x1e, 0x1e
/* 0B75F0 800BCB90 7D093378 */  or      r9, r8, r6
/* 0B75F4 800BCB94 55263830 */  slwi    r6, r9, 7
/* 0B75F8 800BCB98 55277820 */  slwi    r7, r9, 0xf
/* 0B75FC 800BCB9C 7D263278 */  xor     r6, r9, r6
/* 0B7600 800BCBA0 5528B810 */  slwi    r8, r9, 0x17
/* 0B7604 800BCBA4 7CE63278 */  xor     r6, r7, r6
/* 0B7608 800BCBA8 7D063238 */  eqv     r6, r8, r6
/* 0B760C 800BCBAC 54CA17BC */  rlwinm  r10, r6, 2, 0x1e, 0x1e
/* 0B7610 800BCBB0 512A083A */  rlwimi  r10, r9, 1, 0, 0x1d
/* 0B7614 800BCBB4 55463830 */  slwi    r6, r10, 7
/* 0B7618 800BCBB8 55477820 */  slwi    r7, r10, 0xf
/* 0B761C 800BCBBC 7D463278 */  xor     r6, r10, r6
/* 0B7620 800BCBC0 5548B810 */  slwi    r8, r10, 0x17
/* 0B7624 800BCBC4 7CE63278 */  xor     r6, r7, r6
/* 0B7628 800BCBC8 7D063238 */  eqv     r6, r8, r6
/* 0B762C 800BCBCC 54C917BC */  rlwinm  r9, r6, 2, 0x1e, 0x1e
/* 0B7630 800BCBD0 5149083A */  rlwimi  r9, r10, 1, 0, 0x1d
/* 0B7634 800BCBD4 55263830 */  slwi    r6, r9, 7
/* 0B7638 800BCBD8 55277820 */  slwi    r7, r9, 0xf
/* 0B763C 800BCBDC 7D263278 */  xor     r6, r9, r6
/* 0B7640 800BCBE0 5528B810 */  slwi    r8, r9, 0x17
/* 0B7644 800BCBE4 7CE63278 */  xor     r6, r7, r6
/* 0B7648 800BCBE8 7D063238 */  eqv     r6, r8, r6
/* 0B764C 800BCBEC 54CA17BC */  rlwinm  r10, r6, 2, 0x1e, 0x1e
/* 0B7650 800BCBF0 512A083A */  rlwimi  r10, r9, 1, 0, 0x1d
/* 0B7654 800BCBF4 55463830 */  slwi    r6, r10, 7
/* 0B7658 800BCBF8 55477820 */  slwi    r7, r10, 0xf
/* 0B765C 800BCBFC 7D463278 */  xor     r6, r10, r6
/* 0B7660 800BCC00 5548B810 */  slwi    r8, r10, 0x17
/* 0B7664 800BCC04 7CE63278 */  xor     r6, r7, r6
/* 0B7668 800BCC08 7D063238 */  eqv     r6, r8, r6
/* 0B766C 800BCC0C 54C917BC */  rlwinm  r9, r6, 2, 0x1e, 0x1e
/* 0B7670 800BCC10 5149083A */  rlwimi  r9, r10, 1, 0, 0x1d
/* 0B7674 800BCC14 55263830 */  slwi    r6, r9, 7
/* 0B7678 800BCC18 55277820 */  slwi    r7, r9, 0xf
/* 0B767C 800BCC1C 7D263278 */  xor     r6, r9, r6
/* 0B7680 800BCC20 5528B810 */  slwi    r8, r9, 0x17
/* 0B7684 800BCC24 7CE63278 */  xor     r6, r7, r6
/* 0B7688 800BCC28 7D063238 */  eqv     r6, r8, r6
/* 0B768C 800BCC2C 54CA17BC */  rlwinm  r10, r6, 2, 0x1e, 0x1e
/* 0B7690 800BCC30 512A083A */  rlwimi  r10, r9, 1, 0, 0x1d
/* 0B7694 800BCC34 55463830 */  slwi    r6, r10, 7
/* 0B7698 800BCC38 55477820 */  slwi    r7, r10, 0xf
/* 0B769C 800BCC3C 7D463278 */  xor     r6, r10, r6
/* 0B76A0 800BCC40 5548B810 */  slwi    r8, r10, 0x17
/* 0B76A4 800BCC44 7CE63278 */  xor     r6, r7, r6
/* 0B76A8 800BCC48 7D063238 */  eqv     r6, r8, r6
/* 0B76AC 800BCC4C 54C917BC */  rlwinm  r9, r6, 2, 0x1e, 0x1e
/* 0B76B0 800BCC50 5149083A */  rlwimi  r9, r10, 1, 0, 0x1d
/* 0B76B4 800BCC54 55263830 */  slwi    r6, r9, 7
/* 0B76B8 800BCC58 55277820 */  slwi    r7, r9, 0xf
/* 0B76BC 800BCC5C 7D263278 */  xor     r6, r9, r6
/* 0B76C0 800BCC60 5528B810 */  slwi    r8, r9, 0x17
/* 0B76C4 800BCC64 7CE63278 */  xor     r6, r7, r6
/* 0B76C8 800BCC68 7D063238 */  eqv     r6, r8, r6
/* 0B76CC 800BCC6C 54C617BC */  rlwinm  r6, r6, 2, 0x1e, 0x1e
/* 0B76D0 800BCC70 5126083A */  rlwimi  r6, r9, 1, 0, 0x1d
/* 0B76D4 800BCC74 38630008 */  addi    r3, r3, 8
/* 0B76D8 800BCC78 4200FEF8 */  bdnz    lbl_800BCB70
lbl_800BCC7C:
/* 0B76DC 800BCC7C 7CE32050 */  subf    r7, r3, r4
/* 0B76E0 800BCC80 7C032040 */  cmplw   r3, r4
/* 0B76E4 800BCC84 7CE903A6 */  mtctr   r7
/* 0B76E8 800BCC88 4080002C */  bge     lbl_800BCCB4
lbl_800BCC8C:
/* 0B76EC 800BCC8C 54C33830 */  slwi    r3, r6, 7
/* 0B76F0 800BCC90 54C47820 */  slwi    r4, r6, 0xf
/* 0B76F4 800BCC94 7CC31A78 */  xor     r3, r6, r3
/* 0B76F8 800BCC98 54C7B810 */  slwi    r7, r6, 0x17
/* 0B76FC 800BCC9C 7C831A78 */  xor     r3, r4, r3
/* 0B7700 800BCCA0 7CE31A38 */  eqv     r3, r7, r3
/* 0B7704 800BCCA4 54C4083C */  slwi    r4, r6, 1
/* 0B7708 800BCCA8 546317BC */  rlwinm  r3, r3, 2, 0x1e, 0x1e
/* 0B770C 800BCCAC 7C861B78 */  or      r6, r4, r3
/* 0B7710 800BCCB0 4200FFDC */  bdnz    lbl_800BCC8C
lbl_800BCCB4:
/* 0B7714 800BCCB4 54C33830 */  slwi    r3, r6, 7
/* 0B7718 800BCCB8 54C47820 */  slwi    r4, r6, 0xf
/* 0B771C 800BCCBC 7CC31A78 */  xor     r3, r6, r3
/* 0B7720 800BCCC0 54C7B810 */  slwi    r7, r6, 0x17
/* 0B7724 800BCCC4 7C831A78 */  xor     r3, r4, r3
/* 0B7728 800BCCC8 7CE31A38 */  eqv     r3, r7, r3
/* 0B772C 800BCCCC 54630FFE */  srwi    r3, r3, 0x1f
/* 0B7730 800BCCD0 7CC31B78 */  or      r3, r6, r3
/* 0B7734 800BCCD4 907F002C */  stw     r3, 0x2c(r31)
/* 0B7738 800BCCD8 38600004 */  li      r3, 4
/* 0B773C 800BCCDC 7C6903A6 */  mtctr   r3
/* 0B7740 800BCCE0 38600000 */  li      r3, 0
/* 0B7744 800BCCE4 809F002C */  lwz     r4, 0x2c(r31)
lbl_800BCCE8:
/* 0B7748 800BCCE8 54863830 */  slwi    r6, r4, 7
/* 0B774C 800BCCEC 54877820 */  slwi    r7, r4, 0xf
/* 0B7750 800BCCF0 7C863278 */  xor     r6, r4, r6
/* 0B7754 800BCCF4 7CE63278 */  xor     r6, r7, r6
/* 0B7758 800BCCF8 5488B810 */  slwi    r8, r4, 0x17
/* 0B775C 800BCCFC 7D063238 */  eqv     r6, r8, r6
/* 0B7760 800BCD00 5487083C */  slwi    r7, r4, 1
/* 0B7764 800BCD04 54C417BC */  rlwinm  r4, r6, 2, 0x1e, 0x1e
/* 0B7768 800BCD08 7CE82378 */  or      r8, r7, r4
/* 0B776C 800BCD0C 55043830 */  slwi    r4, r8, 7
/* 0B7770 800BCD10 55067820 */  slwi    r6, r8, 0xf
/* 0B7774 800BCD14 7D042278 */  xor     r4, r8, r4
/* 0B7778 800BCD18 5507B810 */  slwi    r7, r8, 0x17
/* 0B777C 800BCD1C 7CC42278 */  xor     r4, r6, r4
/* 0B7780 800BCD20 7CE42238 */  eqv     r4, r7, r4
/* 0B7784 800BCD24 548917BC */  rlwinm  r9, r4, 2, 0x1e, 0x1e
/* 0B7788 800BCD28 5109083A */  rlwimi  r9, r8, 1, 0, 0x1d
/* 0B778C 800BCD2C 55243830 */  slwi    r4, r9, 7
/* 0B7790 800BCD30 55267820 */  slwi    r6, r9, 0xf
/* 0B7794 800BCD34 7D242278 */  xor     r4, r9, r4
/* 0B7798 800BCD38 5527B810 */  slwi    r7, r9, 0x17
/* 0B779C 800BCD3C 7CC42278 */  xor     r4, r6, r4
/* 0B77A0 800BCD40 7CE42238 */  eqv     r4, r7, r4
/* 0B77A4 800BCD44 548817BC */  rlwinm  r8, r4, 2, 0x1e, 0x1e
/* 0B77A8 800BCD48 5128083A */  rlwimi  r8, r9, 1, 0, 0x1d
/* 0B77AC 800BCD4C 55043830 */  slwi    r4, r8, 7
/* 0B77B0 800BCD50 55067820 */  slwi    r6, r8, 0xf
/* 0B77B4 800BCD54 7D042278 */  xor     r4, r8, r4
/* 0B77B8 800BCD58 5507B810 */  slwi    r7, r8, 0x17
/* 0B77BC 800BCD5C 7CC42278 */  xor     r4, r6, r4
/* 0B77C0 800BCD60 7CE42238 */  eqv     r4, r7, r4
/* 0B77C4 800BCD64 548917BC */  rlwinm  r9, r4, 2, 0x1e, 0x1e
/* 0B77C8 800BCD68 5109083A */  rlwimi  r9, r8, 1, 0, 0x1d
/* 0B77CC 800BCD6C 55243830 */  slwi    r4, r9, 7
/* 0B77D0 800BCD70 55267820 */  slwi    r6, r9, 0xf
/* 0B77D4 800BCD74 7D242278 */  xor     r4, r9, r4
/* 0B77D8 800BCD78 5527B810 */  slwi    r7, r9, 0x17
/* 0B77DC 800BCD7C 7CC42278 */  xor     r4, r6, r4
/* 0B77E0 800BCD80 7CE42238 */  eqv     r4, r7, r4
/* 0B77E4 800BCD84 548817BC */  rlwinm  r8, r4, 2, 0x1e, 0x1e
/* 0B77E8 800BCD88 5128083A */  rlwimi  r8, r9, 1, 0, 0x1d
/* 0B77EC 800BCD8C 55043830 */  slwi    r4, r8, 7
/* 0B77F0 800BCD90 55067820 */  slwi    r6, r8, 0xf
/* 0B77F4 800BCD94 7D042278 */  xor     r4, r8, r4
/* 0B77F8 800BCD98 5507B810 */  slwi    r7, r8, 0x17
/* 0B77FC 800BCD9C 7CC42278 */  xor     r4, r6, r4
/* 0B7800 800BCDA0 7CE42238 */  eqv     r4, r7, r4
/* 0B7804 800BCDA4 548917BC */  rlwinm  r9, r4, 2, 0x1e, 0x1e
/* 0B7808 800BCDA8 5109083A */  rlwimi  r9, r8, 1, 0, 0x1d
/* 0B780C 800BCDAC 55243830 */  slwi    r4, r9, 7
/* 0B7810 800BCDB0 55267820 */  slwi    r6, r9, 0xf
/* 0B7814 800BCDB4 7D242278 */  xor     r4, r9, r4
/* 0B7818 800BCDB8 5527B810 */  slwi    r7, r9, 0x17
/* 0B781C 800BCDBC 7CC42278 */  xor     r4, r6, r4
/* 0B7820 800BCDC0 7CE42238 */  eqv     r4, r7, r4
/* 0B7824 800BCDC4 548817BC */  rlwinm  r8, r4, 2, 0x1e, 0x1e
/* 0B7828 800BCDC8 5128083A */  rlwimi  r8, r9, 1, 0, 0x1d
/* 0B782C 800BCDCC 55043830 */  slwi    r4, r8, 7
/* 0B7830 800BCDD0 55067820 */  slwi    r6, r8, 0xf
/* 0B7834 800BCDD4 7D042278 */  xor     r4, r8, r4
/* 0B7838 800BCDD8 5507B810 */  slwi    r7, r8, 0x17
/* 0B783C 800BCDDC 7CC42278 */  xor     r4, r6, r4
/* 0B7840 800BCDE0 7CE42238 */  eqv     r4, r7, r4
/* 0B7844 800BCDE4 548417BC */  rlwinm  r4, r4, 2, 0x1e, 0x1e
/* 0B7848 800BCDE8 5104083A */  rlwimi  r4, r8, 1, 0, 0x1d
/* 0B784C 800BCDEC 38630008 */  addi    r3, r3, 8
/* 0B7850 800BCDF0 4200FEF8 */  bdnz    lbl_800BCCE8
/* 0B7854 800BCDF4 20C30021 */  subfic  r6, r3, 0x21
/* 0B7858 800BCDF8 28030021 */  cmplwi  r3, 0x21
/* 0B785C 800BCDFC 7CC903A6 */  mtctr   r6
/* 0B7860 800BCE00 4080002C */  bge     lbl_800BCE2C
lbl_800BCE04:
/* 0B7864 800BCE04 54833830 */  slwi    r3, r4, 7
/* 0B7868 800BCE08 54867820 */  slwi    r6, r4, 0xf
/* 0B786C 800BCE0C 7C831A78 */  xor     r3, r4, r3
/* 0B7870 800BCE10 5487B810 */  slwi    r7, r4, 0x17
/* 0B7874 800BCE14 7CC31A78 */  xor     r3, r6, r3
/* 0B7878 800BCE18 7CE31A38 */  eqv     r3, r7, r3
/* 0B787C 800BCE1C 5484083C */  slwi    r4, r4, 1
/* 0B7880 800BCE20 546317BC */  rlwinm  r3, r3, 2, 0x1e, 0x1e
/* 0B7884 800BCE24 7C841B78 */  or      r4, r4, r3
/* 0B7888 800BCE28 4200FFDC */  bdnz    lbl_800BCE04
lbl_800BCE2C:
/* 0B788C 800BCE2C 54833830 */  slwi    r3, r4, 7
/* 0B7890 800BCE30 54867820 */  slwi    r6, r4, 0xf
/* 0B7894 800BCE34 7C831A78 */  xor     r3, r4, r3
/* 0B7898 800BCE38 5487B810 */  slwi    r7, r4, 0x17
/* 0B789C 800BCE3C 7CC31A78 */  xor     r3, r6, r3
/* 0B78A0 800BCE40 7CE31A38 */  eqv     r3, r7, r3
/* 0B78A4 800BCE44 54630FFE */  srwi    r3, r3, 0x1f
/* 0B78A8 800BCE48 7C831B78 */  or      r3, r4, r3
/* 0B78AC 800BCE4C 907F002C */  stw     r3, 0x2c(r31)
/* 0B78B0 800BCE50 38C00008 */  li      r6, 8
/* 0B78B4 800BCE54 3B600000 */  li      r27, 0
/* 0B78B8 800BCE58 901C0000 */  stw     r0, 0(r28)
/* 0B78BC 800BCE5C 387C0000 */  addi    r3, r28, 0
/* 0B78C0 800BCE60 38800008 */  li      r4, 8
/* 0B78C4 800BCE64 90BC0004 */  stw     r5, 4(r28)
/* 0B78C8 800BCE68 939D0000 */  stw     r28, 0(r29)
/* 0B78CC 800BCE6C 90DD0004 */  stw     r6, 4(r29)
/* 0B78D0 800BCE70 92DD000C */  stw     r22, 0xc(r29)
/* 0B78D4 800BCE74 937D0008 */  stw     r27, 8(r29)
/* 0B78D8 800BCE78 4BFE0905 */  bl      DCFlushRange
/* 0B78DC 800BCE7C 38760000 */  addi    r3, r22, 0
/* 0B78E0 800BCE80 38800004 */  li      r4, 4
/* 0B78E4 800BCE84 4BFE08CD */  bl      DCInvalidateRange
/* 0B78E8 800BCE88 387D0000 */  addi    r3, r29, 0
/* 0B78EC 800BCE8C 38800010 */  li      r4, 0x10
/* 0B78F0 800BCE90 4BFE08ED */  bl      DCFlushRange
/* 0B78F4 800BCE94 380000FF */  li      r0, 0xff
/* 0B78F8 800BCE98 3C60800F */  lis     r3, CardData@ha
/* 0B78FC 800BCE9C 901E0004 */  stw     r0, 4(r30)
/* 0B7900 800BCEA0 38633840 */  addi    r3, r3, CardData@l
/* 0B7904 800BCEA4 3C038000 */  addis   r0, r3, 0x8000
/* 0B7908 800BCEA8 901E000C */  stw     r0, 0xc(r30)
/* 0B790C 800BCEAC 38000160 */  li      r0, 0x160
/* 0B7910 800BCEB0 3C80800C */  lis     r4, InitCallback@ha
/* 0B7914 800BCEB4 901E0010 */  stw     r0, 0x10(r30)
/* 0B7918 800BCEB8 3C60800C */  lis     r3, DoneCallback@ha
/* 0B791C 800BCEBC 38A00010 */  li      r5, 0x10
/* 0B7920 800BCEC0 937E0014 */  stw     r27, 0x14(r30)
/* 0B7924 800BCEC4 3884CF0C */  addi    r4, r4, InitCallback@l
/* 0B7928 800BCEC8 3803CF7C */  addi    r0, r3, DoneCallback@l
/* 0B792C 800BCECC B0BE0024 */  sth     r5, 0x24(r30)
/* 0B7930 800BCED0 7FC3F378 */  mr      r3, r30
/* 0B7934 800BCED4 909E0028 */  stw     r4, 0x28(r30)
/* 0B7938 800BCED8 937E002C */  stw     r27, 0x2c(r30)
/* 0B793C 800BCEDC 901E0030 */  stw     r0, 0x30(r30)
/* 0B7940 800BCEE0 937E0034 */  stw     r27, 0x34(r30)
/* 0B7944 800BCEE4 4BFFD535 */  bl      DSPAddTask
/* 0B7948 800BCEE8 93370000 */  stw     r25, 0(r23)
/* 0B794C 800BCEEC 38600000 */  li      r3, 0
/* 0B7950 800BCEF0 93570004 */  stw     r26, 4(r23)
/* 0B7954 800BCEF4 93170008 */  stw     r24, 8(r23)
lbl_800BCEF8:
/* 0B7958 800BCEF8 BAC100F8 */  lmw     r22, 0xf8(r1)
/* 0B795C 800BCEFC 80010124 */  lwz     r0, 0x124(r1)
/* 0B7960 800BCF00 38210120 */  addi    r1, r1, 0x120
/* 0B7964 800BCF04 7C0803A6 */  mtlr    r0
/* 0B7968 800BCF08 4E800020 */  blr     

InitCallback:
/* 0B796C 800BCF0C 7C0802A6 */  mflr    r0
/* 0B7970 800BCF10 3C808013 */  lis     r4, __CARDBlock@ha
/* 0B7974 800BCF14 90010004 */  stw     r0, 4(r1)
/* 0B7978 800BCF18 388427D0 */  addi    r4, r4, __CARDBlock@l
/* 0B797C 800BCF1C 38040030 */  addi    r0, r4, 0x30
/* 0B7980 800BCF20 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0B7984 800BCF24 7C001840 */  cmplw   r0, r3
/* 0B7988 800BCF28 93E10014 */  stw     r31, 0x14(r1)
/* 0B798C 800BCF2C 41820010 */  beq     lbl_800BCF3C
/* 0B7990 800BCF30 38040140 */  addi    r0, r4, 0x140
/* 0B7994 800BCF34 7C001840 */  cmplw   r0, r3
/* 0B7998 800BCF38 38840110 */  addi    r4, r4, 0x110
lbl_800BCF3C:
/* 0B799C 800BCF3C 83E40080 */  lwz     r31, 0x80(r4)
/* 0B79A0 800BCF40 3C60FF00 */  lis     r3, 0xff00
/* 0B79A4 800BCF44 4BFFD3FD */  bl      DSPSendMailToDSP
lbl_800BCF48:
/* 0B79A8 800BCF48 4BFFD3C1 */  bl      DSPCheckMailToDSP
/* 0B79AC 800BCF4C 28030000 */  cmplwi  r3, 0
/* 0B79B0 800BCF50 4082FFF8 */  bne     lbl_800BCF48
/* 0B79B4 800BCF54 7FE3FB78 */  mr      r3, r31
/* 0B79B8 800BCF58 4BFFD3E9 */  bl      DSPSendMailToDSP
lbl_800BCF5C:
/* 0B79BC 800BCF5C 4BFFD3AD */  bl      DSPCheckMailToDSP
/* 0B79C0 800BCF60 28030000 */  cmplwi  r3, 0
/* 0B79C4 800BCF64 4082FFF8 */  bne     lbl_800BCF5C
/* 0B79C8 800BCF68 8001001C */  lwz     r0, 0x1c(r1)
/* 0B79CC 800BCF6C 83E10014 */  lwz     r31, 0x14(r1)
/* 0B79D0 800BCF70 38210018 */  addi    r1, r1, 0x18
/* 0B79D4 800BCF74 7C0803A6 */  mtlr    r0
/* 0B79D8 800BCF78 4E800020 */  blr     

DoneCallback:
/* 0B79DC 800BCF7C 7C0802A6 */  mflr    r0
/* 0B79E0 800BCF80 3C808013 */  lis     r4, __CARDBlock@ha
/* 0B79E4 800BCF84 90010004 */  stw     r0, 4(r1)
/* 0B79E8 800BCF88 388427D0 */  addi    r4, r4, __CARDBlock@l
/* 0B79EC 800BCF8C 38040030 */  addi    r0, r4, 0x30
/* 0B79F0 800BCF90 9421FF78 */  stwu    r1, -0x88(r1)
/* 0B79F4 800BCF94 7C001840 */  cmplw   r0, r3
/* 0B79F8 800BCF98 93E10084 */  stw     r31, 0x84(r1)
/* 0B79FC 800BCF9C 3BE00000 */  li      r31, 0
/* 0B7A00 800BCFA0 93C10080 */  stw     r30, 0x80(r1)
/* 0B7A04 800BCFA4 93A1007C */  stw     r29, 0x7c(r1)
/* 0B7A08 800BCFA8 3BA40000 */  addi    r29, r4, 0
/* 0B7A0C 800BCFAC 93810078 */  stw     r28, 0x78(r1)
/* 0B7A10 800BCFB0 41820020 */  beq     lbl_800BCFD0
/* 0B7A14 800BCFB4 38040140 */  addi    r0, r4, 0x140
/* 0B7A18 800BCFB8 7C001840 */  cmplw   r0, r3
/* 0B7A1C 800BCFBC 38840110 */  addi    r4, r4, 0x110
/* 0B7A20 800BCFC0 3BA40000 */  addi    r29, r4, 0
/* 0B7A24 800BCFC4 3BE00001 */  li      r31, 1
/* 0B7A28 800BCFC8 41820008 */  beq     lbl_800BCFD0
/* 0B7A2C 800BCFCC 3BE00002 */  li      r31, 2
lbl_800BCFD0:
/* 0B7A30 800BCFD0 807D0080 */  lwz     r3, 0x80(r29)
/* 0B7A34 800BCFD4 3803002F */  addi    r0, r3, 0x2f
/* 0B7A38 800BCFD8 54030034 */  rlwinm  r3, r0, 0, 0, 0x1a
/* 0B7A3C 800BCFDC 83C30020 */  lwz     r30, 0x20(r3)
/* 0B7A40 800BCFE0 4BFFF311 */  bl      DummyLen
/* 0B7A44 800BCFE4 801D002C */  lwz     r0, 0x2c(r29)
/* 0B7A48 800BCFE8 3B830000 */  addi    r28, r3, 0
/* 0B7A4C 800BCFEC 38DC0000 */  addi    r6, r28, 0
/* 0B7A50 800BCFF0 7FC00278 */  xor     r0, r30, r0
/* 0B7A54 800BCFF4 5404001E */  rlwinm  r4, r0, 0, 0, 0xf
/* 0B7A58 800BCFF8 387F0000 */  addi    r3, r31, 0
/* 0B7A5C 800BCFFC 38A10034 */  addi    r5, r1, 0x34
/* 0B7A60 800BD000 38E00001 */  li      r7, 1
/* 0B7A64 800BD004 4BFFF1A9 */  bl      ReadArrayUnlock
/* 0B7A68 800BD008 2C030000 */  cmpwi   r3, 0
/* 0B7A6C 800BD00C 4080001C */  bge     lbl_800BD028
/* 0B7A70 800BD010 7FE3FB78 */  mr      r3, r31
/* 0B7A74 800BD014 4BFE6C61 */  bl      EXIUnlock
/* 0B7A78 800BD018 387F0000 */  addi    r3, r31, 0
/* 0B7A7C 800BD01C 3880FFFD */  li      r4, -3
/* 0B7A80 800BD020 48002141 */  bl      __CARDMountCallback
/* 0B7A84 800BD024 4800025C */  b       lbl_800BD280
lbl_800BD028:
/* 0B7A88 800BD028 809D0014 */  lwz     r4, 0x14(r29)
/* 0B7A8C 800BD02C 38600000 */  li      r3, 0
/* 0B7A90 800BD030 801D002C */  lwz     r0, 0x2c(r29)
/* 0B7A94 800BD034 7C9C2214 */  add     r4, r28, r4
/* 0B7A98 800BD038 38840004 */  addi    r4, r4, 4
/* 0B7A9C 800BD03C 54841838 */  slwi    r4, r4, 3
/* 0B7AA0 800BD040 38840001 */  addi    r4, r4, 1
/* 0B7AA4 800BD044 28040000 */  cmplwi  r4, 0
/* 0B7AA8 800BD048 40810168 */  ble     lbl_800BD1B0
/* 0B7AAC 800BD04C 28040008 */  cmplwi  r4, 8
/* 0B7AB0 800BD050 38C4FFF8 */  addi    r6, r4, -8
/* 0B7AB4 800BD054 40810124 */  ble     lbl_800BD178
/* 0B7AB8 800BD058 38A60007 */  addi    r5, r6, 7
/* 0B7ABC 800BD05C 54A5E8FE */  srwi    r5, r5, 3
/* 0B7AC0 800BD060 28060000 */  cmplwi  r6, 0
/* 0B7AC4 800BD064 7CA903A6 */  mtctr   r5
/* 0B7AC8 800BD068 40810110 */  ble     lbl_800BD178
lbl_800BD06C:
/* 0B7ACC 800BD06C 54053830 */  slwi    r5, r0, 7
/* 0B7AD0 800BD070 54067820 */  slwi    r6, r0, 0xf
/* 0B7AD4 800BD074 7C052A78 */  xor     r5, r0, r5
/* 0B7AD8 800BD078 7CC52A78 */  xor     r5, r6, r5
/* 0B7ADC 800BD07C 5407B810 */  slwi    r7, r0, 0x17
/* 0B7AE0 800BD080 7CE52A38 */  eqv     r5, r7, r5
/* 0B7AE4 800BD084 5406083C */  slwi    r6, r0, 1
/* 0B7AE8 800BD088 54A017BC */  rlwinm  r0, r5, 2, 0x1e, 0x1e
/* 0B7AEC 800BD08C 7CC70378 */  or      r7, r6, r0
/* 0B7AF0 800BD090 54E03830 */  slwi    r0, r7, 7
/* 0B7AF4 800BD094 54E57820 */  slwi    r5, r7, 0xf
/* 0B7AF8 800BD098 7CE00278 */  xor     r0, r7, r0
/* 0B7AFC 800BD09C 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7B00 800BD0A0 7CA00278 */  xor     r0, r5, r0
/* 0B7B04 800BD0A4 7CC00238 */  eqv     r0, r6, r0
/* 0B7B08 800BD0A8 540817BC */  rlwinm  r8, r0, 2, 0x1e, 0x1e
/* 0B7B0C 800BD0AC 50E8083A */  rlwimi  r8, r7, 1, 0, 0x1d
/* 0B7B10 800BD0B0 55003830 */  slwi    r0, r8, 7
/* 0B7B14 800BD0B4 55057820 */  slwi    r5, r8, 0xf
/* 0B7B18 800BD0B8 7D000278 */  xor     r0, r8, r0
/* 0B7B1C 800BD0BC 5506B810 */  slwi    r6, r8, 0x17
/* 0B7B20 800BD0C0 7CA00278 */  xor     r0, r5, r0
/* 0B7B24 800BD0C4 7CC00238 */  eqv     r0, r6, r0
/* 0B7B28 800BD0C8 540717BC */  rlwinm  r7, r0, 2, 0x1e, 0x1e
/* 0B7B2C 800BD0CC 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B7B30 800BD0D0 54E03830 */  slwi    r0, r7, 7
/* 0B7B34 800BD0D4 54E57820 */  slwi    r5, r7, 0xf
/* 0B7B38 800BD0D8 7CE00278 */  xor     r0, r7, r0
/* 0B7B3C 800BD0DC 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7B40 800BD0E0 7CA00278 */  xor     r0, r5, r0
/* 0B7B44 800BD0E4 7CC00238 */  eqv     r0, r6, r0
/* 0B7B48 800BD0E8 540817BC */  rlwinm  r8, r0, 2, 0x1e, 0x1e
/* 0B7B4C 800BD0EC 50E8083A */  rlwimi  r8, r7, 1, 0, 0x1d
/* 0B7B50 800BD0F0 55003830 */  slwi    r0, r8, 7
/* 0B7B54 800BD0F4 55057820 */  slwi    r5, r8, 0xf
/* 0B7B58 800BD0F8 7D000278 */  xor     r0, r8, r0
/* 0B7B5C 800BD0FC 5506B810 */  slwi    r6, r8, 0x17
/* 0B7B60 800BD100 7CA00278 */  xor     r0, r5, r0
/* 0B7B64 800BD104 7CC00238 */  eqv     r0, r6, r0
/* 0B7B68 800BD108 540717BC */  rlwinm  r7, r0, 2, 0x1e, 0x1e
/* 0B7B6C 800BD10C 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B7B70 800BD110 54E03830 */  slwi    r0, r7, 7
/* 0B7B74 800BD114 54E57820 */  slwi    r5, r7, 0xf
/* 0B7B78 800BD118 7CE00278 */  xor     r0, r7, r0
/* 0B7B7C 800BD11C 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7B80 800BD120 7CA00278 */  xor     r0, r5, r0
/* 0B7B84 800BD124 7CC00238 */  eqv     r0, r6, r0
/* 0B7B88 800BD128 540817BC */  rlwinm  r8, r0, 2, 0x1e, 0x1e
/* 0B7B8C 800BD12C 50E8083A */  rlwimi  r8, r7, 1, 0, 0x1d
/* 0B7B90 800BD130 55003830 */  slwi    r0, r8, 7
/* 0B7B94 800BD134 55057820 */  slwi    r5, r8, 0xf
/* 0B7B98 800BD138 7D000278 */  xor     r0, r8, r0
/* 0B7B9C 800BD13C 5506B810 */  slwi    r6, r8, 0x17
/* 0B7BA0 800BD140 7CA00278 */  xor     r0, r5, r0
/* 0B7BA4 800BD144 7CC00238 */  eqv     r0, r6, r0
/* 0B7BA8 800BD148 540717BC */  rlwinm  r7, r0, 2, 0x1e, 0x1e
/* 0B7BAC 800BD14C 5107083A */  rlwimi  r7, r8, 1, 0, 0x1d
/* 0B7BB0 800BD150 54E03830 */  slwi    r0, r7, 7
/* 0B7BB4 800BD154 54E57820 */  slwi    r5, r7, 0xf
/* 0B7BB8 800BD158 7CE00278 */  xor     r0, r7, r0
/* 0B7BBC 800BD15C 54E6B810 */  slwi    r6, r7, 0x17
/* 0B7BC0 800BD160 7CA00278 */  xor     r0, r5, r0
/* 0B7BC4 800BD164 7CC00238 */  eqv     r0, r6, r0
/* 0B7BC8 800BD168 540017BC */  rlwinm  r0, r0, 2, 0x1e, 0x1e
/* 0B7BCC 800BD16C 50E0083A */  rlwimi  r0, r7, 1, 0, 0x1d
/* 0B7BD0 800BD170 38630008 */  addi    r3, r3, 8
/* 0B7BD4 800BD174 4200FEF8 */  bdnz    lbl_800BD06C
lbl_800BD178:
/* 0B7BD8 800BD178 7CA32050 */  subf    r5, r3, r4
/* 0B7BDC 800BD17C 7C032040 */  cmplw   r3, r4
/* 0B7BE0 800BD180 7CA903A6 */  mtctr   r5
/* 0B7BE4 800BD184 4080002C */  bge     lbl_800BD1B0
lbl_800BD188:
/* 0B7BE8 800BD188 54033830 */  slwi    r3, r0, 7
/* 0B7BEC 800BD18C 54047820 */  slwi    r4, r0, 0xf
/* 0B7BF0 800BD190 7C031A78 */  xor     r3, r0, r3
/* 0B7BF4 800BD194 5405B810 */  slwi    r5, r0, 0x17
/* 0B7BF8 800BD198 7C831A78 */  xor     r3, r4, r3
/* 0B7BFC 800BD19C 7CA31A38 */  eqv     r3, r5, r3
/* 0B7C00 800BD1A0 5404083C */  slwi    r4, r0, 1
/* 0B7C04 800BD1A4 546017BC */  rlwinm  r0, r3, 2, 0x1e, 0x1e
/* 0B7C08 800BD1A8 7C800378 */  or      r0, r4, r0
/* 0B7C0C 800BD1AC 4200FFDC */  bdnz    lbl_800BD188
lbl_800BD1B0:
/* 0B7C10 800BD1B0 54033830 */  slwi    r3, r0, 7
/* 0B7C14 800BD1B4 54047820 */  slwi    r4, r0, 0xf
/* 0B7C18 800BD1B8 7C031A78 */  xor     r3, r0, r3
/* 0B7C1C 800BD1BC 5405B810 */  slwi    r5, r0, 0x17
/* 0B7C20 800BD1C0 7C831A78 */  xor     r3, r4, r3
/* 0B7C24 800BD1C4 7CA31A38 */  eqv     r3, r5, r3
/* 0B7C28 800BD1C8 54630FFE */  srwi    r3, r3, 0x1f
/* 0B7C2C 800BD1CC 7C001B78 */  or      r0, r0, r3
/* 0B7C30 800BD1D0 901D002C */  stw     r0, 0x2c(r29)
/* 0B7C34 800BD1D4 4BFFF11D */  bl      DummyLen
/* 0B7C38 800BD1D8 801D002C */  lwz     r0, 0x2c(r29)
/* 0B7C3C 800BD1DC 57C4801E */  slwi    r4, r30, 0x10
/* 0B7C40 800BD1E0 38C30000 */  addi    r6, r3, 0
/* 0B7C44 800BD1E4 7C800278 */  xor     r0, r4, r0
/* 0B7C48 800BD1E8 5404001E */  rlwinm  r4, r0, 0, 0, 0xf
/* 0B7C4C 800BD1EC 387F0000 */  addi    r3, r31, 0
/* 0B7C50 800BD1F0 38A10034 */  addi    r5, r1, 0x34
/* 0B7C54 800BD1F4 38E00001 */  li      r7, 1
/* 0B7C58 800BD1F8 4BFFEFB5 */  bl      ReadArrayUnlock
/* 0B7C5C 800BD1FC 2C030000 */  cmpwi   r3, 0
/* 0B7C60 800BD200 4080001C */  bge     lbl_800BD21C
/* 0B7C64 800BD204 7FE3FB78 */  mr      r3, r31
/* 0B7C68 800BD208 4BFE6A6D */  bl      EXIUnlock
/* 0B7C6C 800BD20C 387F0000 */  addi    r3, r31, 0
/* 0B7C70 800BD210 3880FFFD */  li      r4, -3
/* 0B7C74 800BD214 48001F4D */  bl      __CARDMountCallback
/* 0B7C78 800BD218 48000068 */  b       lbl_800BD280
lbl_800BD21C:
/* 0B7C7C 800BD21C 387F0000 */  addi    r3, r31, 0
/* 0B7C80 800BD220 38810030 */  addi    r4, r1, 0x30
/* 0B7C84 800BD224 4BFFDF4D */  bl      __CARDReadStatus
/* 0B7C88 800BD228 3B830000 */  addi    r28, r3, 0
/* 0B7C8C 800BD22C 387F0000 */  addi    r3, r31, 0
/* 0B7C90 800BD230 4BFE5E95 */  bl      EXIProbe
/* 0B7C94 800BD234 2C030000 */  cmpwi   r3, 0
/* 0B7C98 800BD238 4082001C */  bne     lbl_800BD254
/* 0B7C9C 800BD23C 7FE3FB78 */  mr      r3, r31
/* 0B7CA0 800BD240 4BFE6A35 */  bl      EXIUnlock
/* 0B7CA4 800BD244 387F0000 */  addi    r3, r31, 0
/* 0B7CA8 800BD248 3880FFFD */  li      r4, -3
/* 0B7CAC 800BD24C 48001F15 */  bl      __CARDMountCallback
/* 0B7CB0 800BD250 48000030 */  b       lbl_800BD280
lbl_800BD254:
/* 0B7CB4 800BD254 2C1C0000 */  cmpwi   r28, 0
/* 0B7CB8 800BD258 4082001C */  bne     lbl_800BD274
/* 0B7CBC 800BD25C 88010030 */  lbz     r0, 0x30(r1)
/* 0B7CC0 800BD260 54000673 */  rlwinm. r0, r0, 0, 0x19, 0x19
/* 0B7CC4 800BD264 40820010 */  bne     lbl_800BD274
/* 0B7CC8 800BD268 7FE3FB78 */  mr      r3, r31
/* 0B7CCC 800BD26C 4BFE6A09 */  bl      EXIUnlock
/* 0B7CD0 800BD270 3B80FFFB */  li      r28, -5
lbl_800BD274:
/* 0B7CD4 800BD274 387F0000 */  addi    r3, r31, 0
/* 0B7CD8 800BD278 389C0000 */  addi    r4, r28, 0
/* 0B7CDC 800BD27C 48001EE5 */  bl      __CARDMountCallback
lbl_800BD280:
/* 0B7CE0 800BD280 8001008C */  lwz     r0, 0x8c(r1)
/* 0B7CE4 800BD284 83E10084 */  lwz     r31, 0x84(r1)
/* 0B7CE8 800BD288 83C10080 */  lwz     r30, 0x80(r1)
/* 0B7CEC 800BD28C 83A1007C */  lwz     r29, 0x7c(r1)
/* 0B7CF0 800BD290 83810078 */  lwz     r28, 0x78(r1)
/* 0B7CF4 800BD294 38210088 */  addi    r1, r1, 0x88
/* 0B7CF8 800BD298 7C0803A6 */  mtlr    r0
/* 0B7CFC 800BD29C 4E800020 */  blr     

.section .data, "wa"

.balign 32

/* 000F08C0 800F3840 0160 */
CardData:
    .long 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000021, 0x02FF0021, 0x13061203, 0x12041305, 0x009200FF, 0x0088FFFF, 0x0089FFFF, 0x008AFFFF, 0x008BFFFF, 0x8F0002BF
    .long 0x008816FC, 0xDCD116FD, 0x000016FB, 0x000102BF, 0x008E25FF, 0x0380FF00, 0x02940027, 0x02BF008E, 0x1FDF24FF, 0x02400FFF, 0x00980400, 0x009A0010, 0x00990000, 0x8E0002BF, 0x009402BF, 0x864402BF
    .long 0x008816FC, 0xDCD116FD, 0x000316FB, 0x00018F00, 0x02BF008E, 0x0380CDD1, 0x02940048, 0x27FF0380, 0x00010295, 0x005A0380, 0x00020295, 0x8000029F, 0x00480021, 0x8E0002BF, 0x008E25FF, 0x02BF008E
    .long 0x25FF02BF, 0x008E25FF, 0x02BF008E, 0x00C5FFFF, 0x03400FFF, 0x1C9F02BF, 0x008E00C7, 0xFFFF02BF, 0x008E00C6, 0xFFFF02BF, 0x008E00C0, 0xFFFF02BF, 0x008E20FF, 0x03400FFF, 0x1F5F02BF, 0x008E21FF
    .long 0x02BF008E, 0x23FF1205, 0x1206029F, 0x80B50021, 0x27FC03C0, 0x8000029D, 0x008802DF, 0x27FE03C0, 0x8000029C, 0x008E02DF, 0x2ECE2CCF, 0x00F8FFCD, 0x00F9FFC9, 0x00FAFFCB, 0x26C902C0, 0x0004029D
    .long 0x009C02DF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .sdata, "wa"

.balign 8

/* 000F17D0 80135550 0004 */
next:
    .long 0x00000001
