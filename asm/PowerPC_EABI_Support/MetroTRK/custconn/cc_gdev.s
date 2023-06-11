.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80113D08
func_80113D08:
/* 80113D08 0010F628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80113D0C 0010F62C  7C 08 02 A6 */	mflr r0
/* 80113D10 0010F630  90 01 00 14 */	stw r0, 0x14(r1)
/* 80113D14 0010F634  48 00 50 E5 */	bl func_80118DF8
/* 80113D18 0010F638  3C 60 80 37 */	lis r3, lbl_8036A2A0@ha
/* 80113D1C 0010F63C  3C 80 80 37 */	lis r4, lbl_80369DA0@ha
/* 80113D20 0010F640  38 63 A2 A0 */	addi r3, r3, lbl_8036A2A0@l
/* 80113D24 0010F644  38 A0 05 00 */	li r5, 0x500
/* 80113D28 0010F648  38 84 9D A0 */	addi r4, r4, lbl_80369DA0@l
/* 80113D2C 0010F64C  48 00 02 99 */	bl func_80113FC4
/* 80113D30 0010F650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80113D34 0010F654  38 60 00 00 */	li r3, 0
/* 80113D38 0010F658  7C 08 03 A6 */	mtlr r0
/* 80113D3C 0010F65C  38 21 00 10 */	addi r1, r1, 0x10
/* 80113D40 0010F660  4E 80 00 20 */	blr 

.global func_80113D44
func_80113D44:
/* 80113D44 0010F664  38 60 00 00 */	li r3, 0
/* 80113D48 0010F668  4E 80 00 20 */	blr 
.global func_80113D4C
func_80113D4C:
/* 80113D4C 0010F66C  80 0D 9C F0 */	lwz r0, lbl_80320BB0-_SDA_BASE_(r13)
/* 80113D50 0010F670  2C 00 00 00 */	cmpwi r0, 0
/* 80113D54 0010F674  41 82 00 0C */	beq lbl_80113D60
/* 80113D58 0010F678  38 60 D8 EB */	li r3, -10005
/* 80113D5C 0010F67C  4E 80 00 20 */	blr 
lbl_80113D60:
/* 80113D60 0010F680  38 00 00 01 */	li r0, 1
/* 80113D64 0010F684  90 0D 9C F0 */	stw r0, lbl_80320BB0-_SDA_BASE_(r13)
/* 80113D68 0010F688  38 60 00 00 */	li r3, 0
/* 80113D6C 0010F68C  4E 80 00 20 */	blr 

.global func_80113D70
func_80113D70:
/* 80113D70 0010F690  38 60 00 00 */	li r3, 0
/* 80113D74 0010F694  4E 80 00 20 */	blr 

