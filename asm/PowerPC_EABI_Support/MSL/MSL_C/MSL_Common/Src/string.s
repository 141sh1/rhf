.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_8010A288
func_8010A288:
/* 8010A288 00105BA8  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 8010A28C 00105BAC  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 8010A290 00105BB0  7C 00 28 40 */	cmplw r0, r5
/* 8010A294 00105BB4  7C 67 1B 78 */	mr r7, r3
/* 8010A298 00105BB8  40 82 00 8C */	bne lbl_8010A324
/* 8010A29C 00105BBC  2C 05 00 00 */	cmpwi r5, 0
/* 8010A2A0 00105BC0  41 82 00 40 */	beq lbl_8010A2E0
/* 8010A2A4 00105BC4  88 04 00 00 */	lbz r0, 0(r4)
/* 8010A2A8 00105BC8  98 03 00 00 */	stb r0, 0(r3)
/* 8010A2AC 00105BCC  2C 00 00 00 */	cmpwi r0, 0
/* 8010A2B0 00105BD0  4D 82 00 20 */	beqlr 
/* 8010A2B4 00105BD4  20 05 00 03 */	subfic r0, r5, 3
/* 8010A2B8 00105BD8  7C 09 03 A6 */	mtctr r0
/* 8010A2BC 00105BDC  2C 00 00 00 */	cmpwi r0, 0
/* 8010A2C0 00105BE0  41 82 00 18 */	beq lbl_8010A2D8
lbl_8010A2C4:
/* 8010A2C4 00105BE4  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8010A2C8 00105BE8  9C 07 00 01 */	stbu r0, 1(r7)
/* 8010A2CC 00105BEC  2C 00 00 00 */	cmpwi r0, 0
/* 8010A2D0 00105BF0  4D 82 00 20 */	beqlr 
/* 8010A2D4 00105BF4  42 00 FF F0 */	bdnz lbl_8010A2C4
lbl_8010A2D8:
/* 8010A2D8 00105BF8  38 E7 00 01 */	addi r7, r7, 1
/* 8010A2DC 00105BFC  38 84 00 01 */	addi r4, r4, 1
lbl_8010A2E0:
/* 8010A2E0 00105C00  81 04 00 00 */	lwz r8, 0(r4)
/* 8010A2E4 00105C04  3C A0 80 81 */	lis r5, 0x80808080@ha
/* 8010A2E8 00105C08  38 A5 80 80 */	addi r5, r5, 0x80808080@l
/* 8010A2EC 00105C0C  3C C8 FE FF */	addis r6, r8, 0xfeff
/* 8010A2F0 00105C10  38 C6 FE FF */	addi r6, r6, -257
/* 8010A2F4 00105C14  7C C6 40 78 */	andc r6, r6, r8
/* 8010A2F8 00105C18  7C C0 28 39 */	and. r0, r6, r5
/* 8010A2FC 00105C1C  40 82 00 28 */	bne lbl_8010A324
/* 8010A300 00105C20  38 E7 FF FC */	addi r7, r7, -4
lbl_8010A304:
/* 8010A304 00105C24  95 07 00 04 */	stwu r8, 4(r7)
/* 8010A308 00105C28  85 04 00 04 */	lwzu r8, 4(r4)
/* 8010A30C 00105C2C  3C C8 FE FF */	addis r6, r8, 0xfeff
/* 8010A310 00105C30  38 C6 FE FF */	addi r6, r6, -257
/* 8010A314 00105C34  7C C6 40 78 */	andc r6, r6, r8
/* 8010A318 00105C38  7C C0 28 39 */	and. r0, r6, r5
/* 8010A31C 00105C3C  41 82 FF E8 */	beq lbl_8010A304
/* 8010A320 00105C40  38 E7 00 04 */	addi r7, r7, 4
lbl_8010A324:
/* 8010A324 00105C44  88 04 00 00 */	lbz r0, 0(r4)
/* 8010A328 00105C48  98 07 00 00 */	stb r0, 0(r7)
/* 8010A32C 00105C4C  2C 00 00 00 */	cmpwi r0, 0
/* 8010A330 00105C50  4D 82 00 20 */	beqlr 
lbl_8010A334:
/* 8010A334 00105C54  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8010A338 00105C58  9C 07 00 01 */	stbu r0, 1(r7)
/* 8010A33C 00105C5C  2C 00 00 00 */	cmpwi r0, 0
/* 8010A340 00105C60  40 82 FF F4 */	bne lbl_8010A334
/* 8010A344 00105C64  4E 80 00 20 */	blr 

