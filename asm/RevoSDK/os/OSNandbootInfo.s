.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800E5B10
func_800E5B10:
/* 800E5B10 000E1430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E5B14 000E1434  7C 08 02 A6 */	mflr r0
/* 800E5B18 000E1438  3C 60 80 30 */	lis r3, lbl_802FF0D8@ha
/* 800E5B1C 000E143C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E5B20 000E1440  38 81 00 08 */	addi r4, r1, 8
/* 800E5B24 000E1444  38 63 F0 D8 */	addi r3, r3, lbl_802FF0D8@l
/* 800E5B28 000E1448  48 03 A3 39 */	bl func_8011FE60
/* 800E5B2C 000E144C  2C 03 00 00 */	cmpwi r3, 0
/* 800E5B30 000E1450  40 82 00 18 */	bne lbl_800E5B48
/* 800E5B34 000E1454  88 01 00 0F */	lbz r0, 0xf(r1)
/* 800E5B38 000E1458  28 00 00 3F */	cmplwi r0, 0x3f
/* 800E5B3C 000E145C  40 82 00 0C */	bne lbl_800E5B48
/* 800E5B40 000E1460  38 60 00 01 */	li r3, 1
/* 800E5B44 000E1464  48 00 00 6C */	b lbl_800E5BB0
lbl_800E5B48:
/* 800E5B48 000E1468  2C 03 00 00 */	cmpwi r3, 0
/* 800E5B4C 000E146C  40 82 00 2C */	bne lbl_800E5B78
/* 800E5B50 000E1470  88 01 00 0F */	lbz r0, 0xf(r1)
/* 800E5B54 000E1474  28 00 00 3F */	cmplwi r0, 0x3f
/* 800E5B58 000E1478  41 82 00 20 */	beq lbl_800E5B78
/* 800E5B5C 000E147C  3C 60 80 30 */	lis r3, lbl_802FF0D8@ha
/* 800E5B60 000E1480  38 63 F0 D8 */	addi r3, r3, lbl_802FF0D8@l
/* 800E5B64 000E1484  48 03 95 9D */	bl func_8011F100
/* 800E5B68 000E1488  2C 03 00 00 */	cmpwi r3, 0
/* 800E5B6C 000E148C  41 82 00 1C */	beq lbl_800E5B88
/* 800E5B70 000E1490  38 60 00 00 */	li r3, 0
/* 800E5B74 000E1494  48 00 00 3C */	b lbl_800E5BB0
lbl_800E5B78:
/* 800E5B78 000E1498  2C 03 FF F4 */	cmpwi r3, -12
/* 800E5B7C 000E149C  41 82 00 0C */	beq lbl_800E5B88
/* 800E5B80 000E14A0  38 60 00 00 */	li r3, 0
/* 800E5B84 000E14A4  48 00 00 2C */	b lbl_800E5BB0
lbl_800E5B88:
/* 800E5B88 000E14A8  3C 60 80 30 */	lis r3, lbl_802FF0D8@ha
/* 800E5B8C 000E14AC  38 80 00 3F */	li r4, 0x3f
/* 800E5B90 000E14B0  38 63 F0 D8 */	addi r3, r3, lbl_802FF0D8@l
/* 800E5B94 000E14B4  38 A0 00 00 */	li r5, 0
/* 800E5B98 000E14B8  48 03 93 B9 */	bl func_8011EF50
/* 800E5B9C 000E14BC  2C 03 00 00 */	cmpwi r3, 0
/* 800E5BA0 000E14C0  41 82 00 0C */	beq lbl_800E5BAC
/* 800E5BA4 000E14C4  38 60 00 00 */	li r3, 0
/* 800E5BA8 000E14C8  48 00 00 08 */	b lbl_800E5BB0
lbl_800E5BAC:
/* 800E5BAC 000E14CC  38 60 00 01 */	li r3, 1
lbl_800E5BB0:
/* 800E5BB0 000E14D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E5BB4 000E14D4  7C 08 03 A6 */	mtlr r0
/* 800E5BB8 000E14D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E5BBC 000E14DC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E5BC0
func_800E5BC0:
/* 800E5BC0 000E14E0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800E5BC4 000E14E4  7C 08 02 A6 */	mflr r0
/* 800E5BC8 000E14E8  39 03 00 04 */	addi r8, r3, 4
/* 800E5BCC 000E14EC  38 E0 00 00 */	li r7, 0
/* 800E5BD0 000E14F0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800E5BD4 000E14F4  38 00 00 40 */	li r0, 0x40
/* 800E5BD8 000E14F8  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 800E5BDC 000E14FC  7C 7F 1B 78 */	mr r31, r3
/* 800E5BE0 000E1500  7C 09 03 A6 */	mtctr r0
lbl_800E5BE4:
/* 800E5BE4 000E1504  80 88 00 00 */	lwz r4, 0(r8)
/* 800E5BE8 000E1508  80 08 00 04 */	lwz r0, 4(r8)
/* 800E5BEC 000E150C  7C E7 22 14 */	add r7, r7, r4
/* 800E5BF0 000E1510  80 88 00 08 */	lwz r4, 8(r8)
/* 800E5BF4 000E1514  7C E7 02 14 */	add r7, r7, r0
/* 800E5BF8 000E1518  80 08 00 0C */	lwz r0, 0xc(r8)
/* 800E5BFC 000E151C  7C E7 22 14 */	add r7, r7, r4
/* 800E5C00 000E1520  80 88 00 10 */	lwz r4, 0x10(r8)
/* 800E5C04 000E1524  7C E7 02 14 */	add r7, r7, r0
/* 800E5C08 000E1528  80 08 00 14 */	lwz r0, 0x14(r8)
/* 800E5C0C 000E152C  7C E7 22 14 */	add r7, r7, r4
/* 800E5C10 000E1530  80 88 00 18 */	lwz r4, 0x18(r8)
/* 800E5C14 000E1534  7C E7 02 14 */	add r7, r7, r0
/* 800E5C18 000E1538  80 08 00 1C */	lwz r0, 0x1c(r8)
/* 800E5C1C 000E153C  7C E7 22 14 */	add r7, r7, r4
/* 800E5C20 000E1540  80 88 00 20 */	lwz r4, 0x20(r8)
/* 800E5C24 000E1544  7C E7 02 14 */	add r7, r7, r0
/* 800E5C28 000E1548  80 08 00 24 */	lwz r0, 0x24(r8)
/* 800E5C2C 000E154C  7C E7 22 14 */	add r7, r7, r4
/* 800E5C30 000E1550  80 88 00 28 */	lwz r4, 0x28(r8)
/* 800E5C34 000E1554  7C E7 02 14 */	add r7, r7, r0
/* 800E5C38 000E1558  80 08 00 2C */	lwz r0, 0x2c(r8)
/* 800E5C3C 000E155C  7C E7 22 14 */	add r7, r7, r4
/* 800E5C40 000E1560  80 88 00 30 */	lwz r4, 0x30(r8)
/* 800E5C44 000E1564  7C E7 02 14 */	add r7, r7, r0
/* 800E5C48 000E1568  80 08 00 34 */	lwz r0, 0x34(r8)
/* 800E5C4C 000E156C  7C E7 22 14 */	add r7, r7, r4
/* 800E5C50 000E1570  80 88 00 38 */	lwz r4, 0x38(r8)
/* 800E5C54 000E1574  7C E7 02 14 */	add r7, r7, r0
/* 800E5C58 000E1578  80 08 00 3C */	lwz r0, 0x3c(r8)
/* 800E5C5C 000E157C  7C E7 22 14 */	add r7, r7, r4
/* 800E5C60 000E1580  39 08 00 40 */	addi r8, r8, 0x40
/* 800E5C64 000E1584  7C E7 02 14 */	add r7, r7, r0
/* 800E5C68 000E1588  42 00 FF 7C */	bdnz lbl_800E5BE4
/* 800E5C6C 000E158C  80 08 00 00 */	lwz r0, 0(r8)
/* 800E5C70 000E1590  3C C0 80 30 */	lis r6, lbl_802FF0D8@ha
/* 800E5C74 000E1594  80 A8 00 04 */	lwz r5, 4(r8)
/* 800E5C78 000E1598  38 81 00 08 */	addi r4, r1, 8
/* 800E5C7C 000E159C  7C E7 02 14 */	add r7, r7, r0
/* 800E5C80 000E15A0  80 08 00 08 */	lwz r0, 8(r8)
/* 800E5C84 000E15A4  7C E7 2A 14 */	add r7, r7, r5
/* 800E5C88 000E15A8  80 A8 00 0C */	lwz r5, 0xc(r8)
/* 800E5C8C 000E15AC  7C E7 02 14 */	add r7, r7, r0
/* 800E5C90 000E15B0  80 08 00 10 */	lwz r0, 0x10(r8)
/* 800E5C94 000E15B4  7C E7 2A 14 */	add r7, r7, r5
/* 800E5C98 000E15B8  80 A8 00 14 */	lwz r5, 0x14(r8)
/* 800E5C9C 000E15BC  7C E7 02 14 */	add r7, r7, r0
/* 800E5CA0 000E15C0  80 08 00 18 */	lwz r0, 0x18(r8)
/* 800E5CA4 000E15C4  7C E7 2A 14 */	add r7, r7, r5
/* 800E5CA8 000E15C8  38 A0 00 02 */	li r5, 2
/* 800E5CAC 000E15CC  7C E7 02 14 */	add r7, r7, r0
/* 800E5CB0 000E15D0  90 E3 00 00 */	stw r7, 0(r3)
/* 800E5CB4 000E15D4  38 66 F0 D8 */	addi r3, r6, lbl_802FF0D8@l
/* 800E5CB8 000E15D8  48 03 A7 A9 */	bl func_80120460
/* 800E5CBC 000E15DC  2C 03 00 00 */	cmpwi r3, 0
/* 800E5CC0 000E15E0  40 82 00 40 */	bne lbl_800E5D00
/* 800E5CC4 000E15E4  7F E4 FB 78 */	mr r4, r31
/* 800E5CC8 000E15E8  38 61 00 08 */	addi r3, r1, 8
/* 800E5CCC 000E15EC  38 A0 10 20 */	li r5, 0x1020
/* 800E5CD0 000E15F0  48 03 96 81 */	bl func_8011F350
/* 800E5CD4 000E15F4  28 03 10 20 */	cmplwi r3, 0x1020
/* 800E5CD8 000E15F8  41 82 00 14 */	beq lbl_800E5CEC
/* 800E5CDC 000E15FC  38 61 00 08 */	addi r3, r1, 8
/* 800E5CE0 000E1600  48 03 A9 91 */	bl func_80120670
/* 800E5CE4 000E1604  38 60 00 00 */	li r3, 0
/* 800E5CE8 000E1608  48 00 00 1C */	b lbl_800E5D04
lbl_800E5CEC:
/* 800E5CEC 000E160C  38 61 00 08 */	addi r3, r1, 8
/* 800E5CF0 000E1610  48 03 A9 81 */	bl func_80120670
/* 800E5CF4 000E1614  7C 60 00 34 */	cntlzw r0, r3
/* 800E5CF8 000E1618  54 03 D9 7E */	srwi r3, r0, 5
/* 800E5CFC 000E161C  48 00 00 08 */	b lbl_800E5D04
lbl_800E5D00:
/* 800E5D00 000E1620  38 60 00 00 */	li r3, 0
lbl_800E5D04:
/* 800E5D04 000E1624  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800E5D08 000E1628  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 800E5D0C 000E162C  7C 08 03 A6 */	mtlr r0
/* 800E5D10 000E1630  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800E5D14 000E1634  4E 80 00 20 */	blr 


.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_802FF0D8

lbl_802FF0D8:

	# ROM: 0x2FB1D8
	.asciz "/shared2/sys/NANDBOOTINFO"
	.balign 4
	.4byte 0
