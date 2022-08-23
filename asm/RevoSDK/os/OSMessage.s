.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800E0610
func_800E0610:
/* 800E0610 000DBF30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E0614 000DBF34  7C 08 02 A6 */	mflr r0
/* 800E0618 000DBF38  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E061C 000DBF3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E0620 000DBF40  7C BF 2B 78 */	mr r31, r5
/* 800E0624 000DBF44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E0628 000DBF48  7C 9E 23 78 */	mr r30, r4
/* 800E062C 000DBF4C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E0630 000DBF50  7C 7D 1B 78 */	mr r29, r3
/* 800E0634 000DBF54  48 00 24 3D */	bl func_800E2A70
/* 800E0638 000DBF58  38 7D 00 08 */	addi r3, r29, 8
/* 800E063C 000DBF5C  48 00 24 35 */	bl func_800E2A70
/* 800E0640 000DBF60  38 00 00 00 */	li r0, 0
/* 800E0644 000DBF64  93 DD 00 10 */	stw r30, 0x10(r29)
/* 800E0648 000DBF68  93 FD 00 14 */	stw r31, 0x14(r29)
/* 800E064C 000DBF6C  90 1D 00 18 */	stw r0, 0x18(r29)
/* 800E0650 000DBF70  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 800E0654 000DBF74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E0658 000DBF78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E065C 000DBF7C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E0660 000DBF80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E0664 000DBF84  7C 08 03 A6 */	mtlr r0
/* 800E0668 000DBF88  38 21 00 20 */	addi r1, r1, 0x20
/* 800E066C 000DBF8C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E0670
func_800E0670:
/* 800E0670 000DBF90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E0674 000DBF94  7C 08 02 A6 */	mflr r0
/* 800E0678 000DBF98  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E067C 000DBF9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E0680 000DBFA0  7C BF 2B 78 */	mr r31, r5
/* 800E0684 000DBFA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E0688 000DBFA8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E068C 000DBFAC  7C 9D 23 78 */	mr r29, r4
/* 800E0690 000DBFB0  93 81 00 10 */	stw r28, 0x10(r1)
/* 800E0694 000DBFB4  7C 7C 1B 78 */	mr r28, r3
/* 800E0698 000DBFB8  4B FF F7 89 */	bl func_800DFE20
/* 800E069C 000DBFBC  7C 7E 1B 78 */	mr r30, r3
/* 800E06A0 000DBFC0  57 FF 07 FE */	clrlwi r31, r31, 0x1f
/* 800E06A4 000DBFC4  48 00 00 24 */	b lbl_800E06C8
lbl_800E06A8:
/* 800E06A8 000DBFC8  2C 1F 00 00 */	cmpwi r31, 0
/* 800E06AC 000DBFCC  40 82 00 14 */	bne lbl_800E06C0
/* 800E06B0 000DBFD0  7F C3 F3 78 */	mr r3, r30
/* 800E06B4 000DBFD4  4B FF F7 AD */	bl func_800DFE60
/* 800E06B8 000DBFD8  38 60 00 00 */	li r3, 0
/* 800E06BC 000DBFDC  48 00 00 5C */	b lbl_800E0718
lbl_800E06C0:
/* 800E06C0 000DBFE0  7F 83 E3 78 */	mr r3, r28
/* 800E06C4 000DBFE4  48 00 34 7D */	bl func_800E3B40
lbl_800E06C8:
/* 800E06C8 000DBFE8  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 800E06CC 000DBFEC  80 DC 00 14 */	lwz r6, 0x14(r28)
/* 800E06D0 000DBFF0  7C 06 20 00 */	cmpw r6, r4
/* 800E06D4 000DBFF4  40 81 FF D4 */	ble lbl_800E06A8
/* 800E06D8 000DBFF8  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 800E06DC 000DBFFC  38 7C 00 08 */	addi r3, r28, 8
/* 800E06E0 000DC000  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 800E06E4 000DC004  7C 80 22 14 */	add r4, r0, r4
/* 800E06E8 000DC008  7C 04 33 D6 */	divw r0, r4, r6
/* 800E06EC 000DC00C  7C 00 31 D6 */	mullw r0, r0, r6
/* 800E06F0 000DC010  7C 00 20 50 */	subf r0, r0, r4
/* 800E06F4 000DC014  54 00 10 3A */	slwi r0, r0, 2
/* 800E06F8 000DC018  7F A5 01 2E */	stwx r29, r5, r0
/* 800E06FC 000DC01C  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 800E0700 000DC020  38 04 00 01 */	addi r0, r4, 1
/* 800E0704 000DC024  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 800E0708 000DC028  48 00 35 29 */	bl func_800E3C30
/* 800E070C 000DC02C  7F C3 F3 78 */	mr r3, r30
/* 800E0710 000DC030  4B FF F7 51 */	bl func_800DFE60
/* 800E0714 000DC034  38 60 00 01 */	li r3, 1
lbl_800E0718:
/* 800E0718 000DC038  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E071C 000DC03C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E0720 000DC040  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E0724 000DC044  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E0728 000DC048  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800E072C 000DC04C  7C 08 03 A6 */	mtlr r0
/* 800E0730 000DC050  38 21 00 20 */	addi r1, r1, 0x20
/* 800E0734 000DC054  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E0740
func_800E0740:
/* 800E0740 000DC060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E0744 000DC064  7C 08 02 A6 */	mflr r0
/* 800E0748 000DC068  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E074C 000DC06C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E0750 000DC070  7C 7F 1B 78 */	mr r31, r3
/* 800E0754 000DC074  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E0758 000DC078  7C BE 2B 78 */	mr r30, r5
/* 800E075C 000DC07C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E0760 000DC080  93 81 00 10 */	stw r28, 0x10(r1)
/* 800E0764 000DC084  7C 9C 23 78 */	mr r28, r4
/* 800E0768 000DC088  4B FF F6 B9 */	bl func_800DFE20
/* 800E076C 000DC08C  7C 7D 1B 78 */	mr r29, r3
/* 800E0770 000DC090  57 DE 07 FE */	clrlwi r30, r30, 0x1f
/* 800E0774 000DC094  48 00 00 24 */	b lbl_800E0798
lbl_800E0778:
/* 800E0778 000DC098  2C 1E 00 00 */	cmpwi r30, 0
/* 800E077C 000DC09C  40 82 00 14 */	bne lbl_800E0790
/* 800E0780 000DC0A0  7F A3 EB 78 */	mr r3, r29
/* 800E0784 000DC0A4  4B FF F6 DD */	bl func_800DFE60
/* 800E0788 000DC0A8  38 60 00 00 */	li r3, 0
/* 800E078C 000DC0AC  48 00 00 70 */	b lbl_800E07FC
lbl_800E0790:
/* 800E0790 000DC0B0  38 7F 00 08 */	addi r3, r31, 8
/* 800E0794 000DC0B4  48 00 33 AD */	bl func_800E3B40
lbl_800E0798:
/* 800E0798 000DC0B8  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 800E079C 000DC0BC  2C 00 00 00 */	cmpwi r0, 0
/* 800E07A0 000DC0C0  41 82 FF D8 */	beq lbl_800E0778
/* 800E07A4 000DC0C4  2C 1C 00 00 */	cmpwi r28, 0
/* 800E07A8 000DC0C8  41 82 00 18 */	beq lbl_800E07C0
/* 800E07AC 000DC0CC  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 800E07B0 000DC0D0  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 800E07B4 000DC0D4  54 00 10 3A */	slwi r0, r0, 2
/* 800E07B8 000DC0D8  7C 03 00 2E */	lwzx r0, r3, r0
/* 800E07BC 000DC0DC  90 1C 00 00 */	stw r0, 0(r28)
lbl_800E07C0:
/* 800E07C0 000DC0E0  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 800E07C4 000DC0E4  7F E3 FB 78 */	mr r3, r31
/* 800E07C8 000DC0E8  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 800E07CC 000DC0EC  38 E4 00 01 */	addi r7, r4, 1
/* 800E07D0 000DC0F0  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 800E07D4 000DC0F4  7C A7 33 D6 */	divw r5, r7, r6
/* 800E07D8 000DC0F8  38 04 FF FF */	addi r0, r4, -1
/* 800E07DC 000DC0FC  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 800E07E0 000DC100  7C 05 31 D6 */	mullw r0, r5, r6
/* 800E07E4 000DC104  7C 00 38 50 */	subf r0, r0, r7
/* 800E07E8 000DC108  90 1F 00 18 */	stw r0, 0x18(r31)
/* 800E07EC 000DC10C  48 00 34 45 */	bl func_800E3C30
/* 800E07F0 000DC110  7F A3 EB 78 */	mr r3, r29
/* 800E07F4 000DC114  4B FF F6 6D */	bl func_800DFE60
/* 800E07F8 000DC118  38 60 00 01 */	li r3, 1
lbl_800E07FC:
/* 800E07FC 000DC11C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E0800 000DC120  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E0804 000DC124  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E0808 000DC128  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E080C 000DC12C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800E0810 000DC130  7C 08 03 A6 */	mtlr r0
/* 800E0814 000DC134  38 21 00 20 */	addi r1, r1, 0x20
/* 800E0818 000DC138  4E 80 00 20 */	blr 