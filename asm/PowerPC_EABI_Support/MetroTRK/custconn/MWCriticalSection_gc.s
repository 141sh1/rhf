.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80113F80
func_80113F80:
/* 80113F80 0010F8A0  4E 80 00 20 */	blr 

.global func_80113F84
func_80113F84:
/* 80113F84 0010F8A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80113F88 0010F8A8  7C 08 02 A6 */	mflr r0
/* 80113F8C 0010F8AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80113F90 0010F8B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80113F94 0010F8B4  7C 7F 1B 78 */	mr r31, r3
/* 80113F98 0010F8B8  4B FC BE 89 */	bl func_800DFE20
/* 80113F9C 0010F8BC  90 7F 00 00 */	stw r3, 0(r31)
/* 80113FA0 0010F8C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80113FA4 0010F8C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80113FA8 0010F8C8  7C 08 03 A6 */	mtlr r0
/* 80113FAC 0010F8CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80113FB0 0010F8D0  4E 80 00 20 */	blr 

.global func_80113FB4
func_80113FB4:
/* 80113FB4 0010F8D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80113FB8 0010F8D8  4B FC BE A8 */	b func_800DFE60
