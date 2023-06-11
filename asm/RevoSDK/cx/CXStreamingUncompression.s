.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_801259A0
func_801259A0:
/* 801259A0 001212C0  38 E0 00 00 */	li r7, 0
/* 801259A4 001212C4  38 A3 00 20 */	addi r5, r3, 0x20
/* 801259A8 001212C8  38 C0 FF FF */	li r6, -1
/* 801259AC 001212CC  38 00 00 08 */	li r0, 8
/* 801259B0 001212D0  90 83 00 00 */	stw r4, 0(r3)
/* 801259B4 001212D4  90 E3 00 04 */	stw r7, 4(r3)
/* 801259B8 001212D8  98 E3 00 1C */	stb r7, 0x1c(r3)
/* 801259BC 001212DC  B0 C3 00 18 */	sth r6, 0x18(r3)
/* 801259C0 001212E0  90 A3 00 0C */	stw r5, 0xc(r3)
/* 801259C4 001212E4  90 E3 00 14 */	stw r7, 0x14(r3)
/* 801259C8 001212E8  98 E3 00 1B */	stb r7, 0x1b(r3)
/* 801259CC 001212EC  90 E3 00 10 */	stw r7, 0x10(r3)
/* 801259D0 001212F0  98 E3 00 1A */	stb r7, 0x1a(r3)
/* 801259D4 001212F4  98 03 00 1D */	stb r0, 0x1d(r3)
/* 801259D8 001212F8  90 E3 00 08 */	stw r7, 8(r3)
/* 801259DC 001212FC  4E 80 00 20 */	blr 

