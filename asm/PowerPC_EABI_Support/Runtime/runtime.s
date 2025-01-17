.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.global func_80104044
func_80104044:
/* 80104044 000FF964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80104048 000FF968  3C 80 80 2E */	lis r4, lbl_802DDED0@ha
/* 8010404C 000FF96C  38 84 DE D0 */	addi r4, r4, lbl_802DDED0@l
/* 80104050 000FF970  38 60 00 00 */	li r3, 0
/* 80104054 000FF974  C8 04 00 00 */	lfd f0, 0(r4)
/* 80104058 000FF978  C8 64 00 08 */	lfd f3, 8(r4)
/* 8010405C 000FF97C  C8 84 00 10 */	lfd f4, 0x10(r4)
/* 80104060 000FF980  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80104064 000FF984  FF 01 18 00 */	fcmpu cr6, f1, f3
/* 80104068 000FF988  41 80 00 30 */	blt lbl_80104098
/* 8010406C 000FF98C  38 63 FF FF */	addi r3, r3, -1
/* 80104070 000FF990  40 98 00 28 */	bge cr6, lbl_80104098
/* 80104074 000FF994  FF 81 20 00 */	fcmpu cr7, f1, f4
/* 80104078 000FF998  FC 40 08 90 */	fmr f2, f1
/* 8010407C 000FF99C  41 9C 00 08 */	blt cr7, lbl_80104084
/* 80104080 000FF9A0  FC 41 20 28 */	fsub f2, f1, f4
lbl_80104084:
/* 80104084 000FF9A4  FC 40 10 1E */	fctiwz f2, f2
/* 80104088 000FF9A8  D8 41 00 08 */	stfd f2, 8(r1)
/* 8010408C 000FF9AC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80104090 000FF9B0  41 9C 00 08 */	blt cr7, lbl_80104098
/* 80104094 000FF9B4  3C 63 80 00 */	addis r3, r3, 0x8000
lbl_80104098:
/* 80104098 000FF9B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8010409C 000FF9BC  4E 80 00 20 */	blr 

.global func_801040A0
func_801040A0:
/* 801040A0 000FF9C0  D9 CB FF 70 */	stfd f14, -0x90(r11)
/* 801040A4 000FF9C4  D9 EB FF 78 */	stfd f15, -0x88(r11)
/* 801040A8 000FF9C8  DA 0B FF 80 */	stfd f16, -0x80(r11)
/* 801040AC 000FF9CC  DA 2B FF 88 */	stfd f17, -0x78(r11)
/* 801040B0 000FF9D0  DA 4B FF 90 */	stfd f18, -0x70(r11)
/* 801040B4 000FF9D4  DA 6B FF 98 */	stfd f19, -0x68(r11)
/* 801040B8 000FF9D8  DA 8B FF A0 */	stfd f20, -0x60(r11)
/* 801040BC 000FF9DC  DA AB FF A8 */	stfd f21, -0x58(r11)
/* 801040C0 000FF9E0  DA CB FF B0 */	stfd f22, -0x50(r11)

.global func_801040C4
func_801040C4:
/* 801040C4 000FF9E4  DA EB FF B8 */	stfd f23, -0x48(r11)
/* 801040C8 000FF9E8  DB 0B FF C0 */	stfd f24, -0x40(r11)
/* 801040CC 000FF9EC  DB 2B FF C8 */	stfd f25, -0x38(r11)
/* 801040D0 000FF9F0  DB 4B FF D0 */	stfd f26, -0x30(r11)
/* 801040D4 000FF9F4  DB 6B FF D8 */	stfd f27, -0x28(r11)
/* 801040D8 000FF9F8  DB 8B FF E0 */	stfd f28, -0x20(r11)
/* 801040DC 000FF9FC  DB AB FF E8 */	stfd f29, -0x18(r11)
/* 801040E0 000FFA00  DB CB FF F0 */	stfd f30, -0x10(r11)
/* 801040E4 000FFA04  DB EB FF F8 */	stfd f31, -8(r11)
/* 801040E8 000FFA08  4E 80 00 20 */	blr 

.global func_801040EC
func_801040EC:
/* 801040EC 000FFA0C  C9 CB FF 70 */	lfd f14, -0x90(r11)
/* 801040F0 000FFA10  C9 EB FF 78 */	lfd f15, -0x88(r11)
/* 801040F4 000FFA14  CA 0B FF 80 */	lfd f16, -0x80(r11)
/* 801040F8 000FFA18  CA 2B FF 88 */	lfd f17, -0x78(r11)
/* 801040FC 000FFA1C  CA 4B FF 90 */	lfd f18, -0x70(r11)
/* 80104100 000FFA20  CA 6B FF 98 */	lfd f19, -0x68(r11)
/* 80104104 000FFA24  CA 8B FF A0 */	lfd f20, -0x60(r11)
/* 80104108 000FFA28  CA AB FF A8 */	lfd f21, -0x58(r11)
/* 8010410C 000FFA2C  CA CB FF B0 */	lfd f22, -0x50(r11)

.global func_80104110
func_80104110:
/* 80104110 000FFA30  CA EB FF B8 */	lfd f23, -0x48(r11)
/* 80104114 000FFA34  CB 0B FF C0 */	lfd f24, -0x40(r11)
/* 80104118 000FFA38  CB 2B FF C8 */	lfd f25, -0x38(r11)
/* 8010411C 000FFA3C  CB 4B FF D0 */	lfd f26, -0x30(r11)
/* 80104120 000FFA40  CB 6B FF D8 */	lfd f27, -0x28(r11)
/* 80104124 000FFA44  CB 8B FF E0 */	lfd f28, -0x20(r11)
/* 80104128 000FFA48  CB AB FF E8 */	lfd f29, -0x18(r11)
/* 8010412C 000FFA4C  CB CB FF F0 */	lfd f30, -0x10(r11)
/* 80104130 000FFA50  CB EB FF F8 */	lfd f31, -8(r11)
/* 80104134 000FFA54  4E 80 00 20 */	blr 

