# nubevent.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800C7D80 - 0x800C7FDC

glabel TRKInitializeEventQueue
/* 0C4D80 800C7D80 7C0802A6 */  mflr      r0
/* 0C4D84 800C7D84 3C608019 */  lis       r3, D_80188DF0@ha
/* 0C4D88 800C7D88 90010004 */  stw       r0, 0x4(r1)
/* 0C4D8C 800C7D8C 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C4D90 800C7D90 93E1000C */  stw       r31, 0xc(r1)
/* 0C4D94 800C7D94 3BE38DF0 */  addi      r31, r3, D_80188DF0@l
/* 0C4D98 800C7D98 387F0000 */  addi      r3, r31, 0x0
/* 0C4D9C 800C7D9C 48002591 */  bl        fn_800CA32C
/* 0C4DA0 800C7DA0 7FE3FB78 */  mr        r3, r31
/* 0C4DA4 800C7DA4 48002591 */  bl        fn_800CA334
/* 0C4DA8 800C7DA8 38600000 */  li        r3, 0x0
/* 0C4DAC 800C7DAC 907F0004 */  stw       r3, 0x4(r31)
/* 0C4DB0 800C7DB0 38000100 */  li        r0, 0x100
/* 0C4DB4 800C7DB4 907F0008 */  stw       r3, 0x8(r31)
/* 0C4DB8 800C7DB8 7FE3FB78 */  mr        r3, r31
/* 0C4DBC 800C7DBC 901F0024 */  stw       r0, 0x24(r31)
/* 0C4DC0 800C7DC0 4800257D */  bl        fn_800CA33C
/* 0C4DC4 800C7DC4 38600000 */  li        r3, 0x0
/* 0C4DC8 800C7DC8 83E1000C */  lwz       r31, 0xc(r1)
/* 0C4DCC 800C7DCC 38210010 */  addi      r1, r1, 0x10
/* 0C4DD0 800C7DD0 80010004 */  lwz       r0, 0x4(r1)
/* 0C4DD4 800C7DD4 7C0803A6 */  mtlr      r0
/* 0C4DD8 800C7DD8 4E800020 */  blr

glabel fn_800C7DDC
/* 0C4DDC 800C7DDC 7C0802A6 */  mflr      r0
/* 0C4DE0 800C7DE0 38A0000C */  li        r5, 0xc
/* 0C4DE4 800C7DE4 90010004 */  stw       r0, 0x4(r1)
/* 0C4DE8 800C7DE8 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C4DEC 800C7DEC 4BF3B5BD */  bl        TRK_memcpy
/* 0C4DF0 800C7DF0 38210008 */  addi      r1, r1, 0x8
/* 0C4DF4 800C7DF4 80010004 */  lwz       r0, 0x4(r1)
/* 0C4DF8 800C7DF8 7C0803A6 */  mtlr      r0
/* 0C4DFC 800C7DFC 4E800020 */  blr

