.include "macros.inc"

.section .text, "ax"  # 0x800D8FF0 - 0x801D3284

.balign 16, 0
.global func_800E6910
func_800E6910:
/* 800E6910 000E2230  C0 02 F8 CC */	lfs f0, lbl_803288AC-_SDA2_BASE_(r2)
/* 800E6914 000E2234  C0 22 F8 C8 */	lfs f1, lbl_803288A8-_SDA2_BASE_(r2)
/* 800E6918 000E2238  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800E691C 000E223C  10 41 04 A0 */	ps_merge10 f2, f1, f0
/* 800E6920 000E2240  10 20 0C 60 */	ps_merge01 f1, f0, f1
/* 800E6924 000E2244  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800E6928 000E2248  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800E692C 000E224C  F0 23 00 10 */	psq_st f1, 16(r3), 0, qr0
/* 800E6930 000E2250  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 800E6934 000E2254  F0 43 00 28 */	psq_st f2, 40(r3), 0, qr0
/* 800E6938 000E2258  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6940
func_800E6940:
/* 800E6940 000E2260  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800E6944 000E2264  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 800E6948 000E2268  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 800E694C 000E226C  F0 24 00 08 */	psq_st f1, 8(r4), 0, qr0
/* 800E6950 000E2270  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 800E6954 000E2274  F0 44 00 10 */	psq_st f2, 16(r4), 0, qr0
/* 800E6958 000E2278  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 800E695C 000E227C  F0 64 00 18 */	psq_st f3, 24(r4), 0, qr0
/* 800E6960 000E2280  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 800E6964 000E2284  F0 84 00 20 */	psq_st f4, 32(r4), 0, qr0
/* 800E6968 000E2288  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 800E696C 000E228C  F0 A4 00 28 */	psq_st f5, 40(r4), 0, qr0
/* 800E6970 000E2290  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6980
func_800E6980:
/* 800E6980 000E22A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E6984 000E22A4  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800E6988 000E22A8  D9 C1 00 08 */	stfd f14, 8(r1)
/* 800E698C 000E22AC  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 800E6990 000E22B0  3C C0 80 32 */	lis r6, lbl_8031FAF8@ha
/* 800E6994 000E22B4  E0 E4 00 08 */	psq_l f7, 8(r4), 0, qr0
/* 800E6998 000E22B8  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 800E699C 000E22BC  38 C6 FA F8 */	addi r6, r6, lbl_8031FAF8@l
/* 800E69A0 000E22C0  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 800E69A4 000E22C4  E1 04 00 10 */	psq_l f8, 16(r4), 0, qr0
/* 800E69A8 000E22C8  11 86 00 18 */	ps_muls0 f12, f6, f0
/* 800E69AC 000E22CC  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 800E69B0 000E22D0  11 A7 00 18 */	ps_muls0 f13, f7, f0
/* 800E69B4 000E22D4  E3 E6 00 00 */	psq_l f31, 0(r6), 0, qr0
/* 800E69B8 000E22D8  11 C6 00 98 */	ps_muls0 f14, f6, f2
/* 800E69BC 000E22DC  E1 24 00 18 */	psq_l f9, 24(r4), 0, qr0
/* 800E69C0 000E22E0  11 E7 00 98 */	ps_muls0 f15, f7, f2
/* 800E69C4 000E22E4  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 800E69C8 000E22E8  11 88 60 1E */	ps_madds1 f12, f8, f0, f12
/* 800E69CC 000E22EC  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 800E69D0 000E22F0  11 C8 70 9E */	ps_madds1 f14, f8, f2, f14
/* 800E69D4 000E22F4  E1 44 00 20 */	psq_l f10, 32(r4), 0, qr0
/* 800E69D8 000E22F8  11 A9 68 1E */	ps_madds1 f13, f9, f0, f13
/* 800E69DC 000E22FC  E1 64 00 28 */	psq_l f11, 40(r4), 0, qr0
/* 800E69E0 000E2300  11 E9 78 9E */	ps_madds1 f15, f9, f2, f15
/* 800E69E4 000E2304  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 800E69E8 000E2308  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 800E69EC 000E230C  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 800E69F0 000E2310  11 AB 68 5C */	ps_madds0 f13, f11, f1, f13
/* 800E69F4 000E2314  11 CA 70 DC */	ps_madds0 f14, f10, f3, f14
/* 800E69F8 000E2318  11 EB 78 DC */	ps_madds0 f15, f11, f3, f15
/* 800E69FC 000E231C  F1 85 00 00 */	psq_st f12, 0(r5), 0, qr0
/* 800E6A00 000E2320  10 46 01 18 */	ps_muls0 f2, f6, f4
/* 800E6A04 000E2324  11 BF 68 5E */	ps_madds1 f13, f31, f1, f13
/* 800E6A08 000E2328  10 07 01 18 */	ps_muls0 f0, f7, f4
/* 800E6A0C 000E232C  F1 C5 00 10 */	psq_st f14, 16(r5), 0, qr0
/* 800E6A10 000E2330  11 FF 78 DE */	ps_madds1 f15, f31, f3, f15
/* 800E6A14 000E2334  F1 A5 00 08 */	psq_st f13, 8(r5), 0, qr0
/* 800E6A18 000E2338  10 48 11 1E */	ps_madds1 f2, f8, f4, f2
/* 800E6A1C 000E233C  10 09 01 1E */	ps_madds1 f0, f9, f4, f0
/* 800E6A20 000E2340  10 4A 11 5C */	ps_madds0 f2, f10, f5, f2
/* 800E6A24 000E2344  C9 C1 00 08 */	lfd f14, 8(r1)
/* 800E6A28 000E2348  F1 E5 00 18 */	psq_st f15, 24(r5), 0, qr0
/* 800E6A2C 000E234C  10 0B 01 5C */	ps_madds0 f0, f11, f5, f0
/* 800E6A30 000E2350  F0 45 00 20 */	psq_st f2, 32(r5), 0, qr0
/* 800E6A34 000E2354  10 1F 01 5E */	ps_madds1 f0, f31, f5, f0
/* 800E6A38 000E2358  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 800E6A3C 000E235C  F0 05 00 28 */	psq_st f0, 40(r5), 0, qr0
/* 800E6A40 000E2360  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 800E6A44 000E2364  38 21 00 40 */	addi r1, r1, 0x40
/* 800E6A48 000E2368  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6A50
func_800E6A50:
/* 800E6A50 000E2370  E0 03 80 00 */	psq_l f0, 0(r3), 1, qr0
/* 800E6A54 000E2374  E0 23 00 04 */	psq_l f1, 4(r3), 0, qr0
/* 800E6A58 000E2378  E0 43 80 10 */	psq_l f2, 16(r3), 1, qr0
/* 800E6A5C 000E237C  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 800E6A60 000E2380  E0 63 00 14 */	psq_l f3, 20(r3), 0, qr0
/* 800E6A64 000E2384  E0 83 80 20 */	psq_l f4, 32(r3), 1, qr0
/* 800E6A68 000E2388  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 800E6A6C 000E238C  E0 A3 00 24 */	psq_l f5, 36(r3), 0, qr0
/* 800E6A70 000E2390  11 63 01 B2 */	ps_mul f11, f3, f6
/* 800E6A74 000E2394  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 800E6A78 000E2398  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 800E6A7C 000E239C  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 800E6A80 000E23A0  11 81 02 32 */	ps_mul f12, f1, f8
/* 800E6A84 000E23A4  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 800E6A88 000E23A8  11 43 01 32 */	ps_mul f10, f3, f4
/* 800E6A8C 000E23AC  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 800E6A90 000E23B0  10 E0 03 72 */	ps_mul f7, f0, f13
/* 800E6A94 000E23B4  11 20 01 72 */	ps_mul f9, f0, f5
/* 800E6A98 000E23B8  11 01 00 B2 */	ps_mul f8, f1, f2
/* 800E6A9C 000E23BC  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 800E6AA0 000E23C0  10 C6 30 28 */	ps_sub f6, f6, f6
/* 800E6AA4 000E23C4  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 800E6AA8 000E23C8  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 800E6AAC 000E23CC  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 800E6AB0 000E23D0  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 800E6AB4 000E23D4  10 07 30 40 */	ps_cmpo0 cr0, f7, f6
/* 800E6AB8 000E23D8  40 82 00 0C */	bne lbl_800E6AC4
/* 800E6ABC 000E23DC  38 60 00 00 */	li r3, 0
/* 800E6AC0 000E23E0  4E 80 00 20 */	blr 
lbl_800E6AC4:
/* 800E6AC4 000E23E4  EC 00 38 30 */	fres f0, f7
/* 800E6AC8 000E23E8  10 C0 00 2A */	ps_add f6, f0, f0
/* 800E6ACC 000E23EC  10 A7 00 32 */	ps_mul f5, f7, f0
/* 800E6AD0 000E23F0  10 00 31 7C */	ps_nmsub f0, f0, f5, f6
/* 800E6AD4 000E23F4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 800E6AD8 000E23F8  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 800E6ADC 000E23FC  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 800E6AE0 000E2400  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 800E6AE4 000E2404  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 800E6AE8 000E2408  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 800E6AEC 000E240C  10 AD 64 20 */	ps_merge00 f5, f13, f12
/* 800E6AF0 000E2410  10 8D 64 E0 */	ps_merge11 f4, f13, f12
/* 800E6AF4 000E2414  10 CD 00 72 */	ps_mul f6, f13, f1
/* 800E6AF8 000E2418  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 800E6AFC 000E241C  F0 84 00 10 */	psq_st f4, 16(r4), 0, qr0
/* 800E6B00 000E2420  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 800E6B04 000E2424  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 800E6B08 000E2428  10 CC 30 BA */	ps_madd f6, f12, f2, f6
/* 800E6B0C 000E242C  F1 44 80 20 */	psq_st f10, 32(r4), 1, qr0
/* 800E6B10 000E2430  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 800E6B14 000E2434  10 CB 30 FE */	ps_nmadd f6, f11, f3, f6
/* 800E6B18 000E2438  F1 24 80 24 */	psq_st f9, 36(r4), 1, qr0
/* 800E6B1C 000E243C  10 EA 00 72 */	ps_mul f7, f10, f1
/* 800E6B20 000E2440  10 AB 34 20 */	ps_merge00 f5, f11, f6
/* 800E6B24 000E2444  F1 04 80 28 */	psq_st f8, 40(r4), 1, qr0
/* 800E6B28 000E2448  10 E9 38 BA */	ps_madd f7, f9, f2, f7
/* 800E6B2C 000E244C  10 8B 34 E0 */	ps_merge11 f4, f11, f6
/* 800E6B30 000E2450  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 800E6B34 000E2454  10 E8 38 FE */	ps_nmadd f7, f8, f3, f7
/* 800E6B38 000E2458  F0 84 00 18 */	psq_st f4, 24(r4), 0, qr0
/* 800E6B3C 000E245C  F0 E4 80 2C */	psq_st f7, 44(r4), 1, qr0
/* 800E6B40 000E2460  38 60 00 01 */	li r3, 1
/* 800E6B44 000E2464  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6B50
func_800E6B50:
/* 800E6B50 000E2470  E0 03 80 00 */	psq_l f0, 0(r3), 1, qr0
/* 800E6B54 000E2474  E0 23 00 04 */	psq_l f1, 4(r3), 0, qr0
/* 800E6B58 000E2478  E0 43 80 10 */	psq_l f2, 16(r3), 1, qr0
/* 800E6B5C 000E247C  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 800E6B60 000E2480  E0 63 00 14 */	psq_l f3, 20(r3), 0, qr0
/* 800E6B64 000E2484  E0 83 80 20 */	psq_l f4, 32(r3), 1, qr0
/* 800E6B68 000E2488  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 800E6B6C 000E248C  E0 A3 00 24 */	psq_l f5, 36(r3), 0, qr0
/* 800E6B70 000E2490  11 63 01 B2 */	ps_mul f11, f3, f6
/* 800E6B74 000E2494  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 800E6B78 000E2498  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 800E6B7C 000E249C  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 800E6B80 000E24A0  11 81 02 32 */	ps_mul f12, f1, f8
/* 800E6B84 000E24A4  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 800E6B88 000E24A8  11 43 01 32 */	ps_mul f10, f3, f4
/* 800E6B8C 000E24AC  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 800E6B90 000E24B0  10 E0 03 72 */	ps_mul f7, f0, f13
/* 800E6B94 000E24B4  11 20 01 72 */	ps_mul f9, f0, f5
/* 800E6B98 000E24B8  11 01 00 B2 */	ps_mul f8, f1, f2
/* 800E6B9C 000E24BC  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 800E6BA0 000E24C0  10 C6 30 28 */	ps_sub f6, f6, f6
/* 800E6BA4 000E24C4  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 800E6BA8 000E24C8  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 800E6BAC 000E24CC  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 800E6BB0 000E24D0  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 800E6BB4 000E24D4  10 07 30 40 */	ps_cmpo0 cr0, f7, f6
/* 800E6BB8 000E24D8  40 82 00 0C */	bne lbl_800E6BC4
/* 800E6BBC 000E24DC  38 60 00 00 */	li r3, 0
/* 800E6BC0 000E24E0  4E 80 00 20 */	blr 
lbl_800E6BC4:
/* 800E6BC4 000E24E4  EC 00 38 30 */	fres f0, f7
/* 800E6BC8 000E24E8  F0 C4 80 0C */	psq_st f6, 12(r4), 1, qr0
/* 800E6BCC 000E24EC  10 80 00 2A */	ps_add f4, f0, f0
/* 800E6BD0 000E24F0  10 A7 00 32 */	ps_mul f5, f7, f0
/* 800E6BD4 000E24F4  F0 C4 80 1C */	psq_st f6, 28(r4), 1, qr0
/* 800E6BD8 000E24F8  10 00 21 7C */	ps_nmsub f0, f0, f5, f4
/* 800E6BDC 000E24FC  F0 C4 80 2C */	psq_st f6, 44(r4), 1, qr0
/* 800E6BE0 000E2500  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 800E6BE4 000E2504  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 800E6BE8 000E2508  F1 A4 00 00 */	psq_st f13, 0(r4), 0, qr0
/* 800E6BEC 000E250C  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 800E6BF0 000E2510  F1 84 00 10 */	psq_st f12, 16(r4), 0, qr0
/* 800E6BF4 000E2514  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 800E6BF8 000E2518  F1 64 00 20 */	psq_st f11, 32(r4), 0, qr0
/* 800E6BFC 000E251C  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 800E6C00 000E2520  F1 44 80 08 */	psq_st f10, 8(r4), 1, qr0
/* 800E6C04 000E2524  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 800E6C08 000E2528  F1 24 80 18 */	psq_st f9, 24(r4), 1, qr0
/* 800E6C0C 000E252C  F1 04 80 28 */	psq_st f8, 40(r4), 1, qr0
/* 800E6C10 000E2530  38 60 00 01 */	li r3, 1
/* 800E6C14 000E2534  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6C20
func_800E6C20:
/* 800E6C20 000E2540  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E6C24 000E2544  7C 08 02 A6 */	mflr r0
/* 800E6C28 000E2548  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E6C2C 000E254C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800E6C30 000E2550  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 800E6C34 000E2554  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 800E6C38 000E2558  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 800E6C3C 000E255C  FF C0 08 90 */	fmr f30, f1
/* 800E6C40 000E2560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E6C44 000E2564  7C 9F 23 78 */	mr r31, r4
/* 800E6C48 000E2568  93 C1 00 08 */	stw r30, 8(r1)
/* 800E6C4C 000E256C  7C 7E 1B 78 */	mr r30, r3
/* 800E6C50 000E2570  48 02 97 A9 */	bl func_801103F8
/* 800E6C54 000E2574  FF E0 08 18 */	frsp f31, f1
/* 800E6C58 000E2578  FC 20 F0 90 */	fmr f1, f30
/* 800E6C5C 000E257C  48 02 93 91 */	bl func_8010FFEC
/* 800E6C60 000E2580  FC 40 08 18 */	frsp f2, f1
/* 800E6C64 000E2584  7F C3 F3 78 */	mr r3, r30
/* 800E6C68 000E2588  FC 20 F8 90 */	fmr f1, f31
/* 800E6C6C 000E258C  7F E4 07 74 */	extsb r4, r31
/* 800E6C70 000E2590  48 00 00 31 */	bl func_800E6CA0
/* 800E6C74 000E2594  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E6C78 000E2598  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 800E6C7C 000E259C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800E6C80 000E25A0  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 800E6C84 000E25A4  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 800E6C88 000E25A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E6C8C 000E25AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E6C90 000E25B0  7C 08 03 A6 */	mtlr r0
/* 800E6C94 000E25B4  38 21 00 30 */	addi r1, r1, 0x30
/* 800E6C98 000E25B8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6CA0
func_800E6CA0:
/* 800E6CA0 000E25C0  FC A0 08 18 */	frsp f5, f1
/* 800E6CA4 000E25C4  60 80 00 20 */	ori r0, r4, 0x20
/* 800E6CA8 000E25C8  FC 80 10 18 */	frsp f4, f2
/* 800E6CAC 000E25CC  28 00 00 78 */	cmplwi r0, 0x78
/* 800E6CB0 000E25D0  C0 02 F8 CC */	lfs f0, lbl_803288AC-_SDA2_BASE_(r2)
/* 800E6CB4 000E25D4  10 40 28 50 */	ps_neg f2, f5
/* 800E6CB8 000E25D8  C0 22 F8 C8 */	lfs f1, lbl_803288A8-_SDA2_BASE_(r2)
/* 800E6CBC 000E25DC  41 82 00 18 */	beq lbl_800E6CD4
/* 800E6CC0 000E25E0  28 00 00 79 */	cmplwi r0, 0x79
/* 800E6CC4 000E25E4  41 82 00 38 */	beq lbl_800E6CFC
/* 800E6CC8 000E25E8  28 00 00 7A */	cmplwi r0, 0x7a
/* 800E6CCC 000E25EC  41 82 00 5C */	beq lbl_800E6D28
/* 800E6CD0 000E25F0  4E 80 00 20 */	blr 
lbl_800E6CD4:
/* 800E6CD4 000E25F4  10 65 24 20 */	ps_merge00 f3, f5, f4
/* 800E6CD8 000E25F8  F0 23 80 00 */	psq_st f1, 0(r3), 1, qr0
/* 800E6CDC 000E25FC  10 24 14 20 */	ps_merge00 f1, f4, f2
/* 800E6CE0 000E2600  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 800E6CE4 000E2604  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 800E6CE8 000E2608  F0 03 00 1C */	psq_st f0, 28(r3), 0, qr0
/* 800E6CEC 000E260C  F0 03 80 2C */	psq_st f0, 44(r3), 1, qr0
/* 800E6CF0 000E2610  F0 63 00 24 */	psq_st f3, 36(r3), 0, qr0
/* 800E6CF4 000E2614  F0 23 00 14 */	psq_st f1, 20(r3), 0, qr0
/* 800E6CF8 000E2618  4E 80 00 20 */	blr 
lbl_800E6CFC:
/* 800E6CFC 000E261C  10 64 04 20 */	ps_merge00 f3, f4, f0
/* 800E6D00 000E2620  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800E6D04 000E2624  10 20 0C 20 */	ps_merge00 f1, f0, f1
/* 800E6D08 000E2628  10 42 04 20 */	ps_merge00 f2, f2, f0
/* 800E6D0C 000E262C  F0 63 00 00 */	psq_st f3, 0(r3), 0, qr0
/* 800E6D10 000E2630  10 05 04 20 */	ps_merge00 f0, f5, f0
/* 800E6D14 000E2634  F0 63 00 28 */	psq_st f3, 40(r3), 0, qr0
/* 800E6D18 000E2638  F0 23 00 10 */	psq_st f1, 16(r3), 0, qr0
/* 800E6D1C 000E263C  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800E6D20 000E2640  F0 43 00 20 */	psq_st f2, 32(r3), 0, qr0
/* 800E6D24 000E2644  4E 80 00 20 */	blr 
lbl_800E6D28:
/* 800E6D28 000E2648  10 65 24 20 */	ps_merge00 f3, f5, f4
/* 800E6D2C 000E264C  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800E6D30 000E2650  10 44 14 20 */	ps_merge00 f2, f4, f2
/* 800E6D34 000E2654  10 21 04 20 */	ps_merge00 f1, f1, f0
/* 800E6D38 000E2658  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800E6D3C 000E265C  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800E6D40 000E2660  F0 63 00 10 */	psq_st f3, 16(r3), 0, qr0
/* 800E6D44 000E2664  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 800E6D48 000E2668  F0 23 00 28 */	psq_st f1, 40(r3), 0, qr0
/* 800E6D4C 000E266C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6D50
func_800E6D50:
/* 800E6D50 000E2670  C0 02 F8 CC */	lfs f0, lbl_803288AC-_SDA2_BASE_(r2)
/* 800E6D54 000E2674  C0 82 F8 C8 */	lfs f4, lbl_803288A8-_SDA2_BASE_(r2)
/* 800E6D58 000E2678  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 800E6D5C 000E267C  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 800E6D60 000E2680  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 800E6D64 000E2684  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800E6D68 000E2688  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800E6D6C 000E268C  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 800E6D70 000E2690  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 800E6D74 000E2694  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 800E6D78 000E2698  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 800E6D7C 000E269C  D0 83 00 00 */	stfs f4, 0(r3)
/* 800E6D80 000E26A0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6D90
func_800E6D90:
/* 800E6D90 000E26B0  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 800E6D94 000E26B4  FC 20 08 18 */	frsp f1, f1
/* 800E6D98 000E26B8  E0 A3 00 08 */	psq_l f5, 8(r3), 0, qr0
/* 800E6D9C 000E26BC  FC 40 10 18 */	frsp f2, f2
/* 800E6DA0 000E26C0  E0 E3 00 18 */	psq_l f7, 24(r3), 0, qr0
/* 800E6DA4 000E26C4  FC 60 18 18 */	frsp f3, f3
/* 800E6DA8 000E26C8  E1 03 00 28 */	psq_l f8, 40(r3), 0, qr0
/* 800E6DAC 000E26CC  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 800E6DB0 000E26D0  10 A1 29 56 */	ps_sum1 f5, f1, f5, f5
/* 800E6DB4 000E26D4  E0 C3 00 10 */	psq_l f6, 16(r3), 0, qr0
/* 800E6DB8 000E26D8  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 800E6DBC 000E26DC  10 E2 39 D6 */	ps_sum1 f7, f2, f7, f7
/* 800E6DC0 000E26E0  E1 23 00 20 */	psq_l f9, 32(r3), 0, qr0
/* 800E6DC4 000E26E4  F0 C4 00 10 */	psq_st f6, 16(r4), 0, qr0
/* 800E6DC8 000E26E8  11 03 42 16 */	ps_sum1 f8, f3, f8, f8
/* 800E6DCC 000E26EC  F0 E4 00 18 */	psq_st f7, 24(r4), 0, qr0
/* 800E6DD0 000E26F0  F1 24 00 20 */	psq_st f9, 32(r4), 0, qr0
/* 800E6DD4 000E26F4  F1 04 00 28 */	psq_st f8, 40(r4), 0, qr0
/* 800E6DD8 000E26F8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6DE0
func_800E6DE0:
/* 800E6DE0 000E2700  C0 02 F8 CC */	lfs f0, lbl_803288AC-_SDA2_BASE_(r2)
/* 800E6DE4 000E2704  D0 23 00 00 */	stfs f1, 0(r3)
/* 800E6DE8 000E2708  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 800E6DEC 000E270C  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 800E6DF0 000E2710  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 800E6DF4 000E2714  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800E6DF8 000E2718  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800E6DFC 000E271C  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 800E6E00 000E2720  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 800E6E04 000E2724  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6E10
func_800E6E10:
/* 800E6E10 000E2730  FC 20 08 18 */	frsp f1, f1
/* 800E6E14 000E2734  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 800E6E18 000E2738  FC 40 10 18 */	frsp f2, f2
/* 800E6E1C 000E273C  E0 A3 00 08 */	psq_l f5, 8(r3), 0, qr0
/* 800E6E20 000E2740  FC 60 18 18 */	frsp f3, f3
/* 800E6E24 000E2744  10 84 00 58 */	ps_muls0 f4, f4, f1
/* 800E6E28 000E2748  E0 C3 00 10 */	psq_l f6, 16(r3), 0, qr0
/* 800E6E2C 000E274C  10 A5 00 58 */	ps_muls0 f5, f5, f1
/* 800E6E30 000E2750  E0 E3 00 18 */	psq_l f7, 24(r3), 0, qr0
/* 800E6E34 000E2754  10 C6 00 98 */	ps_muls0 f6, f6, f2
/* 800E6E38 000E2758  E1 03 00 20 */	psq_l f8, 32(r3), 0, qr0
/* 800E6E3C 000E275C  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 800E6E40 000E2760  10 E7 00 98 */	ps_muls0 f7, f7, f2
/* 800E6E44 000E2764  E0 43 00 28 */	psq_l f2, 40(r3), 0, qr0
/* 800E6E48 000E2768  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 800E6E4C 000E276C  11 08 00 D8 */	ps_muls0 f8, f8, f3
/* 800E6E50 000E2770  F0 C4 00 10 */	psq_st f6, 16(r4), 0, qr0
/* 800E6E54 000E2774  10 42 00 D8 */	ps_muls0 f2, f2, f3
/* 800E6E58 000E2778  F0 E4 00 18 */	psq_st f7, 24(r4), 0, qr0
/* 800E6E5C 000E277C  F1 04 00 20 */	psq_st f8, 32(r4), 0, qr0
/* 800E6E60 000E2780  F0 44 00 28 */	psq_st f2, 40(r4), 0, qr0
/* 800E6E64 000E2784  4E 80 00 20 */	blr 

