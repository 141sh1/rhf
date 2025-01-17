.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_8010DF34
func_8010DF34:
/* 8010DF34 00109854  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8010DF38 00109858  7C 08 02 A6 */	mflr r0
/* 8010DF3C 0010985C  3C 80 3F E9 */	lis r4, 0x3FE921FB@ha
/* 8010DF40 00109860  90 01 00 64 */	stw r0, 0x64(r1)
/* 8010DF44 00109864  38 04 21 FB */	addi r0, r4, 0x3FE921FB@l
/* 8010DF48 00109868  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8010DF4C 0010986C  D8 21 00 08 */	stfd f1, 8(r1)
/* 8010DF50 00109870  83 E1 00 08 */	lwz r31, 8(r1)
/* 8010DF54 00109874  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8010DF58 00109878  7C 7E 1B 78 */	mr r30, r3
/* 8010DF5C 0010987C  57 E6 00 7E */	clrlwi r6, r31, 1
/* 8010DF60 00109880  7C 06 00 00 */	cmpw r6, r0
/* 8010DF64 00109884  41 81 00 18 */	bgt lbl_8010DF7C
/* 8010DF68 00109888  C8 02 FC B0 */	lfd f0, lbl_80328C90-_SDA2_BASE_(r2)
/* 8010DF6C 0010988C  D8 23 00 00 */	stfd f1, 0(r3)
/* 8010DF70 00109890  D8 03 00 08 */	stfd f0, 8(r3)
/* 8010DF74 00109894  38 60 00 00 */	li r3, 0
/* 8010DF78 00109898  48 00 03 28 */	b lbl_8010E2A0
lbl_8010DF7C:
/* 8010DF7C 0010989C  3C 80 40 03 */	lis r4, 0x4002D97C@ha
/* 8010DF80 001098A0  38 04 D9 7C */	addi r0, r4, 0x4002D97C@l
/* 8010DF84 001098A4  7C 06 00 00 */	cmpw r6, r0
/* 8010DF88 001098A8  40 80 00 BC */	bge lbl_8010E044
/* 8010DF8C 001098AC  2C 1F 00 00 */	cmpwi r31, 0
/* 8010DF90 001098B0  40 81 00 5C */	ble lbl_8010DFEC
/* 8010DF94 001098B4  C8 02 FC B8 */	lfd f0, lbl_80328C98-_SDA2_BASE_(r2)
/* 8010DF98 001098B8  3C 06 C0 07 */	addis r0, r6, 0xc007
/* 8010DF9C 001098BC  28 00 21 FB */	cmplwi r0, 0x21fb
/* 8010DFA0 001098C0  FC 41 00 28 */	fsub f2, f1, f0
/* 8010DFA4 001098C4  41 82 00 20 */	beq lbl_8010DFC4
/* 8010DFA8 001098C8  C8 22 FC C0 */	lfd f1, lbl_80328CA0-_SDA2_BASE_(r2)
/* 8010DFAC 001098CC  FC 02 08 28 */	fsub f0, f2, f1
/* 8010DFB0 001098D0  D8 03 00 00 */	stfd f0, 0(r3)
/* 8010DFB4 001098D4  FC 02 00 28 */	fsub f0, f2, f0
/* 8010DFB8 001098D8  FC 00 08 28 */	fsub f0, f0, f1
/* 8010DFBC 001098DC  D8 03 00 08 */	stfd f0, 8(r3)
/* 8010DFC0 001098E0  48 00 00 24 */	b lbl_8010DFE4
lbl_8010DFC4:
/* 8010DFC4 001098E4  C8 02 FC C8 */	lfd f0, lbl_80328CA8-_SDA2_BASE_(r2)
/* 8010DFC8 001098E8  C8 22 FC D0 */	lfd f1, lbl_80328CB0-_SDA2_BASE_(r2)
/* 8010DFCC 001098EC  FC 42 00 28 */	fsub f2, f2, f0
/* 8010DFD0 001098F0  FC 02 08 28 */	fsub f0, f2, f1
/* 8010DFD4 001098F4  D8 03 00 00 */	stfd f0, 0(r3)
/* 8010DFD8 001098F8  FC 02 00 28 */	fsub f0, f2, f0
/* 8010DFDC 001098FC  FC 00 08 28 */	fsub f0, f0, f1
/* 8010DFE0 00109900  D8 03 00 08 */	stfd f0, 8(r3)
lbl_8010DFE4:
/* 8010DFE4 00109904  38 60 00 01 */	li r3, 1
/* 8010DFE8 00109908  48 00 02 B8 */	b lbl_8010E2A0
lbl_8010DFEC:
/* 8010DFEC 0010990C  C8 02 FC B8 */	lfd f0, lbl_80328C98-_SDA2_BASE_(r2)
/* 8010DFF0 00109910  3C 06 C0 07 */	addis r0, r6, 0xc007
/* 8010DFF4 00109914  28 00 21 FB */	cmplwi r0, 0x21fb
/* 8010DFF8 00109918  FC 40 08 2A */	fadd f2, f0, f1
/* 8010DFFC 0010991C  41 82 00 20 */	beq lbl_8010E01C
/* 8010E000 00109920  C8 22 FC C0 */	lfd f1, lbl_80328CA0-_SDA2_BASE_(r2)
/* 8010E004 00109924  FC 01 10 2A */	fadd f0, f1, f2
/* 8010E008 00109928  D8 03 00 00 */	stfd f0, 0(r3)
/* 8010E00C 0010992C  FC 02 00 28 */	fsub f0, f2, f0
/* 8010E010 00109930  FC 01 00 2A */	fadd f0, f1, f0
/* 8010E014 00109934  D8 03 00 08 */	stfd f0, 8(r3)
/* 8010E018 00109938  48 00 00 24 */	b lbl_8010E03C
lbl_8010E01C:
/* 8010E01C 0010993C  C8 02 FC C8 */	lfd f0, lbl_80328CA8-_SDA2_BASE_(r2)
/* 8010E020 00109940  C8 22 FC D0 */	lfd f1, lbl_80328CB0-_SDA2_BASE_(r2)
/* 8010E024 00109944  FC 42 00 2A */	fadd f2, f2, f0
/* 8010E028 00109948  FC 01 10 2A */	fadd f0, f1, f2
/* 8010E02C 0010994C  D8 03 00 00 */	stfd f0, 0(r3)
/* 8010E030 00109950  FC 02 00 28 */	fsub f0, f2, f0
/* 8010E034 00109954  FC 01 00 2A */	fadd f0, f1, f0
/* 8010E038 00109958  D8 03 00 08 */	stfd f0, 8(r3)
lbl_8010E03C:
/* 8010E03C 0010995C  38 60 FF FF */	li r3, -1
/* 8010E040 00109960  48 00 02 60 */	b lbl_8010E2A0
lbl_8010E044:
/* 8010E044 00109964  3C 80 41 39 */	lis r4, 0x413921FB@ha
/* 8010E048 00109968  38 04 21 FB */	addi r0, r4, 0x413921FB@l
/* 8010E04C 0010996C  7C 06 00 00 */	cmpw r6, r0
/* 8010E050 00109970  41 81 01 48 */	bgt lbl_8010E198
/* 8010E054 00109974  FC A0 0A 10 */	fabs f5, f1
/* 8010E058 00109978  C8 02 FC E0 */	lfd f0, lbl_80328CC0-_SDA2_BASE_(r2)
/* 8010E05C 0010997C  3C 00 43 30 */	lis r0, 0x4330
/* 8010E060 00109980  C8 42 FC D8 */	lfd f2, lbl_80328CB8-_SDA2_BASE_(r2)
/* 8010E064 00109984  90 01 00 38 */	stw r0, 0x38(r1)
/* 8010E068 00109988  FC 80 01 72 */	fmul f4, f0, f5
/* 8010E06C 0010998C  C8 62 FD 00 */	lfd f3, lbl_80328CE0-_SDA2_BASE_(r2)
/* 8010E070 00109990  C8 22 FC B8 */	lfd f1, lbl_80328C98-_SDA2_BASE_(r2)
/* 8010E074 00109994  C8 02 FC C0 */	lfd f0, lbl_80328CA0-_SDA2_BASE_(r2)
/* 8010E078 00109998  FC 42 20 2A */	fadd f2, f2, f4
/* 8010E07C 0010999C  FC 40 10 1E */	fctiwz f2, f2
/* 8010E080 001099A0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8010E084 001099A4  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8010E088 001099A8  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8010E08C 001099AC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8010E090 001099B0  2C 05 00 20 */	cmpwi r5, 0x20
/* 8010E094 001099B4  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 8010E098 001099B8  FC C2 18 28 */	fsub f6, f2, f3
/* 8010E09C 001099BC  FC 21 01 B2 */	fmul f1, f1, f6
/* 8010E0A0 001099C0  FC 40 01 B2 */	fmul f2, f0, f6
/* 8010E0A4 001099C4  FC 85 08 28 */	fsub f4, f5, f1
/* 8010E0A8 001099C8  40 80 00 2C */	bge lbl_8010E0D4
/* 8010E0AC 001099CC  38 05 FF FF */	addi r0, r5, -1
/* 8010E0B0 001099D0  3C 80 80 2E */	lis r4, lbl_802DECC0@ha
/* 8010E0B4 001099D4  54 00 10 3A */	slwi r0, r0, 2
/* 8010E0B8 001099D8  38 84 EC C0 */	addi r4, r4, lbl_802DECC0@l
/* 8010E0BC 001099DC  7C 04 00 2E */	lwzx r0, r4, r0
/* 8010E0C0 001099E0  7C 06 00 00 */	cmpw r6, r0
/* 8010E0C4 001099E4  41 82 00 10 */	beq lbl_8010E0D4
/* 8010E0C8 001099E8  FC 04 10 28 */	fsub f0, f4, f2
/* 8010E0CC 001099EC  D8 03 00 00 */	stfd f0, 0(r3)
/* 8010E0D0 001099F0  48 00 00 90 */	b lbl_8010E160
lbl_8010E0D4:
/* 8010E0D4 001099F4  FC 04 10 28 */	fsub f0, f4, f2
/* 8010E0D8 001099F8  7C C4 A6 70 */	srawi r4, r6, 0x14
/* 8010E0DC 001099FC  D8 03 00 00 */	stfd f0, 0(r3)
/* 8010E0E0 00109A00  80 03 00 00 */	lwz r0, 0(r3)
/* 8010E0E4 00109A04  54 00 65 7E */	rlwinm r0, r0, 0xc, 0x15, 0x1f
/* 8010E0E8 00109A08  7C 00 20 50 */	subf r0, r0, r4
/* 8010E0EC 00109A0C  2C 00 00 10 */	cmpwi r0, 0x10
/* 8010E0F0 00109A10  40 81 00 70 */	ble lbl_8010E160
/* 8010E0F4 00109A14  C8 22 FC C8 */	lfd f1, lbl_80328CA8-_SDA2_BASE_(r2)
/* 8010E0F8 00109A18  FC 40 20 90 */	fmr f2, f4
/* 8010E0FC 00109A1C  C8 02 FC D0 */	lfd f0, lbl_80328CB0-_SDA2_BASE_(r2)
/* 8010E100 00109A20  FC 61 01 B2 */	fmul f3, f1, f6
/* 8010E104 00109A24  FC 20 01 B2 */	fmul f1, f0, f6
/* 8010E108 00109A28  FC 84 18 28 */	fsub f4, f4, f3
/* 8010E10C 00109A2C  FC 02 20 28 */	fsub f0, f2, f4
/* 8010E110 00109A30  FC 00 18 28 */	fsub f0, f0, f3
/* 8010E114 00109A34  FC 41 00 28 */	fsub f2, f1, f0
/* 8010E118 00109A38  FC 04 10 28 */	fsub f0, f4, f2
/* 8010E11C 00109A3C  D8 03 00 00 */	stfd f0, 0(r3)
/* 8010E120 00109A40  80 03 00 00 */	lwz r0, 0(r3)
/* 8010E124 00109A44  54 00 65 7E */	rlwinm r0, r0, 0xc, 0x15, 0x1f
/* 8010E128 00109A48  7C 00 20 50 */	subf r0, r0, r4
/* 8010E12C 00109A4C  2C 00 00 31 */	cmpwi r0, 0x31
/* 8010E130 00109A50  40 81 00 30 */	ble lbl_8010E160
/* 8010E134 00109A54  C8 22 FC E8 */	lfd f1, lbl_80328CC8-_SDA2_BASE_(r2)
/* 8010E138 00109A58  FC 40 20 90 */	fmr f2, f4
/* 8010E13C 00109A5C  C8 02 FC F0 */	lfd f0, lbl_80328CD0-_SDA2_BASE_(r2)
/* 8010E140 00109A60  FC 61 01 B2 */	fmul f3, f1, f6
/* 8010E144 00109A64  FC 20 01 B2 */	fmul f1, f0, f6
/* 8010E148 00109A68  FC 84 18 28 */	fsub f4, f4, f3
/* 8010E14C 00109A6C  FC 02 20 28 */	fsub f0, f2, f4
/* 8010E150 00109A70  FC 00 18 28 */	fsub f0, f0, f3
/* 8010E154 00109A74  FC 41 00 28 */	fsub f2, f1, f0
/* 8010E158 00109A78  FC 04 10 28 */	fsub f0, f4, f2
/* 8010E15C 00109A7C  D8 03 00 00 */	stfd f0, 0(r3)
lbl_8010E160:
/* 8010E160 00109A80  C8 23 00 00 */	lfd f1, 0(r3)
/* 8010E164 00109A84  2C 1F 00 00 */	cmpwi r31, 0
/* 8010E168 00109A88  FC 04 08 28 */	fsub f0, f4, f1
/* 8010E16C 00109A8C  FC 00 10 28 */	fsub f0, f0, f2
/* 8010E170 00109A90  D8 03 00 08 */	stfd f0, 8(r3)
/* 8010E174 00109A94  40 80 00 1C */	bge lbl_8010E190
/* 8010E178 00109A98  FC 20 08 50 */	fneg f1, f1
/* 8010E17C 00109A9C  FC 00 00 50 */	fneg f0, f0
/* 8010E180 00109AA0  D8 23 00 00 */	stfd f1, 0(r3)
/* 8010E184 00109AA4  D8 03 00 08 */	stfd f0, 8(r3)
/* 8010E188 00109AA8  7C 65 00 D0 */	neg r3, r5
/* 8010E18C 00109AAC  48 00 01 14 */	b lbl_8010E2A0
lbl_8010E190:
/* 8010E190 00109AB0  7C A3 2B 78 */	mr r3, r5
/* 8010E194 00109AB4  48 00 01 0C */	b lbl_8010E2A0
lbl_8010E198:
/* 8010E198 00109AB8  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8010E19C 00109ABC  7C 06 00 00 */	cmpw r6, r0
/* 8010E1A0 00109AC0  41 80 00 18 */	blt lbl_8010E1B8
/* 8010E1A4 00109AC4  FC 01 08 28 */	fsub f0, f1, f1
/* 8010E1A8 00109AC8  D8 03 00 08 */	stfd f0, 8(r3)
/* 8010E1AC 00109ACC  D8 03 00 00 */	stfd f0, 0(r3)
/* 8010E1B0 00109AD0  38 60 00 00 */	li r3, 0
/* 8010E1B4 00109AD4  48 00 00 EC */	b lbl_8010E2A0
lbl_8010E1B8:
/* 8010E1B8 00109AD8  7C C3 A6 70 */	srawi r3, r6, 0x14
/* 8010E1BC 00109ADC  3C 00 43 30 */	lis r0, 0x4330
/* 8010E1C0 00109AE0  38 A3 FB EA */	addi r5, r3, -1046
/* 8010E1C4 00109AE4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8010E1C8 00109AE8  54 A3 A0 16 */	slwi r3, r5, 0x14
/* 8010E1CC 00109AEC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8010E1D0 00109AF0  7C 63 30 50 */	subf r3, r3, r6
/* 8010E1D4 00109AF4  C8 82 FD 00 */	lfd f4, lbl_80328CE0-_SDA2_BASE_(r2)
/* 8010E1D8 00109AF8  90 61 00 10 */	stw r3, 0x10(r1)
/* 8010E1DC 00109AFC  38 61 00 30 */	addi r3, r1, 0x30
/* 8010E1E0 00109B00  C8 62 FC F8 */	lfd f3, lbl_80328CD8-_SDA2_BASE_(r2)
/* 8010E1E4 00109B04  38 C0 00 03 */	li r6, 3
/* 8010E1E8 00109B08  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8010E1EC 00109B0C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8010E1F0 00109B10  FC 00 10 1E */	fctiwz f0, f2
/* 8010E1F4 00109B14  C8 22 FC B0 */	lfd f1, lbl_80328C90-_SDA2_BASE_(r2)
/* 8010E1F8 00109B18  90 01 00 48 */	stw r0, 0x48(r1)
/* 8010E1FC 00109B1C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8010E200 00109B20  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8010E204 00109B24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8010E208 00109B28  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010E20C 00109B2C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8010E210 00109B30  FC 00 20 28 */	fsub f0, f0, f4
/* 8010E214 00109B34  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8010E218 00109B38  FC 02 00 28 */	fsub f0, f2, f0
/* 8010E21C 00109B3C  FC 43 00 32 */	fmul f2, f3, f0
/* 8010E220 00109B40  FC 00 10 1E */	fctiwz f0, f2
/* 8010E224 00109B44  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8010E228 00109B48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8010E22C 00109B4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8010E230 00109B50  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8010E234 00109B54  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8010E238 00109B58  FC 00 20 28 */	fsub f0, f0, f4
/* 8010E23C 00109B5C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8010E240 00109B60  FC 02 00 28 */	fsub f0, f2, f0
/* 8010E244 00109B64  FC 03 00 32 */	fmul f0, f3, f0
/* 8010E248 00109B68  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8010E24C 00109B6C  48 00 00 0C */	b lbl_8010E258
lbl_8010E250:
/* 8010E250 00109B70  38 63 FF F8 */	addi r3, r3, -8
/* 8010E254 00109B74  38 C6 FF FF */	addi r6, r6, -1
lbl_8010E258:
/* 8010E258 00109B78  C8 03 FF F8 */	lfd f0, -8(r3)
/* 8010E25C 00109B7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8010E260 00109B80  41 82 FF F0 */	beq lbl_8010E250
/* 8010E264 00109B84  3D 00 80 2E */	lis r8, lbl_802DEBB8@ha
/* 8010E268 00109B88  7F C4 F3 78 */	mr r4, r30
/* 8010E26C 00109B8C  38 61 00 18 */	addi r3, r1, 0x18
/* 8010E270 00109B90  38 E0 00 02 */	li r7, 2
/* 8010E274 00109B94  39 08 EB B8 */	addi r8, r8, lbl_802DEBB8@l
/* 8010E278 00109B98  48 00 01 51 */	bl func_8010E3C8
/* 8010E27C 00109B9C  2C 1F 00 00 */	cmpwi r31, 0
/* 8010E280 00109BA0  40 80 00 20 */	bge lbl_8010E2A0
/* 8010E284 00109BA4  C8 3E 00 00 */	lfd f1, 0(r30)
/* 8010E288 00109BA8  7C 63 00 D0 */	neg r3, r3
/* 8010E28C 00109BAC  C8 1E 00 08 */	lfd f0, 8(r30)
/* 8010E290 00109BB0  FC 20 08 50 */	fneg f1, f1
/* 8010E294 00109BB4  FC 00 00 50 */	fneg f0, f0
/* 8010E298 00109BB8  D8 3E 00 00 */	stfd f1, 0(r30)
/* 8010E29C 00109BBC  D8 1E 00 08 */	stfd f0, 8(r30)
lbl_8010E2A0:
/* 8010E2A0 00109BC0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8010E2A4 00109BC4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8010E2A8 00109BC8  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8010E2AC 00109BCC  7C 08 03 A6 */	mtlr r0
/* 8010E2B0 00109BD0  38 21 00 60 */	addi r1, r1, 0x60
/* 8010E2B4 00109BD4  4E 80 00 20 */	blr 



