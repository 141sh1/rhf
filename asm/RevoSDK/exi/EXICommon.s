.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_80112480
func_80112480:
/* 80112480 0010DDA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80112484 0010DDA4  7C 08 02 A6 */	mflr r0
/* 80112488 0010DDA8  2C 07 00 01 */	cmpwi r7, 1
/* 8011248C 0010DDAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80112490 0010DDB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80112494 0010DDB4  7C 7F 1B 78 */	mr r31, r3
/* 80112498 0010DDB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011249C 0010DDBC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801124A0 0010DDC0  7C 9D 23 78 */	mr r29, r4
/* 801124A4 0010DDC4  90 A1 00 08 */	stw r5, 8(r1)
/* 801124A8 0010DDC8  41 82 00 10 */	beq lbl_801124B8
/* 801124AC 0010DDCC  2C 07 00 02 */	cmpwi r7, 2
/* 801124B0 0010DDD0  41 82 00 18 */	beq lbl_801124C8
/* 801124B4 0010DDD4  48 00 00 28 */	b lbl_801124DC
lbl_801124B8:
/* 801124B8 0010DDD8  88 06 00 00 */	lbz r0, 0(r6)
/* 801124BC 0010DDDC  54 00 C0 0E */	slwi r0, r0, 0x18
/* 801124C0 0010DDE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801124C4 0010DDE4  48 00 00 34 */	b lbl_801124F8
lbl_801124C8:
/* 801124C8 0010DDE8  A0 66 00 00 */	lhz r3, 0(r6)
/* 801124CC 0010DDEC  54 60 42 1E */	rlwinm r0, r3, 8, 8, 0xf
/* 801124D0 0010DDF0  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 801124D4 0010DDF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801124D8 0010DDF8  48 00 00 20 */	b lbl_801124F8
lbl_801124DC:
/* 801124DC 0010DDFC  80 86 00 00 */	lwz r4, 0(r6)
/* 801124E0 0010DE00  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 801124E4 0010DE04  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 801124E8 0010DE08  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 801124EC 0010DE0C  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 801124F0 0010DE10  7C 60 03 78 */	or r0, r3, r0
/* 801124F4 0010DE14  90 01 00 0C */	stw r0, 0xc(r1)
lbl_801124F8:
/* 801124F8 0010DE18  7F E3 FB 78 */	mr r3, r31
/* 801124FC 0010DE1C  7F A4 EB 78 */	mr r4, r29
/* 80112500 0010DE20  38 A0 00 00 */	li r5, 0
/* 80112504 0010DE24  4B FF F6 7D */	bl func_80111B80
/* 80112508 0010DE28  7C 60 00 34 */	cntlzw r0, r3
/* 8011250C 0010DE2C  54 1E D9 7F */	rlwinm. r30, r0, 0x1b, 5, 0x1f
/* 80112510 0010DE30  41 82 00 0C */	beq lbl_8011251C
/* 80112514 0010DE34  38 60 00 00 */	li r3, 0
/* 80112518 0010DE38  48 00 00 D4 */	b lbl_801125EC
lbl_8011251C:
/* 8011251C 0010DE3C  7F E3 FB 78 */	mr r3, r31
/* 80112520 0010DE40  7F A4 EB 78 */	mr r4, r29
/* 80112524 0010DE44  38 A0 00 04 */	li r5, 4
/* 80112528 0010DE48  4B FF EE A9 */	bl func_801113D0
/* 8011252C 0010DE4C  7C 60 00 34 */	cntlzw r0, r3
/* 80112530 0010DE50  54 00 D9 7E */	srwi r0, r0, 5
/* 80112534 0010DE54  7F DE 03 79 */	or. r30, r30, r0
/* 80112538 0010DE58  41 82 00 14 */	beq lbl_8011254C
/* 8011253C 0010DE5C  7F E3 FB 78 */	mr r3, r31
/* 80112540 0010DE60  4B FF F7 41 */	bl func_80111C80
/* 80112544 0010DE64  38 60 00 00 */	li r3, 0
/* 80112548 0010DE68  48 00 00 A4 */	b lbl_801125EC
lbl_8011254C:
/* 8011254C 0010DE6C  7F E3 FB 78 */	mr r3, r31
/* 80112550 0010DE70  38 81 00 08 */	addi r4, r1, 8
/* 80112554 0010DE74  38 A0 00 04 */	li r5, 4
/* 80112558 0010DE78  38 C0 00 01 */	li r6, 1
/* 8011255C 0010DE7C  38 E0 00 00 */	li r7, 0
/* 80112560 0010DE80  4B FF E3 D1 */	bl func_80110930
/* 80112564 0010DE84  7C 60 00 34 */	cntlzw r0, r3
/* 80112568 0010DE88  7F E3 FB 78 */	mr r3, r31
/* 8011256C 0010DE8C  54 00 D9 7E */	srwi r0, r0, 5
/* 80112570 0010DE90  7F DE 03 78 */	or r30, r30, r0
/* 80112574 0010DE94  4B FF E7 ED */	bl func_80110D60
/* 80112578 0010DE98  7C 60 00 34 */	cntlzw r0, r3
/* 8011257C 0010DE9C  7F E3 FB 78 */	mr r3, r31
/* 80112580 0010DEA0  54 00 D9 7E */	srwi r0, r0, 5
/* 80112584 0010DEA4  38 81 00 0C */	addi r4, r1, 0xc
/* 80112588 0010DEA8  7F DE 03 78 */	or r30, r30, r0
/* 8011258C 0010DEAC  38 A0 00 04 */	li r5, 4
/* 80112590 0010DEB0  38 C0 00 01 */	li r6, 1
/* 80112594 0010DEB4  38 E0 00 00 */	li r7, 0
/* 80112598 0010DEB8  4B FF E3 99 */	bl func_80110930
/* 8011259C 0010DEBC  7C 60 00 34 */	cntlzw r0, r3
/* 801125A0 0010DEC0  7F E3 FB 78 */	mr r3, r31
/* 801125A4 0010DEC4  54 00 D9 7E */	srwi r0, r0, 5
/* 801125A8 0010DEC8  7F DE 03 78 */	or r30, r30, r0
/* 801125AC 0010DECC  4B FF E7 B5 */	bl func_80110D60
/* 801125B0 0010DED0  7C 60 00 34 */	cntlzw r0, r3
/* 801125B4 0010DED4  7F E3 FB 78 */	mr r3, r31
/* 801125B8 0010DED8  54 00 D9 7E */	srwi r0, r0, 5
/* 801125BC 0010DEDC  7F DE 03 78 */	or r30, r30, r0
/* 801125C0 0010DEE0  4B FF EF 41 */	bl func_80111500
/* 801125C4 0010DEE4  7C 60 00 34 */	cntlzw r0, r3
/* 801125C8 0010DEE8  7F E3 FB 78 */	mr r3, r31
/* 801125CC 0010DEEC  54 00 D9 7E */	srwi r0, r0, 5
/* 801125D0 0010DEF0  7F DE 03 78 */	or r30, r30, r0
/* 801125D4 0010DEF4  4B FF F6 AD */	bl func_80111C80
/* 801125D8 0010DEF8  7C 60 00 34 */	cntlzw r0, r3
/* 801125DC 0010DEFC  54 00 D9 7E */	srwi r0, r0, 5
/* 801125E0 0010DF00  7F DE 03 78 */	or r30, r30, r0
/* 801125E4 0010DF04  7F C0 00 34 */	cntlzw r0, r30
/* 801125E8 0010DF08  54 03 D9 7E */	srwi r3, r0, 5
lbl_801125EC:
/* 801125EC 0010DF0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801125F0 0010DF10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801125F4 0010DF14  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801125F8 0010DF18  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801125FC 0010DF1C  7C 08 03 A6 */	mtlr r0
/* 80112600 0010DF20  38 21 00 20 */	addi r1, r1, 0x20
/* 80112604 0010DF24  4E 80 00 20 */	blr 



.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_80328E68

lbl_80328E68:

	# ROM: 0x3240C8
	.4byte 0x00000004
	.4byte 0