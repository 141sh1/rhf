.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80114A00
func_80114A00:
/* 80114A00 00110320  80 03 00 00 */	lwz r0, 0(r3)
/* 80114A04 00110324  80 23 00 04 */	lwz r1, 4(r3)
/* 80114A08 00110328  80 43 00 08 */	lwz r2, 8(r3)
/* 80114A0C 0011032C  A0 A3 01 A2 */	lhz r5, 0x1a2(r3)
/* 80114A10 00110330  54 A6 07 BD */	rlwinm. r6, r5, 0, 0x1e, 0x1e
/* 80114A14 00110334  41 82 00 14 */	beq lbl_80114A28
/* 80114A18 00110338  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 80114A1C 0011033C  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 80114A20 00110340  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 80114A24 00110344  48 00 00 08 */	b lbl_80114A2C
lbl_80114A28:
/* 80114A28 00110348  B9 A3 00 34 */	lmw r13, 0x34(r3)
lbl_80114A2C:
/* 80114A2C 0011034C  7C 7F 1B 78 */	mr r31, r3
/* 80114A30 00110350  7C 83 23 78 */	mr r3, r4
/* 80114A34 00110354  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 80114A38 00110358  7C 8F F1 20 */	mtcrf 0xff, r4
/* 80114A3C 0011035C  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80114A40 00110360  7C 88 03 A6 */	mtlr r4
/* 80114A44 00110364  80 9F 00 88 */	lwz r4, 0x88(r31)
/* 80114A48 00110368  7C 89 03 A6 */	mtctr r4
/* 80114A4C 0011036C  80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 80114A50 00110370  7C 81 03 A6 */	mtxer r4
/* 80114A54 00110374  7C 80 00 A6 */	mfmsr r4
/* 80114A58 00110378  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 80114A5C 0011037C  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 80114A60 00110380  7C 80 01 24 */	mtmsr r4
/* 80114A64 00110384  7C 51 43 A6 */	mtspr 0x111, r2
/* 80114A68 00110388  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80114A6C 0011038C  7C 92 43 A6 */	mtspr 0x112, r4
/* 80114A70 00110390  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80114A74 00110394  7C 93 43 A6 */	mtspr 0x113, r4
/* 80114A78 00110398  80 5F 01 98 */	lwz r2, 0x198(r31)
/* 80114A7C 0011039C  80 9F 01 9C */	lwz r4, 0x19c(r31)
/* 80114A80 001103A0  83 FF 00 7C */	lwz r31, 0x7c(r31)
/* 80114A84 001103A4  48 00 33 24 */	b func_80117DA8

.global func_80114A88
func_80114A88:
/* 80114A88 001103A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80114A8C 001103AC  7C 08 02 A6 */	mflr r0
/* 80114A90 001103B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80114A94 001103B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80114A98 001103B8  7C 9F 23 78 */	mr r31, r4
/* 80114A9C 001103BC  4B FC E0 65 */	bl func_800E2B00
/* 80114AA0 001103C0  7F E3 FB 78 */	mr r3, r31
/* 80114AA4 001103C4  38 80 05 00 */	li r4, 0x500
/* 80114AA8 001103C8  4B FF FF 59 */	bl func_80114A00
/* 80114AAC 001103CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80114AB0 001103D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80114AB4 001103D4  7C 08 03 A6 */	mtlr r0
/* 80114AB8 001103D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80114ABC 001103DC  4E 80 00 20 */	blr 