.balign 16, 0
.global func_800E6E70
func_800E6E70:
/* 800E6E70 000E2790  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E6E74 000E2794  7C 08 02 A6 */	mflr r0
/* 800E6E78 000E2798  C0 24 00 00 */	lfs f1, 0(r4)
/* 800E6E7C 000E279C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E6E80 000E27A0  C0 06 00 00 */	lfs f0, 0(r6)
/* 800E6E84 000E27A4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800E6E88 000E27A8  7C BF 2B 78 */	mr r31, r5
/* 800E6E8C 000E27AC  EC 81 00 28 */	fsubs f4, f1, f0
/* 800E6E90 000E27B0  C0 64 00 04 */	lfs f3, 4(r4)
/* 800E6E94 000E27B4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800E6E98 000E27B8  7C 9E 23 78 */	mr r30, r4
/* 800E6E9C 000E27BC  C0 46 00 04 */	lfs f2, 4(r6)
/* 800E6EA0 000E27C0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 800E6EA4 000E27C4  EC 43 10 28 */	fsubs f2, f3, f2
/* 800E6EA8 000E27C8  C0 24 00 08 */	lfs f1, 8(r4)
/* 800E6EAC 000E27CC  C0 06 00 08 */	lfs f0, 8(r6)
/* 800E6EB0 000E27D0  7C 7D 1B 78 */	mr r29, r3
/* 800E6EB4 000E27D4  38 61 00 20 */	addi r3, r1, 0x20
/* 800E6EB8 000E27D8  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 800E6EBC 000E27DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E6EC0 000E27E0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 800E6EC4 000E27E4  7C 64 1B 78 */	mr r4, r3
/* 800E6EC8 000E27E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800E6ECC 000E27EC  48 00 03 45 */	bl func_800E7210
/* 800E6ED0 000E27F0  7F E3 FB 78 */	mr r3, r31
/* 800E6ED4 000E27F4  38 81 00 20 */	addi r4, r1, 0x20
/* 800E6ED8 000E27F8  38 A1 00 14 */	addi r5, r1, 0x14
/* 800E6EDC 000E27FC  48 00 03 F5 */	bl func_800E72D0
/* 800E6EE0 000E2800  38 61 00 14 */	addi r3, r1, 0x14
/* 800E6EE4 000E2804  7C 64 1B 78 */	mr r4, r3
/* 800E6EE8 000E2808  48 00 03 29 */	bl func_800E7210
/* 800E6EEC 000E280C  38 61 00 20 */	addi r3, r1, 0x20
/* 800E6EF0 000E2810  38 81 00 14 */	addi r4, r1, 0x14
/* 800E6EF4 000E2814  38 A1 00 08 */	addi r5, r1, 8
/* 800E6EF8 000E2818  48 00 03 D9 */	bl func_800E72D0
/* 800E6EFC 000E281C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800E6F00 000E2820  D0 1D 00 00 */	stfs f0, 0(r29)
/* 800E6F04 000E2824  C0 9E 00 00 */	lfs f4, 0(r30)
/* 800E6F08 000E2828  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800E6F0C 000E282C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 800E6F10 000E2830  C0 7E 00 04 */	lfs f3, 4(r30)
/* 800E6F14 000E2834  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800E6F18 000E2838  D0 1D 00 08 */	stfs f0, 8(r29)
/* 800E6F1C 000E283C  C0 BE 00 08 */	lfs f5, 8(r30)
/* 800E6F20 000E2840  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800E6F24 000E2844  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800E6F28 000E2848  EC 24 00 72 */	fmuls f1, f4, f1
/* 800E6F2C 000E284C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 800E6F30 000E2850  EC 03 00 32 */	fmuls f0, f3, f0
/* 800E6F34 000E2854  EC 45 00 B2 */	fmuls f2, f5, f2
/* 800E6F38 000E2858  EC 01 00 2A */	fadds f0, f1, f0
/* 800E6F3C 000E285C  EC 02 00 2A */	fadds f0, f2, f0
/* 800E6F40 000E2860  FC 00 00 50 */	fneg f0, f0
/* 800E6F44 000E2864  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 800E6F48 000E2868  C0 01 00 08 */	lfs f0, 8(r1)
/* 800E6F4C 000E286C  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 800E6F50 000E2870  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800E6F54 000E2874  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 800E6F58 000E2878  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800E6F5C 000E287C  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 800E6F60 000E2880  C0 21 00 08 */	lfs f1, 8(r1)
/* 800E6F64 000E2884  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800E6F68 000E2888  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 800E6F6C 000E288C  EC 24 00 72 */	fmuls f1, f4, f1
/* 800E6F70 000E2890  EC 03 00 32 */	fmuls f0, f3, f0
/* 800E6F74 000E2894  EC 45 00 B2 */	fmuls f2, f5, f2
/* 800E6F78 000E2898  EC 01 00 2A */	fadds f0, f1, f0
/* 800E6F7C 000E289C  EC 02 00 2A */	fadds f0, f2, f0
/* 800E6F80 000E28A0  FC 00 00 50 */	fneg f0, f0
/* 800E6F84 000E28A4  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 800E6F88 000E28A8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800E6F8C 000E28AC  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 800E6F90 000E28B0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800E6F94 000E28B4  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 800E6F98 000E28B8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800E6F9C 000E28BC  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 800E6FA0 000E28C0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800E6FA4 000E28C4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800E6FA8 000E28C8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 800E6FAC 000E28CC  EC 24 00 72 */	fmuls f1, f4, f1
/* 800E6FB0 000E28D0  EC 03 00 32 */	fmuls f0, f3, f0
/* 800E6FB4 000E28D4  EC 45 00 B2 */	fmuls f2, f5, f2
/* 800E6FB8 000E28D8  EC 01 00 2A */	fadds f0, f1, f0
/* 800E6FBC 000E28DC  EC 02 00 2A */	fadds f0, f2, f0
/* 800E6FC0 000E28E0  FC 00 00 50 */	fneg f0, f0
/* 800E6FC4 000E28E4  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 800E6FC8 000E28E8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800E6FCC 000E28EC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800E6FD0 000E28F0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 800E6FD4 000E28F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E6FD8 000E28F8  7C 08 03 A6 */	mtlr r0
/* 800E6FDC 000E28FC  38 21 00 40 */	addi r1, r1, 0x40
/* 800E6FE0 000E2900  4E 80 00 20 */	blr 


.section .sdata, "wa"  # 0x8031FA98 - 0x8031FFD8

.global lbl_8031FAF8

lbl_8031FAF8:

	# ROM: 0x31BBF8
	.4byte 0
	.4byte 0x3F800000


.section .sdata2, "wa"  # 0x80328848 - 0x80329520

.global lbl_803288A8

lbl_803288A8:

	# ROM: 0x323B08
	.4byte 0x3F800000


.global lbl_803288AC

lbl_803288AC:

	# ROM: 0x323B0C
	.4byte 0