.global func_80104138
func_80104138:
/* 80104138 000FFA58  91 CB FF B8 */	stw r14, -0x48(r11)

.global func_8010413C
func_8010413C:
/* 8010413C 000FFA5C  91 EB FF BC */	stw r15, -0x44(r11)

.global func_80104140
func_80104140:
/* 80104140 000FFA60  92 0B FF C0 */	stw r16, -0x40(r11)

.global func_80104144
func_80104144:
/* 80104144 000FFA64  92 2B FF C4 */	stw r17, -0x3c(r11)

.global func_80104148
func_80104148:
/* 80104148 000FFA68  92 4B FF C8 */	stw r18, -0x38(r11)

.global func_8010414C
func_8010414C:
/* 8010414C 000FFA6C  92 6B FF CC */	stw r19, -0x34(r11)

.global func_80104150
func_80104150:
/* 80104150 000FFA70  92 8B FF D0 */	stw r20, -0x30(r11)

.global func_80104154
func_80104154:
/* 80104154 000FFA74  92 AB FF D4 */	stw r21, -0x2c(r11)

.global func_80104158
func_80104158:
/* 80104158 000FFA78  92 CB FF D8 */	stw r22, -0x28(r11)

.global func_8010415C
func_8010415C:
/* 8010415C 000FFA7C  92 EB FF DC */	stw r23, -0x24(r11)

.global func_80104160
func_80104160:
/* 80104160 000FFA80  93 0B FF E0 */	stw r24, -0x20(r11)

.global func_80104164
func_80104164:
/* 80104164 000FFA84  93 2B FF E4 */	stw r25, -0x1c(r11)

.global func_80104168
func_80104168:
/* 80104168 000FFA88  93 4B FF E8 */	stw r26, -0x18(r11)

.global func_8010416C
func_8010416C:
/* 8010416C 000FFA8C  93 6B FF EC */	stw r27, -0x14(r11)
/* 80104170 000FFA90  93 8B FF F0 */	stw r28, -0x10(r11)
/* 80104174 000FFA94  93 AB FF F4 */	stw r29, -0xc(r11)
/* 80104178 000FFA98  93 CB FF F8 */	stw r30, -8(r11)
/* 8010417C 000FFA9C  93 EB FF FC */	stw r31, -4(r11)
/* 80104180 000FFAA0  4E 80 00 20 */	blr 

.global func_80104184
func_80104184:
/* 80104184 000FFAA4  81 CB FF B8 */	lwz r14, -0x48(r11)

.global func_80104188
func_80104188:
/* 80104188 000FFAA8  81 EB FF BC */	lwz r15, -0x44(r11)

.global func_8010418C
func_8010418C:
/* 8010418C 000FFAAC  82 0B FF C0 */	lwz r16, -0x40(r11)

.global func_80104190
func_80104190:
/* 80104190 000FFAB0  82 2B FF C4 */	lwz r17, -0x3c(r11)

.global func_80104194
func_80104194:
/* 80104194 000FFAB4  82 4B FF C8 */	lwz r18, -0x38(r11)

.global func_80104198
func_80104198:
/* 80104198 000FFAB8  82 6B FF CC */	lwz r19, -0x34(r11)

.global func_8010419C
func_8010419C:
/* 8010419C 000FFABC  82 8B FF D0 */	lwz r20, -0x30(r11)

.global func_801041A0
func_801041A0:
/* 801041A0 000FFAC0  82 AB FF D4 */	lwz r21, -0x2c(r11)

.global func_801041A4
func_801041A4:
/* 801041A4 000FFAC4  82 CB FF D8 */	lwz r22, -0x28(r11)

.global func_801041A8
func_801041A8:
/* 801041A8 000FFAC8  82 EB FF DC */	lwz r23, -0x24(r11)

.global func_801041AC
func_801041AC:
/* 801041AC 000FFACC  83 0B FF E0 */	lwz r24, -0x20(r11)

.global func_801041B0
func_801041B0:
/* 801041B0 000FFAD0  83 2B FF E4 */	lwz r25, -0x1c(r11)

.global func_801041B4
func_801041B4:
/* 801041B4 000FFAD4  83 4B FF E8 */	lwz r26, -0x18(r11)

.global func_801041B8
func_801041B8:
/* 801041B8 000FFAD8  83 6B FF EC */	lwz r27, -0x14(r11)
/* 801041BC 000FFADC  83 8B FF F0 */	lwz r28, -0x10(r11)
/* 801041C0 000FFAE0  83 AB FF F4 */	lwz r29, -0xc(r11)
/* 801041C4 000FFAE4  83 CB FF F8 */	lwz r30, -8(r11)
/* 801041C8 000FFAE8  83 EB FF FC */	lwz r31, -4(r11)
/* 801041CC 000FFAEC  4E 80 00 20 */	blr 