.global func_80114AC0
func_80114AC0:
/* 80114AC0 001103E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80114AC4 001103E4  7C 08 02 A6 */	mflr r0
/* 80114AC8 001103E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80114ACC 001103EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80114AD0 001103F0  7C 7F 1B 78 */	mr r31, r3
/* 80114AD4 001103F4  7F E4 FB 78 */	mr r4, r31
/* 80114AD8 001103F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80114ADC 001103FC  3F C0 80 30 */	lis r30, lbl_80306388@ha
/* 80114AE0 00110400  38 7E 63 88 */	addi r3, r30, lbl_80306388@l
/* 80114AE4 00110404  4C C6 31 82 */	crclr 6
/* 80114AE8 00110408  4B FC 79 79 */	bl func_800DC460
/* 80114AEC 0011040C  3B DE 63 88 */	addi r30, r30, 0x6388
/* 80114AF0 00110410  38 80 00 40 */	li r4, 0x40
/* 80114AF4 00110414  38 7E 00 15 */	addi r3, r30, 0x15
/* 80114AF8 00110418  4C C6 31 82 */	crclr 6
/* 80114AFC 0011041C  4B FC 79 65 */	bl func_800DC460
/* 80114B00 00110420  2C 1F 00 02 */	cmpwi r31, 2
/* 80114B04 00110424  38 00 00 00 */	li r0, 0
/* 80114B08 00110428  98 0D 9D 08 */	stb r0, lbl_80320BC8-_SDA_BASE_(r13)
/* 80114B0C 0011042C  40 82 00 0C */	bne lbl_80114B18
/* 80114B10 00110430  38 60 00 00 */	li r3, 0
/* 80114B14 00110434  48 00 00 CC */	b lbl_80114BE0
lbl_80114B18:
/* 80114B18 00110438  2C 1F 00 01 */	cmpwi r31, 1
/* 80114B1C 0011043C  40 82 00 98 */	bne lbl_80114BB4
/* 80114B20 00110440  38 7E 00 3A */	addi r3, r30, 0x3a
/* 80114B24 00110444  4C C6 31 82 */	crclr 6
/* 80114B28 00110448  4B FC 79 39 */	bl func_800DC460
/* 80114B2C 0011044C  3C 60 80 37 */	lis r3, lbl_8036A2C0@ha
/* 80114B30 00110450  3F C0 80 11 */	lis r30, func_80113D08@ha
/* 80114B34 00110454  3F E0 80 11 */	lis r31, func_80113D4C@ha
/* 80114B38 00110458  3D 60 80 11 */	lis r11, func_80113D70@ha
/* 80114B3C 0011045C  3D 40 80 11 */	lis r10, func_80113D78@ha
/* 80114B40 00110460  3D 20 80 11 */	lis r9, func_80113E2C@ha
/* 80114B44 00110464  3D 00 80 11 */	lis r8, func_80113D44@ha
/* 80114B48 00110468  3C E0 80 11 */	lis r7, func_80113EE8@ha
/* 80114B4C 0011046C  3C C0 80 11 */	lis r6, func_80113EA0@ha
/* 80114B50 00110470  3C A0 80 11 */	lis r5, func_80113EC4@ha
/* 80114B54 00110474  3C 80 80 11 */	lis r4, func_80113F5C@ha
/* 80114B58 00110478  3B DE 3D 08 */	addi r30, r30, func_80113D08@l
/* 80114B5C 0011047C  39 83 A2 C0 */	addi r12, r3, lbl_8036A2C0@l
/* 80114B60 00110480  3B FF 3D 4C */	addi r31, r31, func_80113D4C@l
/* 80114B64 00110484  39 6B 3D 70 */	addi r11, r11, func_80113D70@l
/* 80114B68 00110488  39 4A 3D 78 */	addi r10, r10, func_80113D78@l
/* 80114B6C 0011048C  39 29 3E 2C */	addi r9, r9, func_80113E2C@l
/* 80114B70 00110490  39 08 3D 44 */	addi r8, r8, func_80113D44@l
/* 80114B74 00110494  38 E7 3E E8 */	addi r7, r7, func_80113EE8@l
/* 80114B78 00110498  38 C6 3E A0 */	addi r6, r6, func_80113EA0@l
/* 80114B7C 0011049C  38 A5 3E C4 */	addi r5, r5, func_80113EC4@l
/* 80114B80 001104A0  38 84 3F 5C */	addi r4, r4, func_80113F5C@l
/* 80114B84 001104A4  93 C3 A2 C0 */	stw r30, -0x5d40(r3)
/* 80114B88 001104A8  38 60 00 00 */	li r3, 0
/* 80114B8C 001104AC  93 EC 00 18 */	stw r31, 0x18(r12)
/* 80114B90 001104B0  91 6C 00 1C */	stw r11, 0x1c(r12)
/* 80114B94 001104B4  91 4C 00 10 */	stw r10, 0x10(r12)
/* 80114B98 001104B8  91 2C 00 14 */	stw r9, 0x14(r12)
/* 80114B9C 001104BC  91 0C 00 08 */	stw r8, 8(r12)
/* 80114BA0 001104C0  90 EC 00 0C */	stw r7, 0xc(r12)
/* 80114BA4 001104C4  90 CC 00 20 */	stw r6, 0x20(r12)
/* 80114BA8 001104C8  90 AC 00 24 */	stw r5, 0x24(r12)
/* 80114BAC 001104CC  90 8C 00 04 */	stw r4, 4(r12)
/* 80114BB0 001104D0  48 00 00 30 */	b lbl_80114BE0
lbl_80114BB4:
/* 80114BB4 001104D4  7F E4 FB 78 */	mr r4, r31
/* 80114BB8 001104D8  38 7E 00 5B */	addi r3, r30, 0x5b
/* 80114BBC 001104DC  4C C6 31 82 */	crclr 6
/* 80114BC0 001104E0  4B FC 78 A1 */	bl func_800DC460
/* 80114BC4 001104E4  38 7E 00 86 */	addi r3, r30, 0x86
/* 80114BC8 001104E8  4C C6 31 82 */	crclr 6
/* 80114BCC 001104EC  4B FC 78 95 */	bl func_800DC460
/* 80114BD0 001104F0  38 7E 00 B5 */	addi r3, r30, 0xb5
/* 80114BD4 001104F4  4C C6 31 82 */	crclr 6
/* 80114BD8 001104F8  4B FC 78 89 */	bl func_800DC460
/* 80114BDC 001104FC  38 60 00 01 */	li r3, 1
lbl_80114BE0:
/* 80114BE0 00110500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80114BE4 00110504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80114BE8 00110508  83 C1 00 08 */	lwz r30, 8(r1)
/* 80114BEC 0011050C  7C 08 03 A6 */	mtlr r0
/* 80114BF0 00110510  38 21 00 10 */	addi r1, r1, 0x10
/* 80114BF4 00110514  4E 80 00 20 */	blr 

