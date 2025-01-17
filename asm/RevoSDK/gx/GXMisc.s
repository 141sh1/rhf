.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800FE1F0
func_800FE1F0:
/* 800FE1F0 000F9B10  2C 03 00 01 */	cmpwi r3, 1
/* 800FE1F4 000F9B14  41 82 00 18 */	beq lbl_800FE20C
/* 800FE1F8 000F9B18  2C 03 00 02 */	cmpwi r3, 2
/* 800FE1FC 000F9B1C  41 82 00 44 */	beq lbl_800FE240
/* 800FE200 000F9B20  2C 03 00 03 */	cmpwi r3, 3
/* 800FE204 000F9B24  41 82 00 54 */	beq lbl_800FE258
/* 800FE208 000F9B28  4E 80 00 20 */	blr 
lbl_800FE20C:
/* 800FE20C 000F9B2C  80 A2 F9 70 */	lwz r5, lbl_80328950-_SDA2_BASE_(r2)
/* 800FE210 000F9B30  54 80 04 3F */	clrlwi. r0, r4, 0x10
/* 800FE214 000F9B34  B0 85 00 04 */	sth r4, 4(r5)
/* 800FE218 000F9B38  7C 03 00 34 */	cntlzw r3, r0
/* 800FE21C 000F9B3C  38 00 00 01 */	li r0, 1
/* 800FE220 000F9B40  54 63 DC 3E */	rlwinm r3, r3, 0x1b, 0x10, 0x1f
/* 800FE224 000F9B44  B0 65 00 00 */	sth r3, 0(r5)
/* 800FE228 000F9B48  B0 05 00 02 */	sth r0, 2(r5)
/* 800FE22C 000F9B4C  4D 82 00 20 */	beqlr 
/* 800FE230 000F9B50  80 05 05 FC */	lwz r0, 0x5fc(r5)
/* 800FE234 000F9B54  60 00 00 08 */	ori r0, r0, 8
/* 800FE238 000F9B58  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 800FE23C 000F9B5C  4E 80 00 20 */	blr 
lbl_800FE240:
/* 800FE240 000F9B60  7C 04 00 D0 */	neg r0, r4
/* 800FE244 000F9B64  80 62 F9 70 */	lwz r3, lbl_80328950-_SDA2_BASE_(r2)
/* 800FE248 000F9B68  7C 00 23 78 */	or r0, r0, r4
/* 800FE24C 000F9B6C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 800FE250 000F9B70  98 03 05 F9 */	stb r0, 0x5f9(r3)
/* 800FE254 000F9B74  4E 80 00 20 */	blr 
lbl_800FE258:
/* 800FE258 000F9B78  7C 04 00 D0 */	neg r0, r4
/* 800FE25C 000F9B7C  80 62 F9 70 */	lwz r3, lbl_80328950-_SDA2_BASE_(r2)
/* 800FE260 000F9B80  7C 00 23 78 */	or r0, r0, r4
/* 800FE264 000F9B84  54 00 0F FE */	srwi r0, r0, 0x1f
/* 800FE268 000F9B88  98 03 05 FA */	stb r0, 0x5fa(r3)
/* 800FE26C 000F9B8C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE270
func_800FE270:
/* 800FE270 000F9B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FE274 000F9B94  7C 08 02 A6 */	mflr r0
/* 800FE278 000F9B98  80 62 F9 70 */	lwz r3, lbl_80328950-_SDA2_BASE_(r2)
/* 800FE27C 000F9B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FE280 000F9BA0  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 800FE284 000F9BA4  2C 00 00 00 */	cmpwi r0, 0
/* 800FE288 000F9BA8  41 82 00 08 */	beq lbl_800FE290
/* 800FE28C 000F9BAC  48 00 08 05 */	bl func_800FEA90
lbl_800FE290:
/* 800FE290 000F9BB0  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800FE294 000F9BB4  38 00 00 00 */	li r0, 0
/* 800FE298 000F9BB8  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 800FE29C 000F9BBC  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE2A0 000F9BC0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE2A4 000F9BC4  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE2A8 000F9BC8  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE2AC 000F9BCC  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE2B0 000F9BD0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE2B4 000F9BD4  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE2B8 000F9BD8  4B FD AB 89 */	bl func_800D8E40
/* 800FE2BC 000F9BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FE2C0 000F9BE0  7C 08 03 A6 */	mtlr r0
/* 800FE2C4 000F9BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 800FE2C8 000F9BE8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE2D0
func_800FE2D0:
/* 800FE2D0 000F9BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FE2D4 000F9BF4  7C 08 02 A6 */	mflr r0
/* 800FE2D8 000F9BF8  90 01 00 14 */	stw r0, 0x14(r1)
lbl_800FE2DC:
/* 800FE2DC 000F9BFC  4B FD AC 65 */	bl func_800D8F40
/* 800FE2E0 000F9C00  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800FE2E4 000F9C04  40 82 FF F8 */	bne lbl_800FE2DC
/* 800FE2E8 000F9C08  3C 60 0C 01 */	lis r3, 0x0C008000@ha
/* 800FE2EC 000F9C0C  38 63 80 00 */	addi r3, r3, 0x0C008000@l
/* 800FE2F0 000F9C10  4B FD AC 61 */	bl func_800D8F50
/* 800FE2F4 000F9C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FE2F8 000F9C18  7C 08 03 A6 */	mtlr r0
/* 800FE2FC 000F9C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 800FE300 000F9C20  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE310
func_800FE310:
/* 800FE310 000F9C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FE314 000F9C34  7C 08 02 A6 */	mflr r0
/* 800FE318 000F9C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FE31C 000F9C3C  39 61 00 20 */	addi r11, r1, 0x20
/* 800FE320 000F9C40  48 00 5E 4D */	bl func_8010416C
/* 800FE324 000F9C44  80 62 F9 70 */	lwz r3, lbl_80328950-_SDA2_BASE_(r2)
/* 800FE328 000F9C48  88 03 05 FA */	lbz r0, 0x5fa(r3)
/* 800FE32C 000F9C4C  2C 00 00 00 */	cmpwi r0, 0
/* 800FE330 000F9C50  41 82 00 A0 */	beq lbl_800FE3D0
/* 800FE334 000F9C54  4B FF F0 3D */	bl func_800FD370
/* 800FE338 000F9C58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FE33C 000F9C5C  41 82 00 94 */	beq lbl_800FE3D0
/* 800FE340 000F9C60  80 AD 9C 2C */	lwz r5, lbl_80320AEC-_SDA_BASE_(r13)
/* 800FE344 000F9C64  A0 05 00 4E */	lhz r0, 0x4e(r5)
lbl_800FE348:
/* 800FE348 000F9C68  7C 03 03 78 */	mr r3, r0
/* 800FE34C 000F9C6C  A0 85 00 50 */	lhz r4, 0x50(r5)
/* 800FE350 000F9C70  A0 05 00 4E */	lhz r0, 0x4e(r5)
/* 800FE354 000F9C74  7C 00 18 40 */	cmplw r0, r3
/* 800FE358 000F9C78  40 82 FF F0 */	bne lbl_800FE348
/* 800FE35C 000F9C7C  54 03 80 1E */	slwi r3, r0, 0x10
/* 800FE360 000F9C80  38 00 00 00 */	li r0, 0
/* 800FE364 000F9C84  7C 7B 23 78 */	or r27, r3, r4
/* 800FE368 000F9C88  3B A0 00 08 */	li r29, 8
/* 800FE36C 000F9C8C  6C 1C 80 00 */	xoris r28, r0, 0x8000
lbl_800FE370:
/* 800FE370 000F9C90  4B FE 5A F1 */	bl func_800E3E60
/* 800FE374 000F9C94  7C 9F 23 78 */	mr r31, r4
/* 800FE378 000F9C98  7C 7E 1B 78 */	mr r30, r3
lbl_800FE37C:
/* 800FE37C 000F9C9C  4B FE 5A E5 */	bl func_800E3E60
/* 800FE380 000F9CA0  7C 9F 20 10 */	subfc r4, r31, r4
/* 800FE384 000F9CA4  7C 1E 19 10 */	subfe r0, r30, r3
/* 800FE388 000F9CA8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800FE38C 000F9CAC  7C 04 E8 10 */	subfc r0, r4, r29
/* 800FE390 000F9CB0  7C 63 E1 10 */	subfe r3, r3, r28
/* 800FE394 000F9CB4  7C 7C E1 10 */	subfe r3, r28, r28
/* 800FE398 000F9CB8  7C 63 00 D1 */	neg. r3, r3
/* 800FE39C 000F9CBC  41 82 FF E0 */	beq lbl_800FE37C
/* 800FE3A0 000F9CC0  80 AD 9C 2C */	lwz r5, lbl_80320AEC-_SDA_BASE_(r13)
/* 800FE3A4 000F9CC4  A0 05 00 4E */	lhz r0, 0x4e(r5)
lbl_800FE3A8:
/* 800FE3A8 000F9CC8  7C 03 03 78 */	mr r3, r0
/* 800FE3AC 000F9CCC  A0 85 00 50 */	lhz r4, 0x50(r5)
/* 800FE3B0 000F9CD0  A0 05 00 4E */	lhz r0, 0x4e(r5)
/* 800FE3B4 000F9CD4  7C 00 18 40 */	cmplw r0, r3
/* 800FE3B8 000F9CD8  40 82 FF F0 */	bne lbl_800FE3A8
/* 800FE3BC 000F9CDC  54 00 80 1E */	slwi r0, r0, 0x10
/* 800FE3C0 000F9CE0  7C 00 23 78 */	or r0, r0, r4
/* 800FE3C4 000F9CE4  7C 00 D8 40 */	cmplw r0, r27
/* 800FE3C8 000F9CE8  7C 1B 03 78 */	mr r27, r0
/* 800FE3CC 000F9CEC  40 82 FF A4 */	bne lbl_800FE370
lbl_800FE3D0:
/* 800FE3D0 000F9CF0  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 800FE3D4 000F9CF4  38 00 00 01 */	li r0, 1
/* 800FE3D8 000F9CF8  90 03 30 18 */	stw r0, 0xCC003018@l(r3)
/* 800FE3DC 000F9CFC  4B FE 5A 85 */	bl func_800E3E60
/* 800FE3E0 000F9D00  38 00 00 00 */	li r0, 0
/* 800FE3E4 000F9D04  7C 9F 23 78 */	mr r31, r4
/* 800FE3E8 000F9D08  7C 7E 1B 78 */	mr r30, r3
/* 800FE3EC 000F9D0C  3B A0 00 32 */	li r29, 0x32
/* 800FE3F0 000F9D10  6C 1C 80 00 */	xoris r28, r0, 0x8000
lbl_800FE3F4:
/* 800FE3F4 000F9D14  4B FE 5A 6D */	bl func_800E3E60
/* 800FE3F8 000F9D18  7C 9F 20 10 */	subfc r4, r31, r4
/* 800FE3FC 000F9D1C  7C 1E 19 10 */	subfe r0, r30, r3
/* 800FE400 000F9D20  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800FE404 000F9D24  7C 04 E8 10 */	subfc r0, r4, r29
/* 800FE408 000F9D28  7C 63 E1 10 */	subfe r3, r3, r28
/* 800FE40C 000F9D2C  7C 7C E1 10 */	subfe r3, r28, r28
/* 800FE410 000F9D30  7C 63 00 D1 */	neg. r3, r3
/* 800FE414 000F9D34  41 82 FF E0 */	beq lbl_800FE3F4
/* 800FE418 000F9D38  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 800FE41C 000F9D3C  3B C0 00 00 */	li r30, 0
/* 800FE420 000F9D40  93 C3 30 18 */	stw r30, 0xCC003018@l(r3)
/* 800FE424 000F9D44  4B FE 5A 3D */	bl func_800E3E60
/* 800FE428 000F9D48  6F DF 80 00 */	xoris r31, r30, 0x8000
/* 800FE42C 000F9D4C  7C 9C 23 78 */	mr r28, r4
/* 800FE430 000F9D50  7C 7D 1B 78 */	mr r29, r3
/* 800FE434 000F9D54  3B C0 00 05 */	li r30, 5
lbl_800FE438:
/* 800FE438 000F9D58  4B FE 5A 29 */	bl func_800E3E60
/* 800FE43C 000F9D5C  7C 9C 20 10 */	subfc r4, r28, r4
/* 800FE440 000F9D60  7C 1D 19 10 */	subfe r0, r29, r3
/* 800FE444 000F9D64  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800FE448 000F9D68  7C 04 F0 10 */	subfc r0, r4, r30
/* 800FE44C 000F9D6C  7C 63 F9 10 */	subfe r3, r3, r31
/* 800FE450 000F9D70  7C 7F F9 10 */	subfe r3, r31, r31
/* 800FE454 000F9D74  7C 63 00 D1 */	neg. r3, r3
/* 800FE458 000F9D78  41 82 FF E0 */	beq lbl_800FE438
/* 800FE45C 000F9D7C  39 61 00 20 */	addi r11, r1, 0x20
/* 800FE460 000F9D80  48 00 5D 59 */	bl func_801041B8
/* 800FE464 000F9D84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FE468 000F9D88  7C 08 03 A6 */	mtlr r0
/* 800FE46C 000F9D8C  38 21 00 20 */	addi r1, r1, 0x20
/* 800FE470 000F9D90  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE480
func_800FE480:
/* 800FE480 000F9DA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FE484 000F9DA4  7C 08 02 A6 */	mflr r0
/* 800FE488 000F9DA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FE48C 000F9DAC  39 61 00 20 */	addi r11, r1, 0x20
/* 800FE490 000F9DB0  48 00 5C D9 */	bl func_80104168
/* 800FE494 000F9DB4  83 E2 F9 70 */	lwz r31, lbl_80328950-_SDA2_BASE_(r2)
/* 800FE498 000F9DB8  88 1F 05 FA */	lbz r0, 0x5fa(r31)
/* 800FE49C 000F9DBC  2C 00 00 00 */	cmpwi r0, 0
/* 800FE4A0 000F9DC0  41 82 00 A0 */	beq lbl_800FE540
/* 800FE4A4 000F9DC4  4B FF EE CD */	bl func_800FD370
/* 800FE4A8 000F9DC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FE4AC 000F9DCC  41 82 00 94 */	beq lbl_800FE540
/* 800FE4B0 000F9DD0  80 AD 9C 2C */	lwz r5, lbl_80320AEC-_SDA_BASE_(r13)
/* 800FE4B4 000F9DD4  A0 65 00 4E */	lhz r3, 0x4e(r5)
lbl_800FE4B8:
/* 800FE4B8 000F9DD8  7C 60 1B 78 */	mr r0, r3
/* 800FE4BC 000F9DDC  A0 85 00 50 */	lhz r4, 0x50(r5)
/* 800FE4C0 000F9DE0  A0 65 00 4E */	lhz r3, 0x4e(r5)
/* 800FE4C4 000F9DE4  7C 03 00 40 */	cmplw r3, r0
/* 800FE4C8 000F9DE8  40 82 FF F0 */	bne lbl_800FE4B8
/* 800FE4CC 000F9DEC  54 63 80 1E */	slwi r3, r3, 0x10
/* 800FE4D0 000F9DF0  38 00 00 00 */	li r0, 0
/* 800FE4D4 000F9DF4  7C 7A 23 78 */	or r26, r3, r4
/* 800FE4D8 000F9DF8  3B 80 00 08 */	li r28, 8
/* 800FE4DC 000F9DFC  6C 1B 80 00 */	xoris r27, r0, 0x8000
lbl_800FE4E0:
/* 800FE4E0 000F9E00  4B FE 59 81 */	bl func_800E3E60
/* 800FE4E4 000F9E04  7C 9E 23 78 */	mr r30, r4
/* 800FE4E8 000F9E08  7C 7D 1B 78 */	mr r29, r3
lbl_800FE4EC:
/* 800FE4EC 000F9E0C  4B FE 59 75 */	bl func_800E3E60
/* 800FE4F0 000F9E10  7C 9E 20 10 */	subfc r4, r30, r4
/* 800FE4F4 000F9E14  7C 1D 19 10 */	subfe r0, r29, r3
/* 800FE4F8 000F9E18  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800FE4FC 000F9E1C  7C 04 E0 10 */	subfc r0, r4, r28
/* 800FE500 000F9E20  7C 63 D9 10 */	subfe r3, r3, r27
/* 800FE504 000F9E24  7C 7B D9 10 */	subfe r3, r27, r27
/* 800FE508 000F9E28  7C 63 00 D1 */	neg. r3, r3
/* 800FE50C 000F9E2C  41 82 FF E0 */	beq lbl_800FE4EC
/* 800FE510 000F9E30  80 AD 9C 2C */	lwz r5, lbl_80320AEC-_SDA_BASE_(r13)
/* 800FE514 000F9E34  A0 85 00 4E */	lhz r4, 0x4e(r5)
lbl_800FE518:
/* 800FE518 000F9E38  7C 80 23 78 */	mr r0, r4
/* 800FE51C 000F9E3C  A0 65 00 50 */	lhz r3, 0x50(r5)
/* 800FE520 000F9E40  A0 85 00 4E */	lhz r4, 0x4e(r5)
/* 800FE524 000F9E44  7C 04 00 40 */	cmplw r4, r0
/* 800FE528 000F9E48  40 82 FF F0 */	bne lbl_800FE518
/* 800FE52C 000F9E4C  54 80 80 1E */	slwi r0, r4, 0x10
/* 800FE530 000F9E50  7C 00 1B 78 */	or r0, r0, r3
/* 800FE534 000F9E54  7C 00 D0 40 */	cmplw r0, r26
/* 800FE538 000F9E58  7C 1A 03 78 */	mr r26, r0
/* 800FE53C 000F9E5C  40 82 FF A4 */	bne lbl_800FE4E0
lbl_800FE540:
/* 800FE540 000F9E60  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 800FE544 000F9E64  38 00 00 01 */	li r0, 1
/* 800FE548 000F9E68  90 03 30 18 */	stw r0, 0xCC003018@l(r3)
/* 800FE54C 000F9E6C  4B FE 59 15 */	bl func_800E3E60
/* 800FE550 000F9E70  38 00 00 00 */	li r0, 0
/* 800FE554 000F9E74  7C 9E 23 78 */	mr r30, r4
/* 800FE558 000F9E78  7C 7D 1B 78 */	mr r29, r3
/* 800FE55C 000F9E7C  3B 80 00 32 */	li r28, 0x32
/* 800FE560 000F9E80  6C 1B 80 00 */	xoris r27, r0, 0x8000
lbl_800FE564:
/* 800FE564 000F9E84  4B FE 58 FD */	bl func_800E3E60
/* 800FE568 000F9E88  7C 9E 20 10 */	subfc r4, r30, r4
/* 800FE56C 000F9E8C  7C 1D 19 10 */	subfe r0, r29, r3
/* 800FE570 000F9E90  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800FE574 000F9E94  7C 04 E0 10 */	subfc r0, r4, r28
/* 800FE578 000F9E98  7C 63 D9 10 */	subfe r3, r3, r27
/* 800FE57C 000F9E9C  7C 7B D9 10 */	subfe r3, r27, r27
/* 800FE580 000F9EA0  7C 63 00 D1 */	neg. r3, r3
/* 800FE584 000F9EA4  41 82 FF E0 */	beq lbl_800FE564
/* 800FE588 000F9EA8  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 800FE58C 000F9EAC  3B A0 00 00 */	li r29, 0
/* 800FE590 000F9EB0  93 A3 30 18 */	stw r29, 0xCC003018@l(r3)
/* 800FE594 000F9EB4  4B FE 58 CD */	bl func_800E3E60
/* 800FE598 000F9EB8  6F BE 80 00 */	xoris r30, r29, 0x8000
/* 800FE59C 000F9EBC  7C 9B 23 78 */	mr r27, r4
/* 800FE5A0 000F9EC0  7C 7C 1B 78 */	mr r28, r3
/* 800FE5A4 000F9EC4  3B A0 00 05 */	li r29, 5
lbl_800FE5A8:
/* 800FE5A8 000F9EC8  4B FE 58 B9 */	bl func_800E3E60
/* 800FE5AC 000F9ECC  7C 9B 20 10 */	subfc r4, r27, r4
/* 800FE5B0 000F9ED0  7C 1C 19 10 */	subfe r0, r28, r3
/* 800FE5B4 000F9ED4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800FE5B8 000F9ED8  7C 04 E8 10 */	subfc r0, r4, r29
/* 800FE5BC 000F9EDC  7C 63 F1 10 */	subfe r3, r3, r30
/* 800FE5C0 000F9EE0  7C 7E F1 10 */	subfe r3, r30, r30
/* 800FE5C4 000F9EE4  7C 63 00 D1 */	neg. r3, r3
/* 800FE5C8 000F9EE8  41 82 FF E0 */	beq lbl_800FE5A8
/* 800FE5CC 000F9EEC  4B FF ED A5 */	bl func_800FD370
/* 800FE5D0 000F9EF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FE5D4 000F9EF4  41 82 00 48 */	beq lbl_800FE61C
/* 800FE5D8 000F9EF8  4B FF EF 29 */	bl func_800FD500
/* 800FE5DC 000F9EFC  4B FF D6 35 */	bl func_800FBC10
/* 800FE5E0 000F9F00  38 00 00 00 */	li r0, 0
/* 800FE5E4 000F9F04  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 800FE5E8 000F9F08  48 00 00 08 */	b lbl_800FE5F0
/* 800FE5EC 000F9F0C  48 00 04 A5 */	bl func_800FEA90
lbl_800FE5F0:
/* 800FE5F0 000F9F10  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800FE5F4 000F9F14  38 00 00 00 */	li r0, 0
/* 800FE5F8 000F9F18  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 800FE5FC 000F9F1C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE600 000F9F20  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE604 000F9F24  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE608 000F9F28  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE60C 000F9F2C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE610 000F9F30  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE614 000F9F34  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FE618 000F9F38  4B FD A8 29 */	bl func_800D8E40
lbl_800FE61C:
/* 800FE61C 000F9F3C  39 61 00 20 */	addi r11, r1, 0x20
/* 800FE620 000F9F40  48 00 5B 95 */	bl func_801041B4
/* 800FE624 000F9F44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FE628 000F9F48  7C 08 03 A6 */	mtlr r0
/* 800FE62C 000F9F4C  38 21 00 20 */	addi r1, r1, 0x20
/* 800FE630 000F9F50  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE640
func_800FE640:
/* 800FE640 000F9F60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FE644 000F9F64  7C 08 02 A6 */	mflr r0
/* 800FE648 000F9F68  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FE64C 000F9F6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FE650 000F9F70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FE654 000F9F74  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800FE658 000F9F78  4B FE 17 C9 */	bl func_800DFE20
/* 800FE65C 000F9F7C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800FE660 000F9F80  38 00 00 61 */	li r0, 0x61
/* 800FE664 000F9F84  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800FE668 000F9F88  3C 80 45 00 */	lis r4, 0x45000002@ha
/* 800FE66C 000F9F8C  38 04 00 02 */	addi r0, r4, 0x45000002@l
/* 800FE670 000F9F90  83 A2 F9 70 */	lwz r29, lbl_80328950-_SDA2_BASE_(r2)
/* 800FE674 000F9F94  90 05 80 00 */	stw r0, -0x8000(r5)
/* 800FE678 000F9F98  7C 7E 1B 78 */	mr r30, r3
/* 800FE67C 000F9F9C  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 800FE680 000F9FA0  2C 00 00 00 */	cmpwi r0, 0
/* 800FE684 000F9FA4  41 82 00 08 */	beq lbl_800FE68C
/* 800FE688 000F9FA8  48 00 04 09 */	bl func_800FEA90
lbl_800FE68C:
/* 800FE68C 000F9FAC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800FE690 000F9FB0  3B E0 00 00 */	li r31, 0
/* 800FE694 000F9FB4  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 800FE698 000F9FB8  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800FE69C 000F9FBC  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800FE6A0 000F9FC0  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800FE6A4 000F9FC4  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800FE6A8 000F9FC8  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800FE6AC 000F9FCC  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800FE6B0 000F9FD0  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800FE6B4 000F9FD4  4B FD A7 8D */	bl func_800D8E40
/* 800FE6B8 000F9FD8  9B ED 9C 70 */	stb r31, lbl_80320B30-_SDA_BASE_(r13)
/* 800FE6BC 000F9FDC  7F C3 F3 78 */	mr r3, r30
/* 800FE6C0 000F9FE0  4B FE 17 A1 */	bl func_800DFE60
/* 800FE6C4 000F9FE4  B3 FD 00 02 */	sth r31, 2(r29)
/* 800FE6C8 000F9FE8  4B FE 17 59 */	bl func_800DFE20
/* 800FE6CC 000F9FEC  7C 7E 1B 78 */	mr r30, r3
/* 800FE6D0 000F9FF0  48 00 00 0C */	b lbl_800FE6DC
lbl_800FE6D4:
/* 800FE6D4 000F9FF4  38 6D 9C 68 */	addi r3, r13, lbl_80320B28-_SDA_BASE_
/* 800FE6D8 000F9FF8  4B FE 54 69 */	bl func_800E3B40
lbl_800FE6DC:
/* 800FE6DC 000F9FFC  88 0D 9C 70 */	lbz r0, lbl_80320B30-_SDA_BASE_(r13)
/* 800FE6E0 000FA000  2C 00 00 00 */	cmpwi r0, 0
/* 800FE6E4 000FA004  41 82 FF F0 */	beq lbl_800FE6D4
/* 800FE6E8 000FA008  7F C3 F3 78 */	mr r3, r30
/* 800FE6EC 000FA00C  4B FE 17 75 */	bl func_800DFE60
/* 800FE6F0 000FA010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FE6F4 000FA014  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FE6F8 000FA018  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FE6FC 000FA01C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800FE700 000FA020  7C 08 03 A6 */	mtlr r0
/* 800FE704 000FA024  38 21 00 20 */	addi r1, r1, 0x20
/* 800FE708 000FA028  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE710
func_800FE710:
/* 800FE710 000FA030  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800FE714 000FA034  38 00 00 61 */	li r0, 0x61
/* 800FE718 000FA038  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800FE71C 000FA03C  38 00 00 00 */	li r0, 0
/* 800FE720 000FA040  80 A2 F9 70 */	lwz r5, lbl_80328950-_SDA2_BASE_(r2)
/* 800FE724 000FA044  80 65 02 2C */	lwz r3, 0x22c(r5)
/* 800FE728 000FA048  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800FE72C 000FA04C  B0 05 00 02 */	sth r0, 2(r5)
/* 800FE730 000FA050  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE740
func_800FE740:
/* 800FE740 000FA060  80 AD 9C 28 */	lwz r5, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FE744 000FA064  50 64 40 2E */	rlwimi r4, r3, 8, 0, 0x17
/* 800FE748 000FA068  B0 85 00 06 */	sth r4, 6(r5)
/* 800FE74C 000FA06C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE750
func_800FE750:
/* 800FE750 000FA070  80 8D 9C 28 */	lwz r4, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FE754 000FA074  38 00 00 00 */	li r0, 0
/* 800FE758 000FA078  50 60 07 BE */	rlwimi r0, r3, 0, 0x1e, 0x1f
/* 800FE75C 000FA07C  60 00 00 04 */	ori r0, r0, 4
/* 800FE760 000FA080  B0 04 00 08 */	sth r0, 8(r4)
/* 800FE764 000FA084  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE770
func_800FE770:
/* 800FE770 000FA090  80 8D 9C 28 */	lwz r4, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FE774 000FA094  A0 04 00 02 */	lhz r0, 2(r4)
/* 800FE778 000FA098  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 800FE77C 000FA09C  B0 04 00 02 */	sth r0, 2(r4)
/* 800FE780 000FA0A0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE790
func_800FE790:
/* 800FE790 000FA0B0  80 ED 9C 28 */	lwz r7, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FE794 000FA0B4  2C 03 00 01 */	cmpwi r3, 1
/* 800FE798 000FA0B8  38 00 00 00 */	li r0, 0
/* 800FE79C 000FA0BC  A1 27 00 02 */	lhz r9, 2(r7)
/* 800FE7A0 000FA0C0  41 82 00 0C */	beq lbl_800FE7AC
/* 800FE7A4 000FA0C4  2C 03 00 03 */	cmpwi r3, 3
/* 800FE7A8 000FA0C8  40 82 00 08 */	bne lbl_800FE7B0
lbl_800FE7AC:
/* 800FE7AC 000FA0CC  38 00 00 01 */	li r0, 1
lbl_800FE7B0:
/* 800FE7B0 000FA0D0  38 E3 FF FD */	addi r7, r3, -3
/* 800FE7B4 000FA0D4  50 09 07 FE */	rlwimi r9, r0, 0, 0x1f, 0x1f
/* 800FE7B8 000FA0D8  38 03 FF FE */	addi r0, r3, -2
/* 800FE7BC 000FA0DC  80 6D 9C 28 */	lwz r3, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FE7C0 000FA0E0  7C E8 00 34 */	cntlzw r8, r7
/* 800FE7C4 000FA0E4  7C 07 00 34 */	cntlzw r7, r0
/* 800FE7C8 000FA0E8  38 00 00 41 */	li r0, 0x41
/* 800FE7CC 000FA0EC  51 09 35 28 */	rlwimi r9, r8, 6, 0x14, 0x14
/* 800FE7D0 000FA0F0  50 E9 E7 BC */	rlwimi r9, r7, 0x1c, 0x1e, 0x1e
/* 800FE7D4 000FA0F4  50 C9 64 26 */	rlwimi r9, r6, 0xc, 0x10, 0x13
/* 800FE7D8 000FA0F8  50 89 45 6E */	rlwimi r9, r4, 8, 0x15, 0x17
/* 800FE7DC 000FA0FC  50 A9 2E 34 */	rlwimi r9, r5, 5, 0x18, 0x1a
/* 800FE7E0 000FA100  50 09 C0 0E */	rlwimi r9, r0, 0x18, 0, 7
/* 800FE7E4 000FA104  B1 23 00 02 */	sth r9, 2(r3)
/* 800FE7E8 000FA108  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE7F0
func_800FE7F0:
/* 800FE7F0 000FA110  80 8D 9C 28 */	lwz r4, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FE7F4 000FA114  A0 04 00 02 */	lhz r0, 2(r4)
/* 800FE7F8 000FA118  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 800FE7FC 000FA11C  B0 04 00 02 */	sth r0, 2(r4)
/* 800FE800 000FA120  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE810
func_800FE810:
/* 800FE810 000FA130  80 AD 9C 28 */	lwz r5, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FE814 000FA134  38 00 00 00 */	li r0, 0
/* 800FE818 000FA138  50 80 06 3E */	rlwimi r0, r4, 0, 0x18, 0x1f
/* 800FE81C 000FA13C  50 60 45 EE */	rlwimi r0, r3, 8, 0x17, 0x17
/* 800FE820 000FA140  B0 05 00 04 */	sth r0, 4(r5)
/* 800FE824 000FA144  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE830
func_800FE830:
/* 800FE830 000FA150  80 8D 9C 28 */	lwz r4, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FE834 000FA154  A0 04 00 02 */	lhz r0, 2(r4)
/* 800FE838 000FA158  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 800FE83C 000FA15C  B0 04 00 02 */	sth r0, 2(r4)
/* 800FE840 000FA160  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE850
func_800FE850:
/* 800FE850 000FA170  80 CD 9C 28 */	lwz r6, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FE854 000FA174  38 00 00 00 */	li r0, 0
/* 800FE858 000FA178  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 800FE85C 000FA17C  50 80 0F 3C */	rlwimi r0, r4, 1, 0x1c, 0x1e
/* 800FE860 000FA180  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 800FE864 000FA184  B0 06 00 00 */	sth r0, 0(r6)
/* 800FE868 000FA188  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE870
func_800FE870:
/* 800FE870 000FA190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FE874 000FA194  7C 08 02 A6 */	mflr r0
/* 800FE878 000FA198  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FE87C 000FA19C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FE880 000FA1A0  93 C1 00 08 */	stw r30, 8(r1)
/* 800FE884 000FA1A4  7C 7E 1B 78 */	mr r30, r3
/* 800FE888 000FA1A8  83 ED 9C 78 */	lwz r31, lbl_80320B38-_SDA_BASE_(r13)
/* 800FE88C 000FA1AC  4B FE 15 95 */	bl func_800DFE20
/* 800FE890 000FA1B0  93 CD 9C 78 */	stw r30, lbl_80320B38-_SDA_BASE_(r13)
/* 800FE894 000FA1B4  4B FE 15 CD */	bl func_800DFE60
/* 800FE898 000FA1B8  7F E3 FB 78 */	mr r3, r31
/* 800FE89C 000FA1BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FE8A0 000FA1C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FE8A4 000FA1C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FE8A8 000FA1C8  7C 08 03 A6 */	mtlr r0
/* 800FE8AC 000FA1CC  38 21 00 10 */	addi r1, r1, 0x10
/* 800FE8B0 000FA1D0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE8C0
func_800FE8C0:
/* 800FE8C0 000FA1E0  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800FE8C4 000FA1E4  7C 08 02 A6 */	mflr r0
/* 800FE8C8 000FA1E8  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 800FE8CC 000FA1EC  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 800FE8D0 000FA1F0  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 800FE8D4 000FA1F4  7C 9E 23 78 */	mr r30, r4
/* 800FE8D8 000FA1F8  80 0D 9C 78 */	lwz r0, lbl_80320B38-_SDA_BASE_(r13)
/* 800FE8DC 000FA1FC  80 6D 9C 28 */	lwz r3, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FE8E0 000FA200  2C 00 00 00 */	cmpwi r0, 0
/* 800FE8E4 000FA204  A3 E3 00 0E */	lhz r31, 0xe(r3)
/* 800FE8E8 000FA208  41 82 00 34 */	beq lbl_800FE91C
/* 800FE8EC 000FA20C  38 61 00 08 */	addi r3, r1, 8
/* 800FE8F0 000FA210  4B FD D7 51 */	bl func_800DC040
/* 800FE8F4 000FA214  38 61 00 08 */	addi r3, r1, 8
/* 800FE8F8 000FA218  4B FD D5 09 */	bl func_800DBE00
/* 800FE8FC 000FA21C  81 8D 9C 78 */	lwz r12, lbl_80320B38-_SDA_BASE_(r13)
/* 800FE900 000FA220  7F E3 FB 78 */	mr r3, r31
/* 800FE904 000FA224  7D 89 03 A6 */	mtctr r12
/* 800FE908 000FA228  4E 80 04 21 */	bctrl 
/* 800FE90C 000FA22C  38 61 00 08 */	addi r3, r1, 8
/* 800FE910 000FA230  4B FD D7 31 */	bl func_800DC040
/* 800FE914 000FA234  7F C3 F3 78 */	mr r3, r30
/* 800FE918 000FA238  4B FD D4 E9 */	bl func_800DBE00
lbl_800FE91C:
/* 800FE91C 000FA23C  80 6D 9C 28 */	lwz r3, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FE920 000FA240  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 800FE924 000FA244  60 00 00 04 */	ori r0, r0, 4
/* 800FE928 000FA248  B0 03 00 0A */	sth r0, 0xa(r3)
/* 800FE92C 000FA24C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 800FE930 000FA250  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 800FE934 000FA254  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 800FE938 000FA258  7C 08 03 A6 */	mtlr r0
/* 800FE93C 000FA25C  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 800FE940 000FA260  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE950
func_800FE950:
/* 800FE950 000FA270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FE954 000FA274  7C 08 02 A6 */	mflr r0
/* 800FE958 000FA278  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FE95C 000FA27C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FE960 000FA280  93 C1 00 08 */	stw r30, 8(r1)
/* 800FE964 000FA284  7C 7E 1B 78 */	mr r30, r3
/* 800FE968 000FA288  83 ED 9C 74 */	lwz r31, lbl_80320B34-_SDA_BASE_(r13)
/* 800FE96C 000FA28C  4B FE 14 B5 */	bl func_800DFE20
/* 800FE970 000FA290  93 CD 9C 74 */	stw r30, lbl_80320B34-_SDA_BASE_(r13)
/* 800FE974 000FA294  4B FE 14 ED */	bl func_800DFE60
/* 800FE978 000FA298  7F E3 FB 78 */	mr r3, r31
/* 800FE97C 000FA29C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FE980 000FA2A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FE984 000FA2A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FE988 000FA2A8  7C 08 03 A6 */	mtlr r0
/* 800FE98C 000FA2AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800FE990 000FA2B0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FE9A0
func_800FE9A0:
/* 800FE9A0 000FA2C0  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800FE9A4 000FA2C4  7C 08 02 A6 */	mflr r0
/* 800FE9A8 000FA2C8  38 60 00 01 */	li r3, 1
/* 800FE9AC 000FA2CC  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 800FE9B0 000FA2D0  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 800FE9B4 000FA2D4  7C 9F 23 78 */	mr r31, r4
/* 800FE9B8 000FA2D8  80 AD 9C 28 */	lwz r5, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FE9BC 000FA2DC  A0 05 00 0A */	lhz r0, 0xa(r5)
/* 800FE9C0 000FA2E0  60 00 00 08 */	ori r0, r0, 8
/* 800FE9C4 000FA2E4  B0 05 00 0A */	sth r0, 0xa(r5)
/* 800FE9C8 000FA2E8  80 0D 9C 74 */	lwz r0, lbl_80320B34-_SDA_BASE_(r13)
/* 800FE9CC 000FA2EC  98 6D 9C 70 */	stb r3, lbl_80320B30-_SDA_BASE_(r13)
/* 800FE9D0 000FA2F0  2C 00 00 00 */	cmpwi r0, 0
/* 800FE9D4 000FA2F4  41 82 00 30 */	beq lbl_800FEA04
/* 800FE9D8 000FA2F8  38 61 00 08 */	addi r3, r1, 8
/* 800FE9DC 000FA2FC  4B FD D6 65 */	bl func_800DC040
/* 800FE9E0 000FA300  38 61 00 08 */	addi r3, r1, 8
/* 800FE9E4 000FA304  4B FD D4 1D */	bl func_800DBE00
/* 800FE9E8 000FA308  81 8D 9C 74 */	lwz r12, lbl_80320B34-_SDA_BASE_(r13)
/* 800FE9EC 000FA30C  7D 89 03 A6 */	mtctr r12
/* 800FE9F0 000FA310  4E 80 04 21 */	bctrl 
/* 800FE9F4 000FA314  38 61 00 08 */	addi r3, r1, 8
/* 800FE9F8 000FA318  4B FD D6 49 */	bl func_800DC040
/* 800FE9FC 000FA31C  7F E3 FB 78 */	mr r3, r31
/* 800FEA00 000FA320  4B FD D4 01 */	bl func_800DBE00
lbl_800FEA04:
/* 800FEA04 000FA324  38 6D 9C 68 */	addi r3, r13, lbl_80320B28-_SDA_BASE_
/* 800FEA08 000FA328  4B FE 52 29 */	bl func_800E3C30
/* 800FEA0C 000FA32C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 800FEA10 000FA330  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 800FEA14 000FA334  7C 08 03 A6 */	mtlr r0
/* 800FEA18 000FA338  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 800FEA1C 000FA33C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FEA20
func_800FEA20:
/* 800FEA20 000FA340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FEA24 000FA344  7C 08 02 A6 */	mflr r0
/* 800FEA28 000FA348  3C 80 80 10 */	lis r4, func_800FE8C0@ha
/* 800FEA2C 000FA34C  38 60 00 12 */	li r3, 0x12
/* 800FEA30 000FA350  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FEA34 000FA354  38 84 E8 C0 */	addi r4, r4, func_800FE8C0@l
/* 800FEA38 000FA358  4B FE 14 59 */	bl func_800DFE90
/* 800FEA3C 000FA35C  3C 80 80 10 */	lis r4, func_800FE9A0@ha
/* 800FEA40 000FA360  38 60 00 13 */	li r3, 0x13
/* 800FEA44 000FA364  38 84 E9 A0 */	addi r4, r4, func_800FE9A0@l
/* 800FEA48 000FA368  4B FE 14 49 */	bl func_800DFE90
/* 800FEA4C 000FA36C  38 6D 9C 68 */	addi r3, r13, lbl_80320B28-_SDA_BASE_
/* 800FEA50 000FA370  4B FE 40 21 */	bl func_800E2A70
/* 800FEA54 000FA374  38 60 20 00 */	li r3, 0x2000
/* 800FEA58 000FA378  4B FE 18 19 */	bl func_800E0270
/* 800FEA5C 000FA37C  38 60 10 00 */	li r3, 0x1000
/* 800FEA60 000FA380  4B FE 18 11 */	bl func_800E0270
/* 800FEA64 000FA384  80 6D 9C 28 */	lwz r3, lbl_80320AE8-_SDA_BASE_(r13)
/* 800FEA68 000FA388  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 800FEA6C 000FA38C  60 00 00 0F */	ori r0, r0, 0xf
/* 800FEA70 000FA390  B0 03 00 0A */	sth r0, 0xa(r3)
/* 800FEA74 000FA394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FEA78 000FA398  7C 08 03 A6 */	mtlr r0
/* 800FEA7C 000FA39C  38 21 00 10 */	addi r1, r1, 0x10
/* 800FEA80 000FA3A0  4E 80 00 20 */	blr 


.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320B28
lbl_80320B28:
	.skip 0x8
.global lbl_80320B30
lbl_80320B30:
	.skip 0x4
.global lbl_80320B34
lbl_80320B34:
	.skip 0x4
.global lbl_80320B38
lbl_80320B38:
	.skip 0x8