.global func_8010A348
func_8010A348:
/* 8010A348 00105C68  38 84 FF FF */	addi r4, r4, -1
/* 8010A34C 00105C6C  38 C3 FF FF */	addi r6, r3, -1
/* 8010A350 00105C70  38 A5 00 01 */	addi r5, r5, 1
/* 8010A354 00105C74  48 00 00 2C */	b lbl_8010A380
lbl_8010A358:
/* 8010A358 00105C78  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8010A35C 00105C7C  9C 06 00 01 */	stbu r0, 1(r6)
/* 8010A360 00105C80  2C 00 00 00 */	cmpwi r0, 0
/* 8010A364 00105C84  40 82 00 1C */	bne lbl_8010A380
/* 8010A368 00105C88  38 00 00 00 */	li r0, 0
/* 8010A36C 00105C8C  48 00 00 08 */	b lbl_8010A374
lbl_8010A370:
/* 8010A370 00105C90  9C 06 00 01 */	stbu r0, 1(r6)
lbl_8010A374:
/* 8010A374 00105C94  34 A5 FF FF */	addic. r5, r5, -1
/* 8010A378 00105C98  40 82 FF F8 */	bne lbl_8010A370
/* 8010A37C 00105C9C  4E 80 00 20 */	blr 
lbl_8010A380:
/* 8010A380 00105CA0  34 A5 FF FF */	addic. r5, r5, -1
/* 8010A384 00105CA4  40 82 FF D4 */	bne lbl_8010A358
/* 8010A388 00105CA8  4E 80 00 20 */	blr 

.global func_8010A38C
func_8010A38C:
/* 8010A38C 00105CAC  38 84 FF FF */	addi r4, r4, -1
/* 8010A390 00105CB0  38 A3 FF FF */	addi r5, r3, -1
lbl_8010A394:
/* 8010A394 00105CB4  8C 05 00 01 */	lbzu r0, 1(r5)
/* 8010A398 00105CB8  2C 00 00 00 */	cmpwi r0, 0
/* 8010A39C 00105CBC  40 82 FF F8 */	bne lbl_8010A394
/* 8010A3A0 00105CC0  38 A5 FF FF */	addi r5, r5, -1
lbl_8010A3A4:
/* 8010A3A4 00105CC4  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8010A3A8 00105CC8  9C 05 00 01 */	stbu r0, 1(r5)
/* 8010A3AC 00105CCC  2C 00 00 00 */	cmpwi r0, 0
/* 8010A3B0 00105CD0  40 82 FF F4 */	bne lbl_8010A3A4
/* 8010A3B4 00105CD4  4E 80 00 20 */	blr 

.global func_8010A3B8
func_8010A3B8:
/* 8010A3B8 00105CD8  38 84 FF FF */	addi r4, r4, -1
/* 8010A3BC 00105CDC  38 C3 FF FF */	addi r6, r3, -1
lbl_8010A3C0:
/* 8010A3C0 00105CE0  8C 06 00 01 */	lbzu r0, 1(r6)
/* 8010A3C4 00105CE4  2C 00 00 00 */	cmpwi r0, 0
/* 8010A3C8 00105CE8  40 82 FF F8 */	bne lbl_8010A3C0
/* 8010A3CC 00105CEC  38 C6 FF FF */	addi r6, r6, -1
/* 8010A3D0 00105CF0  38 A5 00 01 */	addi r5, r5, 1
/* 8010A3D4 00105CF4  48 00 00 1C */	b lbl_8010A3F0
lbl_8010A3D8:
/* 8010A3D8 00105CF8  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8010A3DC 00105CFC  9C 06 00 01 */	stbu r0, 1(r6)
/* 8010A3E0 00105D00  2C 00 00 00 */	cmpwi r0, 0
/* 8010A3E4 00105D04  40 82 00 0C */	bne lbl_8010A3F0
/* 8010A3E8 00105D08  38 C6 FF FF */	addi r6, r6, -1
/* 8010A3EC 00105D0C  48 00 00 0C */	b lbl_8010A3F8
lbl_8010A3F0:
/* 8010A3F0 00105D10  34 A5 FF FF */	addic. r5, r5, -1
/* 8010A3F4 00105D14  40 82 FF E4 */	bne lbl_8010A3D8
lbl_8010A3F8:
/* 8010A3F8 00105D18  38 00 00 00 */	li r0, 0
/* 8010A3FC 00105D1C  98 06 00 01 */	stb r0, 1(r6)
/* 8010A400 00105D20  4E 80 00 20 */	blr 