.global func_801041D0
func_801041D0:
/* 801041D0 000FFAF0  2C 03 00 00 */	cmpwi r3, 0
/* 801041D4 000FFAF4  7C 60 00 34 */	cntlzw r0, r3
/* 801041D8 000FFAF8  7C 89 00 34 */	cntlzw r9, r4
/* 801041DC 000FFAFC  40 82 00 08 */	bne lbl_801041E4
/* 801041E0 000FFB00  38 09 00 20 */	addi r0, r9, 0x20
lbl_801041E4:
/* 801041E4 000FFB04  2C 05 00 00 */	cmpwi r5, 0
/* 801041E8 000FFB08  7C A9 00 34 */	cntlzw r9, r5
/* 801041EC 000FFB0C  7C CA 00 34 */	cntlzw r10, r6
/* 801041F0 000FFB10  40 82 00 08 */	bne lbl_801041F8
/* 801041F4 000FFB14  39 2A 00 20 */	addi r9, r10, 0x20
lbl_801041F8:
/* 801041F8 000FFB18  7C 00 48 00 */	cmpw r0, r9
/* 801041FC 000FFB1C  21 40 00 40 */	subfic r10, r0, 0x40
/* 80104200 000FFB20  41 81 00 B0 */	bgt lbl_801042B0
/* 80104204 000FFB24  39 29 00 01 */	addi r9, r9, 1
/* 80104208 000FFB28  21 29 00 40 */	subfic r9, r9, 0x40
/* 8010420C 000FFB2C  7C 00 4A 14 */	add r0, r0, r9
/* 80104210 000FFB30  7D 29 50 50 */	subf r9, r9, r10
/* 80104214 000FFB34  7D 29 03 A6 */	mtctr r9
/* 80104218 000FFB38  2C 09 00 20 */	cmpwi r9, 0x20
/* 8010421C 000FFB3C  38 E9 FF E0 */	addi r7, r9, -32
/* 80104220 000FFB40  41 80 00 10 */	blt lbl_80104230
/* 80104224 000FFB44  7C 68 3C 30 */	srw r8, r3, r7
/* 80104228 000FFB48  38 E0 00 00 */	li r7, 0
/* 8010422C 000FFB4C  48 00 00 18 */	b lbl_80104244
lbl_80104230:
/* 80104230 000FFB50  7C 88 4C 30 */	srw r8, r4, r9
/* 80104234 000FFB54  20 E9 00 20 */	subfic r7, r9, 0x20
/* 80104238 000FFB58  7C 67 38 30 */	slw r7, r3, r7
/* 8010423C 000FFB5C  7D 08 3B 78 */	or r8, r8, r7
/* 80104240 000FFB60  7C 67 4C 30 */	srw r7, r3, r9
lbl_80104244:
/* 80104244 000FFB64  2C 00 00 20 */	cmpwi r0, 0x20
/* 80104248 000FFB68  31 20 FF E0 */	addic r9, r0, -32
/* 8010424C 000FFB6C  41 80 00 10 */	blt lbl_8010425C
/* 80104250 000FFB70  7C 83 48 30 */	slw r3, r4, r9
/* 80104254 000FFB74  38 80 00 00 */	li r4, 0
/* 80104258 000FFB78  48 00 00 18 */	b lbl_80104270
lbl_8010425C:
/* 8010425C 000FFB7C  7C 63 00 30 */	slw r3, r3, r0
/* 80104260 000FFB80  21 20 00 20 */	subfic r9, r0, 0x20
/* 80104264 000FFB84  7C 89 4C 30 */	srw r9, r4, r9
/* 80104268 000FFB88  7C 63 4B 78 */	or r3, r3, r9
/* 8010426C 000FFB8C  7C 84 00 30 */	slw r4, r4, r0
lbl_80104270:
/* 80104270 000FFB90  39 40 FF FF */	li r10, -1
/* 80104274 000FFB94  30 E7 00 00 */	addic r7, r7, 0
lbl_80104278:
/* 80104278 000FFB98  7C 84 21 14 */	adde r4, r4, r4
/* 8010427C 000FFB9C  7C 63 19 14 */	adde r3, r3, r3
/* 80104280 000FFBA0  7D 08 41 14 */	adde r8, r8, r8
/* 80104284 000FFBA4  7C E7 39 14 */	adde r7, r7, r7
/* 80104288 000FFBA8  7C 06 40 10 */	subfc r0, r6, r8
/* 8010428C 000FFBAC  7D 25 39 11 */	subfe. r9, r5, r7
/* 80104290 000FFBB0  41 80 00 10 */	blt lbl_801042A0
/* 80104294 000FFBB4  7C 08 03 78 */	mr r8, r0
/* 80104298 000FFBB8  7D 27 4B 78 */	mr r7, r9
/* 8010429C 000FFBBC  30 0A 00 01 */	addic r0, r10, 1
lbl_801042A0:
/* 801042A0 000FFBC0  42 00 FF D8 */	bdnz lbl_80104278
/* 801042A4 000FFBC4  7C 84 21 14 */	adde r4, r4, r4
/* 801042A8 000FFBC8  7C 63 19 14 */	adde r3, r3, r3
/* 801042AC 000FFBCC  4E 80 00 20 */	blr 
lbl_801042B0:
/* 801042B0 000FFBD0  38 80 00 00 */	li r4, 0
/* 801042B4 000FFBD4  38 60 00 00 */	li r3, 0
/* 801042B8 000FFBD8  4E 80 00 20 */	blr 