.section .rodata, "wa"  # 0x802DDDD0 - 0x802E4A88

.global lbl_802DEBB8

lbl_802DEBB8:

	# ROM: 0x2DACB8
	.4byte 0x00A2F983
	.4byte 0x006E4E44
	.4byte 0x001529FC
	.4byte 0x002757D1
	.4byte 0x00F534DD
	.4byte 0x00C0DB62
	.4byte 0x0095993C
	.4byte 0x00439041
	.4byte 0x00FE5163
	.4byte 0x00ABDEBB
	.4byte 0x00C561B7
	.4byte 0x00246E3A
	.4byte 0x00424DD2
	.4byte 0x00E00649
	.4byte 0x002EEA09
	.4byte 0x00D1921C
	.4byte 0x00FE1DEB
	.4byte 0x001CB129
	.4byte 0x00A73EE8
	.4byte 0x008235F5
	.4byte 0x002EBB44
	.4byte 0x0084E99C
	.4byte 0x007026B4
	.4byte 0x005F7E41
	.4byte 0x003991D6
	.4byte 0x00398353
	.4byte 0x0039F49C
	.4byte 0x00845F8B
	.4byte 0x00BDF928
	.4byte 0x003B1FF8
	.4byte 0x0097FFDE
	.4byte 0x0005980F
	.4byte 0x00EF2F11
	.4byte 0x008B5A0A
	.4byte 0x006D1F6D
	.4byte 0x00367ECF
	.4byte 0x0027CB09
	.4byte 0x00B74F46
	.4byte 0x003F669E
	.4byte 0x005FEA2D
	.4byte 0x007527BA
	.4byte 0x00C7EBE5
	.4byte 0x00F17B3D
	.4byte 0x000739F7
	.4byte 0x008A5292
	.4byte 0x00EA6BFB
	.4byte 0x005FB11F
	.4byte 0x008D5D08
	.4byte 0x00560330
	.4byte 0x0046FC7B
	.4byte 0x006BABF0
	.4byte 0x00CFBC20
	.4byte 0x009AF436
	.4byte 0x001DA9E3
	.4byte 0x0091615E
	.4byte 0x00E61B08
	.4byte 0x00659985
	.4byte 0x005F14A0
	.4byte 0x0068408D
	.4byte 0x00FFD880
	.4byte 0x004D7327
	.4byte 0x00310606
	.4byte 0x001556CA
	.4byte 0x0073A8C9
	.4byte 0x0060E27B
	.4byte 0x00C08C6B


