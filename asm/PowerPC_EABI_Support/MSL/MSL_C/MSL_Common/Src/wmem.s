.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_8010AAD4
func_8010AAD4:
/* 8010AAD4 001063F4  54 A5 08 3C */	slwi r5, r5, 1
/* 8010AAD8 001063F8  4B EF 98 EC */	b func_800043C4

.global func_8010AADC
func_8010AADC:
/* 8010AADC 001063FC  7C A9 03 A6 */	mtctr r5
/* 8010AAE0 00106400  2C 05 00 00 */	cmpwi r5, 0
/* 8010AAE4 00106404  41 82 00 18 */	beq lbl_8010AAFC
lbl_8010AAE8:
/* 8010AAE8 00106408  A0 03 00 00 */	lhz r0, 0(r3)
/* 8010AAEC 0010640C  7C 00 20 40 */	cmplw r0, r4
/* 8010AAF0 00106410  4D 82 00 20 */	beqlr 
/* 8010AAF4 00106414  38 63 00 02 */	addi r3, r3, 2
/* 8010AAF8 00106418  42 00 FF F0 */	bdnz lbl_8010AAE8
lbl_8010AAFC:
/* 8010AAFC 0010641C  38 60 00 00 */	li r3, 0
/* 8010AB00 00106420  4E 80 00 20 */	blr 
