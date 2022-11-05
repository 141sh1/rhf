.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_8010361C
func_8010361C:
/* 8010361C 000FEF3C  88 E3 00 00 */	lbz r7, 0(r3)
/* 80103620 000FEF40  2C 04 00 03 */	cmpwi r4, 3
/* 80103624 000FEF44  7C 66 1B 78 */	mr r6, r3
/* 80103628 000FEF48  38 00 00 08 */	li r0, 8
/* 8010362C 000FEF4C  7C E7 07 74 */	extsb r7, r7
/* 80103630 000FEF50  39 00 00 04 */	li r8, 4
/* 80103634 000FEF54  39 20 00 01 */	li r9, 1
/* 80103638 000FEF58  38 A0 00 00 */	li r5, 0
/* 8010363C 000FEF5C  39 40 00 00 */	li r10, 0
/* 80103640 000FEF60  39 60 00 04 */	li r11, 4
/* 80103644 000FEF64  40 82 00 1C */	bne lbl_80103660
/* 80103648 000FEF68  88 E3 00 01 */	lbz r7, 1(r3)
/* 8010364C 000FEF6C  38 C3 00 01 */	addi r6, r3, 1
/* 80103650 000FEF70  39 00 00 08 */	li r8, 8
/* 80103654 000FEF74  39 40 00 20 */	li r10, 0x20
/* 80103658 000FEF78  7C E7 07 74 */	extsb r7, r7
/* 8010365C 000FEF7C  39 60 00 08 */	li r11, 8
lbl_80103660:
/* 80103660 000FEF80  2C 04 00 02 */	cmpwi r4, 2
/* 80103664 000FEF84  40 82 00 1C */	bne lbl_80103680
/* 80103668 000FEF88  54 E0 07 FF */	clrlwi. r0, r7, 0x1f
/* 8010366C 000FEF8C  39 00 00 08 */	li r8, 8
/* 80103670 000FEF90  38 00 00 07 */	li r0, 7
/* 80103674 000FEF94  41 82 00 08 */	beq lbl_8010367C
/* 80103678 000FEF98  38 A0 00 01 */	li r5, 1
lbl_8010367C:
/* 8010367C 000FEF9C  39 20 00 02 */	li r9, 2
lbl_80103680:
/* 80103680 000FEFA0  7C 07 00 00 */	cmpw r7, r0
/* 80103684 000FEFA4  40 80 00 24 */	bge lbl_801036A8
/* 80103688 000FEFA8  7C E7 2A 14 */	add r7, r7, r5
/* 8010368C 000FEFAC  80 03 00 08 */	lwz r0, 8(r3)
/* 80103690 000FEFB0  7C A7 59 D6 */	mullw r5, r7, r11
/* 80103694 000FEFB4  7C 60 52 14 */	add r3, r0, r10
/* 80103698 000FEFB8  7C 07 4A 14 */	add r0, r7, r9
/* 8010369C 000FEFBC  98 06 00 00 */	stb r0, 0(r6)
/* 801036A0 000FEFC0  7C A5 1A 14 */	add r5, r5, r3
/* 801036A4 000FEFC4  48 00 00 2C */	b lbl_801036D0
lbl_801036A8:
/* 801036A8 000FEFC8  38 00 00 08 */	li r0, 8
/* 801036AC 000FEFCC  98 06 00 00 */	stb r0, 0(r6)
/* 801036B0 000FEFD0  38 08 FF FF */	addi r0, r8, -1
/* 801036B4 000FEFD4  80 A3 00 04 */	lwz r5, 4(r3)
/* 801036B8 000FEFD8  7C 06 00 F8 */	nor r6, r0, r0
/* 801036BC 000FEFDC  7C A8 2A 14 */	add r5, r8, r5
/* 801036C0 000FEFE0  38 05 FF FF */	addi r0, r5, -1
/* 801036C4 000FEFE4  7C C5 00 38 */	and r5, r6, r0
/* 801036C8 000FEFE8  7C 05 42 14 */	add r0, r5, r8
/* 801036CC 000FEFEC  90 03 00 04 */	stw r0, 4(r3)
lbl_801036D0:
/* 801036D0 000FEFF0  2C 04 00 00 */	cmpwi r4, 0
/* 801036D4 000FEFF4  40 82 00 08 */	bne lbl_801036DC
/* 801036D8 000FEFF8  80 A5 00 00 */	lwz r5, 0(r5)
lbl_801036DC:
/* 801036DC 000FEFFC  7C A3 2B 78 */	mr r3, r5
/* 801036E0 000FF000  4E 80 00 20 */	blr 