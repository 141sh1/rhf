.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_8010D720
func_8010D720:
/* 8010D720 00109040  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8010D724 00109044  7C 08 02 A6 */	mflr r0
/* 8010D728 00109048  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8010D72C 0010904C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8010D730 00109050  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 8010D734 00109054  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8010D738 00109058  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 8010D73C 0010905C  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8010D740 00109060  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 8010D744 00109064  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8010D748 00109068  F3 81 00 88 */	psq_st f28, 136(r1), 0, qr0
/* 8010D74C 0010906C  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8010D750 00109070  F3 61 00 78 */	psq_st f27, 120(r1), 0, qr0
/* 8010D754 00109074  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 8010D758 00109078  F3 41 00 68 */	psq_st f26, 104(r1), 0, qr0
/* 8010D75C 0010907C  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8010D760 00109080  3C 60 80 2E */	lis r3, lbl_802DEB88@ha
/* 8010D764 00109084  38 63 EB 88 */	addi r3, r3, lbl_802DEB88@l
/* 8010D768 00109088  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8010D76C 0010908C  D8 21 00 08 */	stfd f1, 8(r1)
/* 8010D770 00109090  81 61 00 14 */	lwz r11, 0x14(r1)
/* 8010D774 00109094  54 A7 00 7E */	clrlwi r7, r5, 1
/* 8010D778 00109098  81 21 00 08 */	lwz r9, 8(r1)
/* 8010D77C 0010909C  7C E0 5B 79 */	or. r0, r7, r11
/* 8010D780 001090A0  81 41 00 0C */	lwz r10, 0xc(r1)
/* 8010D784 001090A4  55 26 00 7E */	clrlwi r6, r9, 1
/* 8010D788 001090A8  40 82 00 0C */	bne lbl_8010D794
/* 8010D78C 001090AC  C8 22 FB A0 */	lfd f1, lbl_80328B80-_SDA2_BASE_(r2)
/* 8010D790 001090B0  48 00 07 64 */	b lbl_8010DEF4
lbl_8010D794:
/* 8010D794 001090B4  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8010D798 001090B8  7C 06 00 00 */	cmpw r6, r0
/* 8010D79C 001090BC  41 81 00 38 */	bgt lbl_8010D7D4
/* 8010D7A0 001090C0  3C 06 80 10 */	addis r0, r6, 0x8010
/* 8010D7A4 001090C4  28 00 00 00 */	cmplwi r0, 0
/* 8010D7A8 001090C8  40 82 00 0C */	bne lbl_8010D7B4
/* 8010D7AC 001090CC  2C 0A 00 00 */	cmpwi r10, 0
/* 8010D7B0 001090D0  40 82 00 24 */	bne lbl_8010D7D4
lbl_8010D7B4:
/* 8010D7B4 001090D4  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8010D7B8 001090D8  7C 07 00 00 */	cmpw r7, r0
/* 8010D7BC 001090DC  41 81 00 18 */	bgt lbl_8010D7D4
/* 8010D7C0 001090E0  3C 07 80 10 */	addis r0, r7, 0x8010
/* 8010D7C4 001090E4  28 00 00 00 */	cmplwi r0, 0
/* 8010D7C8 001090E8  40 82 00 14 */	bne lbl_8010D7DC
/* 8010D7CC 001090EC  2C 0B 00 00 */	cmpwi r11, 0
/* 8010D7D0 001090F0  41 82 00 0C */	beq lbl_8010D7DC
lbl_8010D7D4:
/* 8010D7D4 001090F4  FC 21 10 2A */	fadd f1, f1, f2
/* 8010D7D8 001090F8  48 00 07 1C */	b lbl_8010DEF4
lbl_8010D7DC:
/* 8010D7DC 001090FC  2C 09 00 00 */	cmpwi r9, 0
/* 8010D7E0 00109100  38 80 00 00 */	li r4, 0
/* 8010D7E4 00109104  40 80 00 78 */	bge lbl_8010D85C
/* 8010D7E8 00109108  3C 00 43 40 */	lis r0, 0x4340
/* 8010D7EC 0010910C  7C 07 00 00 */	cmpw r7, r0
/* 8010D7F0 00109110  41 80 00 0C */	blt lbl_8010D7FC
/* 8010D7F4 00109114  38 80 00 02 */	li r4, 2
/* 8010D7F8 00109118  48 00 00 64 */	b lbl_8010D85C
lbl_8010D7FC:
/* 8010D7FC 0010911C  3C 00 3F F0 */	lis r0, 0x3ff0
/* 8010D800 00109120  7C 07 00 00 */	cmpw r7, r0
/* 8010D804 00109124  41 80 00 58 */	blt lbl_8010D85C
/* 8010D808 00109128  7C E8 A6 70 */	srawi r8, r7, 0x14
/* 8010D80C 0010912C  38 08 FC 01 */	addi r0, r8, -1023
/* 8010D810 00109130  2C 00 00 14 */	cmpwi r0, 0x14
/* 8010D814 00109134  40 81 00 24 */	ble lbl_8010D838
/* 8010D818 00109138  20 00 00 34 */	subfic r0, r0, 0x34
/* 8010D81C 0010913C  7D 68 04 30 */	srw r8, r11, r0
/* 8010D820 00109140  7D 00 00 30 */	slw r0, r8, r0
/* 8010D824 00109144  7C 0B 00 40 */	cmplw r11, r0
/* 8010D828 00109148  40 82 00 34 */	bne lbl_8010D85C
/* 8010D82C 0010914C  55 00 07 FE */	clrlwi r0, r8, 0x1f
/* 8010D830 00109150  20 80 00 02 */	subfic r4, r0, 2
/* 8010D834 00109154  48 00 00 28 */	b lbl_8010D85C
lbl_8010D838:
/* 8010D838 00109158  2C 0B 00 00 */	cmpwi r11, 0
/* 8010D83C 0010915C  40 82 00 20 */	bne lbl_8010D85C
/* 8010D840 00109160  20 00 00 14 */	subfic r0, r0, 0x14
/* 8010D844 00109164  7C E8 06 30 */	sraw r8, r7, r0
/* 8010D848 00109168  7D 00 00 30 */	slw r0, r8, r0
/* 8010D84C 0010916C  7C 07 00 00 */	cmpw r7, r0
/* 8010D850 00109170  40 82 00 0C */	bne lbl_8010D85C
/* 8010D854 00109174  55 00 07 FE */	clrlwi r0, r8, 0x1f
/* 8010D858 00109178  20 80 00 02 */	subfic r4, r0, 2
lbl_8010D85C:
/* 8010D85C 0010917C  2C 0B 00 00 */	cmpwi r11, 0
/* 8010D860 00109180  40 82 00 B0 */	bne lbl_8010D910
/* 8010D864 00109184  3C 07 80 10 */	addis r0, r7, 0x8010
/* 8010D868 00109188  28 00 00 00 */	cmplwi r0, 0
/* 8010D86C 0010918C  40 82 00 54 */	bne lbl_8010D8C0
/* 8010D870 00109190  3C 06 C0 10 */	addis r0, r6, 0xc010
/* 8010D874 00109194  7C 00 53 79 */	or. r0, r0, r10
/* 8010D878 00109198  40 82 00 0C */	bne lbl_8010D884
/* 8010D87C 0010919C  FC 22 10 28 */	fsub f1, f2, f2
/* 8010D880 001091A0  48 00 06 74 */	b lbl_8010DEF4
lbl_8010D884:
/* 8010D884 001091A4  3C 00 3F F0 */	lis r0, 0x3ff0
/* 8010D888 001091A8  7C 06 00 00 */	cmpw r6, r0
/* 8010D88C 001091AC  41 80 00 1C */	blt lbl_8010D8A8
/* 8010D890 001091B0  2C 05 00 00 */	cmpwi r5, 0
/* 8010D894 001091B4  41 80 00 0C */	blt lbl_8010D8A0
/* 8010D898 001091B8  FC 20 10 90 */	fmr f1, f2
/* 8010D89C 001091BC  48 00 06 58 */	b lbl_8010DEF4
lbl_8010D8A0:
/* 8010D8A0 001091C0  C8 22 FB A8 */	lfd f1, lbl_80328B88-_SDA2_BASE_(r2)
/* 8010D8A4 001091C4  48 00 06 50 */	b lbl_8010DEF4
lbl_8010D8A8:
/* 8010D8A8 001091C8  2C 05 00 00 */	cmpwi r5, 0
/* 8010D8AC 001091CC  40 80 00 0C */	bge lbl_8010D8B8
/* 8010D8B0 001091D0  FC 20 10 50 */	fneg f1, f2
/* 8010D8B4 001091D4  48 00 06 40 */	b lbl_8010DEF4
lbl_8010D8B8:
/* 8010D8B8 001091D8  C8 22 FB A8 */	lfd f1, lbl_80328B88-_SDA2_BASE_(r2)
/* 8010D8BC 001091DC  48 00 06 38 */	b lbl_8010DEF4
lbl_8010D8C0:
/* 8010D8C0 001091E0  3C 07 C0 10 */	addis r0, r7, 0xc010
/* 8010D8C4 001091E4  28 00 00 00 */	cmplwi r0, 0
/* 8010D8C8 001091E8  40 82 00 18 */	bne lbl_8010D8E0
/* 8010D8CC 001091EC  2C 05 00 00 */	cmpwi r5, 0
/* 8010D8D0 001091F0  40 80 06 24 */	bge lbl_8010DEF4
/* 8010D8D4 001091F4  C8 02 FB A0 */	lfd f0, lbl_80328B80-_SDA2_BASE_(r2)
/* 8010D8D8 001091F8  FC 20 08 24 */	fdiv f1, f0, f1
/* 8010D8DC 001091FC  48 00 06 18 */	b lbl_8010DEF4
lbl_8010D8E0:
/* 8010D8E0 00109200  3C 05 C0 00 */	addis r0, r5, 0xc000
/* 8010D8E4 00109204  28 00 00 00 */	cmplwi r0, 0
/* 8010D8E8 00109208  40 82 00 0C */	bne lbl_8010D8F4
/* 8010D8EC 0010920C  FC 21 00 72 */	fmul f1, f1, f1
/* 8010D8F0 00109210  48 00 06 04 */	b lbl_8010DEF4
lbl_8010D8F4:
/* 8010D8F4 00109214  3C 05 C0 20 */	addis r0, r5, 0xc020
/* 8010D8F8 00109218  28 00 00 00 */	cmplwi r0, 0
/* 8010D8FC 0010921C  40 82 00 14 */	bne lbl_8010D910
/* 8010D900 00109220  2C 09 00 00 */	cmpwi r9, 0
/* 8010D904 00109224  41 80 00 0C */	blt lbl_8010D910
/* 8010D908 00109228  48 00 2E 89 */	bl func_80110790
/* 8010D90C 0010922C  48 00 05 E8 */	b lbl_8010DEF4
lbl_8010D910:
/* 8010D910 00109230  FC 00 0A 10 */	fabs f0, f1
/* 8010D914 00109234  2C 0A 00 00 */	cmpwi r10, 0
/* 8010D918 00109238  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8010D91C 0010923C  40 82 00 68 */	bne lbl_8010D984
/* 8010D920 00109240  3C 06 80 10 */	addis r0, r6, 0x8010
/* 8010D924 00109244  28 00 00 00 */	cmplwi r0, 0
/* 8010D928 00109248  41 82 00 18 */	beq lbl_8010D940
/* 8010D92C 0010924C  2C 06 00 00 */	cmpwi r6, 0
/* 8010D930 00109250  41 82 00 10 */	beq lbl_8010D940
/* 8010D934 00109254  3C 06 C0 10 */	addis r0, r6, 0xc010
/* 8010D938 00109258  28 00 00 00 */	cmplwi r0, 0
/* 8010D93C 0010925C  40 82 00 48 */	bne lbl_8010D984
lbl_8010D940:
/* 8010D940 00109260  2C 05 00 00 */	cmpwi r5, 0
/* 8010D944 00109264  40 80 00 0C */	bge lbl_8010D950
/* 8010D948 00109268  C8 22 FB A0 */	lfd f1, lbl_80328B80-_SDA2_BASE_(r2)
/* 8010D94C 0010926C  FC 01 00 24 */	fdiv f0, f1, f0
lbl_8010D950:
/* 8010D950 00109270  2C 09 00 00 */	cmpwi r9, 0
/* 8010D954 00109274  40 80 00 28 */	bge lbl_8010D97C
/* 8010D958 00109278  3C 06 C0 10 */	addis r0, r6, 0xc010
/* 8010D95C 0010927C  7C 00 23 79 */	or. r0, r0, r4
/* 8010D960 00109280  40 82 00 10 */	bne lbl_8010D970
/* 8010D964 00109284  FC 00 00 28 */	fsub f0, f0, f0
/* 8010D968 00109288  FC 00 00 24 */	fdiv f0, f0, f0
/* 8010D96C 0010928C  48 00 00 10 */	b lbl_8010D97C
lbl_8010D970:
/* 8010D970 00109290  2C 04 00 01 */	cmpwi r4, 1
/* 8010D974 00109294  40 82 00 08 */	bne lbl_8010D97C
/* 8010D978 00109298  FC 00 00 50 */	fneg f0, f0
lbl_8010D97C:
/* 8010D97C 0010929C  FC 20 00 90 */	fmr f1, f0
/* 8010D980 001092A0  48 00 05 74 */	b lbl_8010DEF4
lbl_8010D984:
/* 8010D984 001092A4  7D 28 FE 70 */	srawi r8, r9, 0x1f
/* 8010D988 001092A8  38 08 00 01 */	addi r0, r8, 1
/* 8010D98C 001092AC  7C 08 23 79 */	or. r8, r0, r4
/* 8010D990 001092B0  40 82 00 18 */	bne lbl_8010D9A8
/* 8010D994 001092B4  3C 60 80 32 */	lis r3, lbl_8031FC50@ha
/* 8010D998 001092B8  38 00 00 21 */	li r0, 0x21
/* 8010D99C 001092BC  90 0D 9C 90 */	stw r0, lbl_80320B50-_SDA_BASE_(r13)
/* 8010D9A0 001092C0  C0 23 FC 50 */	lfs f1, lbl_8031FC50@l(r3)
/* 8010D9A4 001092C4  48 00 05 50 */	b lbl_8010DEF4
lbl_8010D9A8:
/* 8010D9A8 001092C8  3D 00 41 E0 */	lis r8, 0x41e0
/* 8010D9AC 001092CC  7C 07 40 00 */	cmpw r7, r8
/* 8010D9B0 001092D0  40 81 00 FC */	ble lbl_8010DAAC
/* 8010D9B4 001092D4  3C 60 43 F0 */	lis r3, 0x43f0
/* 8010D9B8 001092D8  7C 07 18 00 */	cmpw r7, r3
/* 8010D9BC 001092DC  40 81 00 40 */	ble lbl_8010D9FC
/* 8010D9C0 001092E0  3C 00 3F F0 */	lis r0, 0x3ff0
/* 8010D9C4 001092E4  7C 06 00 00 */	cmpw r6, r0
/* 8010D9C8 001092E8  40 80 00 1C */	bge lbl_8010D9E4
/* 8010D9CC 001092EC  2C 05 00 00 */	cmpwi r5, 0
/* 8010D9D0 001092F0  40 80 00 0C */	bge lbl_8010D9DC
/* 8010D9D4 001092F4  C8 22 FB B0 */	lfd f1, lbl_80328B90-_SDA2_BASE_(r2)
/* 8010D9D8 001092F8  48 00 05 1C */	b lbl_8010DEF4
lbl_8010D9DC:
/* 8010D9DC 001092FC  C8 22 FB A8 */	lfd f1, lbl_80328B88-_SDA2_BASE_(r2)
/* 8010D9E0 00109300  48 00 05 14 */	b lbl_8010DEF4
lbl_8010D9E4:
/* 8010D9E4 00109304  2C 05 00 00 */	cmpwi r5, 0
/* 8010D9E8 00109308  40 81 00 0C */	ble lbl_8010D9F4
/* 8010D9EC 0010930C  C8 22 FB B0 */	lfd f1, lbl_80328B90-_SDA2_BASE_(r2)
/* 8010D9F0 00109310  48 00 05 04 */	b lbl_8010DEF4
lbl_8010D9F4:
/* 8010D9F4 00109314  C8 22 FB A8 */	lfd f1, lbl_80328B88-_SDA2_BASE_(r2)
/* 8010D9F8 00109318  48 00 04 FC */	b lbl_8010DEF4
lbl_8010D9FC:
/* 8010D9FC 0010931C  3C 60 3F F0 */	lis r3, 0x3FEFFFFF@ha
/* 8010DA00 00109320  38 E3 FF FF */	addi r7, r3, 0x3FEFFFFF@l
/* 8010DA04 00109324  7C 06 38 00 */	cmpw r6, r7
/* 8010DA08 00109328  40 80 00 1C */	bge lbl_8010DA24
/* 8010DA0C 0010932C  2C 05 00 00 */	cmpwi r5, 0
/* 8010DA10 00109330  40 80 00 0C */	bge lbl_8010DA1C
/* 8010DA14 00109334  C8 22 FB B0 */	lfd f1, lbl_80328B90-_SDA2_BASE_(r2)
/* 8010DA18 00109338  48 00 04 DC */	b lbl_8010DEF4
lbl_8010DA1C:
/* 8010DA1C 0010933C  C8 22 FB A8 */	lfd f1, lbl_80328B88-_SDA2_BASE_(r2)
/* 8010DA20 00109340  48 00 04 D4 */	b lbl_8010DEF4
lbl_8010DA24:
/* 8010DA24 00109344  7C 06 18 00 */	cmpw r6, r3
/* 8010DA28 00109348  40 81 00 1C */	ble lbl_8010DA44
/* 8010DA2C 0010934C  2C 05 00 00 */	cmpwi r5, 0
/* 8010DA30 00109350  40 81 00 0C */	ble lbl_8010DA3C
/* 8010DA34 00109354  C8 22 FB B0 */	lfd f1, lbl_80328B90-_SDA2_BASE_(r2)
/* 8010DA38 00109358  48 00 04 BC */	b lbl_8010DEF4
lbl_8010DA3C:
/* 8010DA3C 0010935C  C8 22 FB A8 */	lfd f1, lbl_80328B88-_SDA2_BASE_(r2)
/* 8010DA40 00109360  48 00 04 B4 */	b lbl_8010DEF4
lbl_8010DA44:
/* 8010DA44 00109364  C8 62 FB A0 */	lfd f3, lbl_80328B80-_SDA2_BASE_(r2)
/* 8010DA48 00109368  38 60 00 00 */	li r3, 0
/* 8010DA4C 0010936C  C8 02 FB C8 */	lfd f0, lbl_80328BA8-_SDA2_BASE_(r2)
/* 8010DA50 00109370  FD 01 18 28 */	fsub f8, f1, f3
/* 8010DA54 00109374  C8 22 FB D8 */	lfd f1, lbl_80328BB8-_SDA2_BASE_(r2)
/* 8010DA58 00109378  C8 A2 FB C0 */	lfd f5, lbl_80328BA0-_SDA2_BASE_(r2)
/* 8010DA5C 0010937C  C8 62 FB D0 */	lfd f3, lbl_80328BB0-_SDA2_BASE_(r2)
/* 8010DA60 00109380  FC C0 02 32 */	fmul f6, f0, f8
/* 8010DA64 00109384  C8 82 FB B8 */	lfd f4, lbl_80328B98-_SDA2_BASE_(r2)
/* 8010DA68 00109388  C8 02 FB E0 */	lfd f0, lbl_80328BC0-_SDA2_BASE_(r2)
/* 8010DA6C 0010938C  FC E8 02 32 */	fmul f7, f8, f8
/* 8010DA70 00109390  FC A5 30 28 */	fsub f5, f5, f6
/* 8010DA74 00109394  FC C3 02 32 */	fmul f6, f3, f8
/* 8010DA78 00109398  FC A8 01 72 */	fmul f5, f8, f5
/* 8010DA7C 0010939C  FC 21 02 32 */	fmul f1, f1, f8
/* 8010DA80 001093A0  FC 64 28 28 */	fsub f3, f4, f5
/* 8010DA84 001093A4  FC 67 00 F2 */	fmul f3, f7, f3
/* 8010DA88 001093A8  FC 00 00 F2 */	fmul f0, f0, f3
/* 8010DA8C 001093AC  FC 21 00 28 */	fsub f1, f1, f0
/* 8010DA90 001093B0  FC 06 08 2A */	fadd f0, f6, f1
/* 8010DA94 001093B4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8010DA98 001093B8  90 61 00 34 */	stw r3, 0x34(r1)
/* 8010DA9C 001093BC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8010DAA0 001093C0  FC 00 30 28 */	fsub f0, f0, f6
/* 8010DAA4 001093C4  FC 01 00 28 */	fsub f0, f1, f0
/* 8010DAA8 001093C8  48 00 02 0C */	b lbl_8010DCB4
lbl_8010DAAC:
/* 8010DAAC 001093CC  3C A0 00 10 */	lis r5, 0x10
/* 8010DAB0 001093D0  39 60 00 00 */	li r11, 0
/* 8010DAB4 001093D4  7C 06 28 00 */	cmpw r6, r5
/* 8010DAB8 001093D8  40 80 00 18 */	bge lbl_8010DAD0
/* 8010DABC 001093DC  C8 22 FB E8 */	lfd f1, lbl_80328BC8-_SDA2_BASE_(r2)
/* 8010DAC0 001093E0  39 60 FF CB */	li r11, -53
/* 8010DAC4 001093E4  FC 00 00 72 */	fmul f0, f0, f1
/* 8010DAC8 001093E8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8010DACC 001093EC  80 C1 00 48 */	lwz r6, 0x48(r1)
lbl_8010DAD0:
/* 8010DAD0 001093F0  3C A0 00 04 */	lis r5, 0x0003988E@ha
/* 8010DAD4 001093F4  54 C8 03 3E */	clrlwi r8, r6, 0xc
/* 8010DAD8 001093F8  38 A5 98 8E */	addi r5, r5, 0x0003988E@l
/* 8010DADC 001093FC  7C C6 A6 70 */	srawi r6, r6, 0x14
/* 8010DAE0 00109400  7C 08 28 00 */	cmpw r8, r5
/* 8010DAE4 00109404  65 07 3F F0 */	oris r7, r8, 0x3ff0
/* 8010DAE8 00109408  7C AB 32 14 */	add r5, r11, r6
/* 8010DAEC 0010940C  39 65 FC 01 */	addi r11, r5, -1023
/* 8010DAF0 00109410  41 81 00 0C */	bgt lbl_8010DAFC
/* 8010DAF4 00109414  38 C0 00 00 */	li r6, 0
/* 8010DAF8 00109418  48 00 00 28 */	b lbl_8010DB20
lbl_8010DAFC:
/* 8010DAFC 0010941C  3C A0 00 0C */	lis r5, 0x000BB67A@ha
/* 8010DB00 00109420  38 A5 B6 7A */	addi r5, r5, 0x000BB67A@l
/* 8010DB04 00109424  7C 08 28 00 */	cmpw r8, r5
/* 8010DB08 00109428  40 80 00 0C */	bge lbl_8010DB14
/* 8010DB0C 0010942C  38 C0 00 01 */	li r6, 1
/* 8010DB10 00109430  48 00 00 10 */	b lbl_8010DB20
lbl_8010DB14:
/* 8010DB14 00109434  3C E7 FF F0 */	addis r7, r7, 0xfff0
/* 8010DB18 00109438  38 C0 00 00 */	li r6, 0
/* 8010DB1C 0010943C  39 6B 00 01 */	addi r11, r11, 1
lbl_8010DB20:
/* 8010DB20 00109440  90 E1 00 48 */	stw r7, 0x48(r1)
/* 8010DB24 00109444  7C E9 0E 70 */	srawi r9, r7, 1
/* 8010DB28 00109448  54 CA 18 38 */	slwi r10, r6, 3
/* 8010DB2C 0010944C  38 A3 00 00 */	addi r5, r3, 0
/* 8010DB30 00109450  7D 05 54 AE */	lfdx f8, r5, r10
/* 8010DB34 00109454  54 C8 90 1A */	slwi r8, r6, 0x12
/* 8010DB38 00109458  C9 41 00 48 */	lfd f10, 0x48(r1)
/* 8010DB3C 0010945C  6D 66 80 00 */	xoris r6, r11, 0x8000
/* 8010DB40 00109460  C8 02 FB A8 */	lfd f0, lbl_80328B88-_SDA2_BASE_(r2)
/* 8010DB44 00109464  3C A0 43 30 */	lis r5, 0x4330
/* 8010DB48 00109468  FC 6A 40 2A */	fadd f3, f10, f8
/* 8010DB4C 0010946C  C8 22 FB A0 */	lfd f1, lbl_80328B80-_SDA2_BASE_(r2)
/* 8010DB50 00109470  FF 4A 40 28 */	fsub f26, f10, f8
/* 8010DB54 00109474  C8 E2 FC 18 */	lfd f7, lbl_80328BF8-_SDA2_BASE_(r2)
/* 8010DB58 00109478  C8 C2 FC 08 */	lfd f6, lbl_80328BE8-_SDA2_BASE_(r2)
/* 8010DB5C 0010947C  65 29 20 00 */	oris r9, r9, 0x2000
/* 8010DB60 00109480  FC 21 18 24 */	fdiv f1, f1, f3
/* 8010DB64 00109484  3D 08 00 08 */	addis r8, r8, 8
/* 8010DB68 00109488  7D 09 42 14 */	add r8, r9, r8
/* 8010DB6C 0010948C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8010DB70 00109490  C8 62 FC 10 */	lfd f3, lbl_80328BF0-_SDA2_BASE_(r2)
/* 8010DB74 00109494  39 20 00 00 */	li r9, 0
/* 8010DB78 00109498  FC 9A 00 72 */	fmul f4, f26, f1
/* 8010DB7C 0010949C  91 01 00 18 */	stw r8, 0x18(r1)
/* 8010DB80 001094A0  C9 A2 FC 00 */	lfd f13, lbl_80328BE0-_SDA2_BASE_(r2)
/* 8010DB84 001094A4  38 E3 00 20 */	addi r7, r3, 0x20
/* 8010DB88 001094A8  C9 21 00 18 */	lfd f9, 0x18(r1)
/* 8010DB8C 001094AC  D8 81 00 20 */	stfd f4, 0x20(r1)
/* 8010DB90 001094B0  FC A4 01 32 */	fmul f5, f4, f4
/* 8010DB94 001094B4  91 21 00 24 */	stw r9, 0x24(r1)
/* 8010DB98 001094B8  CB C2 FB F8 */	lfd f30, lbl_80328BD8-_SDA2_BASE_(r2)
/* 8010DB9C 001094BC  FD 09 40 28 */	fsub f8, f9, f8
/* 8010DBA0 001094C0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8010DBA4 001094C4  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 8010DBA8 001094C8  FC E7 01 72 */	fmul f7, f7, f5
/* 8010DBAC 001094CC  90 A1 00 58 */	stw r5, 0x58(r1)
/* 8010DBB0 001094D0  CB E2 FB F0 */	lfd f31, lbl_80328BD0-_SDA2_BASE_(r2)
/* 8010DBB4 001094D4  FD 0A 40 28 */	fsub f8, f10, f8
/* 8010DBB8 001094D8  C9 82 FC 20 */	lfd f12, lbl_80328C00-_SDA2_BASE_(r2)
/* 8010DBBC 001094DC  FF 80 02 72 */	fmul f28, f0, f9
/* 8010DBC0 001094E0  FC E3 38 2A */	fadd f7, f3, f7
/* 8010DBC4 001094E4  C9 42 FC 30 */	lfd f10, lbl_80328C10-_SDA2_BASE_(r2)
/* 8010DBC8 001094E8  FF 60 02 32 */	fmul f27, f0, f8
/* 8010DBCC 001094EC  C9 22 FC 38 */	lfd f9, lbl_80328C18-_SDA2_BASE_(r2)
/* 8010DBD0 001094F0  C9 62 FC 28 */	lfd f11, lbl_80328C08-_SDA2_BASE_(r2)
/* 8010DBD4 001094F4  FC E5 01 F2 */	fmul f7, f5, f7
/* 8010DBD8 001094F8  7D 07 54 AE */	lfdx f8, r7, r10
/* 8010DBDC 001094FC  FF 9A E0 28 */	fsub f28, f26, f28
/* 8010DBE0 00109500  FC 60 00 32 */	fmul f3, f0, f0
/* 8010DBE4 00109504  FF A6 38 2A */	fadd f29, f6, f7
/* 8010DBE8 00109508  C8 E2 FC A8 */	lfd f7, lbl_80328C88-_SDA2_BASE_(r2)
/* 8010DBEC 0010950C  FF 7C D8 28 */	fsub f27, f28, f27
/* 8010DBF0 00109510  C8 C1 00 58 */	lfd f6, 0x58(r1)
/* 8010DBF4 00109514  FF 85 01 72 */	fmul f28, f5, f5
/* 8010DBF8 00109518  FF A5 07 72 */	fmul f29, f5, f29
/* 8010DBFC 0010951C  FF 61 06 F2 */	fmul f27, f1, f27
/* 8010DC00 00109520  FD AD E8 2A */	fadd f13, f13, f29
/* 8010DC04 00109524  FC 2C 18 2A */	fadd f1, f12, f3
/* 8010DC08 00109528  FF A5 03 72 */	fmul f29, f5, f13
/* 8010DC0C 0010952C  FD A0 20 2A */	fadd f13, f0, f4
/* 8010DC10 00109530  FF DE E8 2A */	fadd f30, f30, f29
/* 8010DC14 00109534  FD BB 03 72 */	fmul f13, f27, f13
/* 8010DC18 00109538  FF C5 07 B2 */	fmul f30, f5, f30
/* 8010DC1C 0010953C  FC A6 38 28 */	fsub f5, f6, f7
/* 8010DC20 00109540  FC DF F0 2A */	fadd f6, f31, f30
/* 8010DC24 00109544  FF 5C 01 B2 */	fmul f26, f28, f6
/* 8010DC28 00109548  FF 5A 68 2A */	fadd f26, f26, f13
/* 8010DC2C 0010954C  FC 21 D0 2A */	fadd f1, f1, f26
/* 8010DC30 00109550  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8010DC34 00109554  91 21 00 1C */	stw r9, 0x1c(r1)
/* 8010DC38 00109558  C8 E1 00 18 */	lfd f7, 0x18(r1)
/* 8010DC3C 0010955C  FC C7 60 28 */	fsub f6, f7, f12
/* 8010DC40 00109560  FC 3B 01 F2 */	fmul f1, f27, f7
/* 8010DC44 00109564  FC 66 18 28 */	fsub f3, f6, f3
/* 8010DC48 00109568  FC C0 01 F2 */	fmul f6, f0, f7
/* 8010DC4C 0010956C  FC 1A 18 28 */	fsub f0, f26, f3
/* 8010DC50 00109570  FC 00 01 32 */	fmul f0, f0, f4
/* 8010DC54 00109574  FC 81 00 2A */	fadd f4, f1, f0
/* 8010DC58 00109578  FC 66 20 2A */	fadd f3, f6, f4
/* 8010DC5C 0010957C  D8 61 00 40 */	stfd f3, 0x40(r1)
/* 8010DC60 00109580  91 21 00 44 */	stw r9, 0x44(r1)
/* 8010DC64 00109584  C8 61 00 40 */	lfd f3, 0x40(r1)
/* 8010DC68 00109588  FC 03 30 28 */	fsub f0, f3, f6
/* 8010DC6C 0010958C  FC 2A 00 F2 */	fmul f1, f10, f3
/* 8010DC70 00109590  FC 04 00 28 */	fsub f0, f4, f0
/* 8010DC74 00109594  FC 6B 00 F2 */	fmul f3, f11, f3
/* 8010DC78 00109598  FC 09 00 32 */	fmul f0, f9, f0
/* 8010DC7C 0010959C  FC 01 00 2A */	fadd f0, f1, f0
/* 8010DC80 001095A0  FC 88 00 2A */	fadd f4, f8, f0
/* 8010DC84 001095A4  38 63 00 10 */	addi r3, r3, 0x10
/* 8010DC88 001095A8  FC 03 20 2A */	fadd f0, f3, f4
/* 8010DC8C 001095AC  7C 23 54 AE */	lfdx f1, r3, r10
/* 8010DC90 001095B0  FC 00 08 2A */	fadd f0, f0, f1
/* 8010DC94 001095B4  FC 05 00 2A */	fadd f0, f5, f0
/* 8010DC98 001095B8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8010DC9C 001095BC  91 21 00 34 */	stw r9, 0x34(r1)
/* 8010DCA0 001095C0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8010DCA4 001095C4  FC 00 28 28 */	fsub f0, f0, f5
/* 8010DCA8 001095C8  FC 00 08 28 */	fsub f0, f0, f1
/* 8010DCAC 001095CC  FC 00 18 28 */	fsub f0, f0, f3
/* 8010DCB0 001095D0  FC 04 00 28 */	fsub f0, f4, f0
lbl_8010DCB4:
/* 8010DCB4 001095D4  38 64 FF FF */	addi r3, r4, -1
/* 8010DCB8 001095D8  CB E2 FB A0 */	lfd f31, lbl_80328B80-_SDA2_BASE_(r2)
/* 8010DCBC 001095DC  7C 00 1B 79 */	or. r0, r0, r3
/* 8010DCC0 001095E0  40 82 00 08 */	bne lbl_8010DCC8
/* 8010DCC4 001095E4  CB E2 FC 40 */	lfd f31, lbl_80328C20-_SDA2_BASE_(r2)
lbl_8010DCC8:
/* 8010DCC8 001095E8  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 8010DCCC 001095EC  38 00 00 00 */	li r0, 0
/* 8010DCD0 001095F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8010DCD4 001095F4  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 8010DCD8 001095F8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8010DCDC 001095FC  3C 00 40 90 */	lis r0, 0x4090
/* 8010DCE0 00109600  C8 61 00 38 */	lfd f3, 0x38(r1)
/* 8010DCE4 00109604  FC 42 18 28 */	fsub f2, f2, f3
/* 8010DCE8 00109608  FC 63 00 72 */	fmul f3, f3, f1
/* 8010DCEC 0010960C  FC 21 00 B2 */	fmul f1, f1, f2
/* 8010DCF0 00109610  FD 41 00 2A */	fadd f10, f1, f0
/* 8010DCF4 00109614  FC 0A 18 2A */	fadd f0, f10, f3
/* 8010DCF8 00109618  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8010DCFC 0010961C  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 8010DD00 00109620  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 8010DD04 00109624  7C 06 00 00 */	cmpw r6, r0
/* 8010DD08 00109628  41 80 00 44 */	blt lbl_8010DD4C
/* 8010DD0C 0010962C  3C 06 BF 70 */	addis r0, r6, 0xbf70
/* 8010DD10 00109630  7C 00 2B 79 */	or. r0, r0, r5
/* 8010DD14 00109634  41 82 00 14 */	beq lbl_8010DD28
/* 8010DD18 00109638  C8 22 FC 48 */	lfd f1, lbl_80328C28-_SDA2_BASE_(r2)
/* 8010DD1C 0010963C  FC 01 07 F2 */	fmul f0, f1, f31
/* 8010DD20 00109640  FC 21 00 32 */	fmul f1, f1, f0
/* 8010DD24 00109644  48 00 01 D0 */	b lbl_8010DEF4
lbl_8010DD28:
/* 8010DD28 00109648  C8 22 FC 50 */	lfd f1, lbl_80328C30-_SDA2_BASE_(r2)
/* 8010DD2C 0010964C  FC 00 18 28 */	fsub f0, f0, f3
/* 8010DD30 00109650  FC 21 50 2A */	fadd f1, f1, f10
/* 8010DD34 00109654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010DD38 00109658  40 81 00 68 */	ble lbl_8010DDA0
/* 8010DD3C 0010965C  C8 22 FC 48 */	lfd f1, lbl_80328C28-_SDA2_BASE_(r2)
/* 8010DD40 00109660  FC 01 07 F2 */	fmul f0, f1, f31
/* 8010DD44 00109664  FC 21 00 32 */	fmul f1, f1, f0
/* 8010DD48 00109668  48 00 01 AC */	b lbl_8010DEF4
lbl_8010DD4C:
/* 8010DD4C 0010966C  3C 60 40 91 */	lis r3, 0x4090CC00@ha
/* 8010DD50 00109670  54 C4 00 7E */	clrlwi r4, r6, 1
/* 8010DD54 00109674  38 03 CC 00 */	addi r0, r3, 0x4090CC00@l
/* 8010DD58 00109678  7C 04 00 00 */	cmpw r4, r0
/* 8010DD5C 0010967C  41 80 00 44 */	blt lbl_8010DDA0
/* 8010DD60 00109680  3C 66 3F 6F */	addis r3, r6, 0x3f6f
/* 8010DD64 00109684  38 03 34 00 */	addi r0, r3, 0x3400
/* 8010DD68 00109688  7C 00 2B 79 */	or. r0, r0, r5
/* 8010DD6C 0010968C  41 82 00 14 */	beq lbl_8010DD80
/* 8010DD70 00109690  C8 22 FC 58 */	lfd f1, lbl_80328C38-_SDA2_BASE_(r2)
/* 8010DD74 00109694  FC 01 07 F2 */	fmul f0, f1, f31
/* 8010DD78 00109698  FC 21 00 32 */	fmul f1, f1, f0
/* 8010DD7C 0010969C  48 00 01 78 */	b lbl_8010DEF4
lbl_8010DD80:
/* 8010DD80 001096A0  FC 00 18 28 */	fsub f0, f0, f3
/* 8010DD84 001096A4  FC 0A 00 40 */	fcmpo cr0, f10, f0
/* 8010DD88 001096A8  4C 40 13 82 */	cror 2, 0, 2
/* 8010DD8C 001096AC  40 82 00 14 */	bne lbl_8010DDA0
/* 8010DD90 001096B0  C8 22 FC 58 */	lfd f1, lbl_80328C38-_SDA2_BASE_(r2)
/* 8010DD94 001096B4  FC 01 07 F2 */	fmul f0, f1, f31
/* 8010DD98 001096B8  FC 21 00 32 */	fmul f1, f1, f0
/* 8010DD9C 001096BC  48 00 01 58 */	b lbl_8010DEF4
lbl_8010DDA0:
/* 8010DDA0 001096C0  54 C3 00 7E */	clrlwi r3, r6, 1
/* 8010DDA4 001096C4  3C 00 3F E0 */	lis r0, 0x3fe0
/* 8010DDA8 001096C8  7C 03 00 00 */	cmpw r3, r0
/* 8010DDAC 001096CC  54 C4 65 7E */	rlwinm r4, r6, 0xc, 0x15, 0x1f
/* 8010DDB0 001096D0  38 60 00 00 */	li r3, 0
/* 8010DDB4 001096D4  40 81 00 5C */	ble lbl_8010DE10
/* 8010DDB8 001096D8  3C 60 00 10 */	lis r3, 0x000FFFFF@ha
/* 8010DDBC 001096DC  38 04 FC 02 */	addi r0, r4, -1022
/* 8010DDC0 001096E0  7C 60 06 30 */	sraw r0, r3, r0
/* 8010DDC4 001096E4  C8 02 FB A8 */	lfd f0, lbl_80328B88-_SDA2_BASE_(r2)
/* 8010DDC8 001096E8  7C E6 02 14 */	add r7, r6, r0
/* 8010DDCC 001096EC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8010DDD0 001096F0  54 E0 00 7E */	clrlwi r0, r7, 1
/* 8010DDD4 001096F4  38 63 FF FF */	addi r3, r3, 0x000FFFFF@l
/* 8010DDD8 001096F8  7C 04 A6 70 */	srawi r4, r0, 0x14
/* 8010DDDC 001096FC  2C 06 00 00 */	cmpwi r6, 0
/* 8010DDE0 00109700  38 A4 FC 01 */	addi r5, r4, -1023
/* 8010DDE4 00109704  54 E0 03 3E */	clrlwi r0, r7, 0xc
/* 8010DDE8 00109708  7C 64 2E 30 */	sraw r4, r3, r5
/* 8010DDEC 0010970C  64 03 00 10 */	oris r3, r0, 0x10
/* 8010DDF0 00109710  20 05 00 14 */	subfic r0, r5, 0x14
/* 8010DDF4 00109714  7C E4 20 78 */	andc r4, r7, r4
/* 8010DDF8 00109718  90 81 00 28 */	stw r4, 0x28(r1)
/* 8010DDFC 0010971C  7C 63 06 30 */	sraw r3, r3, r0
/* 8010DE00 00109720  40 80 00 08 */	bge lbl_8010DE08
/* 8010DE04 00109724  7C 63 00 D0 */	neg r3, r3
lbl_8010DE08:
/* 8010DE08 00109728  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8010DE0C 0010972C  FC 63 00 28 */	fsub f3, f3, f0
lbl_8010DE10:
/* 8010DE10 00109730  FC 0A 18 2A */	fadd f0, f10, f3
/* 8010DE14 00109734  38 00 00 00 */	li r0, 0
/* 8010DE18 00109738  C8 42 FC 68 */	lfd f2, lbl_80328C48-_SDA2_BASE_(r2)
/* 8010DE1C 0010973C  54 64 A0 16 */	slwi r4, r3, 0x14
/* 8010DE20 00109740  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8010DE24 00109744  C8 02 FC 70 */	lfd f0, lbl_80328C50-_SDA2_BASE_(r2)
/* 8010DE28 00109748  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8010DE2C 0010974C  C9 22 FC 60 */	lfd f9, lbl_80328C40-_SDA2_BASE_(r2)
/* 8010DE30 00109750  C9 01 00 28 */	lfd f8, 0x28(r1)
/* 8010DE34 00109754  C8 C2 FC 98 */	lfd f6, lbl_80328C78-_SDA2_BASE_(r2)
/* 8010DE38 00109758  FC 68 18 28 */	fsub f3, f8, f3
/* 8010DE3C 0010975C  C8 22 FC 90 */	lfd f1, lbl_80328C70-_SDA2_BASE_(r2)
/* 8010DE40 00109760  FC E0 02 32 */	fmul f7, f0, f8
/* 8010DE44 00109764  C8 A2 FC 88 */	lfd f5, lbl_80328C68-_SDA2_BASE_(r2)
/* 8010DE48 00109768  C8 82 FC 80 */	lfd f4, lbl_80328C60-_SDA2_BASE_(r2)
/* 8010DE4C 0010976C  FC 0A 18 28 */	fsub f0, f10, f3
/* 8010DE50 00109770  FD 49 02 32 */	fmul f10, f9, f8
/* 8010DE54 00109774  C8 62 FC 78 */	lfd f3, lbl_80328C58-_SDA2_BASE_(r2)
/* 8010DE58 00109778  FD 02 00 32 */	fmul f8, f2, f0
/* 8010DE5C 0010977C  C8 42 FC A0 */	lfd f2, lbl_80328C80-_SDA2_BASE_(r2)
/* 8010DE60 00109780  C8 02 FB A0 */	lfd f0, lbl_80328B80-_SDA2_BASE_(r2)
/* 8010DE64 00109784  FD 68 38 2A */	fadd f11, f8, f7
/* 8010DE68 00109788  FD 2A 58 2A */	fadd f9, f10, f11
/* 8010DE6C 0010978C  FC E9 02 72 */	fmul f7, f9, f9
/* 8010DE70 00109790  FD 09 50 28 */	fsub f8, f9, f10
/* 8010DE74 00109794  FC C6 01 F2 */	fmul f6, f6, f7
/* 8010DE78 00109798  FD 0B 40 28 */	fsub f8, f11, f8
/* 8010DE7C 0010979C  FC C1 30 2A */	fadd f6, f1, f6
/* 8010DE80 001097A0  FC 29 02 32 */	fmul f1, f9, f8
/* 8010DE84 001097A4  FC C7 01 B2 */	fmul f6, f7, f6
/* 8010DE88 001097A8  FC 28 08 2A */	fadd f1, f8, f1
/* 8010DE8C 001097AC  FC A5 30 2A */	fadd f5, f5, f6
/* 8010DE90 001097B0  FC A7 01 72 */	fmul f5, f7, f5
/* 8010DE94 001097B4  FC 84 28 2A */	fadd f4, f4, f5
/* 8010DE98 001097B8  FC 87 01 32 */	fmul f4, f7, f4
/* 8010DE9C 001097BC  FC 63 20 2A */	fadd f3, f3, f4
/* 8010DEA0 001097C0  FC 67 00 F2 */	fmul f3, f7, f3
/* 8010DEA4 001097C4  FC 89 18 28 */	fsub f4, f9, f3
/* 8010DEA8 001097C8  FC 69 01 32 */	fmul f3, f9, f4
/* 8010DEAC 001097CC  FC 44 10 28 */	fsub f2, f4, f2
/* 8010DEB0 001097D0  FC 43 10 24 */	fdiv f2, f3, f2
/* 8010DEB4 001097D4  FC 22 08 28 */	fsub f1, f2, f1
/* 8010DEB8 001097D8  FC 21 48 28 */	fsub f1, f1, f9
/* 8010DEBC 001097DC  FC 20 08 28 */	fsub f1, f0, f1
/* 8010DEC0 001097E0  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 8010DEC4 001097E4  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8010DEC8 001097E8  7C 00 22 14 */	add r0, r0, r4
/* 8010DECC 001097EC  7C 00 A6 71 */	srawi. r0, r0, 0x14
/* 8010DED0 001097F0  41 81 00 10 */	bgt lbl_8010DEE0
/* 8010DED4 001097F4  4B FF F1 ED */	bl func_8010D0C0
/* 8010DED8 001097F8  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 8010DEDC 001097FC  48 00 00 10 */	b lbl_8010DEEC
lbl_8010DEE0:
/* 8010DEE0 00109800  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8010DEE4 00109804  7C 00 22 14 */	add r0, r0, r4
/* 8010DEE8 00109808  90 01 00 50 */	stw r0, 0x50(r1)
lbl_8010DEEC:
/* 8010DEEC 0010980C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8010DEF0 00109810  FC 3F 00 32 */	fmul f1, f31, f0
lbl_8010DEF4:
/* 8010DEF4 00109814  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8010DEF8 00109818  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 8010DEFC 0010981C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8010DF00 00109820  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 8010DF04 00109824  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8010DF08 00109828  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 8010DF0C 0010982C  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8010DF10 00109830  E3 81 00 88 */	psq_l f28, 136(r1), 0, qr0
/* 8010DF14 00109834  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8010DF18 00109838  E3 61 00 78 */	psq_l f27, 120(r1), 0, qr0
/* 8010DF1C 0010983C  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8010DF20 00109840  E3 41 00 68 */	psq_l f26, 104(r1), 0, qr0
/* 8010DF24 00109844  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 8010DF28 00109848  7C 08 03 A6 */	mtlr r0
/* 8010DF2C 0010984C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8010DF30 00109850  4E 80 00 20 */	blr 



