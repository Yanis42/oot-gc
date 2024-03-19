# dvdqueue.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B4430 - 0x800B4628

glabel __DVDClearWaitingQueue
/* 0B1430 800B4430 3C608019 */  lis       r3, WaitingQueue@ha
/* 0B1434 800B4434 386388D8 */  addi      r3, r3, WaitingQueue@l
/* 0B1438 800B4438 90630000 */  stw       r3, 0x0(r3)
/* 0B143C 800B443C 38A30008 */  addi      r5, r3, 0x8
/* 0B1440 800B4440 38830010 */  addi      r4, r3, 0x10
/* 0B1444 800B4444 90630004 */  stw       r3, 0x4(r3)
/* 0B1448 800B4448 38630018 */  addi      r3, r3, 0x18
/* 0B144C 800B444C 90A50000 */  stw       r5, 0x0(r5)
/* 0B1450 800B4450 90A50004 */  stw       r5, 0x4(r5)
/* 0B1454 800B4454 90840000 */  stw       r4, 0x0(r4)
/* 0B1458 800B4458 90840004 */  stw       r4, 0x4(r4)
/* 0B145C 800B445C 90630000 */  stw       r3, 0x0(r3)
/* 0B1460 800B4460 90630004 */  stw       r3, 0x4(r3)
/* 0B1464 800B4464 4E800020 */  blr

glabel __DVDPushWaitingQueue
/* 0B1468 800B4468 7C0802A6 */  mflr      r0
/* 0B146C 800B446C 90010004 */  stw       r0, 0x4(r1)
/* 0B1470 800B4470 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B1474 800B4474 93E10014 */  stw       r31, 0x14(r1)
/* 0B1478 800B4478 3BE40000 */  addi      r31, r4, 0x0
/* 0B147C 800B447C 93C10010 */  stw       r30, 0x10(r1)
/* 0B1480 800B4480 3BC30000 */  addi      r30, r3, 0x0
/* 0B1484 800B4484 4BFE9DC5 */  bl        OSDisableInterrupts
/* 0B1488 800B4488 3C808019 */  lis       r4, WaitingQueue@ha
/* 0B148C 800B448C 57C51838 */  slwi      r5, r30, 3
/* 0B1490 800B4490 380488D8 */  addi      r0, r4, WaitingQueue@l
/* 0B1494 800B4494 7CA02A14 */  add       r5, r0, r5
/* 0B1498 800B4498 80850004 */  lwz       r4, 0x4(r5)
/* 0B149C 800B449C 93E40000 */  stw       r31, 0x0(r4)
/* 0B14A0 800B44A0 80050004 */  lwz       r0, 0x4(r5)
/* 0B14A4 800B44A4 901F0004 */  stw       r0, 0x4(r31)
/* 0B14A8 800B44A8 90BF0000 */  stw       r5, 0x0(r31)
/* 0B14AC 800B44AC 93E50004 */  stw       r31, 0x4(r5)
/* 0B14B0 800B44B0 4BFE9DC1 */  bl        OSRestoreInterrupts
/* 0B14B4 800B44B4 8001001C */  lwz       r0, 0x1c(r1)
/* 0B14B8 800B44B8 38600001 */  li        r3, 0x1
/* 0B14BC 800B44BC 83E10014 */  lwz       r31, 0x14(r1)
/* 0B14C0 800B44C0 83C10010 */  lwz       r30, 0x10(r1)
/* 0B14C4 800B44C4 38210018 */  addi      r1, r1, 0x18
/* 0B14C8 800B44C8 7C0803A6 */  mtlr      r0
/* 0B14CC 800B44CC 4E800020 */  blr

glabel __DVDPopWaitingQueue
/* 0B14D0 800B44D0 7C0802A6 */  mflr      r0
/* 0B14D4 800B44D4 90010004 */  stw       r0, 0x4(r1)
/* 0B14D8 800B44D8 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0B14DC 800B44DC 93E1000C */  stw       r31, 0xc(r1)
/* 0B14E0 800B44E0 4BFE9D69 */  bl        OSDisableInterrupts
/* 0B14E4 800B44E4 38000004 */  li        r0, 0x4
/* 0B14E8 800B44E8 3C808019 */  lis       r4, WaitingQueue@ha
/* 0B14EC 800B44EC 7C0903A6 */  mtctr     r0
/* 0B14F0 800B44F0 388488D8 */  addi      r4, r4, WaitingQueue@l
/* 0B14F4 800B44F4 3BE00000 */  li        r31, 0x0
lbl_800B44F8:
/* 0B14F8 800B44F8 80040000 */  lwz       r0, 0x0(r4)
/* 0B14FC 800B44FC 7C002040 */  cmplw     r0, r4
/* 0B1500 800B4500 41820048 */  beq       lbl_800B4548
/* 0B1504 800B4504 4BFE9D6D */  bl        OSRestoreInterrupts
/* 0B1508 800B4508 4BFE9D41 */  bl        OSDisableInterrupts
/* 0B150C 800B450C 3C808019 */  lis       r4, WaitingQueue@ha
/* 0B1510 800B4510 57E51838 */  slwi      r5, r31, 3
/* 0B1514 800B4514 380488D8 */  addi      r0, r4, WaitingQueue@l
/* 0B1518 800B4518 7CA02A14 */  add       r5, r0, r5
/* 0B151C 800B451C 83E50000 */  lwz       r31, 0x0(r5)
/* 0B1520 800B4520 801F0000 */  lwz       r0, 0x0(r31)
/* 0B1524 800B4524 90050000 */  stw       r0, 0x0(r5)
/* 0B1528 800B4528 809F0000 */  lwz       r4, 0x0(r31)
/* 0B152C 800B452C 90A40004 */  stw       r5, 0x4(r4)
/* 0B1530 800B4530 4BFE9D41 */  bl        OSRestoreInterrupts
/* 0B1534 800B4534 38000000 */  li        r0, 0x0
/* 0B1538 800B4538 901F0000 */  stw       r0, 0x0(r31)
/* 0B153C 800B453C 7FE3FB78 */  mr        r3, r31
/* 0B1540 800B4540 901F0004 */  stw       r0, 0x4(r31)
/* 0B1544 800B4544 48000018 */  b         lbl_800B455C
lbl_800B4548:
/* 0B1548 800B4548 38840008 */  addi      r4, r4, 0x8
/* 0B154C 800B454C 3BFF0001 */  addi      r31, r31, 0x1
/* 0B1550 800B4550 4200FFA8 */  bdnz      lbl_800B44F8
/* 0B1554 800B4554 4BFE9D1D */  bl        OSRestoreInterrupts
/* 0B1558 800B4558 38600000 */  li        r3, 0x0
lbl_800B455C:
/* 0B155C 800B455C 80010014 */  lwz       r0, 0x14(r1)
/* 0B1560 800B4560 83E1000C */  lwz       r31, 0xc(r1)
/* 0B1564 800B4564 38210010 */  addi      r1, r1, 0x10
/* 0B1568 800B4568 7C0803A6 */  mtlr      r0
/* 0B156C 800B456C 4E800020 */  blr

