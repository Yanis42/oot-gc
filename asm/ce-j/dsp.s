# dsp.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel DSPCheckMailToDSP
/* 0B4D68 800BA308 3C60CC00 */  lis     r3, DSP_REGS_BASE@ha
/* 0B4D6C 800BA30C A0035000 */  lhz     r0, (DSP_REGS_BASE + DSP_00)@l(r3)
/* 0B4D70 800BA310 54038FFE */  rlwinm  r3, r0, 0x11, 0x1f, 0x1f
/* 0B4D74 800BA314 4E800020 */  blr     

glabel DSPCheckMailFromDSP
/* 0B4D78 800BA318 3C60CC00 */  lis     r3, DSP_REGS_BASE@ha
/* 0B4D7C 800BA31C A0035004 */  lhz     r0, (DSP_REGS_BASE + DSP_04)@l(r3)
/* 0B4D80 800BA320 54038FFE */  rlwinm  r3, r0, 0x11, 0x1f, 0x1f
/* 0B4D84 800BA324 4E800020 */  blr     

glabel DSPReadMailFromDSP
/* 0B4D88 800BA328 3C60CC00 */  lis     r3, DSP_REGS_BASE@ha
/* 0B4D8C 800BA32C 38635000 */  addi    r3, r3, DSP_REGS_BASE@l
/* 0B4D90 800BA330 A0030004 */  lhz     r0, DSP_04(r3)
/* 0B4D94 800BA334 A0630006 */  lhz     r3, DSP_06(r3)
/* 0B4D98 800BA338 5003801E */  rlwimi  r3, r0, 0x10, 0, 0xf
/* 0B4D9C 800BA33C 4E800020 */  blr     

glabel DSPSendMailToDSP
/* 0B4DA0 800BA340 3C80CC00 */  lis     r4, DSP_REGS_BASE@ha
/* 0B4DA4 800BA344 5460843E */  srwi    r0, r3, 0x10
/* 0B4DA8 800BA348 B0045000 */  sth     r0, (DSP_REGS_BASE + DSP_00)@l(r4)
/* 0B4DAC 800BA34C B0645002 */  sth     r3, (DSP_REGS_BASE + DSP_02)@l(r4)
/* 0B4DB0 800BA350 4E800020 */  blr     

glabel DSPInit
/* 0B4DB4 800BA354 7C0802A6 */  mflr    r0
/* 0B4DB8 800BA358 3C60800F */  lis     r3, D_800F3618@ha
/* 0B4DBC 800BA35C 90010004 */  stw     r0, 4(r1)
/* 0B4DC0 800BA360 38A33618 */  addi    r5, r3, D_800F3618@l
/* 0B4DC4 800BA364 4CC63182 */  crclr   6
/* 0B4DC8 800BA368 38650048 */  addi    r3, r5, 0x48
/* 0B4DCC 800BA36C 9421FFF0 */  stwu    r1, -0x10(r1)
/* 0B4DD0 800BA370 38850068 */  addi    r4, r5, 0x68
/* 0B4DD4 800BA374 93E1000C */  stw     r31, 0xc(r1)
/* 0B4DD8 800BA378 38A50074 */  addi    r5, r5, 0x74
/* 0B4DDC 800BA37C 4800010D */  bl      __DSP_debug_printf
/* 0B4DE0 800BA380 800D8E90 */  lwz     r0, __DSP_init_flag@sda21(r13)
/* 0B4DE4 800BA384 2C000001 */  cmpwi   r0, 1
/* 0B4DE8 800BA388 4182007C */  beq     lbl_800BA404
/* 0B4DEC 800BA38C 806D8860 */  lwz     r3, __DSPVersion@sda21(r13)
/* 0B4DF0 800BA390 4BFE2301 */  bl      OSRegisterVersion
/* 0B4DF4 800BA394 4BFE4969 */  bl      OSDisableInterrupts
/* 0B4DF8 800BA398 3C80800C */  lis     r4, __DSPHandler@ha
/* 0B4DFC 800BA39C 3BE30000 */  addi    r31, r3, 0
/* 0B4E00 800BA3A0 3884A4D8 */  addi    r4, r4, __DSPHandler@l
/* 0B4E04 800BA3A4 38600007 */  li      r3, 7
/* 0B4E08 800BA3A8 4BFE49A1 */  bl      __OSSetInterruptHandler
/* 0B4E0C 800BA3AC 3C600100 */  lis     r3, 0x100
/* 0B4E10 800BA3B0 4BFE4D9D */  bl      __OSUnmaskInterrupts
/* 0B4E14 800BA3B4 3C60CC00 */  lis     r3, DSP_REGS_BASE@ha
/* 0B4E18 800BA3B8 38C35000 */  addi    r6, r3, DSP_REGS_BASE@l
/* 0B4E1C 800BA3BC A063500A */  lhz     r3, (DSP_REGS_BASE + DSP_0A)@l(r3)
/* 0B4E20 800BA3C0 3800FF57 */  li      r0, -169
/* 0B4E24 800BA3C4 7C600038 */  and     r0, r3, r0
/* 0B4E28 800BA3C8 60000800 */  ori     r0, r0, 0x800
/* 0B4E2C 800BA3CC B006000A */  sth     r0, DSP_0A(r6)
/* 0B4E30 800BA3D0 38A0FF53 */  li      r5, -173
/* 0B4E34 800BA3D4 38800000 */  li      r4, 0
/* 0B4E38 800BA3D8 A0E6000A */  lhz     r7, DSP_0A(r6)
/* 0B4E3C 800BA3DC 38000001 */  li      r0, 1
/* 0B4E40 800BA3E0 387F0000 */  addi    r3, r31, 0
/* 0B4E44 800BA3E4 7CE52838 */  and     r5, r7, r5
/* 0B4E48 800BA3E8 B0A6000A */  sth     r5, DSP_0A(r6)
/* 0B4E4C 800BA3EC 908D8EA0 */  stw     r4, __DSP_tmp_task@sda21(r13)
/* 0B4E50 800BA3F0 908D8EAC */  stw     r4, __DSP_curr_task@sda21(r13)
/* 0B4E54 800BA3F4 908D8EA4 */  stw     r4, __DSP_last_task@sda21(r13)
/* 0B4E58 800BA3F8 908D8EA8 */  stw     r4, __DSP_first_task@sda21(r13)
/* 0B4E5C 800BA3FC 900D8E90 */  stw     r0, __DSP_init_flag@sda21(r13)
/* 0B4E60 800BA400 4BFE4925 */  bl      OSRestoreInterrupts
lbl_800BA404:
/* 0B4E64 800BA404 80010014 */  lwz     r0, 0x14(r1)
/* 0B4E68 800BA408 83E1000C */  lwz     r31, 0xc(r1)
/* 0B4E6C 800BA40C 38210010 */  addi    r1, r1, 0x10
/* 0B4E70 800BA410 7C0803A6 */  mtlr    r0
/* 0B4E74 800BA414 4E800020 */  blr     

