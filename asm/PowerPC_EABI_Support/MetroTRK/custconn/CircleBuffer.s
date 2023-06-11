.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80113FBC
func_80113FBC:
/* 80113FBC 0010F8DC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80113FC0 0010F8E0  4E 80 00 20 */	blr 

.global func_80113FC4
func_80113FC4:
/* 80113FC4 0010F8E4  38 00 00 00 */	li r0, 0
/* 80113FC8 0010F8E8  90 83 00 08 */	stw r4, 8(r3)
/* 80113FCC 0010F8EC  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80113FD0 0010F8F0  90 83 00 00 */	stw r4, 0(r3)
/* 80113FD4 0010F8F4  90 83 00 04 */	stw r4, 4(r3)
/* 80113FD8 0010F8F8  90 03 00 10 */	stw r0, 0x10(r3)
/* 80113FDC 0010F8FC  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80113FE0 0010F900  38 63 00 18 */	addi r3, r3, 0x18
/* 80113FE4 0010F904  4B FF FF 9C */	b func_80113F80

.global func_80113FE8
func_80113FE8:
/* 80113FE8 0010F908  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80113FEC 0010F90C  7C 08 02 A6 */	mflr r0
/* 80113FF0 0010F910  90 01 00 24 */	stw r0, 0x24(r1)
/* 80113FF4 0010F914  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80113FF8 0010F918  7C BF 2B 78 */	mr r31, r5
/* 80113FFC 0010F91C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80114000 0010F920  7C 7E 1B 78 */	mr r30, r3
/* 80114004 0010F924  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80114008 0010F928  93 81 00 10 */	stw r28, 0x10(r1)
/* 8011400C 0010F92C  7C 9C 23 78 */	mr r28, r4
/* 80114010 0010F930  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80114014 0010F934  7C 05 00 40 */	cmplw r5, r0
/* 80114018 0010F938  40 81 00 0C */	ble lbl_80114024
/* 8011401C 0010F93C  38 60 FF FF */	li r3, -1
/* 80114020 0010F940  48 00 00 B0 */	b lbl_801140D0
lbl_80114024:
/* 80114024 0010F944  38 63 00 18 */	addi r3, r3, 0x18
/* 80114028 0010F948  4B FF FF 5D */	bl func_80113F84
/* 8011402C 0010F94C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80114030 0010F950  80 9E 00 08 */	lwz r4, 8(r30)
/* 80114034 0010F954  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80114038 0010F958  7C 84 18 50 */	subf r4, r4, r3
/* 8011403C 0010F95C  7F A4 00 50 */	subf r29, r4, r0
/* 80114040 0010F960  7C 1D F8 40 */	cmplw r29, r31
/* 80114044 0010F964  41 80 00 20 */	blt lbl_80114064
/* 80114048 0010F968  7F 84 E3 78 */	mr r4, r28
/* 8011404C 0010F96C  7F E5 FB 78 */	mr r5, r31
/* 80114050 0010F970  4B EF 03 75 */	bl func_800043C4
/* 80114054 0010F974  80 1E 00 04 */	lwz r0, 4(r30)
/* 80114058 0010F978  7C 00 FA 14 */	add r0, r0, r31
/* 8011405C 0010F97C  90 1E 00 04 */	stw r0, 4(r30)
/* 80114060 0010F980  48 00 00 30 */	b lbl_80114090
lbl_80114064:
/* 80114064 0010F984  7F 84 E3 78 */	mr r4, r28
/* 80114068 0010F988  7F A5 EB 78 */	mr r5, r29
/* 8011406C 0010F98C  4B EF 03 59 */	bl func_800043C4
/* 80114070 0010F990  80 7E 00 08 */	lwz r3, 8(r30)
/* 80114074 0010F994  7C 9C EA 14 */	add r4, r28, r29
/* 80114078 0010F998  7C BD F8 50 */	subf r5, r29, r31
/* 8011407C 0010F99C  4B EF 03 49 */	bl func_800043C4
/* 80114080 0010F9A0  80 1E 00 08 */	lwz r0, 8(r30)
/* 80114084 0010F9A4  7C 00 FA 14 */	add r0, r0, r31
/* 80114088 0010F9A8  7C 1D 00 50 */	subf r0, r29, r0
/* 8011408C 0010F9AC  90 1E 00 04 */	stw r0, 4(r30)
lbl_80114090:
/* 80114090 0010F9B0  80 9E 00 08 */	lwz r4, 8(r30)
/* 80114094 0010F9B4  80 1E 00 04 */	lwz r0, 4(r30)
/* 80114098 0010F9B8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8011409C 0010F9BC  7C 04 00 50 */	subf r0, r4, r0
/* 801140A0 0010F9C0  7C 03 00 40 */	cmplw r3, r0
/* 801140A4 0010F9C4  40 82 00 08 */	bne lbl_801140AC
/* 801140A8 0010F9C8  90 9E 00 04 */	stw r4, 4(r30)
lbl_801140AC:
/* 801140AC 0010F9CC  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 801140B0 0010F9D0  38 7E 00 18 */	addi r3, r30, 0x18
/* 801140B4 0010F9D4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 801140B8 0010F9D8  7C 9F 20 50 */	subf r4, r31, r4
/* 801140BC 0010F9DC  90 9E 00 14 */	stw r4, 0x14(r30)
/* 801140C0 0010F9E0  7C 00 FA 14 */	add r0, r0, r31
/* 801140C4 0010F9E4  90 1E 00 10 */	stw r0, 0x10(r30)
/* 801140C8 0010F9E8  4B FF FE ED */	bl func_80113FB4
/* 801140CC 0010F9EC  38 60 00 00 */	li r3, 0
lbl_801140D0:
/* 801140D0 0010F9F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801140D4 0010F9F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801140D8 0010F9F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801140DC 0010F9FC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801140E0 0010FA00  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801140E4 0010FA04  7C 08 03 A6 */	mtlr r0
/* 801140E8 0010FA08  38 21 00 20 */	addi r1, r1, 0x20
/* 801140EC 0010FA0C  4E 80 00 20 */	blr 