.global func_8010A404
func_8010A404:
/* 8010A404 00105D24  88 A3 00 00 */	lbz r5, 0(r3)
/* 8010A408 00105D28  88 04 00 00 */	lbz r0, 0(r4)
/* 8010A40C 00105D2C  7C 00 28 51 */	subf. r0, r0, r5
/* 8010A410 00105D30  41 82 00 0C */	beq lbl_8010A41C
/* 8010A414 00105D34  7C 03 03 78 */	mr r3, r0
/* 8010A418 00105D38  4E 80 00 20 */	blr 
lbl_8010A41C:
/* 8010A41C 00105D3C  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 8010A420 00105D40  54 66 07 BE */	clrlwi r6, r3, 0x1e
/* 8010A424 00105D44  7C 00 30 40 */	cmplw r0, r6
/* 8010A428 00105D48  40 82 00 C0 */	bne lbl_8010A4E8
/* 8010A42C 00105D4C  2C 06 00 00 */	cmpwi r6, 0
/* 8010A430 00105D50  41 82 00 58 */	beq lbl_8010A488
/* 8010A434 00105D54  2C 05 00 00 */	cmpwi r5, 0
/* 8010A438 00105D58  40 82 00 0C */	bne lbl_8010A444
/* 8010A43C 00105D5C  38 60 00 00 */	li r3, 0
/* 8010A440 00105D60  4E 80 00 20 */	blr 
lbl_8010A444:
/* 8010A444 00105D64  20 06 00 03 */	subfic r0, r6, 3
/* 8010A448 00105D68  7C 09 03 A6 */	mtctr r0
/* 8010A44C 00105D6C  2C 00 00 00 */	cmpwi r0, 0
/* 8010A450 00105D70  41 82 00 30 */	beq lbl_8010A480
lbl_8010A454:
/* 8010A454 00105D74  8C A3 00 01 */	lbzu r5, 1(r3)
/* 8010A458 00105D78  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8010A45C 00105D7C  7C 00 28 51 */	subf. r0, r0, r5
/* 8010A460 00105D80  41 82 00 0C */	beq lbl_8010A46C
/* 8010A464 00105D84  7C 03 03 78 */	mr r3, r0
/* 8010A468 00105D88  4E 80 00 20 */	blr 
lbl_8010A46C:
/* 8010A46C 00105D8C  2C 05 00 00 */	cmpwi r5, 0
/* 8010A470 00105D90  40 82 00 0C */	bne lbl_8010A47C
/* 8010A474 00105D94  38 60 00 00 */	li r3, 0
/* 8010A478 00105D98  4E 80 00 20 */	blr 
lbl_8010A47C:
/* 8010A47C 00105D9C  42 00 FF D8 */	bdnz lbl_8010A454
lbl_8010A480:
/* 8010A480 00105DA0  38 63 00 01 */	addi r3, r3, 1
/* 8010A484 00105DA4  38 84 00 01 */	addi r4, r4, 1
lbl_8010A488:
/* 8010A488 00105DA8  80 E3 00 00 */	lwz r7, 0(r3)
/* 8010A48C 00105DAC  3C A0 80 81 */	lis r5, 0x80808080@ha
/* 8010A490 00105DB0  38 C5 80 80 */	addi r6, r5, 0x80808080@l
/* 8010A494 00105DB4  81 04 00 00 */	lwz r8, 0(r4)
/* 8010A498 00105DB8  3C A7 FE FF */	addis r5, r7, 0xfeff
/* 8010A49C 00105DBC  38 A5 FE FF */	addi r5, r5, -257
/* 8010A4A0 00105DC0  7C A5 38 78 */	andc r5, r5, r7
/* 8010A4A4 00105DC4  7C A0 30 39 */	and. r0, r5, r6
/* 8010A4A8 00105DC8  40 82 00 28 */	bne lbl_8010A4D0
/* 8010A4AC 00105DCC  48 00 00 1C */	b lbl_8010A4C8
lbl_8010A4B0:
/* 8010A4B0 00105DD0  84 E3 00 04 */	lwzu r7, 4(r3)
/* 8010A4B4 00105DD4  85 04 00 04 */	lwzu r8, 4(r4)
/* 8010A4B8 00105DD8  3C A7 FE FF */	addis r5, r7, 0xfeff
/* 8010A4BC 00105DDC  38 05 FE FF */	addi r0, r5, -257
/* 8010A4C0 00105DE0  7C 00 30 39 */	and. r0, r0, r6
/* 8010A4C4 00105DE4  40 82 00 0C */	bne lbl_8010A4D0
lbl_8010A4C8:
/* 8010A4C8 00105DE8  7C 07 40 40 */	cmplw r7, r8
/* 8010A4CC 00105DEC  41 82 FF E4 */	beq lbl_8010A4B0
lbl_8010A4D0:
/* 8010A4D0 00105DF0  88 A3 00 00 */	lbz r5, 0(r3)
/* 8010A4D4 00105DF4  88 04 00 00 */	lbz r0, 0(r4)
/* 8010A4D8 00105DF8  7C 00 28 51 */	subf. r0, r0, r5
/* 8010A4DC 00105DFC  41 82 00 0C */	beq lbl_8010A4E8
/* 8010A4E0 00105E00  7C 03 03 78 */	mr r3, r0
/* 8010A4E4 00105E04  4E 80 00 20 */	blr 
lbl_8010A4E8:
/* 8010A4E8 00105E08  2C 05 00 00 */	cmpwi r5, 0
/* 8010A4EC 00105E0C  40 82 00 0C */	bne lbl_8010A4F8
/* 8010A4F0 00105E10  38 60 00 00 */	li r3, 0
/* 8010A4F4 00105E14  4E 80 00 20 */	blr 
lbl_8010A4F8:
/* 8010A4F8 00105E18  8C A3 00 01 */	lbzu r5, 1(r3)
/* 8010A4FC 00105E1C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8010A500 00105E20  7C 00 28 51 */	subf. r0, r0, r5
/* 8010A504 00105E24  41 82 00 0C */	beq lbl_8010A510
/* 8010A508 00105E28  7C 03 03 78 */	mr r3, r0
/* 8010A50C 00105E2C  4E 80 00 20 */	blr 
lbl_8010A510:
/* 8010A510 00105E30  2C 05 00 00 */	cmpwi r5, 0
/* 8010A514 00105E34  40 82 FF E4 */	bne lbl_8010A4F8
/* 8010A518 00105E38  38 60 00 00 */	li r3, 0
/* 8010A51C 00105E3C  4E 80 00 20 */	blr 

