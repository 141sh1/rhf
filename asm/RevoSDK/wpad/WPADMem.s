.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80136E00
func_80136E00:
/* 80136E00 00132720  3C 80 80 38 */	lis r4, lbl_80378410@ha
/* 80136E04 00132724  54 63 10 3A */	slwi r3, r3, 2
/* 80136E08 00132728  38 84 84 10 */	addi r4, r4, lbl_80378410@l
/* 80136E0C 0013272C  38 00 00 00 */	li r0, 0
/* 80136E10 00132730  7C 64 18 2E */	lwzx r3, r4, r3
/* 80136E14 00132734  90 03 0B 8C */	stw r0, 0xb8c(r3)
/* 80136E18 00132738  90 03 0B 90 */	stw r0, 0xb90(r3)
/* 80136E1C 0013273C  B0 03 0B 94 */	sth r0, 0xb94(r3)
/* 80136E20 00132740  90 03 0B 98 */	stw r0, 0xb98(r3)
/* 80136E24 00132744  90 03 0B 9C */	stw r0, 0xb9c(r3)
/* 80136E28 00132748  4E 80 00 20 */	blr 
/* 80136E2C 0013274C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_80136E30
func_80136E30:
/* 80136E30 00132750  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80136E34 00132754  7C 08 02 A6 */	mflr r0
/* 80136E38 00132758  90 01 00 34 */	stw r0, 0x34(r1)
/* 80136E3C 0013275C  39 61 00 30 */	addi r11, r1, 0x30
/* 80136E40 00132760  4B FC D3 1D */	bl func_8010415C
/* 80136E44 00132764  3D 20 80 38 */	lis r9, lbl_80378410@ha
/* 80136E48 00132768  54 60 10 3A */	slwi r0, r3, 2
/* 80136E4C 0013276C  39 29 84 10 */	addi r9, r9, lbl_80378410@l
/* 80136E50 00132770  7C 77 1B 78 */	mr r23, r3
/* 80136E54 00132774  7F E9 00 2E */	lwzx r31, r9, r0
/* 80136E58 00132778  7C 98 23 78 */	mr r24, r4
/* 80136E5C 0013277C  7C B9 2B 78 */	mr r25, r5
/* 80136E60 00132780  7C DA 33 78 */	mr r26, r6
/* 80136E64 00132784  7C FB 3B 78 */	mr r27, r7
/* 80136E68 00132788  7D 1C 43 78 */	mr r28, r8
/* 80136E6C 0013278C  4B FA 8F B5 */	bl func_800DFE20
/* 80136E70 00132790  83 BF 09 00 */	lwz r29, 0x900(r31)
/* 80136E74 00132794  83 DF 09 20 */	lwz r30, 0x920(r31)
/* 80136E78 00132798  4B FA 8F E9 */	bl func_800DFE60
/* 80136E7C 0013279C  2C 1D FF FF */	cmpwi r29, -1
/* 80136E80 001327A0  41 82 00 44 */	beq lbl_80136EC4
/* 80136E84 001327A4  2C 1E 00 00 */	cmpwi r30, 0
/* 80136E88 001327A8  40 82 00 0C */	bne lbl_80136E94
/* 80136E8C 001327AC  3B A0 FF FE */	li r29, -2
/* 80136E90 001327B0  48 00 00 34 */	b lbl_80136EC4
lbl_80136E94:
/* 80136E94 001327B4  53 5B 82 1E */	rlwimi r27, r26, 0x10, 8, 0xf
/* 80136E98 001327B8  7F 04 C3 78 */	mr r4, r24
/* 80136E9C 001327BC  7F 25 CB 78 */	mr r5, r25
/* 80136EA0 001327C0  7F 87 E3 78 */	mr r7, r28
/* 80136EA4 001327C4  38 7F 01 60 */	addi r3, r31, 0x160
/* 80136EA8 001327C8  67 66 04 00 */	oris r6, r27, 0x400
/* 80136EAC 001327CC  4B FF 83 C5 */	bl func_8012F270
/* 80136EB0 001327D0  7C 83 00 D0 */	neg r4, r3
/* 80136EB4 001327D4  38 00 FF FE */	li r0, -2
/* 80136EB8 001327D8  7C 83 1B 78 */	or r3, r4, r3
/* 80136EBC 001327DC  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 80136EC0 001327E0  7C 1D 18 78 */	andc r29, r0, r3
lbl_80136EC4:
/* 80136EC4 001327E4  2C 1D 00 00 */	cmpwi r29, 0
/* 80136EC8 001327E8  41 82 00 20 */	beq lbl_80136EE8
/* 80136ECC 001327EC  2C 1C 00 00 */	cmpwi r28, 0
/* 80136ED0 001327F0  41 82 00 18 */	beq lbl_80136EE8
/* 80136ED4 001327F4  7F 8C E3 78 */	mr r12, r28
/* 80136ED8 001327F8  7E E3 BB 78 */	mr r3, r23
/* 80136EDC 001327FC  7F A4 EB 78 */	mr r4, r29
/* 80136EE0 00132800  7D 89 03 A6 */	mtctr r12
/* 80136EE4 00132804  4E 80 04 21 */	bctrl 
lbl_80136EE8:
/* 80136EE8 00132808  39 61 00 30 */	addi r11, r1, 0x30
/* 80136EEC 0013280C  7F A3 EB 78 */	mr r3, r29
/* 80136EF0 00132810  4B FC D2 B9 */	bl func_801041A8
/* 80136EF4 00132814  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80136EF8 00132818  7C 08 03 A6 */	mtlr r0
/* 80136EFC 0013281C  38 21 00 30 */	addi r1, r1, 0x30
/* 80136F00 00132820  4E 80 00 20 */	blr 
/* 80136F04 00132824  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80136F08 00132828  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80136F0C 0013282C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