.global func_80113D78
func_80113D78:
/* 80113D78 0010F698  94 21 FA E0 */	stwu r1, -0x520(r1)
/* 80113D7C 0010F69C  7C 08 02 A6 */	mflr r0
/* 80113D80 0010F6A0  90 01 05 24 */	stw r0, 0x524(r1)
/* 80113D84 0010F6A4  BF 61 05 0C */	stmw r27, 0x50c(r1)
/* 80113D88 0010F6A8  7C 7B 1B 78 */	mr r27, r3
/* 80113D8C 0010F6AC  7C 9C 23 78 */	mr r28, r4
/* 80113D90 0010F6B0  3B C0 00 00 */	li r30, 0
/* 80113D94 0010F6B4  80 0D 9C F0 */	lwz r0, lbl_80320BB0-_SDA_BASE_(r13)
/* 80113D98 0010F6B8  2C 00 00 00 */	cmpwi r0, 0
/* 80113D9C 0010F6BC  40 82 00 0C */	bne lbl_80113DA8
/* 80113DA0 0010F6C0  38 60 D8 EF */	li r3, -10001
/* 80113DA4 0010F6C4  48 00 00 74 */	b lbl_80113E18
lbl_80113DA8:
/* 80113DA8 0010F6C8  3F E0 80 37 */	lis r31, 0x8037
/* 80113DAC 0010F6CC  48 00 00 40 */	b lbl_80113DEC
lbl_80113DB0:
/* 80113DB0 0010F6D0  3B C0 00 00 */	li r30, 0
/* 80113DB4 0010F6D4  48 00 50 F5 */	bl func_80118EA8
/* 80113DB8 0010F6D8  2C 03 00 00 */	cmpwi r3, 0
/* 80113DBC 0010F6DC  7C 7D 1B 78 */	mr r29, r3
/* 80113DC0 0010F6E0  41 82 00 2C */	beq lbl_80113DEC
/* 80113DC4 0010F6E4  7F 84 E3 78 */	mr r4, r28
/* 80113DC8 0010F6E8  38 61 00 08 */	addi r3, r1, 8
/* 80113DCC 0010F6EC  48 00 51 81 */	bl func_80118F4C
/* 80113DD0 0010F6F0  2C 03 00 00 */	cmpwi r3, 0
/* 80113DD4 0010F6F4  7C 7E 1B 78 */	mr r30, r3
/* 80113DD8 0010F6F8  40 82 00 14 */	bne lbl_80113DEC
/* 80113DDC 0010F6FC  7F A5 EB 78 */	mr r5, r29
/* 80113DE0 0010F700  38 7F A2 A0 */	addi r3, r31, -23904
/* 80113DE4 0010F704  38 81 00 08 */	addi r4, r1, 8
/* 80113DE8 0010F708  48 00 02 01 */	bl func_80113FE8
lbl_80113DEC:
/* 80113DEC 0010F70C  38 7F A2 A0 */	addi r3, r31, -23904
/* 80113DF0 0010F710  48 00 01 CD */	bl func_80113FBC
/* 80113DF4 0010F714  7C 03 E0 40 */	cmplw r3, r28
/* 80113DF8 0010F718  41 80 FF B8 */	blt lbl_80113DB0
/* 80113DFC 0010F71C  2C 1E 00 00 */	cmpwi r30, 0
/* 80113E00 0010F720  40 82 00 14 */	bne lbl_80113E14
/* 80113E04 0010F724  7F 64 DB 78 */	mr r4, r27
/* 80113E08 0010F728  7F 85 E3 78 */	mr r5, r28
/* 80113E0C 0010F72C  38 7F A2 A0 */	addi r3, r31, -23904
/* 80113E10 0010F730  48 00 02 E1 */	bl func_801140F0
lbl_80113E14:
/* 80113E14 0010F734  7F C3 F3 78 */	mr r3, r30
lbl_80113E18:
/* 80113E18 0010F738  BB 61 05 0C */	lmw r27, 0x50c(r1)
/* 80113E1C 0010F73C  80 01 05 24 */	lwz r0, 0x524(r1)
/* 80113E20 0010F740  7C 08 03 A6 */	mtlr r0
/* 80113E24 0010F744  38 21 05 20 */	addi r1, r1, 0x520
/* 80113E28 0010F748  4E 80 00 20 */	blr 

.global func_80113E2C
func_80113E2C:
/* 80113E2C 0010F74C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80113E30 0010F750  7C 08 02 A6 */	mflr r0
/* 80113E34 0010F754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80113E38 0010F758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80113E3C 0010F75C  7C 9F 23 78 */	mr r31, r4
/* 80113E40 0010F760  93 C1 00 08 */	stw r30, 8(r1)
/* 80113E44 0010F764  7C 7E 1B 78 */	mr r30, r3
/* 80113E48 0010F768  80 0D 9C F0 */	lwz r0, lbl_80320BB0-_SDA_BASE_(r13)
/* 80113E4C 0010F76C  2C 00 00 00 */	cmpwi r0, 0
/* 80113E50 0010F770  40 82 00 2C */	bne lbl_80113E7C
/* 80113E54 0010F774  38 60 D8 EF */	li r3, -10001
/* 80113E58 0010F778  48 00 00 30 */	b lbl_80113E88
/* 80113E5C 0010F77C  48 00 00 20 */	b lbl_80113E7C
lbl_80113E60:
/* 80113E60 0010F780  7F C3 F3 78 */	mr r3, r30
/* 80113E64 0010F784  7F E4 FB 78 */	mr r4, r31
/* 80113E68 0010F788  48 00 51 65 */	bl func_80118FCC
/* 80113E6C 0010F78C  2C 03 00 00 */	cmpwi r3, 0
/* 80113E70 0010F790  41 82 00 14 */	beq lbl_80113E84
/* 80113E74 0010F794  7F DE 1A 14 */	add r30, r30, r3
/* 80113E78 0010F798  7F E3 F8 50 */	subf r31, r3, r31
lbl_80113E7C:
/* 80113E7C 0010F79C  2C 1F 00 00 */	cmpwi r31, 0
/* 80113E80 0010F7A0  41 81 FF E0 */	bgt lbl_80113E60
lbl_80113E84:
/* 80113E84 0010F7A4  38 60 00 00 */	li r3, 0
lbl_80113E88:
/* 80113E88 0010F7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80113E8C 0010F7AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80113E90 0010F7B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80113E94 0010F7B4  7C 08 03 A6 */	mtlr r0
/* 80113E98 0010F7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80113E9C 0010F7BC  4E 80 00 20 */	blr 