.global func_8010A520
func_8010A520:
/* 8010A520 00105E40  38 63 FF FF */	addi r3, r3, -1
/* 8010A524 00105E44  38 84 FF FF */	addi r4, r4, -1
/* 8010A528 00105E48  38 C5 00 01 */	addi r6, r5, 1
/* 8010A52C 00105E4C  48 00 00 24 */	b lbl_8010A550
lbl_8010A530:
/* 8010A530 00105E50  8C 03 00 01 */	lbzu r0, 1(r3)
/* 8010A534 00105E54  8C A4 00 01 */	lbzu r5, 1(r4)
/* 8010A538 00105E58  7C 00 28 40 */	cmplw r0, r5
/* 8010A53C 00105E5C  41 82 00 0C */	beq lbl_8010A548
/* 8010A540 00105E60  7C 65 00 50 */	subf r3, r5, r0
/* 8010A544 00105E64  4E 80 00 20 */	blr 
lbl_8010A548:
/* 8010A548 00105E68  2C 00 00 00 */	cmpwi r0, 0
/* 8010A54C 00105E6C  41 82 00 0C */	beq lbl_8010A558
lbl_8010A550:
/* 8010A550 00105E70  34 C6 FF FF */	addic. r6, r6, -1
/* 8010A554 00105E74  40 82 FF DC */	bne lbl_8010A530
lbl_8010A558:
/* 8010A558 00105E78  38 60 00 00 */	li r3, 0
/* 8010A55C 00105E7C  4E 80 00 20 */	blr 