glabel TRKGetNextEvent
/* 0C4E00 800C7E00 7C0802A6 */  mflr      r0
/* 0C4E04 800C7E04 3C808019 */  lis       r4, D_80188DF0@ha
/* 0C4E08 800C7E08 90010004 */  stw       r0, 0x4(r1)
/* 0C4E0C 800C7E0C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0C4E10 800C7E10 93E10014 */  stw       r31, 0x14(r1)
/* 0C4E14 800C7E14 3BE48DF0 */  addi      r31, r4, D_80188DF0@l
/* 0C4E18 800C7E18 93C10010 */  stw       r30, 0x10(r1)
/* 0C4E1C 800C7E1C 93A1000C */  stw       r29, 0xc(r1)
/* 0C4E20 800C7E20 3BA00000 */  li        r29, 0x0
/* 0C4E24 800C7E24 93810008 */  stw       r28, 0x8(r1)
/* 0C4E28 800C7E28 3B830000 */  addi      r28, r3, 0x0
/* 0C4E2C 800C7E2C 387F0000 */  addi      r3, r31, 0x0
/* 0C4E30 800C7E30 48002505 */  bl        fn_800CA334
/* 0C4E34 800C7E34 3BDF0004 */  addi      r30, r31, 0x4
/* 0C4E38 800C7E38 801F0004 */  lwz       r0, 0x4(r31)
/* 0C4E3C 800C7E3C 2C000000 */  cmpwi     r0, 0x0
/* 0C4E40 800C7E40 40810050 */  ble       lbl_800C7E90
/* 0C4E44 800C7E44 3BBF0008 */  addi      r29, r31, 0x8
/* 0C4E48 800C7E48 801F0008 */  lwz       r0, 0x8(r31)
/* 0C4E4C 800C7E4C 387C0000 */  addi      r3, r28, 0x0
/* 0C4E50 800C7E50 1C00000C */  mulli     r0, r0, 0xc
/* 0C4E54 800C7E54 7C9F0214 */  add       r4, r31, r0
/* 0C4E58 800C7E58 3884000C */  addi      r4, r4, 0xc
/* 0C4E5C 800C7E5C 4BFFFF81 */  bl        fn_800C7DDC
/* 0C4E60 800C7E60 807E0000 */  lwz       r3, 0x0(r30)
/* 0C4E64 800C7E64 3803FFFF */  subi      r0, r3, 0x1
/* 0C4E68 800C7E68 901E0000 */  stw       r0, 0x0(r30)
/* 0C4E6C 800C7E6C 807D0000 */  lwz       r3, 0x0(r29)
/* 0C4E70 800C7E70 38030001 */  addi      r0, r3, 0x1
/* 0C4E74 800C7E74 901D0000 */  stw       r0, 0x0(r29)
/* 0C4E78 800C7E78 801D0000 */  lwz       r0, 0x0(r29)
/* 0C4E7C 800C7E7C 2C000002 */  cmpwi     r0, 0x2
/* 0C4E80 800C7E80 4082000C */  bne       lbl_800C7E8C
/* 0C4E84 800C7E84 38000000 */  li        r0, 0x0
/* 0C4E88 800C7E88 901D0000 */  stw       r0, 0x0(r29)
lbl_800C7E8C:
/* 0C4E8C 800C7E8C 3BA00001 */  li        r29, 0x1
lbl_800C7E90:
/* 0C4E90 800C7E90 3C608019 */  lis       r3, D_80188DF0@ha
/* 0C4E94 800C7E94 38638DF0 */  addi      r3, r3, D_80188DF0@l
/* 0C4E98 800C7E98 480024A5 */  bl        fn_800CA33C
/* 0C4E9C 800C7E9C 7FA3EB78 */  mr        r3, r29
/* 0C4EA0 800C7EA0 83E10014 */  lwz       r31, 0x14(r1)
/* 0C4EA4 800C7EA4 83C10010 */  lwz       r30, 0x10(r1)
/* 0C4EA8 800C7EA8 83A1000C */  lwz       r29, 0xc(r1)
/* 0C4EAC 800C7EAC 83810008 */  lwz       r28, 0x8(r1)
/* 0C4EB0 800C7EB0 38210018 */  addi      r1, r1, 0x18
/* 0C4EB4 800C7EB4 80010004 */  lwz       r0, 0x4(r1)
/* 0C4EB8 800C7EB8 7C0803A6 */  mtlr      r0
/* 0C4EBC 800C7EBC 4E800020 */  blr