.global func_80114BF8
func_80114BF8:
/* 80114BF8 00110518  4E 80 00 20 */	blr 

.global func_80114BFC
func_80114BFC:
/* 80114BFC 0011051C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80114C00 00110520  7C 08 02 A6 */	mflr r0
/* 80114C04 00110524  3C 80 80 11 */	lis r4, func_80114A88@ha
/* 80114C08 00110528  7C A3 2B 78 */	mr r3, r5
/* 80114C0C 0011052C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80114C10 00110530  38 84 4A 88 */	addi r4, r4, func_80114A88@l
/* 80114C14 00110534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80114C18 00110538  3F E0 80 37 */	lis r31, lbl_8036A2C0@ha
/* 80114C1C 0011053C  81 9F A2 C0 */	lwz r12, lbl_8036A2C0@l(r31)
/* 80114C20 00110540  7D 89 03 A6 */	mtctr r12
/* 80114C24 00110544  4E 80 04 21 */	bctrl 
/* 80114C28 00110548  38 7F A2 C0 */	addi r3, r31, -23872
/* 80114C2C 0011054C  81 83 00 18 */	lwz r12, 0x18(r3)
/* 80114C30 00110550  7D 89 03 A6 */	mtctr r12
/* 80114C34 00110554  4E 80 04 21 */	bctrl 
/* 80114C38 00110558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80114C3C 0011055C  38 60 00 00 */	li r3, 0
/* 80114C40 00110560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80114C44 00110564  7C 08 03 A6 */	mtlr r0
/* 80114C48 00110568  38 21 00 10 */	addi r1, r1, 0x10
/* 80114C4C 0011056C  4E 80 00 20 */	blr 