.global func_801042BC
func_801042BC:
/* 801042BC 000FFBDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801042C0 000FFBE0  54 69 00 01 */	rlwinm. r9, r3, 0, 0, 0
/* 801042C4 000FFBE4  41 82 00 0C */	beq lbl_801042D0
/* 801042C8 000FFBE8  20 84 00 00 */	subfic r4, r4, 0
/* 801042CC 000FFBEC  7C 63 01 90 */	subfze r3, r3
lbl_801042D0:
/* 801042D0 000FFBF0  91 21 00 08 */	stw r9, 8(r1)
/* 801042D4 000FFBF4  54 AA 00 01 */	rlwinm. r10, r5, 0, 0, 0
/* 801042D8 000FFBF8  41 82 00 0C */	beq lbl_801042E4
/* 801042DC 000FFBFC  20 C6 00 00 */	subfic r6, r6, 0
/* 801042E0 000FFC00  7C A5 01 90 */	subfze r5, r5
lbl_801042E4:
/* 801042E4 000FFC04  91 41 00 0C */	stw r10, 0xc(r1)
/* 801042E8 000FFC08  2C 03 00 00 */	cmpwi r3, 0
/* 801042EC 000FFC0C  7C 60 00 34 */	cntlzw r0, r3
/* 801042F0 000FFC10  7C 89 00 34 */	cntlzw r9, r4
/* 801042F4 000FFC14  40 82 00 08 */	bne lbl_801042FC
/* 801042F8 000FFC18  38 09 00 20 */	addi r0, r9, 0x20
lbl_801042FC:
/* 801042FC 000FFC1C  2C 05 00 00 */	cmpwi r5, 0
/* 80104300 000FFC20  7C A9 00 34 */	cntlzw r9, r5
/* 80104304 000FFC24  7C CA 00 34 */	cntlzw r10, r6
/* 80104308 000FFC28  40 82 00 08 */	bne lbl_80104310
/* 8010430C 000FFC2C  39 2A 00 20 */	addi r9, r10, 0x20
lbl_80104310:
/* 80104310 000FFC30  7C 00 48 00 */	cmpw r0, r9
/* 80104314 000FFC34  21 40 00 40 */	subfic r10, r0, 0x40
/* 80104318 000FFC38  41 81 00 CC */	bgt lbl_801043E4
/* 8010431C 000FFC3C  39 29 00 01 */	addi r9, r9, 1
/* 80104320 000FFC40  21 29 00 40 */	subfic r9, r9, 0x40
/* 80104324 000FFC44  7C 00 4A 14 */	add r0, r0, r9
/* 80104328 000FFC48  7D 29 50 50 */	subf r9, r9, r10
/* 8010432C 000FFC4C  7D 29 03 A6 */	mtctr r9
/* 80104330 000FFC50  2C 09 00 20 */	cmpwi r9, 0x20
/* 80104334 000FFC54  38 E9 FF E0 */	addi r7, r9, -32
/* 80104338 000FFC58  41 80 00 10 */	blt lbl_80104348
/* 8010433C 000FFC5C  7C 68 3C 30 */	srw r8, r3, r7
/* 80104340 000FFC60  38 E0 00 00 */	li r7, 0
/* 80104344 000FFC64  48 00 00 18 */	b lbl_8010435C
lbl_80104348:
/* 80104348 000FFC68  7C 88 4C 30 */	srw r8, r4, r9
/* 8010434C 000FFC6C  20 E9 00 20 */	subfic r7, r9, 0x20
/* 80104350 000FFC70  7C 67 38 30 */	slw r7, r3, r7
/* 80104354 000FFC74  7D 08 3B 78 */	or r8, r8, r7
/* 80104358 000FFC78  7C 67 4C 30 */	srw r7, r3, r9
lbl_8010435C:
/* 8010435C 000FFC7C  2C 00 00 20 */	cmpwi r0, 0x20
/* 80104360 000FFC80  31 20 FF E0 */	addic r9, r0, -32
/* 80104364 000FFC84  41 80 00 10 */	blt lbl_80104374
/* 80104368 000FFC88  7C 83 48 30 */	slw r3, r4, r9
/* 8010436C 000FFC8C  38 80 00 00 */	li r4, 0
/* 80104370 000FFC90  48 00 00 18 */	b lbl_80104388
lbl_80104374:
/* 80104374 000FFC94  7C 63 00 30 */	slw r3, r3, r0
/* 80104378 000FFC98  21 20 00 20 */	subfic r9, r0, 0x20
/* 8010437C 000FFC9C  7C 89 4C 30 */	srw r9, r4, r9
/* 80104380 000FFCA0  7C 63 4B 78 */	or r3, r3, r9
/* 80104384 000FFCA4  7C 84 00 30 */	slw r4, r4, r0
lbl_80104388:
/* 80104388 000FFCA8  39 40 FF FF */	li r10, -1
/* 8010438C 000FFCAC  30 E7 00 00 */	addic r7, r7, 0
lbl_80104390:
/* 80104390 000FFCB0  7C 84 21 14 */	adde r4, r4, r4
/* 80104394 000FFCB4  7C 63 19 14 */	adde r3, r3, r3
/* 80104398 000FFCB8  7D 08 41 14 */	adde r8, r8, r8
/* 8010439C 000FFCBC  7C E7 39 14 */	adde r7, r7, r7
/* 801043A0 000FFCC0  7C 06 40 10 */	subfc r0, r6, r8
/* 801043A4 000FFCC4  7D 25 39 11 */	subfe. r9, r5, r7
/* 801043A8 000FFCC8  41 80 00 10 */	blt lbl_801043B8
/* 801043AC 000FFCCC  7C 08 03 78 */	mr r8, r0
/* 801043B0 000FFCD0  7D 27 4B 78 */	mr r7, r9
/* 801043B4 000FFCD4  30 0A 00 01 */	addic r0, r10, 1
lbl_801043B8:
/* 801043B8 000FFCD8  42 00 FF D8 */	bdnz lbl_80104390
/* 801043BC 000FFCDC  7C 84 21 14 */	adde r4, r4, r4
/* 801043C0 000FFCE0  7C 63 19 14 */	adde r3, r3, r3
/* 801043C4 000FFCE4  81 21 00 08 */	lwz r9, 8(r1)
/* 801043C8 000FFCE8  81 41 00 0C */	lwz r10, 0xc(r1)
/* 801043CC 000FFCEC  7D 27 52 79 */	xor. r7, r9, r10
/* 801043D0 000FFCF0  41 82 00 10 */	beq lbl_801043E0
/* 801043D4 000FFCF4  2C 09 00 00 */	cmpwi r9, 0
/* 801043D8 000FFCF8  20 84 00 00 */	subfic r4, r4, 0
/* 801043DC 000FFCFC  7C 63 01 90 */	subfze r3, r3
lbl_801043E0:
/* 801043E0 000FFD00  48 00 00 0C */	b lbl_801043EC
lbl_801043E4:
/* 801043E4 000FFD04  38 80 00 00 */	li r4, 0
/* 801043E8 000FFD08  38 60 00 00 */	li r3, 0
lbl_801043EC:
/* 801043EC 000FFD0C  38 21 00 10 */	addi r1, r1, 0x10
/* 801043F0 000FFD10  4E 80 00 20 */	blr 

