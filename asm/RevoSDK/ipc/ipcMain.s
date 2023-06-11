.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_8011C900
func_8011C900:
/* 8011C900 00118220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011C904 00118224  7C 08 02 A6 */	mflr r0
/* 8011C908 00118228  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011C90C 0011822C  88 0D 9D 88 */	lbz r0, lbl_80320C48-_SDA_BASE_(r13)
/* 8011C910 00118230  2C 00 00 00 */	cmpwi r0, 0
/* 8011C914 00118234  40 82 00 28 */	bne lbl_8011C93C
/* 8011C918 00118238  4B FC 7B C9 */	bl func_800E44E0
/* 8011C91C 0011823C  90 6D 9D 98 */	stw r3, lbl_80320C58-_SDA_BASE_(r13)
/* 8011C920 00118240  4B FC 7B D1 */	bl func_800E44F0
/* 8011C924 00118244  80 8D 9D 98 */	lwz r4, lbl_80320C58-_SDA_BASE_(r13)
/* 8011C928 00118248  38 00 00 01 */	li r0, 1
/* 8011C92C 0011824C  90 6D 9D 94 */	stw r3, lbl_80320C54-_SDA_BASE_(r13)
/* 8011C930 00118250  90 8D 9D 90 */	stw r4, lbl_80320C50-_SDA_BASE_(r13)
/* 8011C934 00118254  90 6D 9D 8C */	stw r3, lbl_80320C4C-_SDA_BASE_(r13)
/* 8011C938 00118258  98 0D 9D 88 */	stb r0, lbl_80320C48-_SDA_BASE_(r13)
lbl_8011C93C:
/* 8011C93C 0011825C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011C940 00118260  7C 08 03 A6 */	mtlr r0
/* 8011C944 00118264  38 21 00 10 */	addi r1, r1, 0x10
/* 8011C948 00118268  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011C950
func_8011C950:
/* 8011C950 00118270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011C954 00118274  7C 08 02 A6 */	mflr r0
/* 8011C958 00118278  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011C95C 0011827C  38 00 00 00 */	li r0, 0
/* 8011C960 00118280  98 0D 9D 88 */	stb r0, lbl_80320C48-_SDA_BASE_(r13)
/* 8011C964 00118284  4B FC 7B 7D */	bl func_800E44E0
/* 8011C968 00118288  90 6D 9D 98 */	stw r3, lbl_80320C58-_SDA_BASE_(r13)
/* 8011C96C 0011828C  4B FC 7B 85 */	bl func_800E44F0
/* 8011C970 00118290  80 8D 9D 98 */	lwz r4, lbl_80320C58-_SDA_BASE_(r13)
/* 8011C974 00118294  38 00 00 01 */	li r0, 1
/* 8011C978 00118298  90 6D 9D 94 */	stw r3, lbl_80320C54-_SDA_BASE_(r13)
/* 8011C97C 0011829C  90 8D 9D 90 */	stw r4, lbl_80320C50-_SDA_BASE_(r13)
/* 8011C980 001182A0  90 6D 9D 8C */	stw r3, lbl_80320C4C-_SDA_BASE_(r13)
/* 8011C984 001182A4  98 0D 9D 88 */	stb r0, lbl_80320C48-_SDA_BASE_(r13)
/* 8011C988 001182A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011C98C 001182AC  7C 08 03 A6 */	mtlr r0
/* 8011C990 001182B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8011C994 001182B4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011C9A0
func_8011C9A0:
/* 8011C9A0 001182C0  54 60 10 3A */	slwi r0, r3, 2
/* 8011C9A4 001182C4  3C 60 CD 00 */	lis r3, 0xcd00
/* 8011C9A8 001182C8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8011C9AC 001182CC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011C9B0
func_8011C9B0:
/* 8011C9B0 001182D0  54 60 10 3A */	slwi r0, r3, 2
/* 8011C9B4 001182D4  3C 60 CD 00 */	lis r3, 0xcd00
/* 8011C9B8 001182D8  7C 83 01 2E */	stwx r4, r3, r0
/* 8011C9BC 001182DC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011C9C0
func_8011C9C0:
/* 8011C9C0 001182E0  80 6D 9D 90 */	lwz r3, lbl_80320C50-_SDA_BASE_(r13)
/* 8011C9C4 001182E4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011C9D0
func_8011C9D0:
/* 8011C9D0 001182F0  80 6D 9D 8C */	lwz r3, lbl_80320C4C-_SDA_BASE_(r13)
/* 8011C9D4 001182F4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011C9E0
func_8011C9E0:
/* 8011C9E0 00118300  90 6D 9D 8C */	stw r3, lbl_80320C4C-_SDA_BASE_(r13)
/* 8011C9E4 00118304  4E 80 00 20 */	blr 



.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320C48
lbl_80320C48:
	.skip 0x4
.global lbl_80320C4C
lbl_80320C4C:
	.skip 0x4
.global lbl_80320C50
lbl_80320C50:
	.skip 0x4
.global lbl_80320C54
lbl_80320C54:
	.skip 0x4
.global lbl_80320C58
lbl_80320C58:
	.skip 0x8