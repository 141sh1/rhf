.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800FB090
func_800FB090:
/* 800FB090 000F69B0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800FB094 000F69B4  40 86 00 24 */	bne cr1, lbl_800FB0B8
/* 800FB098 000F69B8  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800FB09C 000F69BC  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800FB0A0 000F69C0  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800FB0A4 000F69C4  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800FB0A8 000F69C8  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 800FB0AC 000F69CC  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 800FB0B0 000F69D0  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 800FB0B4 000F69D4  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_800FB0B8:
/* 800FB0B8 000F69D8  90 61 00 08 */	stw r3, 8(r1)
/* 800FB0BC 000F69DC  90 81 00 0C */	stw r4, 0xc(r1)
/* 800FB0C0 000F69E0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800FB0C4 000F69E4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 800FB0C8 000F69E8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800FB0CC 000F69EC  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800FB0D0 000F69F0  91 21 00 20 */	stw r9, 0x20(r1)
/* 800FB0D4 000F69F4  91 41 00 24 */	stw r10, 0x24(r1)
/* 800FB0D8 000F69F8  38 21 00 70 */	addi r1, r1, 0x70
/* 800FB0DC 000F69FC  4E 80 00 20 */	blr 