.global func_801043F4
func_801043F4:
/* 801043F4 000FFD14  2C 03 00 00 */	cmpwi r3, 0
/* 801043F8 000FFD18  7C 60 00 34 */	cntlzw r0, r3
/* 801043FC 000FFD1C  7C 89 00 34 */	cntlzw r9, r4
/* 80104400 000FFD20  40 82 00 08 */	bne lbl_80104408
/* 80104404 000FFD24  38 09 00 20 */	addi r0, r9, 0x20
lbl_80104408:
/* 80104408 000FFD28  2C 05 00 00 */	cmpwi r5, 0
/* 8010440C 000FFD2C  7C A9 00 34 */	cntlzw r9, r5
/* 80104410 000FFD30  7C CA 00 34 */	cntlzw r10, r6
/* 80104414 000FFD34  40 82 00 08 */	bne lbl_8010441C
/* 80104418 000FFD38  39 2A 00 20 */	addi r9, r10, 0x20
lbl_8010441C:
/* 8010441C 000FFD3C  7C 00 48 00 */	cmpw r0, r9
/* 80104420 000FFD40  21 40 00 40 */	subfic r10, r0, 0x40
/* 80104424 000FFD44  41 81 00 B0 */	bgt lbl_801044D4
/* 80104428 000FFD48  39 29 00 01 */	addi r9, r9, 1
/* 8010442C 000FFD4C  21 29 00 40 */	subfic r9, r9, 0x40
/* 80104430 000FFD50  7C 00 4A 14 */	add r0, r0, r9
/* 80104434 000FFD54  7D 29 50 50 */	subf r9, r9, r10
/* 80104438 000FFD58  7D 29 03 A6 */	mtctr r9
/* 8010443C 000FFD5C  2C 09 00 20 */	cmpwi r9, 0x20
/* 80104440 000FFD60  38 E9 FF E0 */	addi r7, r9, -32
/* 80104444 000FFD64  41 80 00 10 */	blt lbl_80104454
/* 80104448 000FFD68  7C 68 3C 30 */	srw r8, r3, r7
/* 8010444C 000FFD6C  38 E0 00 00 */	li r7, 0
/* 80104450 000FFD70  48 00 00 18 */	b lbl_80104468
lbl_80104454:
/* 80104454 000FFD74  7C 88 4C 30 */	srw r8, r4, r9
/* 80104458 000FFD78  20 E9 00 20 */	subfic r7, r9, 0x20
/* 8010445C 000FFD7C  7C 67 38 30 */	slw r7, r3, r7
/* 80104460 000FFD80  7D 08 3B 78 */	or r8, r8, r7
/* 80104464 000FFD84  7C 67 4C 30 */	srw r7, r3, r9
lbl_80104468:
/* 80104468 000FFD88  2C 00 00 20 */	cmpwi r0, 0x20
/* 8010446C 000FFD8C  31 20 FF E0 */	addic r9, r0, -32
/* 80104470 000FFD90  41 80 00 10 */	blt lbl_80104480
/* 80104474 000FFD94  7C 83 48 30 */	slw r3, r4, r9
/* 80104478 000FFD98  38 80 00 00 */	li r4, 0
/* 8010447C 000FFD9C  48 00 00 18 */	b lbl_80104494
lbl_80104480:
/* 80104480 000FFDA0  7C 63 00 30 */	slw r3, r3, r0
/* 80104484 000FFDA4  21 20 00 20 */	subfic r9, r0, 0x20
/* 80104488 000FFDA8  7C 89 4C 30 */	srw r9, r4, r9
/* 8010448C 000FFDAC  7C 63 4B 78 */	or r3, r3, r9
/* 80104490 000FFDB0  7C 84 00 30 */	slw r4, r4, r0
lbl_80104494:
/* 80104494 000FFDB4  39 40 FF FF */	li r10, -1
/* 80104498 000FFDB8  30 E7 00 00 */	addic r7, r7, 0
lbl_8010449C:
/* 8010449C 000FFDBC  7C 84 21 14 */	adde r4, r4, r4
/* 801044A0 000FFDC0  7C 63 19 14 */	adde r3, r3, r3
/* 801044A4 000FFDC4  7D 08 41 14 */	adde r8, r8, r8
/* 801044A8 000FFDC8  7C E7 39 14 */	adde r7, r7, r7
/* 801044AC 000FFDCC  7C 06 40 10 */	subfc r0, r6, r8
/* 801044B0 000FFDD0  7D 25 39 11 */	subfe. r9, r5, r7
/* 801044B4 000FFDD4  41 80 00 10 */	blt lbl_801044C4
/* 801044B8 000FFDD8  7C 08 03 78 */	mr r8, r0
/* 801044BC 000FFDDC  7D 27 4B 78 */	mr r7, r9
/* 801044C0 000FFDE0  30 0A 00 01 */	addic r0, r10, 1
lbl_801044C4:
/* 801044C4 000FFDE4  42 00 FF D8 */	bdnz lbl_8010449C
/* 801044C8 000FFDE8  7D 04 43 78 */	mr r4, r8
/* 801044CC 000FFDEC  7C E3 3B 78 */	mr r3, r7
/* 801044D0 000FFDF0  4E 80 00 20 */	blr 
lbl_801044D4:
/* 801044D4 000FFDF4  4E 80 00 20 */	blr 