.section .rodata, "wa"  # 0x802DDDD0 - 0x802E4A88

.global lbl_802DEB88

lbl_802DEB88:

	# ROM: 0x2DAC88
	.4byte 0x3FF00000
	.4byte 0
	.4byte 0x3FF80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3FE2B803
	.4byte 0x40000000
	.4byte 0
	.4byte 0
	.4byte 0x3E4CFDEB
	.4byte 0x43CFD006



.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_80328B80

lbl_80328B80:

	# ROM: 0x323DE0
	.4byte 0x3FF00000
	.4byte 0


.global lbl_80328B88

lbl_80328B88:

	# ROM: 0x323DE8
	.4byte 0
	.4byte 0


.global lbl_80328B90

lbl_80328B90:

	# ROM: 0x323DF0
	.4byte 0x7FF00000
	.4byte 0


.global lbl_80328B98

lbl_80328B98:

	# ROM: 0x323DF8
	.4byte 0x3FE00000
	.4byte 0


.global lbl_80328BA0

lbl_80328BA0:

	# ROM: 0x323E00
	.4byte 0x3FD55555
	.4byte 0x55555555


.global lbl_80328BA8

lbl_80328BA8:

	# ROM: 0x323E08
	.4byte 0x3FD00000
	.4byte 0


.global lbl_80328BB0

lbl_80328BB0:

	# ROM: 0x323E10
	.4byte 0x3FF71547
	.4byte 0x60000000


.global lbl_80328BB8

lbl_80328BB8:

	# ROM: 0x323E18
	.4byte 0x3E54AE0B
	.4byte 0xF85DDF44


.global lbl_80328BC0

lbl_80328BC0:

	# ROM: 0x323E20
	.4byte 0x3FF71547
	.4byte 0x652B82FE


.global lbl_80328BC8

lbl_80328BC8:

	# ROM: 0x323E28
	.4byte 0x43400000
	.4byte 0


.global lbl_80328BD0

lbl_80328BD0:

	# ROM: 0x323E30
	.4byte 0x3FE33333
	.4byte 0x33333303


.global lbl_80328BD8

lbl_80328BD8:

	# ROM: 0x323E38
	.4byte 0x3FDB6DB6
	.4byte 0xDB6FABFF


.global lbl_80328BE0

lbl_80328BE0:

	# ROM: 0x323E40
	.4byte 0x3FD55555
	.4byte 0x518F264D


.global lbl_80328BE8

lbl_80328BE8:

	# ROM: 0x323E48
	.4byte 0x3FD17460
	.4byte 0xA91D4101


.global lbl_80328BF0

lbl_80328BF0:

	# ROM: 0x323E50
	.4byte 0x3FCD864A
	.4byte 0x93C9DB65


.global lbl_80328BF8

lbl_80328BF8:

	# ROM: 0x323E58
	.4byte 0x3FCA7E28
	.4byte 0x4A454EEF


.global lbl_80328C00

lbl_80328C00:

	# ROM: 0x323E60
	.4byte 0x40080000
	.4byte 0


.global lbl_80328C08

lbl_80328C08:

	# ROM: 0x323E68
	.4byte 0x3FEEC709
	.4byte 0xE0000000


.global lbl_80328C10

lbl_80328C10:

	# ROM: 0x323E70
	.4byte 0xBE3E2FE0
	.4byte 0x145B01F5


.global lbl_80328C18

lbl_80328C18:

	# ROM: 0x323E78
	.4byte 0x3FEEC709
	.4byte 0xDC3A03FD


.global lbl_80328C20

lbl_80328C20:

	# ROM: 0x323E80
	.4byte 0xBFF00000
	.4byte 0


.global lbl_80328C28

lbl_80328C28:

	# ROM: 0x323E88
	.4byte 0x7E37E43C
	.4byte 0x8800759C


.global lbl_80328C30

lbl_80328C30:

	# ROM: 0x323E90
	.4byte 0x3C971547
	.4byte 0x652B82FE


.global lbl_80328C38

lbl_80328C38:

	# ROM: 0x323E98
	.4byte 0x01A56E1F
	.4byte 0xC2F8F359