.global func_80113EA0
func_80113EA0:
/* 80113EA0 0010F7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80113EA4 0010F7C4  7C 08 02 A6 */	mflr r0
/* 80113EA8 0010F7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80113EAC 0010F7CC  48 00 52 35 */	bl func_801190E0
/* 80113EB0 0010F7D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80113EB4 0010F7D4  38 60 00 00 */	li r3, 0
/* 80113EB8 0010F7D8  7C 08 03 A6 */	mtlr r0
/* 80113EBC 0010F7DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80113EC0 0010F7E0  4E 80 00 20 */	blr 

.global func_80113EC4
func_80113EC4:
/* 80113EC4 0010F7E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80113EC8 0010F7E8  7C 08 02 A6 */	mflr r0
/* 80113ECC 0010F7EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80113ED0 0010F7F0  48 00 52 0D */	bl func_801190DC
/* 80113ED4 0010F7F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80113ED8 0010F7F8  38 60 00 00 */	li r3, 0
/* 80113EDC 0010F7FC  7C 08 03 A6 */	mtlr r0
/* 80113EE0 0010F800  38 21 00 10 */	addi r1, r1, 0x10
/* 80113EE4 0010F804  4E 80 00 20 */	blr 

.global func_80113EE8
func_80113EE8:
/* 80113EE8 0010F808  94 21 FA F0 */	stwu r1, -0x510(r1)
/* 80113EEC 0010F80C  7C 08 02 A6 */	mflr r0
/* 80113EF0 0010F810  90 01 05 14 */	stw r0, 0x514(r1)
/* 80113EF4 0010F814  93 E1 05 0C */	stw r31, 0x50c(r1)
/* 80113EF8 0010F818  48 00 4F B1 */	bl func_80118EA8
/* 80113EFC 0010F81C  2C 03 00 00 */	cmpwi r3, 0
/* 80113F00 0010F820  7C 7F 1B 78 */	mr r31, r3
/* 80113F04 0010F824  41 81 00 0C */	bgt lbl_80113F10
/* 80113F08 0010F828  38 60 00 00 */	li r3, 0
/* 80113F0C 0010F82C  48 00 00 3C */	b lbl_80113F48
lbl_80113F10:
/* 80113F10 0010F830  7F E4 FB 78 */	mr r4, r31
/* 80113F14 0010F834  38 61 00 08 */	addi r3, r1, 8
/* 80113F18 0010F838  48 00 50 35 */	bl func_80118F4C
/* 80113F1C 0010F83C  2C 03 00 00 */	cmpwi r3, 0
/* 80113F20 0010F840  40 82 00 1C */	bne lbl_80113F3C
/* 80113F24 0010F844  3C 60 80 37 */	lis r3, lbl_8036A2A0@ha
/* 80113F28 0010F848  7F E5 FB 78 */	mr r5, r31
/* 80113F2C 0010F84C  38 63 A2 A0 */	addi r3, r3, lbl_8036A2A0@l
/* 80113F30 0010F850  38 81 00 08 */	addi r4, r1, 8
/* 80113F34 0010F854  48 00 00 B5 */	bl func_80113FE8
/* 80113F38 0010F858  48 00 00 0C */	b lbl_80113F44
lbl_80113F3C:
/* 80113F3C 0010F85C  38 60 D8 E7 */	li r3, -10009
/* 80113F40 0010F860  48 00 00 08 */	b lbl_80113F48
lbl_80113F44:
/* 80113F44 0010F864  7F E3 FB 78 */	mr r3, r31
lbl_80113F48:
/* 80113F48 0010F868  80 01 05 14 */	lwz r0, 0x514(r1)
/* 80113F4C 0010F86C  83 E1 05 0C */	lwz r31, 0x50c(r1)
/* 80113F50 0010F870  7C 08 03 A6 */	mtlr r0
/* 80113F54 0010F874  38 21 05 10 */	addi r1, r1, 0x510
/* 80113F58 0010F878  4E 80 00 20 */	blr 

.global func_80113F5C
func_80113F5C:
/* 80113F5C 0010F87C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80113F60 0010F880  7C 08 02 A6 */	mflr r0
/* 80113F64 0010F884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80113F68 0010F888  48 00 4E ED */	bl func_80118E54
/* 80113F6C 0010F88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80113F70 0010F890  38 60 00 00 */	li r3, 0
/* 80113F74 0010F894  7C 08 03 A6 */	mtlr r0
/* 80113F78 0010F898  38 21 00 10 */	addi r1, r1, 0x10
/* 80113F7C 0010F89C  4E 80 00 20 */	blr 



.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320BB0
lbl_80320BB0:
	.skip 0x8



.section .bss, "wa" # 0x8034C9C0 - 0x803D5C28

.global lbl_80369DA0
lbl_80369DA0:
	.skip 0x500
.global lbl_8036A2A0
lbl_8036A2A0:
	.skip 0x20