.global func_801044D8
func_801044D8:
/* 801044D8 000FFDF8  2F 83 00 00 */	cmpwi cr7, r3, 0
/* 801044DC 000FFDFC  40 9C 00 0C */	bge cr7, lbl_801044E8
/* 801044E0 000FFE00  20 84 00 00 */	subfic r4, r4, 0
/* 801044E4 000FFE04  7C 63 01 90 */	subfze r3, r3
lbl_801044E8:
/* 801044E8 000FFE08  2C 05 00 00 */	cmpwi r5, 0
/* 801044EC 000FFE0C  40 80 00 0C */	bge lbl_801044F8
/* 801044F0 000FFE10  20 C6 00 00 */	subfic r6, r6, 0
/* 801044F4 000FFE14  7C A5 01 90 */	subfze r5, r5
lbl_801044F8:
/* 801044F8 000FFE18  2C 03 00 00 */	cmpwi r3, 0
/* 801044FC 000FFE1C  7C 60 00 34 */	cntlzw r0, r3
/* 80104500 000FFE20  7C 89 00 34 */	cntlzw r9, r4
/* 80104504 000FFE24  40 82 00 08 */	bne lbl_8010450C
/* 80104508 000FFE28  38 09 00 20 */	addi r0, r9, 0x20
lbl_8010450C:
/* 8010450C 000FFE2C  2C 05 00 00 */	cmpwi r5, 0
/* 80104510 000FFE30  7C A9 00 34 */	cntlzw r9, r5
/* 80104514 000FFE34  7C CA 00 34 */	cntlzw r10, r6
/* 80104518 000FFE38  40 82 00 08 */	bne lbl_80104520
/* 8010451C 000FFE3C  39 2A 00 20 */	addi r9, r10, 0x20
lbl_80104520:
/* 80104520 000FFE40  7C 00 48 00 */	cmpw r0, r9
/* 80104524 000FFE44  21 40 00 40 */	subfic r10, r0, 0x40
/* 80104528 000FFE48  41 81 00 AC */	bgt lbl_801045D4
/* 8010452C 000FFE4C  39 29 00 01 */	addi r9, r9, 1
/* 80104530 000FFE50  21 29 00 40 */	subfic r9, r9, 0x40
/* 80104534 000FFE54  7C 00 4A 14 */	add r0, r0, r9
/* 80104538 000FFE58  7D 29 50 50 */	subf r9, r9, r10
/* 8010453C 000FFE5C  7D 29 03 A6 */	mtctr r9
/* 80104540 000FFE60  2C 09 00 20 */	cmpwi r9, 0x20
/* 80104544 000FFE64  38 E9 FF E0 */	addi r7, r9, -32
/* 80104548 000FFE68  41 80 00 10 */	blt lbl_80104558
/* 8010454C 000FFE6C  7C 68 3C 30 */	srw r8, r3, r7
/* 80104550 000FFE70  38 E0 00 00 */	li r7, 0
/* 80104554 000FFE74  48 00 00 18 */	b lbl_8010456C
lbl_80104558:
/* 80104558 000FFE78  7C 88 4C 30 */	srw r8, r4, r9
/* 8010455C 000FFE7C  20 E9 00 20 */	subfic r7, r9, 0x20
/* 80104560 000FFE80  7C 67 38 30 */	slw r7, r3, r7
/* 80104564 000FFE84  7D 08 3B 78 */	or r8, r8, r7
/* 80104568 000FFE88  7C 67 4C 30 */	srw r7, r3, r9
lbl_8010456C:
/* 8010456C 000FFE8C  2C 00 00 20 */	cmpwi r0, 0x20
/* 80104570 000FFE90  31 20 FF E0 */	addic r9, r0, -32
/* 80104574 000FFE94  41 80 00 10 */	blt lbl_80104584
/* 80104578 000FFE98  7C 83 48 30 */	slw r3, r4, r9
/* 8010457C 000FFE9C  38 80 00 00 */	li r4, 0
/* 80104580 000FFEA0  48 00 00 18 */	b lbl_80104598
lbl_80104584:
/* 80104584 000FFEA4  7C 63 00 30 */	slw r3, r3, r0
/* 80104588 000FFEA8  21 20 00 20 */	subfic r9, r0, 0x20
/* 8010458C 000FFEAC  7C 89 4C 30 */	srw r9, r4, r9
/* 80104590 000FFEB0  7C 63 4B 78 */	or r3, r3, r9
/* 80104594 000FFEB4  7C 84 00 30 */	slw r4, r4, r0
lbl_80104598:
/* 80104598 000FFEB8  39 40 FF FF */	li r10, -1
/* 8010459C 000FFEBC  30 E7 00 00 */	addic r7, r7, 0
lbl_801045A0:
/* 801045A0 000FFEC0  7C 84 21 14 */	adde r4, r4, r4
/* 801045A4 000FFEC4  7C 63 19 14 */	adde r3, r3, r3
/* 801045A8 000FFEC8  7D 08 41 14 */	adde r8, r8, r8
/* 801045AC 000FFECC  7C E7 39 14 */	adde r7, r7, r7
/* 801045B0 000FFED0  7C 06 40 10 */	subfc r0, r6, r8
/* 801045B4 000FFED4  7D 25 39 11 */	subfe. r9, r5, r7
/* 801045B8 000FFED8  41 80 00 10 */	blt lbl_801045C8
/* 801045BC 000FFEDC  7C 08 03 78 */	mr r8, r0
/* 801045C0 000FFEE0  7D 27 4B 78 */	mr r7, r9
/* 801045C4 000FFEE4  30 0A 00 01 */	addic r0, r10, 1
lbl_801045C8:
/* 801045C8 000FFEE8  42 00 FF D8 */	bdnz lbl_801045A0
/* 801045CC 000FFEEC  7D 04 43 78 */	mr r4, r8
/* 801045D0 000FFEF0  7C E3 3B 78 */	mr r3, r7
lbl_801045D4:
/* 801045D4 000FFEF4  40 9C 00 0C */	bge cr7, lbl_801045E0
/* 801045D8 000FFEF8  20 84 00 00 */	subfic r4, r4, 0
/* 801045DC 000FFEFC  7C 63 01 90 */	subfze r3, r3
lbl_801045E0:
/* 801045E0 000FFF00  4E 80 00 20 */	blr 

