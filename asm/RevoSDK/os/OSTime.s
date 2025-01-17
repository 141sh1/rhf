.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800E3E60
func_800E3E60:
/* 800E3E60 000DF780  7C 6D 42 E6 */	mftbu r3
/* 800E3E64 000DF784  7C 8C 42 E6 */	mftb r4, 0x10c
/* 800E3E68 000DF788  7C AD 42 E6 */	mftbu r5
/* 800E3E6C 000DF78C  7C 03 28 00 */	cmpw r3, r5
/* 800E3E70 000DF790  40 82 FF F0 */	bne func_800E3E60
/* 800E3E74 000DF794  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E3E80
func_800E3E80:
/* 800E3E80 000DF7A0  7C 6C 42 E6 */	mftb r3, 0x10c
/* 800E3E84 000DF7A4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E3E90
func_800E3E90:
/* 800E3E90 000DF7B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E3E94 000DF7B4  7C 08 02 A6 */	mflr r0
/* 800E3E98 000DF7B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E3E9C 000DF7BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E3EA0 000DF7C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E3EA4 000DF7C4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E3EA8 000DF7C8  4B FF BF 79 */	bl func_800DFE20
/* 800E3EAC 000DF7CC  7C 7F 1B 78 */	mr r31, r3
/* 800E3EB0 000DF7D0  4B FF FF B1 */	bl func_800E3E60
/* 800E3EB4 000DF7D4  3C C0 80 00 */	lis r6, 0x800030DC@ha
/* 800E3EB8 000DF7D8  80 A6 30 DC */	lwz r5, 0x800030DC@l(r6)
/* 800E3EBC 000DF7DC  80 06 30 D8 */	lwz r0, 0x30d8(r6)
/* 800E3EC0 000DF7E0  7F A5 20 14 */	addc r29, r5, r4
/* 800E3EC4 000DF7E4  7F C0 19 14 */	adde r30, r0, r3
/* 800E3EC8 000DF7E8  7F E3 FB 78 */	mr r3, r31
/* 800E3ECC 000DF7EC  4B FF BF 95 */	bl func_800DFE60
/* 800E3ED0 000DF7F0  7F A4 EB 78 */	mr r4, r29
/* 800E3ED4 000DF7F4  7F C3 F3 78 */	mr r3, r30
/* 800E3ED8 000DF7F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E3EDC 000DF7FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E3EE0 000DF800  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E3EE4 000DF804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E3EE8 000DF808  7C 08 03 A6 */	mtlr r0
/* 800E3EEC 000DF80C  38 21 00 20 */	addi r1, r1, 0x20
/* 800E3EF0 000DF810  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E3F00
func_800E3F00:
/* 800E3F00 000DF820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E3F04 000DF824  7C 08 02 A6 */	mflr r0
/* 800E3F08 000DF828  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E3F0C 000DF82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E3F10 000DF830  7C 7F 1B 78 */	mr r31, r3
/* 800E3F14 000DF834  93 C1 00 08 */	stw r30, 8(r1)
/* 800E3F18 000DF838  7C 9E 23 78 */	mr r30, r4
/* 800E3F1C 000DF83C  4B FF BF 05 */	bl func_800DFE20
/* 800E3F20 000DF840  3C A0 80 00 */	lis r5, 0x800030DC@ha
/* 800E3F24 000DF844  80 85 30 DC */	lwz r4, 0x800030DC@l(r5)
/* 800E3F28 000DF848  80 05 30 D8 */	lwz r0, 0x30d8(r5)
/* 800E3F2C 000DF84C  7F C4 F0 14 */	addc r30, r4, r30
/* 800E3F30 000DF850  7F E0 F9 14 */	adde r31, r0, r31
/* 800E3F34 000DF854  4B FF BF 2D */	bl func_800DFE60
/* 800E3F38 000DF858  7F E3 FB 78 */	mr r3, r31
/* 800E3F3C 000DF85C  7F C4 F3 78 */	mr r4, r30
/* 800E3F40 000DF860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E3F44 000DF864  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E3F48 000DF868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E3F4C 000DF86C  7C 08 03 A6 */	mtlr r0
/* 800E3F50 000DF870  38 21 00 10 */	addi r1, r1, 0x10
/* 800E3F54 000DF874  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E3F60
func_800E3F60:
/* 800E3F60 000DF880  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E3F64 000DF884  7C 08 02 A6 */	mflr r0
/* 800E3F68 000DF888  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E3F6C 000DF88C  39 61 00 20 */	addi r11, r1, 0x20
/* 800E3F70 000DF890  48 02 01 F9 */	bl func_80104168
/* 800E3F74 000DF894  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 800E3F78 000DF898  7C BD 2B 78 */	mr r29, r5
/* 800E3F7C 000DF89C  80 06 00 F8 */	lwz r0, 0x800000F8@l(r6)
/* 800E3F80 000DF8A0  7C 7C 1B 78 */	mr r28, r3
/* 800E3F84 000DF8A4  7C 9B 23 78 */	mr r27, r4
/* 800E3F88 000DF8A8  38 A0 00 00 */	li r5, 0
/* 800E3F8C 000DF8AC  54 1A F0 BE */	srwi r26, r0, 2
/* 800E3F90 000DF8B0  7F 46 D3 78 */	mr r6, r26
/* 800E3F94 000DF8B4  48 02 05 45 */	bl func_801044D8
/* 800E3F98 000DF8B8  38 E0 00 00 */	li r7, 0
/* 800E3F9C 000DF8BC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800E3FA0 000DF8C0  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 800E3FA4 000DF8C4  7C 9E 23 78 */	mr r30, r4
/* 800E3FA8 000DF8C8  7C A7 20 10 */	subfc r5, r7, r4
/* 800E3FAC 000DF8CC  7C 7F 1B 78 */	mr r31, r3
/* 800E3FB0 000DF8D0  7C C6 01 10 */	subfe r6, r6, r0
/* 800E3FB4 000DF8D4  7C C0 01 10 */	subfe r6, r0, r0
/* 800E3FB8 000DF8D8  7C C6 00 D1 */	neg. r6, r6
/* 800E3FBC 000DF8DC  41 82 00 0C */	beq lbl_800E3FC8
/* 800E3FC0 000DF8E0  7F C4 D0 14 */	addc r30, r4, r26
/* 800E3FC4 000DF8E4  7F E3 39 14 */	adde r31, r3, r7
lbl_800E3FC8:
/* 800E3FC8 000DF8E8  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 800E3FCC 000DF8EC  57 E3 18 38 */	slwi r3, r31, 3
/* 800E3FD0 000DF8F0  38 04 DE 83 */	addi r0, r4, 0x431BDE83@l
/* 800E3FD4 000DF8F4  38 A0 00 00 */	li r5, 0
/* 800E3FD8 000DF8F8  7C 00 D0 16 */	mulhwu r0, r0, r26
/* 800E3FDC 000DF8FC  57 C4 18 38 */	slwi r4, r30, 3
/* 800E3FE0 000DF900  53 C3 1F 7E */	rlwimi r3, r30, 3, 0x1d, 0x1f
/* 800E3FE4 000DF904  54 06 8B FE */	srwi r6, r0, 0xf
/* 800E3FE8 000DF908  48 02 02 D5 */	bl func_801042BC
/* 800E3FEC 000DF90C  38 C0 03 E8 */	li r6, 0x3e8
/* 800E3FF0 000DF910  38 A0 00 00 */	li r5, 0
/* 800E3FF4 000DF914  48 02 04 E5 */	bl func_801044D8
/* 800E3FF8 000DF918  90 9D 00 24 */	stw r4, 0x24(r29)
/* 800E3FFC 000DF91C  3F 40 80 00 */	lis r26, 0x800000F8@ha
/* 800E4000 000DF920  3C 80 10 62 */	lis r4, 0x10624DD3@ha
/* 800E4004 000DF924  7F E3 FB 78 */	mr r3, r31
/* 800E4008 000DF928  80 1A 00 F8 */	lwz r0, 0x800000F8@l(r26)
/* 800E400C 000DF92C  38 C4 4D D3 */	addi r6, r4, 0x10624DD3@l
/* 800E4010 000DF930  7F C4 F3 78 */	mr r4, r30
/* 800E4014 000DF934  38 A0 00 00 */	li r5, 0
/* 800E4018 000DF938  54 00 F0 BE */	srwi r0, r0, 2
/* 800E401C 000DF93C  7C 06 00 16 */	mulhwu r0, r6, r0
/* 800E4020 000DF940  54 06 D1 BE */	srwi r6, r0, 6
/* 800E4024 000DF944  48 02 02 99 */	bl func_801042BC
/* 800E4028 000DF948  38 C0 03 E8 */	li r6, 0x3e8
/* 800E402C 000DF94C  38 A0 00 00 */	li r5, 0
/* 800E4030 000DF950  48 02 04 A9 */	bl func_801044D8
/* 800E4034 000DF954  90 9D 00 20 */	stw r4, 0x20(r29)
/* 800E4038 000DF958  7C 9E D8 10 */	subfc r4, r30, r27
/* 800E403C 000DF95C  7C 7F E1 10 */	subfe r3, r31, r28
/* 800E4040 000DF960  38 A0 00 00 */	li r5, 0
/* 800E4044 000DF964  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 800E4048 000DF968  54 06 F0 BE */	srwi r6, r0, 2
/* 800E404C 000DF96C  48 02 02 71 */	bl func_801042BC
/* 800E4050 000DF970  3F 60 00 01 */	lis r27, 0x00015180@ha
/* 800E4054 000DF974  7C 9C 23 78 */	mr r28, r4
/* 800E4058 000DF978  7C 7A 1B 78 */	mr r26, r3
/* 800E405C 000DF97C  38 A0 00 00 */	li r5, 0
/* 800E4060 000DF980  38 DB 51 80 */	addi r6, r27, 0x00015180@l
/* 800E4064 000DF984  48 02 02 59 */	bl func_801042BC
/* 800E4068 000DF988  3C 60 00 0B */	lis r3, 0x000B2575@ha
/* 800E406C 000DF98C  38 DB 51 80 */	addi r6, r27, 0x5180
/* 800E4070 000DF990  38 03 25 75 */	addi r0, r3, 0x000B2575@l
/* 800E4074 000DF994  38 A0 00 00 */	li r5, 0
/* 800E4078 000DF998  7F E4 00 14 */	addc r31, r4, r0
/* 800E407C 000DF99C  7F 43 D3 78 */	mr r3, r26
/* 800E4080 000DF9A0  7F 84 E3 78 */	mr r4, r28
/* 800E4084 000DF9A4  48 02 04 55 */	bl func_801044D8
/* 800E4088 000DF9A8  2C 04 00 00 */	cmpwi r4, 0
/* 800E408C 000DF9AC  40 80 00 10 */	bge lbl_800E409C
/* 800E4090 000DF9B0  3C 84 00 01 */	addis r4, r4, 1
/* 800E4094 000DF9B4  3B FF FF FF */	addi r31, r31, -1
/* 800E4098 000DF9B8  38 84 51 80 */	addi r4, r4, 0x5180
lbl_800E409C:
/* 800E409C 000DF9BC  3C C0 92 49 */	lis r6, 0x92492493@ha
/* 800E40A0 000DF9C0  3C A0 B3 8D */	lis r5, 0xB38CF9B1@ha
/* 800E40A4 000DF9C4  38 FF 00 06 */	addi r7, r31, 6
/* 800E40A8 000DF9C8  3C 60 51 EC */	lis r3, 0x51EB851F@ha
/* 800E40AC 000DF9CC  38 05 F9 B1 */	addi r0, r5, 0xB38CF9B1@l
/* 800E40B0 000DF9D0  38 C6 24 93 */	addi r6, r6, 0x92492493@l
/* 800E40B4 000DF9D4  7C A6 38 96 */	mulhw r5, r6, r7
/* 800E40B8 000DF9D8  39 23 85 1F */	addi r9, r3, 0x51EB851F@l
/* 800E40BC 000DF9DC  7C 00 F8 96 */	mulhw r0, r0, r31
/* 800E40C0 000DF9E0  7C 65 3A 14 */	add r3, r5, r7
/* 800E40C4 000DF9E4  7C 63 16 70 */	srawi r3, r3, 2
/* 800E40C8 000DF9E8  54 65 0F FE */	srwi r5, r3, 0x1f
/* 800E40CC 000DF9EC  7C 00 FA 14 */	add r0, r0, r31
/* 800E40D0 000DF9F0  7C 63 2A 14 */	add r3, r3, r5
/* 800E40D4 000DF9F4  7C 00 46 70 */	srawi r0, r0, 8
/* 800E40D8 000DF9F8  1C A3 00 07 */	mulli r5, r3, 7
/* 800E40DC 000DF9FC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800E40E0 000DFA00  7C 60 1A 14 */	add r3, r0, r3
/* 800E40E4 000DFA04  7C 05 38 50 */	subf r0, r5, r7
/* 800E40E8 000DFA08  90 1D 00 18 */	stw r0, 0x18(r29)
/* 800E40EC 000DFA0C  1D 43 01 6D */	mulli r10, r3, 0x16d
/* 800E40F0 000DFA10  48 00 00 10 */	b lbl_800E4100
/* 800E40F4 000DFA14  60 00 00 00 */	nop 
lbl_800E40F8:
/* 800E40F8 000DFA18  39 4A FE 93 */	addi r10, r10, -365
/* 800E40FC 000DFA1C  38 63 FF FF */	addi r3, r3, -1
lbl_800E4100:
/* 800E4100 000DFA20  2C 03 00 01 */	cmpwi r3, 1
/* 800E4104 000DFA24  41 80 00 3C */	blt lbl_800E4140
/* 800E4108 000DFA28  38 A3 FF FF */	addi r5, r3, -1
/* 800E410C 000DFA2C  38 03 00 03 */	addi r0, r3, 3
/* 800E4110 000DFA30  7C A9 28 96 */	mulhw r5, r9, r5
/* 800E4114 000DFA34  7C A7 3E 70 */	srawi r7, r5, 7
/* 800E4118 000DFA38  7C A5 2E 70 */	srawi r5, r5, 5
/* 800E411C 000DFA3C  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 800E4120 000DFA40  7C 00 16 70 */	srawi r0, r0, 2
/* 800E4124 000DFA44  54 E8 0F FE */	srwi r8, r7, 0x1f
/* 800E4128 000DFA48  7C A5 32 14 */	add r5, r5, r6
/* 800E412C 000DFA4C  7C 00 01 94 */	addze r0, r0
/* 800E4130 000DFA50  7C C7 42 14 */	add r6, r7, r8
/* 800E4134 000DFA54  7C 05 00 50 */	subf r0, r5, r0
/* 800E4138 000DFA58  7C 06 02 14 */	add r0, r6, r0
/* 800E413C 000DFA5C  48 00 00 08 */	b lbl_800E4144
lbl_800E4140:
/* 800E4140 000DFA60  38 00 00 00 */	li r0, 0
lbl_800E4144:
/* 800E4144 000DFA64  7C EA 02 14 */	add r7, r10, r0
/* 800E4148 000DFA68  7C 1F 38 00 */	cmpw r31, r7
/* 800E414C 000DFA6C  41 80 FF AC */	blt lbl_800E40F8
/* 800E4150 000DFA70  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 800E4154 000DFA74  54 66 0F FE */	srwi r6, r3, 0x1f
/* 800E4158 000DFA78  7C A6 00 50 */	subf r5, r6, r0
/* 800E415C 000DFA7C  90 7D 00 14 */	stw r3, 0x14(r29)
/* 800E4160 000DFA80  54 A5 10 3E */	rotlwi r5, r5, 2
/* 800E4164 000DFA84  7C 07 F8 50 */	subf r0, r7, r31
/* 800E4168 000DFA88  7C A5 32 15 */	add. r5, r5, r6
/* 800E416C 000DFA8C  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 800E4170 000DFA90  38 E0 00 00 */	li r7, 0
/* 800E4174 000DFA94  40 82 00 28 */	bne lbl_800E419C
/* 800E4178 000DFA98  3C A0 51 EC */	lis r5, 0x51EB851F@ha
/* 800E417C 000DFA9C  38 A5 85 1F */	addi r5, r5, 0x51EB851F@l
/* 800E4180 000DFAA0  7C A5 18 96 */	mulhw r5, r5, r3
/* 800E4184 000DFAA4  7C A5 2E 70 */	srawi r5, r5, 5
/* 800E4188 000DFAA8  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 800E418C 000DFAAC  7C A5 32 14 */	add r5, r5, r6
/* 800E4190 000DFAB0  1C A5 00 64 */	mulli r5, r5, 0x64
/* 800E4194 000DFAB4  7C A5 18 51 */	subf. r5, r5, r3
/* 800E4198 000DFAB8  40 82 00 28 */	bne lbl_800E41C0
lbl_800E419C:
/* 800E419C 000DFABC  3C A0 51 EC */	lis r5, 0x51EB851F@ha
/* 800E41A0 000DFAC0  38 A5 85 1F */	addi r5, r5, 0x51EB851F@l
/* 800E41A4 000DFAC4  7C A5 18 96 */	mulhw r5, r5, r3
/* 800E41A8 000DFAC8  7C A5 3E 70 */	srawi r5, r5, 7
/* 800E41AC 000DFACC  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 800E41B0 000DFAD0  7C A5 32 14 */	add r5, r5, r6
/* 800E41B4 000DFAD4  1C A5 01 90 */	mulli r5, r5, 0x190
/* 800E41B8 000DFAD8  7C 65 18 51 */	subf. r3, r5, r3
/* 800E41BC 000DFADC  40 82 00 08 */	bne lbl_800E41C4
lbl_800E41C0:
/* 800E41C0 000DFAE0  38 E0 00 01 */	li r7, 1
lbl_800E41C4:
/* 800E41C4 000DFAE4  2C 07 00 00 */	cmpwi r7, 0
/* 800E41C8 000DFAE8  3C E0 80 2F */	lis r7, lbl_802F2F98@ha
/* 800E41CC 000DFAEC  38 E7 2F 98 */	addi r7, r7, lbl_802F2F98@l
/* 800E41D0 000DFAF0  41 82 00 0C */	beq lbl_800E41DC
/* 800E41D4 000DFAF4  3C E0 80 2F */	lis r7, lbl_802F2FC8@ha
/* 800E41D8 000DFAF8  38 E7 2F C8 */	addi r7, r7, lbl_802F2FC8@l
lbl_800E41DC:
/* 800E41DC 000DFAFC  38 C0 00 0C */	li r6, 0xc
/* 800E41E0 000DFB00  38 60 00 30 */	li r3, 0x30
/* 800E41E4 000DFB04  60 00 00 00 */	nop 
lbl_800E41E8:
/* 800E41E8 000DFB08  38 63 FF FC */	addi r3, r3, -4
/* 800E41EC 000DFB0C  38 C6 FF FF */	addi r6, r6, -1
/* 800E41F0 000DFB10  7C A7 18 2E */	lwzx r5, r7, r3
/* 800E41F4 000DFB14  7C 00 28 00 */	cmpw r0, r5
/* 800E41F8 000DFB18  41 80 FF F0 */	blt lbl_800E41E8
/* 800E41FC 000DFB1C  3C A0 88 89 */	lis r5, 0x88888889@ha
/* 800E4200 000DFB20  90 DD 00 10 */	stw r6, 0x10(r29)
/* 800E4204 000DFB24  38 C5 88 89 */	addi r6, r5, 0x88888889@l
/* 800E4208 000DFB28  39 61 00 20 */	addi r11, r1, 0x20
/* 800E420C 000DFB2C  7C A6 20 96 */	mulhw r5, r6, r4
/* 800E4210 000DFB30  7C 67 18 2E */	lwzx r3, r7, r3
/* 800E4214 000DFB34  7C 63 00 50 */	subf r3, r3, r0
/* 800E4218 000DFB38  38 03 00 01 */	addi r0, r3, 1
/* 800E421C 000DFB3C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 800E4220 000DFB40  7C 65 22 14 */	add r3, r5, r4
/* 800E4224 000DFB44  7C 60 2E 70 */	srawi r0, r3, 5
/* 800E4228 000DFB48  54 05 0F FE */	srwi r5, r0, 0x1f
/* 800E422C 000DFB4C  7D 20 2A 14 */	add r9, r0, r5
/* 800E4230 000DFB50  7C 06 48 96 */	mulhw r0, r6, r9
/* 800E4234 000DFB54  7C 00 4A 14 */	add r0, r0, r9
/* 800E4238 000DFB58  7C 07 2E 70 */	srawi r7, r0, 5
/* 800E423C 000DFB5C  7C 05 2E 70 */	srawi r5, r0, 5
/* 800E4240 000DFB60  7C 60 2E 70 */	srawi r0, r3, 5
/* 800E4244 000DFB64  54 E8 0F FE */	srwi r8, r7, 0x1f
/* 800E4248 000DFB68  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 800E424C 000DFB6C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800E4250 000DFB70  7C E7 42 14 */	add r7, r7, r8
/* 800E4254 000DFB74  7C 00 1A 14 */	add r0, r0, r3
/* 800E4258 000DFB78  7C A5 32 14 */	add r5, r5, r6
/* 800E425C 000DFB7C  1C 65 00 3C */	mulli r3, r5, 0x3c
/* 800E4260 000DFB80  90 FD 00 08 */	stw r7, 8(r29)
/* 800E4264 000DFB84  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 800E4268 000DFB88  7C 63 48 50 */	subf r3, r3, r9
/* 800E426C 000DFB8C  90 7D 00 04 */	stw r3, 4(r29)
/* 800E4270 000DFB90  7C 00 20 50 */	subf r0, r0, r4
/* 800E4274 000DFB94  90 1D 00 00 */	stw r0, 0(r29)
/* 800E4278 000DFB98  48 01 FF 3D */	bl func_801041B4
/* 800E427C 000DFB9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E4280 000DFBA0  7C 08 03 A6 */	mtlr r0
/* 800E4284 000DFBA4  38 21 00 20 */	addi r1, r1, 0x20
/* 800E4288 000DFBA8  4E 80 00 20 */	blr 


.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_802F2F98

lbl_802F2F98:

	# ROM: 0x2EF098
	.4byte 0
	.4byte 0x0000001F
	.4byte 0x0000003B
	.4byte 0x0000005A
	.4byte 0x00000078
	.4byte 0x00000097
	.4byte 0x000000B5
	.4byte 0x000000D4
	.4byte 0x000000F3
	.4byte 0x00000111
	.4byte 0x00000130
	.4byte 0x0000014E


.global lbl_802F2FC8

lbl_802F2FC8:

	# ROM: 0x2EF0C8
	.4byte 0
	.4byte 0x0000001F
	.4byte 0x0000003C
	.4byte 0x0000005B
	.4byte 0x00000079
	.4byte 0x00000098
	.4byte 0x000000B6
	.4byte 0x000000D5
	.4byte 0x000000F4
	.4byte 0x00000112
	.4byte 0x00000131
	.4byte 0x0000014F