glabel fn_800C7EC0
/* 0C4EC0 800C7EC0 7C0802A6 */  mflr      r0
/* 0C4EC4 800C7EC4 3C808019 */  lis       r4, D_80188DF0@ha
/* 0C4EC8 800C7EC8 90010004 */  stw       r0, 0x4(r1)
/* 0C4ECC 800C7ECC 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0C4ED0 800C7ED0 93E10014 */  stw       r31, 0x14(r1)
/* 0C4ED4 800C7ED4 3BE30000 */  addi      r31, r3, 0x0
/* 0C4ED8 800C7ED8 93C10010 */  stw       r30, 0x10(r1)
/* 0C4EDC 800C7EDC 3BC48DF0 */  addi      r30, r4, D_80188DF0@l
/* 0C4EE0 800C7EE0 387E0000 */  addi      r3, r30, 0x0
/* 0C4EE4 800C7EE4 93A1000C */  stw       r29, 0xc(r1)
/* 0C4EE8 800C7EE8 93810008 */  stw       r28, 0x8(r1)
/* 0C4EEC 800C7EEC 3B800000 */  li        r28, 0x0
/* 0C4EF0 800C7EF0 48002445 */  bl        fn_800CA334
/* 0C4EF4 800C7EF4 3BBE0004 */  addi      r29, r30, 0x4
/* 0C4EF8 800C7EF8 807E0004 */  lwz       r3, 0x4(r30)
/* 0C4EFC 800C7EFC 2C030002 */  cmpwi     r3, 0x2
/* 0C4F00 800C7F00 4082000C */  bne       lbl_800C7F0C
/* 0C4F04 800C7F04 3B800100 */  li        r28, 0x100
/* 0C4F08 800C7F08 48000068 */  b         lbl_800C7F70
lbl_800C7F0C:
/* 0C4F0C 800C7F0C 801E0008 */  lwz       r0, 0x8(r30)
/* 0C4F10 800C7F10 389F0000 */  addi      r4, r31, 0x0
/* 0C4F14 800C7F14 7C001A14 */  add       r0, r0, r3
/* 0C4F18 800C7F18 7C030E70 */  srawi     r3, r0, 1
/* 0C4F1C 800C7F1C 7C630194 */  addze     r3, r3
/* 0C4F20 800C7F20 5463083C */  slwi      r3, r3, 1
/* 0C4F24 800C7F24 7C630010 */  subfc     r3, r3, r0
/* 0C4F28 800C7F28 1C03000C */  mulli     r0, r3, 0xc
/* 0C4F2C 800C7F2C 7FFE0214 */  add       r31, r30, r0
/* 0C4F30 800C7F30 387F000C */  addi      r3, r31, 0xc
/* 0C4F34 800C7F34 4BFFFEA9 */  bl        fn_800C7DDC
/* 0C4F38 800C7F38 389E0024 */  addi      r4, r30, 0x24
/* 0C4F3C 800C7F3C 801E0024 */  lwz       r0, 0x24(r30)
/* 0C4F40 800C7F40 901F0010 */  stw       r0, 0x10(r31)
/* 0C4F44 800C7F44 807E0024 */  lwz       r3, 0x24(r30)
/* 0C4F48 800C7F48 38030001 */  addi      r0, r3, 0x1
/* 0C4F4C 800C7F4C 901E0024 */  stw       r0, 0x24(r30)
/* 0C4F50 800C7F50 801E0024 */  lwz       r0, 0x24(r30)
/* 0C4F54 800C7F54 28000100 */  cmplwi    r0, 0x100
/* 0C4F58 800C7F58 4080000C */  bge       lbl_800C7F64
/* 0C4F5C 800C7F5C 38000100 */  li        r0, 0x100
/* 0C4F60 800C7F60 90040000 */  stw       r0, 0x0(r4)
lbl_800C7F64:
/* 0C4F64 800C7F64 807D0000 */  lwz       r3, 0x0(r29)
/* 0C4F68 800C7F68 38030001 */  addi      r0, r3, 0x1
/* 0C4F6C 800C7F6C 901D0000 */  stw       r0, 0x0(r29)
lbl_800C7F70:
/* 0C4F70 800C7F70 3C608019 */  lis       r3, D_80188DF0@ha
/* 0C4F74 800C7F74 38638DF0 */  addi      r3, r3, D_80188DF0@l
/* 0C4F78 800C7F78 480023C5 */  bl        fn_800CA33C
/* 0C4F7C 800C7F7C 7F83E378 */  mr        r3, r28
/* 0C4F80 800C7F80 83E10014 */  lwz       r31, 0x14(r1)
/* 0C4F84 800C7F84 83C10010 */  lwz       r30, 0x10(r1)
/* 0C4F88 800C7F88 83A1000C */  lwz       r29, 0xc(r1)
/* 0C4F8C 800C7F8C 83810008 */  lwz       r28, 0x8(r1)
/* 0C4F90 800C7F90 38210018 */  addi      r1, r1, 0x18
/* 0C4F94 800C7F94 80010004 */  lwz       r0, 0x4(r1)
/* 0C4F98 800C7F98 7C0803A6 */  mtlr      r0
/* 0C4F9C 800C7F9C 4E800020 */  blr

glabel fn_800C7FA0
/* 0C4FA0 800C7FA0 98830000 */  stb       r4, 0x0(r3)
/* 0C4FA4 800C7FA4 38800000 */  li        r4, 0x0
/* 0C4FA8 800C7FA8 3800FFFF */  li        r0, -0x1
/* 0C4FAC 800C7FAC 90830004 */  stw       r4, 0x4(r3)
/* 0C4FB0 800C7FB0 90030008 */  stw       r0, 0x8(r3)
/* 0C4FB4 800C7FB4 4E800020 */  blr

glabel TRKDestructEvent
/* 0C4FB8 800C7FB8 7C0802A6 */  mflr      r0
/* 0C4FBC 800C7FBC 90010004 */  stw       r0, 0x4(r1)
/* 0C4FC0 800C7FC0 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C4FC4 800C7FC4 80630008 */  lwz       r3, 0x8(r3)
/* 0C4FC8 800C7FC8 48000319 */  bl        fn_800C82E0
/* 0C4FCC 800C7FCC 38210008 */  addi      r1, r1, 0x8
/* 0C4FD0 800C7FD0 80010004 */  lwz       r0, 0x4(r1)
/* 0C4FD4 800C7FD4 7C0803A6 */  mtlr      r0
/* 0C4FD8 800C7FD8 4E800020 */  blr

# 0x80188DF0 - 0x80188E18
.section .bss, "wa"

glabel D_80188DF0
	.skip 0x28