.global func_801259E0
func_801259E0:
/* 801259E0 00121300  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801259E4 00121304  7C 08 02 A6 */	mflr r0
/* 801259E8 00121308  90 01 00 24 */	stw r0, 0x24(r1)
/* 801259EC 0012130C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801259F0 00121310  7C 9F 23 78 */	mr r31, r4
/* 801259F4 00121314  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801259F8 00121318  7C BE 2B 78 */	mr r30, r5
/* 801259FC 0012131C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80125A00 00121320  7C 7D 1B 78 */	mr r29, r3
/* 80125A04 00121324  93 81 00 10 */	stw r28, 0x10(r1)
/* 80125A08 00121328  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 80125A0C 0012132C  2C 00 00 00 */	cmpwi r0, 0
/* 80125A10 00121330  41 82 01 3C */	beq lbl_80125B4C
/* 80125A14 00121334  28 00 00 08 */	cmplwi r0, 8
/* 80125A18 00121338  40 82 00 3C */	bne lbl_80125A54
/* 80125A1C 0012133C  88 C4 00 00 */	lbz r6, 0(r4)
/* 80125A20 00121340  54 C0 06 36 */	rlwinm r0, r6, 0, 0x18, 0x1b
/* 80125A24 00121344  54 C6 07 3E */	clrlwi r6, r6, 0x1c
/* 80125A28 00121348  2C 00 00 20 */	cmpwi r0, 0x20
/* 80125A2C 0012134C  98 C3 00 1C */	stb r6, 0x1c(r3)
/* 80125A30 00121350  41 82 00 0C */	beq lbl_80125A3C
/* 80125A34 00121354  38 60 FF FF */	li r3, -1
/* 80125A38 00121358  48 00 03 50 */	b lbl_80125D88
lbl_80125A3C:
/* 80125A3C 0012135C  28 06 00 04 */	cmplwi r6, 4
/* 80125A40 00121360  41 82 00 14 */	beq lbl_80125A54
/* 80125A44 00121364  28 06 00 08 */	cmplwi r6, 8
/* 80125A48 00121368  41 82 00 0C */	beq lbl_80125A54
/* 80125A4C 0012136C  38 60 FF FF */	li r3, -1
/* 80125A50 00121370  48 00 03 38 */	b lbl_80125D88
lbl_80125A54:
/* 80125A54 00121374  81 43 00 08 */	lwz r10, 8(r3)
/* 80125A58 00121378  38 C0 00 00 */	li r6, 0
/* 80125A5C 0012137C  38 E0 00 00 */	li r7, 0
/* 80125A60 00121380  48 00 00 A0 */	b lbl_80125B00
/* 80125A64 00121384  60 00 00 00 */	nop 
lbl_80125A68:
/* 80125A68 00121388  89 03 00 1D */	lbz r8, 0x1d(r3)
/* 80125A6C 0012138C  38 08 FF FF */	addi r0, r8, -1
/* 80125A70 00121390  98 03 00 1D */	stb r0, 0x1d(r3)
/* 80125A74 00121394  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80125A78 00121398  28 00 00 03 */	cmplwi r0, 3
/* 80125A7C 0012139C  41 81 00 24 */	bgt lbl_80125AA0
/* 80125A80 001213A0  20 00 00 03 */	subfic r0, r0, 3
/* 80125A84 001213A4  89 1F 00 00 */	lbz r8, 0(r31)
/* 80125A88 001213A8  54 00 18 38 */	slwi r0, r0, 3
/* 80125A8C 001213AC  81 23 00 04 */	lwz r9, 4(r3)
/* 80125A90 001213B0  7D 00 00 30 */	slw r0, r8, r0
/* 80125A94 001213B4  7D 20 03 78 */	or r0, r9, r0
/* 80125A98 001213B8  90 03 00 04 */	stw r0, 4(r3)
/* 80125A9C 001213BC  48 00 00 28 */	b lbl_80125AC4
lbl_80125AA0:
/* 80125AA0 001213C0  28 00 00 06 */	cmplwi r0, 6
/* 80125AA4 001213C4  41 81 00 20 */	bgt lbl_80125AC4
/* 80125AA8 001213C8  20 00 00 06 */	subfic r0, r0, 6
/* 80125AAC 001213CC  89 1F 00 00 */	lbz r8, 0(r31)
/* 80125AB0 001213D0  54 00 18 38 */	slwi r0, r0, 3
/* 80125AB4 001213D4  81 23 00 04 */	lwz r9, 4(r3)
/* 80125AB8 001213D8  7D 00 00 30 */	slw r0, r8, r0
/* 80125ABC 001213DC  7D 20 03 78 */	or r0, r9, r0
/* 80125AC0 001213E0  90 03 00 04 */	stw r0, 4(r3)
lbl_80125AC4:
/* 80125AC4 001213E4  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 80125AC8 001213E8  3B FF 00 01 */	addi r31, r31, 1
/* 80125ACC 001213EC  38 C6 00 01 */	addi r6, r6, 1
/* 80125AD0 001213F0  28 00 00 04 */	cmplwi r0, 4
/* 80125AD4 001213F4  40 82 00 14 */	bne lbl_80125AE8
/* 80125AD8 001213F8  80 03 00 04 */	lwz r0, 4(r3)
/* 80125ADC 001213FC  2C 00 00 00 */	cmpwi r0, 0
/* 80125AE0 00121400  40 81 00 08 */	ble lbl_80125AE8
/* 80125AE4 00121404  98 E3 00 1D */	stb r7, 0x1d(r3)
lbl_80125AE8:
/* 80125AE8 00121408  37 DE FF FF */	addic. r30, r30, -1
/* 80125AEC 0012140C  40 82 00 14 */	bne lbl_80125B00
/* 80125AF0 00121410  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 80125AF4 00121414  2C 00 00 00 */	cmpwi r0, 0
/* 80125AF8 00121418  41 82 00 08 */	beq lbl_80125B00
/* 80125AFC 0012141C  48 00 00 28 */	b lbl_80125B24
lbl_80125B00:
/* 80125B00 00121420  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 80125B04 00121424  2C 00 00 00 */	cmpwi r0, 0
/* 80125B08 00121428  40 82 FF 60 */	bne lbl_80125A68
/* 80125B0C 0012142C  2C 0A 00 00 */	cmpwi r10, 0
/* 80125B10 00121430  40 81 00 14 */	ble lbl_80125B24
/* 80125B14 00121434  80 03 00 04 */	lwz r0, 4(r3)
/* 80125B18 00121438  7C 0A 00 00 */	cmpw r10, r0
/* 80125B1C 0012143C  40 80 00 08 */	bge lbl_80125B24
/* 80125B20 00121440  91 43 00 04 */	stw r10, 4(r3)
lbl_80125B24:
/* 80125B24 00121444  7F C6 28 51 */	subf. r30, r6, r5
/* 80125B28 00121448  7F E4 32 14 */	add r31, r4, r6
/* 80125B2C 0012144C  40 82 00 20 */	bne lbl_80125B4C
/* 80125B30 00121450  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 80125B34 00121454  2C 00 00 00 */	cmpwi r0, 0
/* 80125B38 00121458  40 82 00 0C */	bne lbl_80125B44
/* 80125B3C 0012145C  80 63 00 04 */	lwz r3, 4(r3)
/* 80125B40 00121460  48 00 02 48 */	b lbl_80125D88
lbl_80125B44:
/* 80125B44 00121464  38 60 FF FF */	li r3, -1
/* 80125B48 00121468  48 00 02 40 */	b lbl_80125D88
lbl_80125B4C:
/* 80125B4C 0012146C  A8 03 00 18 */	lha r0, 0x18(r3)
/* 80125B50 00121470  2C 00 00 00 */	cmpwi r0, 0
/* 80125B54 00121474  40 80 00 30 */	bge lbl_80125B84
/* 80125B58 00121478  88 DF 00 00 */	lbz r6, 0(r31)
/* 80125B5C 0012147C  3B DE FF FF */	addi r30, r30, -1
/* 80125B60 00121480  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80125B64 00121484  3B FF 00 01 */	addi r31, r31, 1
/* 80125B68 00121488  38 06 00 01 */	addi r0, r6, 1
/* 80125B6C 0012148C  54 05 08 3C */	slwi r5, r0, 1
/* 80125B70 00121490  38 A5 FF FF */	addi r5, r5, -1
/* 80125B74 00121494  B0 A3 00 18 */	sth r5, 0x18(r3)
/* 80125B78 00121498  38 04 00 01 */	addi r0, r4, 1
/* 80125B7C 0012149C  98 C4 00 00 */	stb r6, 0(r4)
/* 80125B80 001214A0  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80125B84:
/* 80125B84 001214A4  3B 83 00 21 */	addi r28, r3, 0x21
/* 80125B88 001214A8  48 00 00 64 */	b lbl_80125BEC
lbl_80125B8C:
/* 80125B8C 001214AC  2C 1E 00 00 */	cmpwi r30, 0
/* 80125B90 001214B0  40 82 00 0C */	bne lbl_80125B9C
/* 80125B94 001214B4  80 7D 00 04 */	lwz r3, 4(r29)
/* 80125B98 001214B8  48 00 01 F0 */	b lbl_80125D88
lbl_80125B9C:
/* 80125B9C 001214BC  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80125BA0 001214C0  3B DE FF FF */	addi r30, r30, -1
/* 80125BA4 001214C4  88 1F 00 00 */	lbz r0, 0(r31)
/* 80125BA8 001214C8  3B FF 00 01 */	addi r31, r31, 1
/* 80125BAC 001214CC  98 03 00 00 */	stb r0, 0(r3)
/* 80125BB0 001214D0  38 03 00 01 */	addi r0, r3, 1
/* 80125BB4 001214D4  A8 7D 00 18 */	lha r3, 0x18(r29)
/* 80125BB8 001214D8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80125BBC 001214DC  38 63 FF FF */	addi r3, r3, -1
/* 80125BC0 001214E0  7C 60 07 35 */	extsh. r0, r3
/* 80125BC4 001214E4  B0 7D 00 18 */	sth r3, 0x18(r29)
/* 80125BC8 001214E8  40 82 00 24 */	bne lbl_80125BEC
/* 80125BCC 001214EC  93 9D 00 0C */	stw r28, 0xc(r29)
/* 80125BD0 001214F0  38 7D 00 20 */	addi r3, r29, 0x20
/* 80125BD4 001214F4  88 9D 00 1C */	lbz r4, 0x1c(r29)
/* 80125BD8 001214F8  48 00 02 19 */	bl func_80125DF0
/* 80125BDC 001214FC  2C 03 00 00 */	cmpwi r3, 0
/* 80125BE0 00121500  40 82 00 0C */	bne lbl_80125BEC
/* 80125BE4 00121504  38 60 FF FB */	li r3, -5
/* 80125BE8 00121508  48 00 01 A0 */	b lbl_80125D88
lbl_80125BEC:
/* 80125BEC 0012150C  A8 1D 00 18 */	lha r0, 0x18(r29)
/* 80125BF0 00121510  2C 00 00 00 */	cmpwi r0, 0
/* 80125BF4 00121514  41 81 FF 98 */	bgt lbl_80125B8C
/* 80125BF8 00121518  38 C0 00 20 */	li r6, 0x20
/* 80125BFC 0012151C  38 60 00 00 */	li r3, 0
/* 80125C00 00121520  48 00 01 5C */	b lbl_80125D5C
/* 80125C04 00121524  60 00 00 00 */	nop 
/* 80125C08 00121528  48 00 00 40 */	b lbl_80125C48
/* 80125C0C 0012152C  60 00 00 00 */	nop 
lbl_80125C10:
/* 80125C10 00121530  2C 1E 00 00 */	cmpwi r30, 0
/* 80125C14 00121534  40 82 00 0C */	bne lbl_80125C20
/* 80125C18 00121538  80 7D 00 04 */	lwz r3, 4(r29)
/* 80125C1C 0012153C  48 00 01 6C */	b lbl_80125D88
lbl_80125C20:
/* 80125C20 00121540  88 1F 00 00 */	lbz r0, 0(r31)
/* 80125C24 00121544  3B FF 00 01 */	addi r31, r31, 1
/* 80125C28 00121548  88 9D 00 1A */	lbz r4, 0x1a(r29)
/* 80125C2C 0012154C  3B DE FF FF */	addi r30, r30, -1
/* 80125C30 00121550  7C 05 28 30 */	slw r5, r0, r5
/* 80125C34 00121554  80 FD 00 10 */	lwz r7, 0x10(r29)
/* 80125C38 00121558  38 04 00 08 */	addi r0, r4, 8
/* 80125C3C 0012155C  98 1D 00 1A */	stb r0, 0x1a(r29)
/* 80125C40 00121560  7C E0 2B 78 */	or r0, r7, r5
/* 80125C44 00121564  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_80125C48:
/* 80125C48 00121568  88 BD 00 1A */	lbz r5, 0x1a(r29)
/* 80125C4C 0012156C  28 05 00 20 */	cmplwi r5, 0x20
/* 80125C50 00121570  41 80 FF C0 */	blt lbl_80125C10
/* 80125C54 00121574  48 00 00 FC */	b lbl_80125D50
lbl_80125C58:
/* 80125C58 00121578  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 80125C5C 0012157C  81 3D 00 10 */	lwz r9, 0x10(r29)
/* 80125C60 00121580  88 04 00 00 */	lbz r0, 0(r4)
/* 80125C64 00121584  54 88 00 3C */	rlwinm r8, r4, 0, 0, 0x1e
/* 80125C68 00121588  88 A4 00 00 */	lbz r5, 0(r4)
/* 80125C6C 0012158C  55 2A 0F FE */	srwi r10, r9, 0x1f
/* 80125C70 00121590  54 07 06 BE */	clrlwi r7, r0, 0x1a
/* 80125C74 00121594  88 9D 00 1A */	lbz r4, 0x1a(r29)
/* 80125C78 00121598  7C A0 50 30 */	slw r0, r5, r10
/* 80125C7C 0012159C  55 25 08 3C */	slwi r5, r9, 1
/* 80125C80 001215A0  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80125C84 001215A4  38 E7 00 01 */	addi r7, r7, 1
/* 80125C88 001215A8  38 04 FF FF */	addi r0, r4, -1
/* 80125C8C 001215AC  7C 8A 42 14 */	add r4, r10, r8
/* 80125C90 001215B0  54 E7 08 3C */	slwi r7, r7, 1
/* 80125C94 001215B4  90 BD 00 10 */	stw r5, 0x10(r29)
/* 80125C98 001215B8  7D 27 22 14 */	add r9, r7, r4
/* 80125C9C 001215BC  91 3D 00 0C */	stw r9, 0xc(r29)
/* 80125CA0 001215C0  98 1D 00 1A */	stb r0, 0x1a(r29)
/* 80125CA4 001215C4  41 82 00 AC */	beq lbl_80125D50
/* 80125CA8 001215C8  88 9D 00 1C */	lbz r4, 0x1c(r29)
/* 80125CAC 001215CC  38 FD 00 21 */	addi r7, r29, 0x21
/* 80125CB0 001215D0  80 BD 00 14 */	lwz r5, 0x14(r29)
/* 80125CB4 001215D4  88 1D 00 1B */	lbz r0, 0x1b(r29)
/* 80125CB8 001215D8  21 04 00 20 */	subfic r8, r4, 0x20
/* 80125CBC 001215DC  7C AA 24 30 */	srw r10, r5, r4
/* 80125CC0 001215E0  91 5D 00 14 */	stw r10, 0x14(r29)
/* 80125CC4 001215E4  7C A0 22 14 */	add r5, r0, r4
/* 80125CC8 001215E8  80 9D 00 04 */	lwz r4, 4(r29)
/* 80125CCC 001215EC  89 29 00 00 */	lbz r9, 0(r9)
/* 80125CD0 001215F0  54 A0 EE FE */	rlwinm r0, r5, 0x1d, 0x1b, 0x1f
/* 80125CD4 001215F4  7C 04 00 00 */	cmpw r4, r0
/* 80125CD8 001215F8  54 AB 06 3E */	clrlwi r11, r5, 0x18
/* 80125CDC 001215FC  7D 20 40 30 */	slw r0, r9, r8
/* 80125CE0 00121600  90 FD 00 0C */	stw r7, 0xc(r29)
/* 80125CE4 00121604  7D 44 03 78 */	or r4, r10, r0
/* 80125CE8 00121608  90 9D 00 14 */	stw r4, 0x14(r29)
/* 80125CEC 0012160C  98 BD 00 1B */	stb r5, 0x1b(r29)
/* 80125CF0 00121610  41 81 00 14 */	bgt lbl_80125D04
/* 80125CF4 00121614  20 0B 00 20 */	subfic r0, r11, 0x20
/* 80125CF8 00121618  98 DD 00 1B */	stb r6, 0x1b(r29)
/* 80125CFC 0012161C  7C 80 04 30 */	srw r0, r4, r0
/* 80125D00 00121620  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80125D04:
/* 80125D04 00121624  88 1D 00 1B */	lbz r0, 0x1b(r29)
/* 80125D08 00121628  28 00 00 20 */	cmplwi r0, 0x20
/* 80125D0C 0012162C  40 82 00 44 */	bne lbl_80125D50
/* 80125D10 00121630  80 FD 00 14 */	lwz r7, 0x14(r29)
/* 80125D14 00121634  80 9D 00 00 */	lwz r4, 0(r29)
/* 80125D18 00121638  54 E5 42 1E */	rlwinm r5, r7, 8, 8, 0xf
/* 80125D1C 0012163C  54 E0 C4 2E */	rlwinm r0, r7, 0x18, 0x10, 0x17
/* 80125D20 00121640  50 E5 C0 0E */	rlwimi r5, r7, 0x18, 0, 7
/* 80125D24 00121644  50 E0 46 3E */	rlwimi r0, r7, 8, 0x18, 0x1f
/* 80125D28 00121648  7C A0 03 78 */	or r0, r5, r0
/* 80125D2C 0012164C  90 04 00 00 */	stw r0, 0(r4)
/* 80125D30 00121650  80 9D 00 04 */	lwz r4, 4(r29)
/* 80125D34 00121654  80 BD 00 00 */	lwz r5, 0(r29)
/* 80125D38 00121658  34 04 FF FC */	addic. r0, r4, -4
/* 80125D3C 0012165C  98 7D 00 1B */	stb r3, 0x1b(r29)
/* 80125D40 00121660  38 85 00 04 */	addi r4, r5, 4
/* 80125D44 00121664  90 1D 00 04 */	stw r0, 4(r29)
/* 80125D48 00121668  90 9D 00 00 */	stw r4, 0(r29)
/* 80125D4C 0012166C  40 81 00 1C */	ble lbl_80125D68
lbl_80125D50:
/* 80125D50 00121670  88 1D 00 1A */	lbz r0, 0x1a(r29)
/* 80125D54 00121674  2C 00 00 00 */	cmpwi r0, 0
/* 80125D58 00121678  40 82 FF 00 */	bne lbl_80125C58
lbl_80125D5C:
/* 80125D5C 0012167C  80 1D 00 04 */	lwz r0, 4(r29)
/* 80125D60 00121680  2C 00 00 00 */	cmpwi r0, 0
/* 80125D64 00121684  41 81 FE E4 */	bgt lbl_80125C48
lbl_80125D68:
/* 80125D68 00121688  80 1D 00 08 */	lwz r0, 8(r29)
/* 80125D6C 0012168C  2C 00 00 00 */	cmpwi r0, 0
/* 80125D70 00121690  40 82 00 14 */	bne lbl_80125D84
/* 80125D74 00121694  28 1E 00 20 */	cmplwi r30, 0x20
/* 80125D78 00121698  40 81 00 0C */	ble lbl_80125D84
/* 80125D7C 0012169C  38 60 FF FD */	li r3, -3
/* 80125D80 001216A0  48 00 00 08 */	b lbl_80125D88
lbl_80125D84:
/* 80125D84 001216A4  38 60 00 00 */	li r3, 0
lbl_80125D88:
/* 80125D88 001216A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80125D8C 001216AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80125D90 001216B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80125D94 001216B4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80125D98 001216B8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80125D9C 001216BC  7C 08 03 A6 */	mtlr r0
/* 80125DA0 001216C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80125DA4 001216C4  4E 80 00 20 */	blr 
/* 80125DA8 001216C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80125DAC 001216CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */