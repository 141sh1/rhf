.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800FEA90
func_800FEA90:
/* 800FEA90 000FA3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FEA94 000FA3B4  7C 08 02 A6 */	mflr r0
/* 800FEA98 000FA3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FEA9C 000FA3BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FEAA0 000FA3C0  83 E2 F9 70 */	lwz r31, lbl_80328950-_SDA2_BASE_(r2)
/* 800FEAA4 000FA3C4  93 C1 00 08 */	stw r30, 8(r1)
/* 800FEAA8 000FA3C8  83 DF 05 FC */	lwz r30, 0x5fc(r31)
/* 800FEAAC 000FA3CC  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 800FEAB0 000FA3D0  41 82 00 08 */	beq lbl_800FEAB8
/* 800FEAB4 000FA3D4  48 00 25 4D */	bl func_80101000
lbl_800FEAB8:
/* 800FEAB8 000FA3D8  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 800FEABC 000FA3DC  41 82 00 08 */	beq lbl_800FEAC4
/* 800FEAC0 000FA3E0  48 00 2D F1 */	bl func_801018B0
lbl_800FEAC4:
/* 800FEAC4 000FA3E4  57 C0 07 7B */	rlwinm. r0, r30, 0, 0x1d, 0x1d
/* 800FEAC8 000FA3E8  41 82 00 24 */	beq lbl_800FEAEC
/* 800FEACC 000FA3EC  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800FEAD0 000FA3F0  38 00 00 61 */	li r0, 0x61
/* 800FEAD4 000FA3F4  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800FEAD8 000FA3F8  38 00 00 00 */	li r0, 0
/* 800FEADC 000FA3FC  80 A2 F9 70 */	lwz r5, lbl_80328950-_SDA2_BASE_(r2)
/* 800FEAE0 000FA400  80 65 02 54 */	lwz r3, 0x254(r5)
/* 800FEAE4 000FA404  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800FEAE8 000FA408  B0 05 00 02 */	sth r0, 2(r5)
lbl_800FEAEC:
/* 800FEAEC 000FA40C  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 800FEAF0 000FA410  41 82 00 08 */	beq lbl_800FEAF8
/* 800FEAF4 000FA414  4B FF EE 1D */	bl func_800FD910
lbl_800FEAF8:
/* 800FEAF8 000FA418  57 C0 06 F7 */	rlwinm. r0, r30, 0, 0x1b, 0x1b
/* 800FEAFC 000FA41C  41 82 00 08 */	beq lbl_800FEB04
/* 800FEB00 000FA420  4B FF F3 A1 */	bl func_800FDEA0
lbl_800FEB04:
/* 800FEB04 000FA424  57 C0 06 F9 */	rlwinm. r0, r30, 0, 0x1b, 0x1c
/* 800FEB08 000FA428  41 82 00 08 */	beq lbl_800FEB10
/* 800FEB0C 000FA42C  4B FF EE B5 */	bl func_800FD9C0
lbl_800FEB10:
/* 800FEB10 000FA430  57 DE 00 2F */	rlwinm. r30, r30, 0, 0, 0x17
/* 800FEB14 000FA434  41 82 01 DC */	beq lbl_800FECF0
/* 800FEB18 000FA438  57 C4 05 2F */	rlwinm. r4, r30, 0, 0x14, 0x17
/* 800FEB1C 000FA43C  41 82 00 94 */	beq lbl_800FEBB0
/* 800FEB20 000FA440  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 800FEB24 000FA444  41 82 00 20 */	beq lbl_800FEB44
/* 800FEB28 000FA448  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800FEB2C 000FA44C  38 00 00 10 */	li r0, 0x10
/* 800FEB30 000FA450  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800FEB34 000FA454  38 00 10 0A */	li r0, 0x100a
/* 800FEB38 000FA458  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FEB3C 000FA45C  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 800FEB40 000FA460  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_800FEB44:
/* 800FEB44 000FA464  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 800FEB48 000FA468  41 82 00 20 */	beq lbl_800FEB68
/* 800FEB4C 000FA46C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800FEB50 000FA470  38 00 00 10 */	li r0, 0x10
/* 800FEB54 000FA474  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800FEB58 000FA478  38 00 10 0B */	li r0, 0x100b
/* 800FEB5C 000FA47C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FEB60 000FA480  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 800FEB64 000FA484  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_800FEB68:
/* 800FEB68 000FA488  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 800FEB6C 000FA48C  41 82 00 20 */	beq lbl_800FEB8C
/* 800FEB70 000FA490  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800FEB74 000FA494  38 00 00 10 */	li r0, 0x10
/* 800FEB78 000FA498  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800FEB7C 000FA49C  38 00 10 0C */	li r0, 0x100c
/* 800FEB80 000FA4A0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FEB84 000FA4A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 800FEB88 000FA4A8  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_800FEB8C:
/* 800FEB8C 000FA4AC  54 80 05 29 */	rlwinm. r0, r4, 0, 0x14, 0x14
/* 800FEB90 000FA4B0  41 82 00 20 */	beq lbl_800FEBB0
/* 800FEB94 000FA4B4  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800FEB98 000FA4B8  38 00 00 10 */	li r0, 0x10
/* 800FEB9C 000FA4BC  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800FEBA0 000FA4C0  38 00 10 0D */	li r0, 0x100d
/* 800FEBA4 000FA4C4  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FEBA8 000FA4C8  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 800FEBAC 000FA4CC  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_800FEBB0:
/* 800FEBB0 000FA4D0  57 C7 01 CE */	rlwinm r7, r30, 0, 7, 7
/* 800FEBB4 000FA4D4  53 C7 04 27 */	rlwimi. r7, r30, 0, 0x10, 0x13
/* 800FEBB8 000FA4D8  41 82 00 74 */	beq lbl_800FEC2C
/* 800FEBBC 000FA4DC  54 E0 01 CF */	rlwinm. r0, r7, 0, 7, 7
/* 800FEBC0 000FA4E0  38 C0 10 0E */	li r6, 0x100e
/* 800FEBC4 000FA4E4  41 82 00 24 */	beq lbl_800FEBE8
/* 800FEBC8 000FA4E8  80 BF 02 54 */	lwz r5, 0x254(r31)
/* 800FEBCC 000FA4EC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800FEBD0 000FA4F0  38 80 00 10 */	li r4, 0x10
/* 800FEBD4 000FA4F4  38 00 10 09 */	li r0, 0x1009
/* 800FEBD8 000FA4F8  98 83 80 00 */	stb r4, 0xCC008000@l(r3)
/* 800FEBDC 000FA4FC  54 A4 E7 7E */	rlwinm r4, r5, 0x1c, 0x1d, 0x1f
/* 800FEBE0 000FA500  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FEBE4 000FA504  90 83 80 00 */	stw r4, -0x8000(r3)
lbl_800FEBE8:
/* 800FEBE8 000FA508  7F E5 FB 78 */	mr r5, r31
/* 800FEBEC 000FA50C  54 E7 A7 3E */	rlwinm r7, r7, 0x14, 0x1c, 0x1f
/* 800FEBF0 000FA510  38 80 00 10 */	li r4, 0x10
/* 800FEBF4 000FA514  3C 60 CC 01 */	lis r3, 0xcc01
/* 800FEBF8 000FA518  48 00 00 2C */	b lbl_800FEC24
/* 800FEBFC 000FA51C  60 00 00 00 */	nop 
lbl_800FEC00:
/* 800FEC00 000FA520  54 E0 07 FF */	clrlwi. r0, r7, 0x1f
/* 800FEC04 000FA524  41 82 00 14 */	beq lbl_800FEC18
/* 800FEC08 000FA528  98 83 80 00 */	stb r4, -0x8000(r3)
/* 800FEC0C 000FA52C  90 C3 80 00 */	stw r6, -0x8000(r3)
/* 800FEC10 000FA530  80 05 00 B8 */	lwz r0, 0xb8(r5)
/* 800FEC14 000FA534  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_800FEC18:
/* 800FEC18 000FA538  54 E7 F8 7E */	srwi r7, r7, 1
/* 800FEC1C 000FA53C  38 A5 00 04 */	addi r5, r5, 4
/* 800FEC20 000FA540  38 C6 00 01 */	addi r6, r6, 1
lbl_800FEC24:
/* 800FEC24 000FA544  2C 07 00 00 */	cmpwi r7, 0
/* 800FEC28 000FA548  40 82 FF D8 */	bne lbl_800FEC00
lbl_800FEC2C:
/* 800FEC2C 000FA54C  77 C8 02 FF */	andis. r8, r30, 0x2ff
/* 800FEC30 000FA550  41 82 00 88 */	beq lbl_800FECB8
/* 800FEC34 000FA554  55 00 01 8D */	rlwinm. r0, r8, 0, 6, 6
/* 800FEC38 000FA558  38 C0 10 40 */	li r6, 0x1040
/* 800FEC3C 000FA55C  41 82 00 24 */	beq lbl_800FEC60
/* 800FEC40 000FA560  80 BF 02 54 */	lwz r5, 0x254(r31)
/* 800FEC44 000FA564  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800FEC48 000FA568  38 80 00 10 */	li r4, 0x10
/* 800FEC4C 000FA56C  38 00 10 3F */	li r0, 0x103f
/* 800FEC50 000FA570  98 83 80 00 */	stb r4, 0xCC008000@l(r3)
/* 800FEC54 000FA574  54 A4 07 3E */	clrlwi r4, r5, 0x1c
/* 800FEC58 000FA578  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FEC5C 000FA57C  90 83 80 00 */	stw r4, -0x8000(r3)
lbl_800FEC60:
/* 800FEC60 000FA580  7F E7 FB 78 */	mr r7, r31
/* 800FEC64 000FA584  55 08 86 3E */	rlwinm r8, r8, 0x10, 0x18, 0x1f
/* 800FEC68 000FA588  38 80 00 10 */	li r4, 0x10
/* 800FEC6C 000FA58C  3C 60 CC 01 */	lis r3, 0xcc01
/* 800FEC70 000FA590  48 00 00 40 */	b lbl_800FECB0
/* 800FEC74 000FA594  60 00 00 00 */	nop 
lbl_800FEC78:
/* 800FEC78 000FA598  55 00 07 FF */	clrlwi. r0, r8, 0x1f
/* 800FEC7C 000FA59C  38 A6 00 10 */	addi r5, r6, 0x10
/* 800FEC80 000FA5A0  41 82 00 24 */	beq lbl_800FECA4
/* 800FEC84 000FA5A4  98 83 80 00 */	stb r4, -0x8000(r3)
/* 800FEC88 000FA5A8  90 C3 80 00 */	stw r6, -0x8000(r3)
/* 800FEC8C 000FA5AC  80 07 00 C8 */	lwz r0, 0xc8(r7)
/* 800FEC90 000FA5B0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800FEC94 000FA5B4  98 83 80 00 */	stb r4, -0x8000(r3)
/* 800FEC98 000FA5B8  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 800FEC9C 000FA5BC  80 07 00 E8 */	lwz r0, 0xe8(r7)
/* 800FECA0 000FA5C0  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_800FECA4:
/* 800FECA4 000FA5C4  55 08 F8 7E */	srwi r8, r8, 1
/* 800FECA8 000FA5C8  38 C6 00 01 */	addi r6, r6, 1
/* 800FECAC 000FA5CC  38 E7 00 04 */	addi r7, r7, 4
lbl_800FECB0:
/* 800FECB0 000FA5D0  2C 08 00 00 */	cmpwi r8, 0
/* 800FECB4 000FA5D4  40 82 FF C4 */	bne lbl_800FEC78
lbl_800FECB8:
/* 800FECB8 000FA5D8  57 C0 01 4B */	rlwinm. r0, r30, 0, 5, 5
/* 800FECBC 000FA5DC  41 82 00 14 */	beq lbl_800FECD0
/* 800FECC0 000FA5E0  38 60 00 00 */	li r3, 0
/* 800FECC4 000FA5E4  48 00 40 7D */	bl func_80102D40
/* 800FECC8 000FA5E8  38 60 00 05 */	li r3, 5
/* 800FECCC 000FA5EC  48 00 40 75 */	bl func_80102D40
lbl_800FECD0:
/* 800FECD0 000FA5F0  57 C0 00 C7 */	rlwinm. r0, r30, 0, 3, 3
/* 800FECD4 000FA5F4  41 82 00 08 */	beq lbl_800FECDC
/* 800FECD8 000FA5F8  48 00 3D E9 */	bl func_80102AC0
lbl_800FECDC:
/* 800FECDC 000FA5FC  57 C0 01 09 */	rlwinm. r0, r30, 0, 4, 4
/* 800FECE0 000FA600  41 82 00 08 */	beq lbl_800FECE8
/* 800FECE4 000FA604  48 00 3B 3D */	bl func_80102820
lbl_800FECE8:
/* 800FECE8 000FA608  38 00 00 01 */	li r0, 1
/* 800FECEC 000FA60C  B0 1F 00 02 */	sth r0, 2(r31)
lbl_800FECF0:
/* 800FECF0 000FA610  38 00 00 00 */	li r0, 0
/* 800FECF4 000FA614  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 800FECF8 000FA618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FECFC 000FA61C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FED00 000FA620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FED04 000FA624  7C 08 03 A6 */	mtlr r0
/* 800FED08 000FA628  38 21 00 10 */	addi r1, r1, 0x10
/* 800FED0C 000FA62C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FED10
func_800FED10:
/* 800FED10 000FA630  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FED14 000FA634  7C 08 02 A6 */	mflr r0
/* 800FED18 000FA638  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FED1C 000FA63C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FED20 000FA640  83 E2 F9 70 */	lwz r31, lbl_80328950-_SDA2_BASE_(r2)
/* 800FED24 000FA644  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FED28 000FA648  7C BE 2B 78 */	mr r30, r5
/* 800FED2C 000FA64C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800FED30 000FA650  7C 9D 23 78 */	mr r29, r4
/* 800FED34 000FA654  93 81 00 10 */	stw r28, 0x10(r1)
/* 800FED38 000FA658  7C 7C 1B 78 */	mr r28, r3
/* 800FED3C 000FA65C  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 800FED40 000FA660  2C 00 00 00 */	cmpwi r0, 0
/* 800FED44 000FA664  41 82 00 08 */	beq lbl_800FED4C
/* 800FED48 000FA668  4B FF FD 49 */	bl func_800FEA90
lbl_800FED4C:
/* 800FED4C 000FA66C  80 1F 00 00 */	lwz r0, 0(r31)
/* 800FED50 000FA670  2C 00 00 00 */	cmpwi r0, 0
/* 800FED54 000FA674  40 82 00 D8 */	bne lbl_800FEE2C
/* 800FED58 000FA678  80 E2 F9 70 */	lwz r7, lbl_80328950-_SDA2_BASE_(r2)
/* 800FED5C 000FA67C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800FED60 000FA680  38 00 00 98 */	li r0, 0x98
/* 800FED64 000FA684  38 C0 00 00 */	li r6, 0
/* 800FED68 000FA688  A0 A7 00 04 */	lhz r5, 4(r7)
/* 800FED6C 000FA68C  A0 87 00 06 */	lhz r4, 6(r7)
/* 800FED70 000FA690  7C A5 21 D7 */	mullw. r5, r5, r4
/* 800FED74 000FA694  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800FED78 000FA698  A0 07 00 04 */	lhz r0, 4(r7)
/* 800FED7C 000FA69C  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 800FED80 000FA6A0  41 82 00 A4 */	beq lbl_800FEE24
/* 800FED84 000FA6A4  38 65 00 03 */	addi r3, r5, 3
/* 800FED88 000FA6A8  38 E5 FF E0 */	addi r7, r5, -32
/* 800FED8C 000FA6AC  54 60 F0 BE */	srwi r0, r3, 2
/* 800FED90 000FA6B0  28 00 00 08 */	cmplwi r0, 8
/* 800FED94 000FA6B4  40 81 00 68 */	ble lbl_800FEDFC
/* 800FED98 000FA6B8  28 03 00 03 */	cmplwi r3, 3
/* 800FED9C 000FA6BC  38 00 00 00 */	li r0, 0
/* 800FEDA0 000FA6C0  41 80 00 10 */	blt lbl_800FEDB0
/* 800FEDA4 000FA6C4  7C 05 18 40 */	cmplw r5, r3
/* 800FEDA8 000FA6C8  41 81 00 08 */	bgt lbl_800FEDB0
/* 800FEDAC 000FA6CC  38 00 00 01 */	li r0, 1
lbl_800FEDB0:
/* 800FEDB0 000FA6D0  2C 00 00 00 */	cmpwi r0, 0
/* 800FEDB4 000FA6D4  41 82 00 48 */	beq lbl_800FEDFC
/* 800FEDB8 000FA6D8  38 07 00 1F */	addi r0, r7, 0x1f
/* 800FEDBC 000FA6DC  38 80 00 00 */	li r4, 0
/* 800FEDC0 000FA6E0  54 00 D9 7E */	srwi r0, r0, 5
/* 800FEDC4 000FA6E4  3C 60 CC 01 */	lis r3, 0xcc01
/* 800FEDC8 000FA6E8  7C 09 03 A6 */	mtctr r0
/* 800FEDCC 000FA6EC  28 07 00 00 */	cmplwi r7, 0
/* 800FEDD0 000FA6F0  40 81 00 2C */	ble lbl_800FEDFC
lbl_800FEDD4:
/* 800FEDD4 000FA6F4  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEDD8 000FA6F8  38 C6 00 20 */	addi r6, r6, 0x20
/* 800FEDDC 000FA6FC  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEDE0 000FA700  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEDE4 000FA704  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEDE8 000FA708  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEDEC 000FA70C  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEDF0 000FA710  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEDF4 000FA714  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEDF8 000FA718  42 00 FF DC */	bdnz lbl_800FEDD4
lbl_800FEDFC:
/* 800FEDFC 000FA71C  38 05 00 03 */	addi r0, r5, 3
/* 800FEE00 000FA720  38 80 00 00 */	li r4, 0
/* 800FEE04 000FA724  7C 06 00 50 */	subf r0, r6, r0
/* 800FEE08 000FA728  3C 60 CC 01 */	lis r3, 0xcc01
/* 800FEE0C 000FA72C  54 00 F0 BE */	srwi r0, r0, 2
/* 800FEE10 000FA730  7C 09 03 A6 */	mtctr r0
/* 800FEE14 000FA734  7C 06 28 40 */	cmplw r6, r5
/* 800FEE18 000FA738  40 80 00 0C */	bge lbl_800FEE24
lbl_800FEE1C:
/* 800FEE1C 000FA73C  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEE20 000FA740  42 00 FF FC */	bdnz lbl_800FEE1C
lbl_800FEE24:
/* 800FEE24 000FA744  38 00 00 01 */	li r0, 1
/* 800FEE28 000FA748  B0 1F 00 02 */	sth r0, 2(r31)
lbl_800FEE2C:
/* 800FEE2C 000FA74C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800FEE30 000FA750  7F A0 E3 78 */	or r0, r29, r28
/* 800FEE34 000FA754  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800FEE38 000FA758  B3 C3 80 00 */	sth r30, -0x8000(r3)
/* 800FEE3C 000FA75C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FEE40 000FA760  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FEE44 000FA764  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FEE48 000FA768  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800FEE4C 000FA76C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800FEE50 000FA770  7C 08 03 A6 */	mtlr r0
/* 800FEE54 000FA774  38 21 00 20 */	addi r1, r1, 0x20
/* 800FEE58 000FA778  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FEE60
func_800FEE60:
/* 800FEE60 000FA780  80 C2 F9 70 */	lwz r6, lbl_80328950-_SDA2_BASE_(r2)
/* 800FEE64 000FA784  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800FEE68 000FA788  38 00 00 98 */	li r0, 0x98
/* 800FEE6C 000FA78C  38 E0 00 00 */	li r7, 0
/* 800FEE70 000FA790  A0 A6 00 04 */	lhz r5, 4(r6)
/* 800FEE74 000FA794  A0 86 00 06 */	lhz r4, 6(r6)
/* 800FEE78 000FA798  7D 05 21 D7 */	mullw. r8, r5, r4
/* 800FEE7C 000FA79C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800FEE80 000FA7A0  A0 06 00 04 */	lhz r0, 4(r6)
/* 800FEE84 000FA7A4  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 800FEE88 000FA7A8  41 82 00 A4 */	beq lbl_800FEF2C
/* 800FEE8C 000FA7AC  38 68 00 03 */	addi r3, r8, 3
/* 800FEE90 000FA7B0  38 A8 FF E0 */	addi r5, r8, -32
/* 800FEE94 000FA7B4  54 60 F0 BE */	srwi r0, r3, 2
/* 800FEE98 000FA7B8  28 00 00 08 */	cmplwi r0, 8
/* 800FEE9C 000FA7BC  40 81 00 68 */	ble lbl_800FEF04
/* 800FEEA0 000FA7C0  28 03 00 03 */	cmplwi r3, 3
/* 800FEEA4 000FA7C4  38 00 00 00 */	li r0, 0
/* 800FEEA8 000FA7C8  41 80 00 10 */	blt lbl_800FEEB8
/* 800FEEAC 000FA7CC  7C 08 18 40 */	cmplw r8, r3
/* 800FEEB0 000FA7D0  41 81 00 08 */	bgt lbl_800FEEB8
/* 800FEEB4 000FA7D4  38 00 00 01 */	li r0, 1
lbl_800FEEB8:
/* 800FEEB8 000FA7D8  2C 00 00 00 */	cmpwi r0, 0
/* 800FEEBC 000FA7DC  41 82 00 48 */	beq lbl_800FEF04
/* 800FEEC0 000FA7E0  38 05 00 1F */	addi r0, r5, 0x1f
/* 800FEEC4 000FA7E4  38 80 00 00 */	li r4, 0
/* 800FEEC8 000FA7E8  54 00 D9 7E */	srwi r0, r0, 5
/* 800FEECC 000FA7EC  3C 60 CC 01 */	lis r3, 0xcc01
/* 800FEED0 000FA7F0  7C 09 03 A6 */	mtctr r0
/* 800FEED4 000FA7F4  28 05 00 00 */	cmplwi r5, 0
/* 800FEED8 000FA7F8  40 81 00 2C */	ble lbl_800FEF04
lbl_800FEEDC:
/* 800FEEDC 000FA7FC  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEEE0 000FA800  38 E7 00 20 */	addi r7, r7, 0x20
/* 800FEEE4 000FA804  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEEE8 000FA808  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEEEC 000FA80C  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEEF0 000FA810  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEEF4 000FA814  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEEF8 000FA818  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEEFC 000FA81C  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEF00 000FA820  42 00 FF DC */	bdnz lbl_800FEEDC
lbl_800FEF04:
/* 800FEF04 000FA824  38 08 00 03 */	addi r0, r8, 3
/* 800FEF08 000FA828  38 80 00 00 */	li r4, 0
/* 800FEF0C 000FA82C  7C 07 00 50 */	subf r0, r7, r0
/* 800FEF10 000FA830  3C 60 CC 01 */	lis r3, 0xcc01
/* 800FEF14 000FA834  54 00 F0 BE */	srwi r0, r0, 2
/* 800FEF18 000FA838  7C 09 03 A6 */	mtctr r0
/* 800FEF1C 000FA83C  7C 07 40 40 */	cmplw r7, r8
/* 800FEF20 000FA840  40 80 00 0C */	bge lbl_800FEF2C
lbl_800FEF24:
/* 800FEF24 000FA844  90 83 80 00 */	stw r4, -0x8000(r3)
/* 800FEF28 000FA848  42 00 FF FC */	bdnz lbl_800FEF24
lbl_800FEF2C:
/* 800FEF2C 000FA84C  38 00 00 01 */	li r0, 1
/* 800FEF30 000FA850  B0 06 00 02 */	sth r0, 2(r6)
/* 800FEF34 000FA854  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FEF40
func_800FEF40:
/* 800FEF40 000FA860  81 02 F9 70 */	lwz r8, lbl_80328950-_SDA2_BASE_(r2)
/* 800FEF44 000FA864  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800FEF48 000FA868  38 C0 00 61 */	li r6, 0x61
/* 800FEF4C 000FA86C  38 00 00 00 */	li r0, 0
/* 800FEF50 000FA870  80 E8 00 7C */	lwz r7, 0x7c(r8)
/* 800FEF54 000FA874  50 67 06 3E */	rlwimi r7, r3, 0, 0x18, 0x1f
/* 800FEF58 000FA878  50 87 83 5E */	rlwimi r7, r4, 0x10, 0xd, 0xf
/* 800FEF5C 000FA87C  90 E8 00 7C */	stw r7, 0x7c(r8)
/* 800FEF60 000FA880  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 800FEF64 000FA884  80 68 00 7C */	lwz r3, 0x7c(r8)
/* 800FEF68 000FA888  90 65 80 00 */	stw r3, -0x8000(r5)
/* 800FEF6C 000FA88C  B0 08 00 02 */	sth r0, 2(r8)
/* 800FEF70 000FA890  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FEF80
func_800FEF80:
/* 800FEF80 000FA8A0  81 02 F9 70 */	lwz r8, lbl_80328950-_SDA2_BASE_(r2)
/* 800FEF84 000FA8A4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800FEF88 000FA8A8  38 C0 00 61 */	li r6, 0x61
/* 800FEF8C 000FA8AC  38 00 00 00 */	li r0, 0
/* 800FEF90 000FA8B0  80 E8 00 7C */	lwz r7, 0x7c(r8)
/* 800FEF94 000FA8B4  50 67 44 2E */	rlwimi r7, r3, 8, 0x10, 0x17
/* 800FEF98 000FA8B8  50 87 9A 98 */	rlwimi r7, r4, 0x13, 0xa, 0xc
/* 800FEF9C 000FA8BC  90 E8 00 7C */	stw r7, 0x7c(r8)
/* 800FEFA0 000FA8C0  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 800FEFA4 000FA8C4  80 68 00 7C */	lwz r3, 0x7c(r8)
/* 800FEFA8 000FA8C8  90 65 80 00 */	stw r3, -0x8000(r5)
/* 800FEFAC 000FA8CC  B0 08 00 02 */	sth r0, 2(r8)
/* 800FEFB0 000FA8D0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FEFC0
func_800FEFC0:
/* 800FEFC0 000FA8E0  81 22 F9 70 */	lwz r9, lbl_80328950-_SDA2_BASE_(r2)
/* 800FEFC4 000FA8E4  54 60 10 3A */	slwi r0, r3, 2
/* 800FEFC8 000FA8E8  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 800FEFCC 000FA8EC  38 60 00 61 */	li r3, 0x61
/* 800FEFD0 000FA8F0  7D 09 02 14 */	add r8, r9, r0
/* 800FEFD4 000FA8F4  38 00 00 00 */	li r0, 0
/* 800FEFD8 000FA8F8  80 E8 01 08 */	lwz r7, 0x108(r8)
/* 800FEFDC 000FA8FC  50 87 93 5A */	rlwimi r7, r4, 0x12, 0xd, 0xd
/* 800FEFE0 000FA900  50 A7 9B 18 */	rlwimi r7, r5, 0x13, 0xc, 0xc
/* 800FEFE4 000FA904  90 E8 01 08 */	stw r7, 0x108(r8)
/* 800FEFE8 000FA908  98 66 80 00 */	stb r3, 0xCC008000@l(r6)
/* 800FEFEC 000FA90C  80 68 01 08 */	lwz r3, 0x108(r8)
/* 800FEFF0 000FA910  90 66 80 00 */	stw r3, -0x8000(r6)
/* 800FEFF4 000FA914  B0 09 00 02 */	sth r0, 2(r9)
/* 800FEFF8 000FA918  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FF000
func_800FF000:
/* 800FF000 000FA920  80 82 F9 70 */	lwz r4, lbl_80328950-_SDA2_BASE_(r2)
/* 800FF004 000FA924  54 65 FF FE */	rlwinm r5, r3, 0x1f, 0x1f, 0x1f
/* 800FF008 000FA928  50 65 0F BC */	rlwimi r5, r3, 1, 0x1e, 0x1e
/* 800FF00C 000FA92C  80 04 02 54 */	lwz r0, 0x254(r4)
/* 800FF010 000FA930  50 A0 74 22 */	rlwimi r0, r5, 0xe, 0x10, 0x11
/* 800FF014 000FA934  90 04 02 54 */	stw r0, 0x254(r4)
/* 800FF018 000FA938  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 800FF01C 000FA93C  60 00 00 04 */	ori r0, r0, 4
/* 800FF020 000FA940  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 800FF024 000FA944  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FF030
func_800FF030:
/* 800FF030 000FA950  80 E2 F9 70 */	lwz r7, lbl_80328950-_SDA2_BASE_(r2)
/* 800FF034 000FA954  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800FF038 000FA958  38 C0 00 61 */	li r6, 0x61
/* 800FF03C 000FA95C  3C 80 FE 08 */	lis r4, 0xfe08
/* 800FF040 000FA960  80 07 02 54 */	lwz r0, 0x254(r7)
/* 800FF044 000FA964  50 60 9B 18 */	rlwimi r0, r3, 0x13, 0xc, 0xc
/* 800FF048 000FA968  90 07 02 54 */	stw r0, 0x254(r7)
/* 800FF04C 000FA96C  38 00 00 00 */	li r0, 0
/* 800FF050 000FA970  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 800FF054 000FA974  90 85 80 00 */	stw r4, -0x8000(r5)
/* 800FF058 000FA978  98 C5 80 00 */	stb r6, -0x8000(r5)
/* 800FF05C 000FA97C  80 67 02 54 */	lwz r3, 0x254(r7)
/* 800FF060 000FA980  90 65 80 00 */	stw r3, -0x8000(r5)
/* 800FF064 000FA984  B0 07 00 02 */	sth r0, 2(r7)
/* 800FF068 000FA988  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800FF070
func_800FF070:
/* 800FF070 000FA990  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800FF074 000FA994  38 00 00 61 */	li r0, 0x61
/* 800FF078 000FA998  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800FF07C 000FA99C  38 00 00 00 */	li r0, 0
/* 800FF080 000FA9A0  80 A2 F9 70 */	lwz r5, lbl_80328950-_SDA2_BASE_(r2)
/* 800FF084 000FA9A4  80 65 02 54 */	lwz r3, 0x254(r5)
/* 800FF088 000FA9A8  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800FF08C 000FA9AC  B0 05 00 02 */	sth r0, 2(r5)
/* 800FF090 000FA9B0  4E 80 00 20 */	blr 