.global func_80114C50
func_80114C50:
/* 80114C50 00110570  88 0D 9D 08 */	lbz r0, lbl_80320BC8-_SDA_BASE_(r13)
/* 80114C54 00110574  2C 00 00 00 */	cmpwi r0, 0
/* 80114C58 00110578  4C 82 00 20 */	bnelr 
/* 80114C5C 0011057C  3C 60 80 37 */	lis r3, lbl_8036A2C0@ha
/* 80114C60 00110580  38 63 A2 C0 */	addi r3, r3, lbl_8036A2C0@l
/* 80114C64 00110584  81 83 00 04 */	lwz r12, 4(r3)
/* 80114C68 00110588  2C 0C 00 00 */	cmpwi r12, 0
/* 80114C6C 0011058C  4D 82 00 20 */	beqlr 
/* 80114C70 00110590  7D 89 03 A6 */	mtctr r12
/* 80114C74 00110594  4E 80 04 20 */	bctr 
/* 80114C78 00110598  4E 80 00 20 */	blr 

.global func_80114C7C
func_80114C7C:
/* 80114C7C 0011059C  3C 60 80 37 */	lis r3, lbl_8036A2C0@ha
/* 80114C80 001105A0  38 63 A2 C0 */	addi r3, r3, lbl_8036A2C0@l
/* 80114C84 001105A4  81 83 00 0C */	lwz r12, 0xc(r3)
/* 80114C88 001105A8  7D 89 03 A6 */	mtctr r12
/* 80114C8C 001105AC  4E 80 04 20 */	bctr 

.global func_80114C90
func_80114C90:
/* 80114C90 001105B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80114C94 001105B4  7C 08 02 A6 */	mflr r0
/* 80114C98 001105B8  3C A0 80 37 */	lis r5, lbl_8036A2C0@ha
/* 80114C9C 001105BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80114CA0 001105C0  38 A5 A2 C0 */	addi r5, r5, lbl_8036A2C0@l
/* 80114CA4 001105C4  81 85 00 10 */	lwz r12, 0x10(r5)
/* 80114CA8 001105C8  7D 89 03 A6 */	mtctr r12
/* 80114CAC 001105CC  4E 80 04 21 */	bctrl 
/* 80114CB0 001105D0  7C 03 00 D0 */	neg r0, r3
/* 80114CB4 001105D4  7C 00 1B 78 */	or r0, r0, r3
/* 80114CB8 001105D8  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 80114CBC 001105DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80114CC0 001105E0  7C 08 03 A6 */	mtlr r0
/* 80114CC4 001105E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80114CC8 001105E8  4E 80 00 20 */	blr 

.global func_80114CCC
func_80114CCC:
/* 80114CCC 001105EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80114CD0 001105F0  7C 08 02 A6 */	mflr r0
/* 80114CD4 001105F4  3C A0 80 37 */	lis r5, lbl_8036A2C0@ha
/* 80114CD8 001105F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80114CDC 001105FC  38 A5 A2 C0 */	addi r5, r5, lbl_8036A2C0@l
/* 80114CE0 00110600  81 85 00 14 */	lwz r12, 0x14(r5)
/* 80114CE4 00110604  7D 89 03 A6 */	mtctr r12
/* 80114CE8 00110608  4E 80 04 21 */	bctrl 
/* 80114CEC 0011060C  7C 03 00 D0 */	neg r0, r3
/* 80114CF0 00110610  7C 00 1B 78 */	or r0, r0, r3
/* 80114CF4 00110614  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 80114CF8 00110618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80114CFC 0011061C  7C 08 03 A6 */	mtlr r0
/* 80114D00 00110620  38 21 00 10 */	addi r1, r1, 0x10
/* 80114D04 00110624  4E 80 00 20 */	blr 