.global lbl_80328C40

lbl_80328C40:

	# ROM: 0x323EA0
	.4byte 0x3FE62E43
	.4byte 0


.global lbl_80328C48

lbl_80328C48:

	# ROM: 0x323EA8
	.4byte 0x3FE62E42
	.4byte 0xFEFA39EF


.global lbl_80328C50

lbl_80328C50:

	# ROM: 0x323EB0
	.4byte 0xBE205C61
	.4byte 0x0CA86C39


.global lbl_80328C58

lbl_80328C58:

	# ROM: 0x323EB8
	.4byte 0x3FC55555
	.4byte 0x5555553E


.global lbl_80328C60

lbl_80328C60:

	# ROM: 0x323EC0
	.4byte 0xBF66C16C
	.4byte 0x16BEBD93


.global lbl_80328C68

lbl_80328C68:

	# ROM: 0x323EC8
	.4byte 0x3F11566A
	.4byte 0xAF25DE2C


.global lbl_80328C70

lbl_80328C70:

	# ROM: 0x323ED0
	.4byte 0xBEBBBD41
	.4byte 0xC5D26BF1


.global lbl_80328C78

lbl_80328C78:

	# ROM: 0x323ED8
	.4byte 0x3E663769
	.4byte 0x72BEA4D0


.global lbl_80328C80

lbl_80328C80:

	# ROM: 0x323EE0
	.4byte 0x40000000
	.4byte 0


.global lbl_80328C88

lbl_80328C88:

	# ROM: 0x323EE8
	.4byte 0x43300000
	.4byte 0x80000000