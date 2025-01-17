.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800F9CE0
func_800F9CE0:
/* 800F9CE0 000F5600  C0 E3 01 58 */	lfs f7, 0x158(r3)
/* 800F9CE4 000F5604  38 00 00 00 */	li r0, 0
/* 800F9CE8 000F5608  C0 42 F9 28 */	lfs f2, lbl_80328908-_SDA2_BASE_(r2)
/* 800F9CEC 000F560C  38 80 00 05 */	li r4, 5
/* 800F9CF0 000F5610  C0 C3 01 50 */	lfs f6, 0x150(r3)
/* 800F9CF4 000F5614  C0 A3 01 48 */	lfs f5, 0x148(r3)
/* 800F9CF8 000F5618  C0 83 01 54 */	lfs f4, 0x154(r3)
/* 800F9CFC 000F561C  C0 63 01 5C */	lfs f3, 0x15c(r3)
/* 800F9D00 000F5620  C0 22 F9 2C */	lfs f1, lbl_8032890C-_SDA2_BASE_(r2)
/* 800F9D04 000F5624  C0 03 01 4C */	lfs f0, 0x14c(r3)
/* 800F9D08 000F5628  90 83 01 10 */	stw r4, 0x110(r3)
/* 800F9D0C 000F562C  D0 E3 01 14 */	stfs f7, 0x114(r3)
/* 800F9D10 000F5630  D0 E3 01 18 */	stfs f7, 0x118(r3)
/* 800F9D14 000F5634  90 03 01 1C */	stw r0, 0x11c(r3)
/* 800F9D18 000F5638  D0 C3 01 20 */	stfs f6, 0x120(r3)
/* 800F9D1C 000F563C  D0 A3 01 24 */	stfs f5, 0x124(r3)
/* 800F9D20 000F5640  D0 83 01 28 */	stfs f4, 0x128(r3)
/* 800F9D24 000F5644  D0 63 01 2C */	stfs f3, 0x12c(r3)
/* 800F9D28 000F5648  D0 43 01 30 */	stfs f2, 0x130(r3)
/* 800F9D2C 000F564C  D0 23 01 34 */	stfs f1, 0x134(r3)
/* 800F9D30 000F5650  90 03 01 38 */	stw r0, 0x138(r3)
/* 800F9D34 000F5654  90 03 01 3C */	stw r0, 0x13c(r3)
/* 800F9D38 000F5658  D0 03 01 40 */	stfs f0, 0x140(r3)
/* 800F9D3C 000F565C  D0 43 01 44 */	stfs f2, 0x144(r3)
/* 800F9D40 000F5660  48 00 00 E0 */	b func_800F9E20

.balign 16, 0
.global func_800F9D50
func_800F9D50:
/* 800F9D50 000F5670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F9D54 000F5674  7C 08 02 A6 */	mflr r0
/* 800F9D58 000F5678  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F9D5C 000F567C  48 00 03 F5 */	bl func_800FA150
/* 800F9D60 000F5680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F9D64 000F5684  38 60 00 01 */	li r3, 1
/* 800F9D68 000F5688  7C 08 03 A6 */	mtlr r0
/* 800F9D6C 000F568C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F9D70 000F5690  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800F9D80
func_800F9D80:
/* 800F9D80 000F56A0  48 00 04 30 */	b func_800FA1B0


.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_80328908

lbl_80328908:

	# ROM: 0x323B68
	.4byte 0


.global lbl_8032890C

lbl_8032890C:

	# ROM: 0x323B6C
	.4byte 0x3F800000