glabel __DVDCheckWaitingQueue
/* 0B1570 800B4570 7C0802A6 */  mflr      r0
/* 0B1574 800B4574 90010004 */  stw       r0, 0x4(r1)
/* 0B1578 800B4578 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B157C 800B457C 4BFE9CCD */  bl        OSDisableInterrupts
/* 0B1580 800B4580 38000004 */  li        r0, 0x4
/* 0B1584 800B4584 3C808019 */  lis       r4, WaitingQueue@ha
/* 0B1588 800B4588 7C0903A6 */  mtctr     r0
/* 0B158C 800B458C 388488D8 */  addi      r4, r4, WaitingQueue@l
lbl_800B4590:
/* 0B1590 800B4590 80040000 */  lwz       r0, 0x0(r4)
/* 0B1594 800B4594 7C002040 */  cmplw     r0, r4
/* 0B1598 800B4598 41820010 */  beq       lbl_800B45A8
/* 0B159C 800B459C 4BFE9CD5 */  bl        OSRestoreInterrupts
/* 0B15A0 800B45A0 38600001 */  li        r3, 0x1
/* 0B15A4 800B45A4 48000014 */  b         lbl_800B45B8
lbl_800B45A8:
/* 0B15A8 800B45A8 38840008 */  addi      r4, r4, 0x8
/* 0B15AC 800B45AC 4200FFE4 */  bdnz      lbl_800B4590
/* 0B15B0 800B45B0 4BFE9CC1 */  bl        OSRestoreInterrupts
/* 0B15B4 800B45B4 38600000 */  li        r3, 0x0
lbl_800B45B8:
/* 0B15B8 800B45B8 8001000C */  lwz       r0, 0xc(r1)
/* 0B15BC 800B45BC 38210008 */  addi      r1, r1, 0x8
/* 0B15C0 800B45C0 7C0803A6 */  mtlr      r0
/* 0B15C4 800B45C4 4E800020 */  blr

glabel __DVDDequeueWaitingQueue
/* 0B15C8 800B45C8 7C0802A6 */  mflr      r0
/* 0B15CC 800B45CC 90010004 */  stw       r0, 0x4(r1)
/* 0B15D0 800B45D0 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B15D4 800B45D4 93E10014 */  stw       r31, 0x14(r1)
/* 0B15D8 800B45D8 7C7F1B78 */  mr        r31, r3
/* 0B15DC 800B45DC 4BFE9C6D */  bl        OSDisableInterrupts
/* 0B15E0 800B45E0 809F0004 */  lwz       r4, 0x4(r31)
/* 0B15E4 800B45E4 80BF0000 */  lwz       r5, 0x0(r31)
/* 0B15E8 800B45E8 28040000 */  cmplwi    r4, 0x0
/* 0B15EC 800B45EC 4182000C */  beq       lbl_800B45F8
/* 0B15F0 800B45F0 28050000 */  cmplwi    r5, 0x0
/* 0B15F4 800B45F4 40820010 */  bne       lbl_800B4604
lbl_800B45F8:
/* 0B15F8 800B45F8 4BFE9C79 */  bl        OSRestoreInterrupts
/* 0B15FC 800B45FC 38600000 */  li        r3, 0x0
/* 0B1600 800B4600 48000014 */  b         lbl_800B4614
lbl_800B4604:
/* 0B1604 800B4604 90A40000 */  stw       r5, 0x0(r4)
/* 0B1608 800B4608 90850004 */  stw       r4, 0x4(r5)
/* 0B160C 800B460C 4BFE9C65 */  bl        OSRestoreInterrupts
/* 0B1610 800B4610 38600001 */  li        r3, 0x1
lbl_800B4614:
/* 0B1614 800B4614 8001001C */  lwz       r0, 0x1c(r1)
/* 0B1618 800B4618 83E10014 */  lwz       r31, 0x14(r1)
/* 0B161C 800B461C 38210018 */  addi      r1, r1, 0x18
/* 0B1620 800B4620 7C0803A6 */  mtlr      r0
/* 0B1624 800B4624 4E800020 */  blr

# 0x801888D8 - 0x801888F8
.section .bss, "wa"

WaitingQueue:
	.skip 0x20
