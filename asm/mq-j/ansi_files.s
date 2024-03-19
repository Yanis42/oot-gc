# ansi_files.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800F4E98 - 0x800F4F70
.section .data, "wa"

.balign 8

glabel __files
	.long 0x00000000
	.long 0x08800000
	.long 0x00000000
lbl_800F4EA4:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long __files, lbl_800F4EA4
	.long 0x00000001
	.long __files, lbl_800F4EA4
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long __read_console
	.long __write_console
	.long __close_console
	.long 0x00000000
	.long 0x00000000
	.long 0x10800000
	.long 0x00000000
lbl_800F4EEC:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long __files, lbl_800F4EEC
	.long 0x00000001
	.long __files, lbl_800F4EEC
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long __read_console
	.long __write_console
	.long __close_console
	.long 0x00000000
	.long 0x00000000
	.long 0x10800000
	.long 0x00000000
lbl_800F4F34:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long __files, lbl_800F4F34
	.long 0x00000001
	.long __files, lbl_800F4F34
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long __read_console
	.long __write_console
	.long __close_console
	.long 0x00000000