.global func_80114D08
func_80114D08:
/* 80114D08 00110628  3C 60 80 37 */	lis r3, lbl_8036A2C0@ha
/* 80114D0C 0011062C  38 63 A2 C0 */	addi r3, r3, lbl_8036A2C0@l
/* 80114D10 00110630  81 83 00 24 */	lwz r12, 0x24(r3)
/* 80114D14 00110634  7D 89 03 A6 */	mtctr r12
/* 80114D18 00110638  4E 80 04 20 */	bctr 

.global func_80114D1C
func_80114D1C:
/* 80114D1C 0011063C  3C 60 80 37 */	lis r3, lbl_8036A2C0@ha
/* 80114D20 00110640  38 63 A2 C0 */	addi r3, r3, lbl_8036A2C0@l
/* 80114D24 00110644  81 83 00 20 */	lwz r12, 0x20(r3)
/* 80114D28 00110648  7D 89 03 A6 */	mtctr r12
/* 80114D2C 0011064C  4E 80 04 20 */	bctr 

.global func_80114D30
func_80114D30:
/* 80114D30 00110650  3C A0 80 30 */	lis r5, lbl_80306388@ha
/* 80114D34 00110654  7C 64 1B 78 */	mr r4, r3
/* 80114D38 00110658  38 A5 63 88 */	addi r5, r5, lbl_80306388@l
/* 80114D3C 0011065C  38 65 00 DD */	addi r3, r5, 0xdd
/* 80114D40 00110660  4C C6 31 82 */	crclr 6
/* 80114D44 00110664  4B FC 77 1C */	b func_800DC460

.global func_80114D48
func_80114D48:
/* 80114D48 00110668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80114D4C 0011066C  7C 08 02 A6 */	mflr r0
/* 80114D50 00110670  38 82 FE 90 */	addi r4, r2, lbl_80328E70-_SDA2_BASE_
/* 80114D54 00110674  38 A0 00 04 */	li r5, 4
/* 80114D58 00110678  90 01 00 14 */	stw r0, 0x14(r1)
/* 80114D5C 0011067C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80114D60 00110680  3F E0 80 0E */	lis r31, func_800D8E50@ha
/* 80114D64 00110684  3B FF 8E 50 */	addi r31, r31, func_800D8E50@l
/* 80114D68 00110688  38 7F 00 04 */	addi r3, r31, 4
/* 80114D6C 0011068C  4B FF F5 ED */	bl func_80114358
/* 80114D70 00110690  38 7F 00 04 */	addi r3, r31, 4
/* 80114D74 00110694  38 80 00 04 */	li r4, 4
/* 80114D78 00110698  4B FC 6A 19 */	bl func_800DB790
/* 80114D7C 0011069C  38 7F 00 04 */	addi r3, r31, 4
/* 80114D80 001106A0  38 80 00 04 */	li r4, 4
/* 80114D84 001106A4  4B FC 69 4D */	bl func_800DB6D0
/* 80114D88 001106A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80114D8C 001106AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80114D90 001106B0  7C 08 03 A6 */	mtlr r0
/* 80114D94 001106B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80114D98 001106B8  4E 80 00 20 */	blr 



.section .data, "wa"  # 0x802F17E0 - 0x80315F30

.global lbl_80306388

lbl_80306388:

	# ROM: 0x302488
	.asciz "Devkit set to : %ld\n"
	.asciz "MetroTRK : Sizeof Reply - %ld bytes\n"
	.asciz "MetroTRK : Set to NDEV hardware\n"
	.asciz "MetroTRK : Set to UNKNOWN hardware. (%ld)\n"
	.asciz "MetroTRK : Invalid hardware ID passed from OS\n"
	.asciz "MetroTRK : Defaulting to GDEV Hardware\n"
	.asciz "%s\n"
	.balign 4, 0
	.4byte 0



.section .sbss, "wa"  # 0x803205F0 - 0x80320F80

.global lbl_80320BC8
lbl_80320BC8:
	.skip 0x8



.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_80328E70

lbl_80328E70:

	# ROM: 0x3240D0
	.ascii "\x0\END"
	.4byte 0



.section .bss, "wa" # 0x8034C9C0 - 0x803D5C28

.global lbl_8036A2C0
lbl_8036A2C0:
	.skip 0x28