.global lbl_802DECC0

lbl_802DECC0:

	# ROM: 0x2DADC0
	.4byte 0x3FF921FB
	.4byte 0x400921FB
	.4byte 0x4012D97C
	.4byte 0x401921FB
	.4byte 0x401F6A7A
	.4byte 0x4022D97C
	.4byte 0x4025FDBB
	.4byte 0x402921FB
	.4byte 0x402C463A
	.4byte 0x402F6A7A
	.4byte 0x4031475C
	.4byte 0x4032D97C
	.4byte 0x40346B9C
	.4byte 0x4035FDBB
	.4byte 0x40378FDB
	.4byte 0x403921FB
	.4byte 0x403AB41B
	.4byte 0x403C463A
	.4byte 0x403DD85A
	.4byte 0x403F6A7A
	.4byte 0x40407E4C
	.4byte 0x4041475C
	.4byte 0x4042106C
	.4byte 0x4042D97C
	.4byte 0x4043A28C
	.4byte 0x40446B9C
	.4byte 0x404534AC
	.4byte 0x4045FDBB
	.4byte 0x4046C6CB
	.4byte 0x40478FDB
	.4byte 0x404858EB
	.4byte 0x404921FB



.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_80328C90

lbl_80328C90:

	# ROM: 0x323EF0
	.4byte 0
	.4byte 0