.global func_801045E4
func_801045E4:
/* 801045E4 000FFF04  21 05 00 20 */	subfic r8, r5, 0x20
/* 801045E8 000FFF08  31 25 FF E0 */	addic r9, r5, -32
/* 801045EC 000FFF0C  7C 63 28 30 */	slw r3, r3, r5
/* 801045F0 000FFF10  7C 8A 44 30 */	srw r10, r4, r8
/* 801045F4 000FFF14  7C 63 53 78 */	or r3, r3, r10
/* 801045F8 000FFF18  7C 8A 48 30 */	slw r10, r4, r9
/* 801045FC 000FFF1C  7C 63 53 78 */	or r3, r3, r10
/* 80104600 000FFF20  7C 84 28 30 */	slw r4, r4, r5
/* 80104604 000FFF24  4E 80 00 20 */	blr 

.global func_80104608
func_80104608:
/* 80104608 000FFF28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010460C 000FFF2C  54 65 00 01 */	rlwinm. r5, r3, 0, 0, 0
/* 80104610 000FFF30  41 82 00 0C */	beq lbl_8010461C
/* 80104614 000FFF34  20 84 00 00 */	subfic r4, r4, 0
/* 80104618 000FFF38  7C 63 01 90 */	subfze r3, r3
lbl_8010461C:
/* 8010461C 000FFF3C  7C 67 23 79 */	or. r7, r3, r4
/* 80104620 000FFF40  38 C0 00 00 */	li r6, 0
/* 80104624 000FFF44  41 82 00 80 */	beq lbl_801046A4
/* 80104628 000FFF48  7C 67 00 34 */	cntlzw r7, r3
/* 8010462C 000FFF4C  7C 88 00 34 */	cntlzw r8, r4
/* 80104630 000FFF50  54 E9 D0 08 */	rlwinm r9, r7, 0x1a, 0, 4
/* 80104634 000FFF54  7D 29 FE 70 */	srawi r9, r9, 0x1f
/* 80104638 000FFF58  7D 29 40 38 */	and r9, r9, r8
/* 8010463C 000FFF5C  7C E7 4A 14 */	add r7, r7, r9
/* 80104640 000FFF60  21 07 00 20 */	subfic r8, r7, 0x20
/* 80104644 000FFF64  31 27 FF E0 */	addic r9, r7, -32
/* 80104648 000FFF68  7C 63 38 30 */	slw r3, r3, r7
/* 8010464C 000FFF6C  7C 8A 44 30 */	srw r10, r4, r8
/* 80104650 000FFF70  7C 63 53 78 */	or r3, r3, r10
/* 80104654 000FFF74  7C 8A 48 30 */	slw r10, r4, r9
/* 80104658 000FFF78  7C 63 53 78 */	or r3, r3, r10
/* 8010465C 000FFF7C  7C 84 38 30 */	slw r4, r4, r7
/* 80104660 000FFF80  7C C7 30 50 */	subf r6, r7, r6
/* 80104664 000FFF84  54 87 05 7E */	clrlwi r7, r4, 0x15
/* 80104668 000FFF88  2C 07 04 00 */	cmpwi r7, 0x400
/* 8010466C 000FFF8C  38 C6 04 3E */	addi r6, r6, 0x43e
/* 80104670 000FFF90  41 80 00 1C */	blt lbl_8010468C
/* 80104674 000FFF94  41 81 00 0C */	bgt lbl_80104680
/* 80104678 000FFF98  54 87 05 29 */	rlwinm. r7, r4, 0, 0x14, 0x14
/* 8010467C 000FFF9C  41 82 00 10 */	beq lbl_8010468C
lbl_80104680:
/* 80104680 000FFFA0  30 84 08 00 */	addic r4, r4, 0x800
/* 80104684 000FFFA4  7C 63 01 94 */	addze r3, r3
/* 80104688 000FFFA8  7C C6 01 94 */	addze r6, r6
lbl_8010468C:
/* 8010468C 000FFFAC  54 84 A8 3E */	rotlwi r4, r4, 0x15
/* 80104690 000FFFB0  50 64 A8 14 */	rlwimi r4, r3, 0x15, 0, 0xa
/* 80104694 000FFFB4  54 63 AB 3E */	rlwinm r3, r3, 0x15, 0xc, 0x1f
/* 80104698 000FFFB8  54 C6 A0 16 */	slwi r6, r6, 0x14
/* 8010469C 000FFFBC  7C C3 1B 78 */	or r3, r6, r3
/* 801046A0 000FFFC0  7C A3 1B 78 */	or r3, r5, r3
lbl_801046A4:
/* 801046A4 000FFFC4  90 61 00 08 */	stw r3, 8(r1)
/* 801046A8 000FFFC8  90 81 00 0C */	stw r4, 0xc(r1)
/* 801046AC 000FFFCC  C8 21 00 08 */	lfd f1, 8(r1)
/* 801046B0 000FFFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 801046B4 000FFFD4  4E 80 00 20 */	blr 

