.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800E5350
func_800E5350:
/* 800E5350 000E0C70  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800E5354 000E0C74  7C 08 02 A6 */	mflr r0
/* 800E5358 000E0C78  7C 64 1B 78 */	mr r4, r3
/* 800E535C 000E0C7C  38 A0 00 20 */	li r5, 0x20
/* 800E5360 000E0C80  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800E5364 000E0C84  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 800E5368 000E0C88  93 C1 00 98 */	stw r30, 0x98(r1)
/* 800E536C 000E0C8C  3F C0 80 35 */	lis r30, lbl_8034DAA0@ha
/* 800E5370 000E0C90  38 7E DA A0 */	addi r3, r30, lbl_8034DAA0@l
/* 800E5374 000E0C94  4B F1 F0 51 */	bl func_800043C4
/* 800E5378 000E0C98  3B FE DA A0 */	addi r31, r30, -9568
/* 800E537C 000E0C9C  3C 60 80 30 */	lis r3, lbl_802FEF48@ha
/* 800E5380 000E0CA0  80 DF 00 04 */	lwz r6, 4(r31)
/* 800E5384 000E0CA4  38 63 EF 48 */	addi r3, r3, lbl_802FEF48@l
/* 800E5388 000E0CA8  80 1F 00 08 */	lwz r0, 8(r31)
/* 800E538C 000E0CAC  38 81 00 08 */	addi r4, r1, 8
/* 800E5390 000E0CB0  38 A0 00 02 */	li r5, 2
/* 800E5394 000E0CB4  7C C6 02 14 */	add r6, r6, r0
/* 800E5398 000E0CB8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 800E539C 000E0CBC  7C C6 02 14 */	add r6, r6, r0
/* 800E53A0 000E0CC0  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 800E53A4 000E0CC4  7C C6 02 14 */	add r6, r6, r0
/* 800E53A8 000E0CC8  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 800E53AC 000E0CCC  7C C6 02 14 */	add r6, r6, r0
/* 800E53B0 000E0CD0  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 800E53B4 000E0CD4  7C C6 02 14 */	add r6, r6, r0
/* 800E53B8 000E0CD8  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 800E53BC 000E0CDC  7C C6 02 14 */	add r6, r6, r0
/* 800E53C0 000E0CE0  90 DE DA A0 */	stw r6, -0x2560(r30)
/* 800E53C4 000E0CE4  48 03 B0 0D */	bl func_801203D0
/* 800E53C8 000E0CE8  2C 03 00 00 */	cmpwi r3, 0
/* 800E53CC 000E0CEC  40 82 00 44 */	bne lbl_800E5410
/* 800E53D0 000E0CF0  7F E4 FB 78 */	mr r4, r31
/* 800E53D4 000E0CF4  38 61 00 08 */	addi r3, r1, 8
/* 800E53D8 000E0CF8  38 A0 00 20 */	li r5, 0x20
/* 800E53DC 000E0CFC  48 03 9F 75 */	bl func_8011F350
/* 800E53E0 000E0D00  28 03 00 20 */	cmplwi r3, 0x20
/* 800E53E4 000E0D04  41 82 00 14 */	beq lbl_800E53F8
/* 800E53E8 000E0D08  38 61 00 08 */	addi r3, r1, 8
/* 800E53EC 000E0D0C  48 03 B2 85 */	bl func_80120670
/* 800E53F0 000E0D10  38 60 00 00 */	li r3, 0
/* 800E53F4 000E0D14  48 00 00 28 */	b lbl_800E541C
lbl_800E53F8:
/* 800E53F8 000E0D18  38 61 00 08 */	addi r3, r1, 8
/* 800E53FC 000E0D1C  48 03 B2 75 */	bl func_80120670
/* 800E5400 000E0D20  2C 03 00 00 */	cmpwi r3, 0
/* 800E5404 000E0D24  41 82 00 14 */	beq lbl_800E5418
/* 800E5408 000E0D28  38 60 00 00 */	li r3, 0
/* 800E540C 000E0D2C  48 00 00 10 */	b lbl_800E541C
lbl_800E5410:
/* 800E5410 000E0D30  38 60 00 00 */	li r3, 0
/* 800E5414 000E0D34  48 00 00 08 */	b lbl_800E541C
lbl_800E5418:
/* 800E5418 000E0D38  38 60 00 01 */	li r3, 1
lbl_800E541C:
/* 800E541C 000E0D3C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800E5420 000E0D40  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 800E5424 000E0D44  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 800E5428 000E0D48  7C 08 03 A6 */	mtlr r0
/* 800E542C 000E0D4C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800E5430 000E0D50  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E5440
func_800E5440:
/* 800E5440 000E0D60  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800E5444 000E0D64  7C 08 02 A6 */	mflr r0
/* 800E5448 000E0D68  38 A0 00 01 */	li r5, 1
/* 800E544C 000E0D6C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 800E5450 000E0D70  38 81 00 08 */	addi r4, r1, 8
/* 800E5454 000E0D74  93 E1 00 AC */	stw r31, 0xac(r1)
/* 800E5458 000E0D78  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 800E545C 000E0D7C  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 800E5460 000E0D80  3F A0 80 30 */	lis r29, lbl_802FEF48@ha
/* 800E5464 000E0D84  93 81 00 A0 */	stw r28, 0xa0(r1)
/* 800E5468 000E0D88  7C 7C 1B 78 */	mr r28, r3
/* 800E546C 000E0D8C  38 7D EF 48 */	addi r3, r29, lbl_802FEF48@l
/* 800E5470 000E0D90  48 03 AF 61 */	bl func_801203D0
/* 800E5474 000E0D94  2C 03 00 00 */	cmpwi r3, 0
/* 800E5478 000E0D98  40 82 00 4C */	bne lbl_800E54C4
/* 800E547C 000E0D9C  3F C0 80 35 */	lis r30, lbl_8034DAA0@ha
/* 800E5480 000E0DA0  38 61 00 08 */	addi r3, r1, 8
/* 800E5484 000E0DA4  38 9E DA A0 */	addi r4, r30, lbl_8034DAA0@l
/* 800E5488 000E0DA8  38 A0 00 20 */	li r5, 0x20
/* 800E548C 000E0DAC  48 03 9D D5 */	bl func_8011F260
/* 800E5490 000E0DB0  7C 7F 1B 78 */	mr r31, r3
/* 800E5494 000E0DB4  38 61 00 08 */	addi r3, r1, 8
/* 800E5498 000E0DB8  48 03 B1 D9 */	bl func_80120670
/* 800E549C 000E0DBC  28 1F 00 20 */	cmplwi r31, 0x20
/* 800E54A0 000E0DC0  41 82 00 3C */	beq lbl_800E54DC
/* 800E54A4 000E0DC4  38 7D EF 48 */	addi r3, r29, -4280
/* 800E54A8 000E0DC8  48 03 9B A9 */	bl func_8011F050
/* 800E54AC 000E0DCC  7F 83 E3 78 */	mr r3, r28
/* 800E54B0 000E0DD0  38 80 00 00 */	li r4, 0
/* 800E54B4 000E0DD4  38 A0 00 20 */	li r5, 0x20
/* 800E54B8 000E0DD8  4B F1 F2 5D */	bl func_80004714
/* 800E54BC 000E0DDC  38 60 00 00 */	li r3, 0
/* 800E54C0 000E0DE0  48 00 00 88 */	b lbl_800E5548
lbl_800E54C4:
/* 800E54C4 000E0DE4  7F 83 E3 78 */	mr r3, r28
/* 800E54C8 000E0DE8  38 80 00 00 */	li r4, 0
/* 800E54CC 000E0DEC  38 A0 00 20 */	li r5, 0x20
/* 800E54D0 000E0DF0  4B F1 F2 45 */	bl func_80004714
/* 800E54D4 000E0DF4  38 60 00 00 */	li r3, 0
/* 800E54D8 000E0DF8  48 00 00 70 */	b lbl_800E5548
lbl_800E54DC:
/* 800E54DC 000E0DFC  38 9E DA A0 */	addi r4, r30, -9568
/* 800E54E0 000E0E00  80 1E DA A0 */	lwz r0, -0x2560(r30)
/* 800E54E4 000E0E04  80 A4 00 04 */	lwz r5, 4(r4)
/* 800E54E8 000E0E08  80 64 00 08 */	lwz r3, 8(r4)
/* 800E54EC 000E0E0C  7C A5 1A 14 */	add r5, r5, r3
/* 800E54F0 000E0E10  80 64 00 0C */	lwz r3, 0xc(r4)
/* 800E54F4 000E0E14  7C A5 1A 14 */	add r5, r5, r3
/* 800E54F8 000E0E18  80 64 00 10 */	lwz r3, 0x10(r4)
/* 800E54FC 000E0E1C  7C A5 1A 14 */	add r5, r5, r3
/* 800E5500 000E0E20  80 64 00 14 */	lwz r3, 0x14(r4)
/* 800E5504 000E0E24  7C A5 1A 14 */	add r5, r5, r3
/* 800E5508 000E0E28  80 64 00 18 */	lwz r3, 0x18(r4)
/* 800E550C 000E0E2C  7C A5 1A 14 */	add r5, r5, r3
/* 800E5510 000E0E30  80 64 00 1C */	lwz r3, 0x1c(r4)
/* 800E5514 000E0E34  7C A5 1A 14 */	add r5, r5, r3
/* 800E5518 000E0E38  7C 00 28 40 */	cmplw r0, r5
/* 800E551C 000E0E3C  41 82 00 1C */	beq lbl_800E5538
/* 800E5520 000E0E40  7F 83 E3 78 */	mr r3, r28
/* 800E5524 000E0E44  38 80 00 00 */	li r4, 0
/* 800E5528 000E0E48  38 A0 00 20 */	li r5, 0x20
/* 800E552C 000E0E4C  4B F1 F1 E9 */	bl func_80004714
/* 800E5530 000E0E50  38 60 00 00 */	li r3, 0
/* 800E5534 000E0E54  48 00 00 14 */	b lbl_800E5548
lbl_800E5538:
/* 800E5538 000E0E58  7F 83 E3 78 */	mr r3, r28
/* 800E553C 000E0E5C  38 A0 00 20 */	li r5, 0x20
/* 800E5540 000E0E60  4B F1 EE 85 */	bl func_800043C4
/* 800E5544 000E0E64  38 60 00 01 */	li r3, 1
lbl_800E5548:
/* 800E5548 000E0E68  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800E554C 000E0E6C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 800E5550 000E0E70  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 800E5554 000E0E74  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 800E5558 000E0E78  83 81 00 A0 */	lwz r28, 0xa0(r1)
/* 800E555C 000E0E7C  7C 08 03 A6 */	mtlr r0
/* 800E5560 000E0E80  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800E5564 000E0E84  4E 80 00 20 */	blr 


.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_802FEF48

lbl_802FEF48:

	# ROM: 0x2FB048
	.asciz "/title/00000001/00000002/data/state.dat"
	.balign 4


.section .bss, "wa" # 0x8034C9C0 - 0x803D5C28

.global lbl_8034DAA0
lbl_8034DAA0:
	.skip 0x20