.global func_801140F0
func_801140F0:
/* 801140F0 0010FA10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801140F4 0010FA14  7C 08 02 A6 */	mflr r0
/* 801140F8 0010FA18  90 01 00 24 */	stw r0, 0x24(r1)
/* 801140FC 0010FA1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80114100 0010FA20  7C BF 2B 78 */	mr r31, r5
/* 80114104 0010FA24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80114108 0010FA28  7C 7E 1B 78 */	mr r30, r3
/* 8011410C 0010FA2C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80114110 0010FA30  93 81 00 10 */	stw r28, 0x10(r1)
/* 80114114 0010FA34  7C 9C 23 78 */	mr r28, r4
/* 80114118 0010FA38  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8011411C 0010FA3C  7C 05 00 40 */	cmplw r5, r0
/* 80114120 0010FA40  40 81 00 0C */	ble lbl_8011412C
/* 80114124 0010FA44  38 60 FF FF */	li r3, -1
/* 80114128 0010FA48  48 00 00 B0 */	b lbl_801141D8
lbl_8011412C:
/* 8011412C 0010FA4C  38 63 00 18 */	addi r3, r3, 0x18
/* 80114130 0010FA50  4B FF FE 55 */	bl func_80113F84
/* 80114134 0010FA54  80 9E 00 00 */	lwz r4, 0(r30)
/* 80114138 0010FA58  80 7E 00 08 */	lwz r3, 8(r30)
/* 8011413C 0010FA5C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80114140 0010FA60  7C 63 20 50 */	subf r3, r3, r4
/* 80114144 0010FA64  7F A3 00 50 */	subf r29, r3, r0
/* 80114148 0010FA68  7C 1F E8 40 */	cmplw r31, r29
/* 8011414C 0010FA6C  40 80 00 20 */	bge lbl_8011416C
/* 80114150 0010FA70  7F 83 E3 78 */	mr r3, r28
/* 80114154 0010FA74  7F E5 FB 78 */	mr r5, r31
/* 80114158 0010FA78  4B EF 02 6D */	bl func_800043C4
/* 8011415C 0010FA7C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80114160 0010FA80  7C 00 FA 14 */	add r0, r0, r31
/* 80114164 0010FA84  90 1E 00 00 */	stw r0, 0(r30)
/* 80114168 0010FA88  48 00 00 30 */	b lbl_80114198
lbl_8011416C:
/* 8011416C 0010FA8C  7F 83 E3 78 */	mr r3, r28
/* 80114170 0010FA90  7F A5 EB 78 */	mr r5, r29
/* 80114174 0010FA94  4B EF 02 51 */	bl func_800043C4
/* 80114178 0010FA98  80 9E 00 08 */	lwz r4, 8(r30)
/* 8011417C 0010FA9C  7C 7C EA 14 */	add r3, r28, r29
/* 80114180 0010FAA0  7C BD F8 50 */	subf r5, r29, r31
/* 80114184 0010FAA4  4B EF 02 41 */	bl func_800043C4
/* 80114188 0010FAA8  80 1E 00 08 */	lwz r0, 8(r30)
/* 8011418C 0010FAAC  7C 00 FA 14 */	add r0, r0, r31
/* 80114190 0010FAB0  7C 1D 00 50 */	subf r0, r29, r0
/* 80114194 0010FAB4  90 1E 00 00 */	stw r0, 0(r30)
lbl_80114198:
/* 80114198 0010FAB8  80 9E 00 08 */	lwz r4, 8(r30)
/* 8011419C 0010FABC  80 1E 00 00 */	lwz r0, 0(r30)
/* 801141A0 0010FAC0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801141A4 0010FAC4  7C 04 00 50 */	subf r0, r4, r0
/* 801141A8 0010FAC8  7C 03 00 40 */	cmplw r3, r0
/* 801141AC 0010FACC  40 82 00 08 */	bne lbl_801141B4
/* 801141B0 0010FAD0  90 9E 00 00 */	stw r4, 0(r30)
lbl_801141B4:
/* 801141B4 0010FAD4  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 801141B8 0010FAD8  38 7E 00 18 */	addi r3, r30, 0x18
/* 801141BC 0010FADC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 801141C0 0010FAE0  7C 84 FA 14 */	add r4, r4, r31
/* 801141C4 0010FAE4  90 9E 00 14 */	stw r4, 0x14(r30)
/* 801141C8 0010FAE8  7C 1F 00 50 */	subf r0, r31, r0
/* 801141CC 0010FAEC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 801141D0 0010FAF0  4B FF FD E5 */	bl func_80113FB4
/* 801141D4 0010FAF4  38 60 00 00 */	li r3, 0
lbl_801141D8:
/* 801141D8 0010FAF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801141DC 0010FAFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801141E0 0010FB00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801141E4 0010FB04  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801141E8 0010FB08  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801141EC 0010FB0C  7C 08 03 A6 */	mtlr r0
/* 801141F0 0010FB10  38 21 00 20 */	addi r1, r1, 0x20
/* 801141F4 0010FB14  4E 80 00 20 */	blr 