.global func_801046B8
func_801046B8:
/* 801046B8 000FFFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801046BC 000FFFDC  D8 21 00 08 */	stfd f1, 8(r1)
/* 801046C0 000FFFE0  80 61 00 08 */	lwz r3, 8(r1)
/* 801046C4 000FFFE4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801046C8 000FFFE8  54 65 65 7E */	rlwinm r5, r3, 0xc, 0x15, 0x1f
/* 801046CC 000FFFEC  28 05 03 FF */	cmplwi r5, 0x3ff
/* 801046D0 000FFFF0  40 80 00 10 */	bge lbl_801046E0
lbl_801046D4:
/* 801046D4 000FFFF4  38 60 00 00 */	li r3, 0
/* 801046D8 000FFFF8  38 80 00 00 */	li r4, 0
/* 801046DC 000FFFFC  48 00 00 7C */	b lbl_80104758
lbl_801046E0:
/* 801046E0 00100000  54 66 00 01 */	rlwinm. r6, r3, 0, 0, 0
/* 801046E4 00100004  40 82 FF F0 */	bne lbl_801046D4
/* 801046E8 00100008  54 63 03 3E */	clrlwi r3, r3, 0xc
/* 801046EC 0010000C  64 63 00 10 */	oris r3, r3, 0x10
/* 801046F0 00100010  38 A5 FB CD */	addi r5, r5, -1075
/* 801046F4 00100014  2C 05 00 00 */	cmpwi r5, 0
/* 801046F8 00100018  40 80 00 2C */	bge lbl_80104724
/* 801046FC 0010001C  7C A5 00 D0 */	neg r5, r5
/* 80104700 00100020  21 05 00 20 */	subfic r8, r5, 0x20
/* 80104704 00100024  31 25 FF E0 */	addic r9, r5, -32
/* 80104708 00100028  7C 84 2C 30 */	srw r4, r4, r5
/* 8010470C 0010002C  7C 6A 40 30 */	slw r10, r3, r8
/* 80104710 00100030  7C 84 53 78 */	or r4, r4, r10
/* 80104714 00100034  7C 6A 4C 30 */	srw r10, r3, r9
/* 80104718 00100038  7C 84 53 78 */	or r4, r4, r10
/* 8010471C 0010003C  7C 63 2C 30 */	srw r3, r3, r5
/* 80104720 00100040  48 00 00 38 */	b lbl_80104758
lbl_80104724:
/* 80104724 00100044  2C 05 00 0B */	cmpwi r5, 0xb
/* 80104728 00100048  40 A1 00 10 */	ble+ lbl_80104738
/* 8010472C 0010004C  38 60 FF FF */	li r3, -1
/* 80104730 00100050  38 80 FF FF */	li r4, -1
/* 80104734 00100054  48 00 00 24 */	b lbl_80104758
lbl_80104738:
/* 80104738 00100058  21 05 00 20 */	subfic r8, r5, 0x20
/* 8010473C 0010005C  31 25 FF E0 */	addic r9, r5, -32
/* 80104740 00100060  7C 63 28 30 */	slw r3, r3, r5
/* 80104744 00100064  7C 8A 44 30 */	srw r10, r4, r8
/* 80104748 00100068  7C 63 53 78 */	or r3, r3, r10
/* 8010474C 0010006C  7C 8A 48 30 */	slw r10, r4, r9
/* 80104750 00100070  7C 63 53 78 */	or r3, r3, r10
/* 80104754 00100074  7C 84 28 30 */	slw r4, r4, r5
lbl_80104758:
/* 80104758 00100078  38 21 00 10 */	addi r1, r1, 0x10
/* 8010475C 0010007C  4E 80 00 20 */	blr 



.section .rodata, "wa"  # 0x802DDDD0 - 0x802E4A88

.global lbl_802DDED0
lbl_802DDED0:
	# ROM: 0x2D9FD0
	.4byte 0
	.4byte 0
	.4byte 0x41F00000
	.4byte 0
	.4byte 0x41E00000
	.4byte 0
