.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_8011ACC0
func_8011ACC0:
/* 8011ACC0 001165E0  38 00 00 00 */	li r0, 0
/* 8011ACC4 001165E4  90 03 00 00 */	stw r0, 0(r3)
/* 8011ACC8 001165E8  90 03 00 04 */	stw r0, 4(r3)
/* 8011ACCC 001165EC  B0 03 00 08 */	sth r0, 8(r3)
/* 8011ACD0 001165F0  B0 83 00 0A */	sth r4, 0xa(r3)
/* 8011ACD4 001165F4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011ACE0
func_8011ACE0:
/* 8011ACE0 00116600  80 03 00 00 */	lwz r0, 0(r3)
/* 8011ACE4 00116604  2C 00 00 00 */	cmpwi r0, 0
/* 8011ACE8 00116608  40 82 00 30 */	bne lbl_8011AD18
/* 8011ACEC 0011660C  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 8011ACF0 00116610  38 00 00 00 */	li r0, 0
/* 8011ACF4 00116614  7C A4 2A 14 */	add r5, r4, r5
/* 8011ACF8 00116618  90 05 00 04 */	stw r0, 4(r5)
/* 8011ACFC 0011661C  90 05 00 00 */	stw r0, 0(r5)
/* 8011AD00 00116620  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8011AD04 00116624  90 83 00 00 */	stw r4, 0(r3)
/* 8011AD08 00116628  38 05 00 01 */	addi r0, r5, 1
/* 8011AD0C 0011662C  90 83 00 04 */	stw r4, 4(r3)
/* 8011AD10 00116630  B0 03 00 08 */	sth r0, 8(r3)
/* 8011AD14 00116634  4E 80 00 20 */	blr 
lbl_8011AD18:
/* 8011AD18 00116638  A0 C3 00 0A */	lhz r6, 0xa(r3)
/* 8011AD1C 0011663C  38 00 00 00 */	li r0, 0
/* 8011AD20 00116640  80 A3 00 04 */	lwz r5, 4(r3)
/* 8011AD24 00116644  7C A6 21 6E */	stwux r5, r6, r4
/* 8011AD28 00116648  90 06 00 04 */	stw r0, 4(r6)
/* 8011AD2C 0011664C  80 A3 00 04 */	lwz r5, 4(r3)
/* 8011AD30 00116650  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8011AD34 00116654  7C A5 02 14 */	add r5, r5, r0
/* 8011AD38 00116658  90 85 00 04 */	stw r4, 4(r5)
/* 8011AD3C 0011665C  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8011AD40 00116660  90 83 00 04 */	stw r4, 4(r3)
/* 8011AD44 00116664  38 05 00 01 */	addi r0, r5, 1
/* 8011AD48 00116668  B0 03 00 08 */	sth r0, 8(r3)
/* 8011AD4C 0011666C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011AD50
func_8011AD50:
/* 8011AD50 00116670  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8011AD54 00116674  7C C4 02 14 */	add r6, r4, r0
/* 8011AD58 00116678  7C 84 00 2E */	lwzx r4, r4, r0
/* 8011AD5C 0011667C  2C 04 00 00 */	cmpwi r4, 0
/* 8011AD60 00116680  40 82 00 10 */	bne lbl_8011AD70
/* 8011AD64 00116684  80 06 00 04 */	lwz r0, 4(r6)
/* 8011AD68 00116688  90 03 00 00 */	stw r0, 0(r3)
/* 8011AD6C 0011668C  48 00 00 10 */	b lbl_8011AD7C
lbl_8011AD70:
/* 8011AD70 00116690  7C 84 02 14 */	add r4, r4, r0
/* 8011AD74 00116694  80 06 00 04 */	lwz r0, 4(r6)
/* 8011AD78 00116698  90 04 00 04 */	stw r0, 4(r4)
lbl_8011AD7C:
/* 8011AD7C 0011669C  80 A6 00 04 */	lwz r5, 4(r6)
/* 8011AD80 001166A0  2C 05 00 00 */	cmpwi r5, 0
/* 8011AD84 001166A4  40 82 00 10 */	bne lbl_8011AD94
/* 8011AD88 001166A8  80 06 00 00 */	lwz r0, 0(r6)
/* 8011AD8C 001166AC  90 03 00 04 */	stw r0, 4(r3)
/* 8011AD90 001166B0  48 00 00 10 */	b lbl_8011ADA0
lbl_8011AD94:
/* 8011AD94 001166B4  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8011AD98 001166B8  80 86 00 00 */	lwz r4, 0(r6)
/* 8011AD9C 001166BC  7C 85 01 2E */	stwx r4, r5, r0
lbl_8011ADA0:
/* 8011ADA0 001166C0  38 00 00 00 */	li r0, 0
/* 8011ADA4 001166C4  90 06 00 00 */	stw r0, 0(r6)
/* 8011ADA8 001166C8  90 06 00 04 */	stw r0, 4(r6)
/* 8011ADAC 001166CC  A0 83 00 08 */	lhz r4, 8(r3)
/* 8011ADB0 001166D0  38 04 FF FF */	addi r0, r4, -1
/* 8011ADB4 001166D4  B0 03 00 08 */	sth r0, 8(r3)
/* 8011ADB8 001166D8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8011ADC0
func_8011ADC0:
/* 8011ADC0 001166E0  2C 04 00 00 */	cmpwi r4, 0
/* 8011ADC4 001166E4  40 82 00 0C */	bne lbl_8011ADD0
/* 8011ADC8 001166E8  80 63 00 00 */	lwz r3, 0(r3)
/* 8011ADCC 001166EC  4E 80 00 20 */	blr 
lbl_8011ADD0:
/* 8011ADD0 001166F0  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8011ADD4 001166F4  7C 64 02 14 */	add r3, r4, r0
/* 8011ADD8 001166F8  80 63 00 04 */	lwz r3, 4(r3)
/* 8011ADDC 001166FC  4E 80 00 20 */	blr 