.global func_8010A560
func_8010A560:
/* 8010A560 00105E80  38 63 FF FF */	addi r3, r3, -1
/* 8010A564 00105E84  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8010A568 00105E88  48 00 00 0C */	b lbl_8010A574
lbl_8010A56C:
/* 8010A56C 00105E8C  7C 04 00 40 */	cmplw r4, r0
/* 8010A570 00105E90  4D 82 00 20 */	beqlr 
lbl_8010A574:
/* 8010A574 00105E94  8C 83 00 01 */	lbzu r4, 1(r3)
/* 8010A578 00105E98  2C 04 00 00 */	cmpwi r4, 0
/* 8010A57C 00105E9C  40 82 FF F0 */	bne lbl_8010A56C
/* 8010A580 00105EA0  2C 00 00 00 */	cmpwi r0, 0
/* 8010A584 00105EA4  4D 82 00 20 */	beqlr 
/* 8010A588 00105EA8  38 60 00 00 */	li r3, 0
/* 8010A58C 00105EAC  4E 80 00 20 */	blr 

.global func_8010A590
func_8010A590:
/* 8010A590 00105EB0  2C 04 00 00 */	cmpwi r4, 0
/* 8010A594 00105EB4  38 A3 FF FF */	addi r5, r3, -1
/* 8010A598 00105EB8  4D 82 00 20 */	beqlr 
/* 8010A59C 00105EBC  88 C4 00 00 */	lbz r6, 0(r4)
/* 8010A5A0 00105EC0  2C 06 00 00 */	cmpwi r6, 0
/* 8010A5A4 00105EC4  40 82 00 44 */	bne lbl_8010A5E8
/* 8010A5A8 00105EC8  4E 80 00 20 */	blr 
/* 8010A5AC 00105ECC  48 00 00 3C */	b lbl_8010A5E8
lbl_8010A5B0:
/* 8010A5B0 00105ED0  7C 00 30 40 */	cmplw r0, r6
/* 8010A5B4 00105ED4  40 82 00 34 */	bne lbl_8010A5E8
/* 8010A5B8 00105ED8  38 E5 FF FF */	addi r7, r5, -1
/* 8010A5BC 00105EDC  39 04 FF FF */	addi r8, r4, -1
lbl_8010A5C0:
/* 8010A5C0 00105EE0  8C 07 00 01 */	lbzu r0, 1(r7)
/* 8010A5C4 00105EE4  8C 68 00 01 */	lbzu r3, 1(r8)
/* 8010A5C8 00105EE8  7C 00 18 40 */	cmplw r0, r3
/* 8010A5CC 00105EEC  40 82 00 0C */	bne lbl_8010A5D8
/* 8010A5D0 00105EF0  2C 00 00 00 */	cmpwi r0, 0
/* 8010A5D4 00105EF4  40 82 FF EC */	bne lbl_8010A5C0
lbl_8010A5D8:
/* 8010A5D8 00105EF8  2C 03 00 00 */	cmpwi r3, 0
/* 8010A5DC 00105EFC  40 82 00 0C */	bne lbl_8010A5E8
/* 8010A5E0 00105F00  7C A3 2B 78 */	mr r3, r5
/* 8010A5E4 00105F04  4E 80 00 20 */	blr 
lbl_8010A5E8:
/* 8010A5E8 00105F08  8C 05 00 01 */	lbzu r0, 1(r5)
/* 8010A5EC 00105F0C  2C 00 00 00 */	cmpwi r0, 0
/* 8010A5F0 00105F10  40 82 FF C0 */	bne lbl_8010A5B0
/* 8010A5F4 00105F14  38 60 00 00 */	li r3, 0
/* 8010A5F8 00105F18  4E 80 00 20 */	blr 