.global lbl_80328C98

lbl_80328C98:

	# ROM: 0x323EF8
	.4byte 0x3FF921FB
	.4byte 0x54400000


.global lbl_80328CA0

lbl_80328CA0:

	# ROM: 0x323F00
	.4byte 0x3DD0B461
	.4byte 0x1A626331


.global lbl_80328CA8

lbl_80328CA8:

	# ROM: 0x323F08
	.4byte 0x3DD0B461
	.4byte 0x1A600000


.global lbl_80328CB0

lbl_80328CB0:

	# ROM: 0x323F10
	.4byte 0x3BA3198A
	.4byte 0x2E037073


.global lbl_80328CB8

lbl_80328CB8:

	# ROM: 0x323F18
	.4byte 0x3FE00000
	.4byte 0


.global lbl_80328CC0

lbl_80328CC0:

	# ROM: 0x323F20
	.4byte 0x3FE45F30
	.4byte 0x6DC9C883


.global lbl_80328CC8

lbl_80328CC8:

	# ROM: 0x323F28
	.4byte 0x3BA3198A
	.4byte 0x2E000000


.global lbl_80328CD0

lbl_80328CD0:

	# ROM: 0x323F30
	.4byte 0x397B839A
	.4byte 0x252049C1


.global lbl_80328CD8

lbl_80328CD8:

	# ROM: 0x323F38
	.4byte 0x41700000
	.4byte 0


.global lbl_80328CE0

lbl_80328CE0:

	# ROM: 0x323F40
	.4byte 0x43300000
	.4byte 0x80000000
