.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80106E3C
func_80106E3C:
/* 80106E3C 0010275C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80106E40 00102760  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80106E44 00102764  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 80106E48 00102768  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 80106E4C 0010276C  7C 80 00 38 */	and r0, r4, r0
/* 80106E50 00102770  90 C3 00 24 */	stw r6, 0x24(r3)
/* 80106E54 00102774  7C 00 28 50 */	subf r0, r0, r5
/* 80106E58 00102778  90 03 00 28 */	stw r0, 0x28(r3)
/* 80106E5C 0010277C  90 83 00 34 */	stw r4, 0x34(r3)
/* 80106E60 00102780  4E 80 00 20 */	blr 

.global func_80106E64
func_80106E64:
/* 80106E64 00102784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80106E68 00102788  7C 08 02 A6 */	mflr r0
/* 80106E6C 0010278C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80106E70 00102790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80106E74 00102794  7C 9F 23 78 */	mr r31, r4
/* 80106E78 00102798  93 C1 00 08 */	stw r30, 8(r1)
/* 80106E7C 0010279C  7C 7E 1B 78 */	mr r30, r3
/* 80106E80 001027A0  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 80106E84 001027A4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80106E88 001027A8  7C 05 00 51 */	subf. r0, r5, r0
/* 80106E8C 001027AC  41 82 00 50 */	beq lbl_80106EDC
/* 80106E90 001027B0  81 9E 00 40 */	lwz r12, 0x40(r30)
/* 80106E94 001027B4  7C A4 2B 78 */	mr r4, r5
/* 80106E98 001027B8  90 03 00 28 */	stw r0, 0x28(r3)
/* 80106E9C 001027BC  38 BE 00 28 */	addi r5, r30, 0x28
/* 80106EA0 001027C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80106EA4 001027C4  80 DE 00 48 */	lwz r6, 0x48(r30)
/* 80106EA8 001027C8  7D 89 03 A6 */	mtctr r12
/* 80106EAC 001027CC  4E 80 04 21 */	bctrl 
/* 80106EB0 001027D0  2C 1F 00 00 */	cmpwi r31, 0
/* 80106EB4 001027D4  41 82 00 0C */	beq lbl_80106EC0
/* 80106EB8 001027D8  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 80106EBC 001027DC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80106EC0:
/* 80106EC0 001027E0  2C 03 00 00 */	cmpwi r3, 0
/* 80106EC4 001027E4  41 82 00 08 */	beq lbl_80106ECC
/* 80106EC8 001027E8  48 00 00 3C */	b lbl_80106F04
lbl_80106ECC:
/* 80106ECC 001027EC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80106ED0 001027F0  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 80106ED4 001027F4  7C 03 02 14 */	add r0, r3, r0
/* 80106ED8 001027F8  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80106EDC:
/* 80106EDC 001027FC  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 80106EE0 00102800  38 60 00 00 */	li r3, 0
/* 80106EE4 00102804  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80106EE8 00102808  80 DE 00 1C */	lwz r6, 0x1c(r30)
/* 80106EEC 0010280C  80 BE 00 20 */	lwz r5, 0x20(r30)
/* 80106EF0 00102810  7C 80 00 38 */	and r0, r4, r0
/* 80106EF4 00102814  90 DE 00 24 */	stw r6, 0x24(r30)
/* 80106EF8 00102818  7C 00 28 50 */	subf r0, r0, r5
/* 80106EFC 0010281C  90 1E 00 28 */	stw r0, 0x28(r30)
/* 80106F00 00102820  90 9E 00 34 */	stw r4, 0x34(r30)
lbl_80106F04:
/* 80106F04 00102824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80106F08 00102828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80106F0C 0010282C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80106F10 00102830  7C 08 03 A6 */	mtlr r0
/* 80106F14 00102834  38 21 00 10 */	addi r1, r1, 0x10
/* 80106F18 00102838  4E 80 00 20 */	blr 