glabel DSPAddTask
/* 0B4E78 800BA418 7C0802A6 */  mflr    r0
/* 0B4E7C 800BA41C 90010004 */  stw     r0, 4(r1)
/* 0B4E80 800BA420 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0B4E84 800BA424 93E10014 */  stw     r31, 0x14(r1)
/* 0B4E88 800BA428 93C10010 */  stw     r30, 0x10(r1)
/* 0B4E8C 800BA42C 7C7E1B78 */  mr      r30, r3
/* 0B4E90 800BA430 4BFE48CD */  bl      OSDisableInterrupts
/* 0B4E94 800BA434 3BE30000 */  addi    r31, r3, 0
/* 0B4E98 800BA438 387E0000 */  addi    r3, r30, 0
/* 0B4E9C 800BA43C 480007ED */  bl      __DSP_insert_task
/* 0B4EA0 800BA440 38000000 */  li      r0, 0
/* 0B4EA4 800BA444 901E0000 */  stw     r0, 0(r30)
/* 0B4EA8 800BA448 38000001 */  li      r0, 1
/* 0B4EAC 800BA44C 387F0000 */  addi    r3, r31, 0
/* 0B4EB0 800BA450 901E0008 */  stw     r0, 8(r30)
/* 0B4EB4 800BA454 4BFE48D1 */  bl      OSRestoreInterrupts
/* 0B4EB8 800BA458 800D8EA8 */  lwz     r0, __DSP_first_task@sda21(r13)
/* 0B4EBC 800BA45C 7C1E0040 */  cmplw   r30, r0
/* 0B4EC0 800BA460 4082000C */  bne     lbl_800BA46C
/* 0B4EC4 800BA464 7FC3F378 */  mr      r3, r30
/* 0B4EC8 800BA468 48000635 */  bl      __DSP_boot_task
lbl_800BA46C:
/* 0B4ECC 800BA46C 7FC3F378 */  mr      r3, r30
/* 0B4ED0 800BA470 8001001C */  lwz     r0, 0x1c(r1)
/* 0B4ED4 800BA474 83E10014 */  lwz     r31, 0x14(r1)
/* 0B4ED8 800BA478 83C10010 */  lwz     r30, 0x10(r1)
/* 0B4EDC 800BA47C 38210018 */  addi    r1, r1, 0x18
/* 0B4EE0 800BA480 7C0803A6 */  mtlr    r0
/* 0B4EE4 800BA484 4E800020 */  blr     

.section .data, "wa"

.balign 8

/* 000F0698 800F3618 0045 */
D_800F3618:
    .asciz "<< Dolphin SDK - DSP\trelease build: Apr 17 2003 12:34:16 (0x2301) >>"
    .balign 4

/* 000F06E0 800F3660 001E */
D_800F3660:
    .asciz "DSPInit(): Build Date: %s %s\n"
    .balign 4

/* 000F0700 800F3680 000C */
D_800F3680:
    .asciz "Apr 17 2003"
    .balign 4

/* 000F070C 800F368C 0009 */
D_800F368C:
    .asciz "12:34:16"
    .balign 4

.section .sdata, "wa"

.balign 8

/* 000F17C0 80135540 0004 */
glabel __DSPVersion
    .long D_800F3618

.section .sbss, "wa"

.balign 8

/* 000F1DF0 80135B70 0004 */
__DSP_init_flag:
    .skip 4
