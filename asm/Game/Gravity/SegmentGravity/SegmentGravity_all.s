.include "macros.inc"

.text

.global func_8015A9D8
func_8015A9D8:
/* 8015A9D8 00155F18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015A9DC 00155F1C  7C 08 02 A6 */	mflr r0
/* 8015A9E0 00155F20  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015A9E4 00155F24  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8015A9E8 00155F28  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0
/* 8015A9EC 00155F2C  39 61 00 20 */	addi r11, r1, 0x20
/* 8015A9F0 00155F30  48 3B CB 41 */	bl _savegpr_27
/* 8015A9F4 00155F34  7C 7B 1B 78 */	mr r27, r3
/* 8015A9F8 00155F38  4B FF F8 95 */	bl func_8015A28C
/* 8015A9FC 00155F3C  3C A0 80 57 */	lis r5, lbl_80573118@ha
/* 8015AA00 00155F40  38 7B 00 58 */	addi r3, r27, 0x58
/* 8015AA04 00155F44  38 A5 31 18 */	addi r5, r5, lbl_80573118@l
/* 8015AA08 00155F48  38 80 00 01 */	li r4, 1
/* 8015AA0C 00155F4C  90 BB 00 00 */	stw r5, 0(r27)
/* 8015AA10 00155F50  38 A0 00 00 */	li r5, 0
/* 8015AA14 00155F54  38 C0 00 00 */	li r6, 0
/* 8015AA18 00155F58  4B ED C7 C1 */	bl func_800371D8
/* 8015AA1C 00155F5C  38 7B 00 64 */	addi r3, r27, 0x64
/* 8015AA20 00155F60  38 80 00 01 */	li r4, 1
/* 8015AA24 00155F64  38 A0 00 00 */	li r5, 0
/* 8015AA28 00155F68  38 C0 00 00 */	li r6, 0
/* 8015AA2C 00155F6C  4B ED C7 AD */	bl func_800371D8
/* 8015AA30 00155F70  38 7B 00 70 */	addi r3, r27, 0x70
/* 8015AA34 00155F74  38 80 00 01 */	li r4, 1
/* 8015AA38 00155F78  38 A0 00 00 */	li r5, 0
/* 8015AA3C 00155F7C  38 C0 00 00 */	li r6, 0
/* 8015AA40 00155F80  4B ED C7 99 */	bl func_800371D8
/* 8015AA44 00155F84  38 7B 00 7C */	addi r3, r27, 0x7c
/* 8015AA48 00155F88  38 80 00 00 */	li r4, 0
/* 8015AA4C 00155F8C  38 A0 00 00 */	li r5, 0
/* 8015AA50 00155F90  38 C0 00 00 */	li r6, 0
/* 8015AA54 00155F94  4B ED C7 85 */	bl func_800371D8
/* 8015AA58 00155F98  C3 E2 BF 84 */	lfs f31, lbl_806A7204-_SDA2_BASE_(r2)
/* 8015AA5C 00155F9C  3B 80 00 00 */	li r28, 0
/* 8015AA60 00155FA0  C0 22 BF 94 */	lfs f1, lbl_806A7214-_SDA2_BASE_(r2)
/* 8015AA64 00155FA4  3B E0 00 00 */	li r31, 0
/* 8015AA68 00155FA8  C0 02 BF 90 */	lfs f0, lbl_806A7210-_SDA2_BASE_(r2)
/* 8015AA6C 00155FAC  3B C0 00 00 */	li r30, 0
/* 8015AA70 00155FB0  D3 FB 00 88 */	stfs f31, 0x88(r27)
/* 8015AA74 00155FB4  3B A0 00 01 */	li r29, 1
/* 8015AA78 00155FB8  D0 3B 00 8C */	stfs f1, 0x8c(r27)
/* 8015AA7C 00155FBC  D0 1B 00 90 */	stfs f0, 0x90(r27)
lbl_8015AA80:
/* 8015AA80 00155FC0  7C 7B FA 14 */	add r3, r27, r31
/* 8015AA84 00155FC4  38 63 00 28 */	addi r3, r3, 0x28
/* 8015AA88 00155FC8  4B EB E0 11 */	bl func_80018A98
/* 8015AA8C 00155FCC  7C 7B FA 14 */	add r3, r27, r31
/* 8015AA90 00155FD0  38 63 00 40 */	addi r3, r3, 0x40
/* 8015AA94 00155FD4  4B EB E0 05 */	bl func_80018A98
/* 8015AA98 00155FD8  7C 9B F2 14 */	add r4, r27, r30
/* 8015AA9C 00155FDC  7C 7B E2 14 */	add r3, r27, r28
/* 8015AAA0 00155FE0  D3 E4 00 94 */	stfs f31, 0x94(r4)
/* 8015AAA4 00155FE4  3B 9C 00 01 */	addi r28, r28, 1
/* 8015AAA8 00155FE8  28 1C 00 02 */	cmplwi r28, 2
/* 8015AAAC 00155FEC  3B DE 00 04 */	addi r30, r30, 4
/* 8015AAB0 00155FF0  9B A3 00 9C */	stb r29, 0x9c(r3)
/* 8015AAB4 00155FF4  3B FF 00 0C */	addi r31, r31, 0xc
/* 8015AAB8 00155FF8  41 80 FF C8 */	blt lbl_8015AA80
/* 8015AABC 00155FFC  7F 63 DB 78 */	mr r3, r27
/* 8015AAC0 00156000  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0
/* 8015AAC4 00156004  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8015AAC8 00156008  39 61 00 20 */	addi r11, r1, 0x20
/* 8015AACC 0015600C  48 3B CA B1 */	bl func_8051757C
/* 8015AAD0 00156010  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015AAD4 00156014  7C 08 03 A6 */	mtlr r0
/* 8015AAD8 00156018  38 21 00 30 */	addi r1, r1, 0x30
/* 8015AADC 0015601C  4E 80 00 20 */	blr 
/* 8015AAE0 00156020  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8015AAE4 00156024  7C 08 02 A6 */	mflr r0
/* 8015AAE8 00156028  90 01 00 84 */	stw r0, 0x84(r1)
/* 8015AAEC 0015602C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8015AAF0 00156030  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0
/* 8015AAF4 00156034  39 61 00 70 */	addi r11, r1, 0x70
/* 8015AAF8 00156038  48 3B CA 3D */	bl func_80517534
/* 8015AAFC 0015603C  7C 7C 1B 78 */	mr r28, r3
/* 8015AB00 00156040  7C DF 33 78 */	mr r31, r6
/* 8015AB04 00156044  7C 9D 23 78 */	mr r29, r4
/* 8015AB08 00156048  7C BE 2B 78 */	mr r30, r5
/* 8015AB0C 0015604C  7F E4 FB 78 */	mr r4, r31
/* 8015AB10 00156050  38 61 00 54 */	addi r3, r1, 0x54
/* 8015AB14 00156054  38 BC 00 40 */	addi r5, r28, 0x40
/* 8015AB18 00156058  4B EB E0 BD */	bl func_80018BD4
/* 8015AB1C 0015605C  38 61 00 54 */	addi r3, r1, 0x54
/* 8015AB20 00156060  38 9C 00 7C */	addi r4, r28, 0x7c
/* 8015AB24 00156064  4B EC 24 21 */	bl func_8001CF44
/* 8015AB28 00156068  C0 42 BF 90 */	lfs f2, lbl_806A7210-_SDA2_BASE_(r2)
/* 8015AB2C 0015606C  FF E0 08 90 */	fmr f31, f1
/* 8015AB30 00156070  C0 1C 00 90 */	lfs f0, 0x90(r28)
/* 8015AB34 00156074  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015AB38 00156078  40 80 00 74 */	bge lbl_8015ABAC
/* 8015AB3C 0015607C  E0 7C 00 70 */	psq_l f3, 112(r28), 0, 0
/* 8015AB40 00156080  C0 5C 00 78 */	lfs f2, 0x78(r28)
/* 8015AB44 00156084  10 63 00 F2 */	ps_mul f3, f3, f3
/* 8015AB48 00156088  C0 02 BF 88 */	lfs f0, lbl_806A7208-_SDA2_BASE_(r2)
/* 8015AB4C 0015608C  10 42 18 BA */	ps_madd f2, f2, f2, f3
/* 8015AB50 00156090  10 42 18 D4 */	ps_sum0 f2, f2, f3, f3
/* 8015AB54 00156094  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015AB58 00156098  4C 40 13 82 */	cror 2, 0, 2
/* 8015AB5C 0015609C  7C 00 00 26 */	mfcr r0
/* 8015AB60 001560A0  54 00 1F FF */	rlwinm. r0, r0, 3, 0x1f, 0x1f
/* 8015AB64 001560A4  40 82 00 48 */	bne lbl_8015ABAC
/* 8015AB68 001560A8  38 61 00 24 */	addi r3, r1, 0x24
/* 8015AB6C 001560AC  38 9C 00 7C */	addi r4, r28, 0x7c
/* 8015AB70 001560B0  4B EB DF B9 */	bl func_80018B28
/* 8015AB74 001560B4  38 61 00 48 */	addi r3, r1, 0x48
/* 8015AB78 001560B8  38 81 00 54 */	addi r4, r1, 0x54
/* 8015AB7C 001560BC  38 A1 00 24 */	addi r5, r1, 0x24
/* 8015AB80 001560C0  4B EB E0 55 */	bl func_80018BD4
/* 8015AB84 001560C4  38 61 00 48 */	addi r3, r1, 0x48
/* 8015AB88 001560C8  48 28 A3 29 */	bl func_803E4EB0
/* 8015AB8C 001560CC  38 61 00 48 */	addi r3, r1, 0x48
/* 8015AB90 001560D0  38 9C 00 70 */	addi r4, r28, 0x70
/* 8015AB94 001560D4  4B EC 23 B1 */	bl func_8001CF44
/* 8015AB98 001560D8  C0 1C 00 90 */	lfs f0, 0x90(r28)
/* 8015AB9C 001560DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015ABA0 001560E0  40 80 00 0C */	bge lbl_8015ABAC
/* 8015ABA4 001560E4  38 60 00 00 */	li r3, 0
/* 8015ABA8 001560E8  48 00 01 18 */	b lbl_8015ACC0
lbl_8015ABAC:
/* 8015ABAC 001560EC  C0 1C 00 94 */	lfs f0, 0x94(r28)
/* 8015ABB0 001560F0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8015ABB4 001560F4  40 80 00 28 */	bge lbl_8015ABDC
/* 8015ABB8 001560F8  88 1C 00 9C */	lbz r0, 0x9c(r28)
/* 8015ABBC 001560FC  2C 00 00 00 */	cmpwi r0, 0
/* 8015ABC0 00156100  40 82 00 0C */	bne lbl_8015ABCC
/* 8015ABC4 00156104  38 60 00 00 */	li r3, 0
/* 8015ABC8 00156108  48 00 00 F8 */	b lbl_8015ACC0
lbl_8015ABCC:
/* 8015ABCC 0015610C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8015ABD0 00156110  38 9C 00 40 */	addi r4, r28, 0x40
/* 8015ABD4 00156114  4B EB DF 41 */	bl func_80018B14
/* 8015ABD8 00156118  48 00 00 84 */	b lbl_8015AC5C
lbl_8015ABDC:
/* 8015ABDC 0015611C  C0 3C 00 88 */	lfs f1, 0x88(r28)
/* 8015ABE0 00156120  C0 1C 00 98 */	lfs f0, 0x98(r28)
/* 8015ABE4 00156124  EC 01 00 28 */	fsubs f0, f1, f0
/* 8015ABE8 00156128  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8015ABEC 0015612C  40 81 00 28 */	ble lbl_8015AC14
/* 8015ABF0 00156130  88 1C 00 9D */	lbz r0, 0x9d(r28)
/* 8015ABF4 00156134  2C 00 00 00 */	cmpwi r0, 0
/* 8015ABF8 00156138  40 82 00 0C */	bne lbl_8015AC04
/* 8015ABFC 0015613C  38 60 00 00 */	li r3, 0
/* 8015AC00 00156140  48 00 00 C0 */	b lbl_8015ACC0
lbl_8015AC04:
/* 8015AC04 00156144  38 61 00 3C */	addi r3, r1, 0x3c
/* 8015AC08 00156148  38 9C 00 4C */	addi r4, r28, 0x4c
/* 8015AC0C 0015614C  4B EB DF 09 */	bl func_80018B14
/* 8015AC10 00156150  48 00 00 4C */	b lbl_8015AC5C
lbl_8015AC14:
/* 8015AC14 00156154  FC 20 F8 90 */	fmr f1, f31
/* 8015AC18 00156158  38 61 00 0C */	addi r3, r1, 0xc
/* 8015AC1C 0015615C  38 9C 00 7C */	addi r4, r28, 0x7c
/* 8015AC20 00156160  4B EB DF 09 */	bl func_80018B28
/* 8015AC24 00156164  38 61 00 18 */	addi r3, r1, 0x18
/* 8015AC28 00156168  38 9C 00 40 */	addi r4, r28, 0x40
/* 8015AC2C 0015616C  4B EB DF 61 */	bl func_80018B8C
/* 8015AC30 00156170  38 81 00 18 */	addi r4, r1, 0x18
/* 8015AC34 00156174  E0 21 00 0C */	psq_l f1, 12(r1), 0, 0
/* 8015AC38 00156178  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0
/* 8015AC3C 0015617C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8015AC40 00156180  E0 44 80 08 */	psq_l f2, 8(r4), 1, 0
/* 8015AC44 00156184  10 00 08 2A */	ps_add f0, f0, f1
/* 8015AC48 00156188  E0 61 80 14 */	psq_l f3, 20(r1), 1, 0
/* 8015AC4C 0015618C  10 22 18 2A */	ps_add f1, f2, f3
/* 8015AC50 00156190  F0 04 00 00 */	psq_st f0, 0(r4), 0, 0
/* 8015AC54 00156194  F0 24 80 08 */	psq_st f1, 8(r4), 1, 0
/* 8015AC58 00156198  4B EB DE BD */	bl func_80018B14
lbl_8015AC5C:
/* 8015AC5C 0015619C  7F E5 FB 78 */	mr r5, r31
/* 8015AC60 001561A0  38 61 00 30 */	addi r3, r1, 0x30
/* 8015AC64 001561A4  38 81 00 3C */	addi r4, r1, 0x3c
/* 8015AC68 001561A8  4B EB DF 6D */	bl func_80018BD4
/* 8015AC6C 001561AC  38 81 00 30 */	addi r4, r1, 0x30
/* 8015AC70 001561B0  38 61 00 08 */	addi r3, r1, 8
/* 8015AC74 001561B4  7C 85 23 78 */	mr r5, r4
/* 8015AC78 001561B8  48 28 A3 4D */	bl func_803E4FC4
/* 8015AC7C 001561BC  C0 21 00 08 */	lfs f1, 8(r1)
/* 8015AC80 001561C0  7F 83 E3 78 */	mr r3, r28
/* 8015AC84 001561C4  4B FF F7 B5 */	bl func_8015A438
/* 8015AC88 001561C8  2C 03 00 00 */	cmpwi r3, 0
/* 8015AC8C 001561CC  40 82 00 0C */	bne lbl_8015AC98
/* 8015AC90 001561D0  38 60 00 00 */	li r3, 0
/* 8015AC94 001561D4  48 00 00 2C */	b lbl_8015ACC0
lbl_8015AC98:
/* 8015AC98 001561D8  2C 1D 00 00 */	cmpwi r29, 0
/* 8015AC9C 001561DC  41 82 00 10 */	beq lbl_8015ACAC
/* 8015ACA0 001561E0  7F A3 EB 78 */	mr r3, r29
/* 8015ACA4 001561E4  38 81 00 30 */	addi r4, r1, 0x30
/* 8015ACA8 001561E8  4B EB DE 6D */	bl func_80018B14
lbl_8015ACAC:
/* 8015ACAC 001561EC  2C 1E 00 00 */	cmpwi r30, 0
/* 8015ACB0 001561F0  41 82 00 0C */	beq lbl_8015ACBC
/* 8015ACB4 001561F4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8015ACB8 001561F8  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_8015ACBC:
/* 8015ACBC 001561FC  38 60 00 01 */	li r3, 1
lbl_8015ACC0:
/* 8015ACC0 00156200  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0
/* 8015ACC4 00156204  39 61 00 70 */	addi r11, r1, 0x70
/* 8015ACC8 00156208  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8015ACCC 0015620C  48 3B C8 B5 */	bl func_80517580
/* 8015ACD0 00156210  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8015ACD4 00156214  7C 08 03 A6 */	mtlr r0
/* 8015ACD8 00156218  38 21 00 80 */	addi r1, r1, 0x80
/* 8015ACDC 0015621C  4E 80 00 20 */	blr 
/* 8015ACE0 00156220  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015ACE4 00156224  7C 08 02 A6 */	mflr r0
/* 8015ACE8 00156228  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015ACEC 0015622C  39 61 00 30 */	addi r11, r1, 0x30
/* 8015ACF0 00156230  48 3B C8 45 */	bl func_80517534
/* 8015ACF4 00156234  7C 7C 1B 78 */	mr r28, r3
/* 8015ACF8 00156238  7C 9D 23 78 */	mr r29, r4
/* 8015ACFC 0015623C  3B C0 00 00 */	li r30, 0
/* 8015AD00 00156240  3B E0 00 00 */	li r31, 0
lbl_8015AD04:
/* 8015AD04 00156244  7C BC FA 14 */	add r5, r28, r31
/* 8015AD08 00156248  7F A3 EB 78 */	mr r3, r29
/* 8015AD0C 0015624C  38 85 00 28 */	addi r4, r5, 0x28
/* 8015AD10 00156250  38 A5 00 40 */	addi r5, r5, 0x40
/* 8015AD14 00156254  4B EB B8 D9 */	bl func_800165EC
/* 8015AD18 00156258  3B DE 00 01 */	addi r30, r30, 1
/* 8015AD1C 0015625C  3B FF 00 0C */	addi r31, r31, 0xc
/* 8015AD20 00156260  2C 1E 00 02 */	cmpwi r30, 2
/* 8015AD24 00156264  41 80 FF E0 */	blt lbl_8015AD04
/* 8015AD28 00156268  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8015AD2C 0015626C  38 7C 00 70 */	addi r3, r28, 0x70
/* 8015AD30 00156270  C0 3C 00 68 */	lfs f1, 0x68(r28)
/* 8015AD34 00156274  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 8015AD38 00156278  C0 9D 00 04 */	lfs f4, 4(r29)
/* 8015AD3C 0015627C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8015AD40 00156280  C0 7D 00 20 */	lfs f3, 0x20(r29)
/* 8015AD44 00156284  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8015AD48 00156288  C0 BC 00 64 */	lfs f5, 0x64(r28)
/* 8015AD4C 0015628C  EC 81 01 32 */	fmuls f4, f1, f4
/* 8015AD50 00156290  C0 DD 00 10 */	lfs f6, 0x10(r29)
/* 8015AD54 00156294  EC 25 00 F2 */	fmuls f1, f5, f3
/* 8015AD58 00156298  C0 FD 00 00 */	lfs f7, 0(r29)
/* 8015AD5C 0015629C  EC 65 01 B2 */	fmuls f3, f5, f6
/* 8015AD60 001562A0  C1 1D 00 28 */	lfs f8, 0x28(r29)
/* 8015AD64 001562A4  EC A5 01 F2 */	fmuls f5, f5, f7
/* 8015AD68 001562A8  C0 FC 00 6C */	lfs f7, 0x6c(r28)
/* 8015AD6C 001562AC  C0 DD 00 08 */	lfs f6, 8(r29)
/* 8015AD70 001562B0  EC 43 10 2A */	fadds f2, f3, f2
/* 8015AD74 001562B4  C1 3D 00 18 */	lfs f9, 0x18(r29)
/* 8015AD78 001562B8  EC A5 20 2A */	fadds f5, f5, f4
/* 8015AD7C 001562BC  EC C7 01 B2 */	fmuls f6, f7, f6
/* 8015AD80 001562C0  EC 87 02 72 */	fmuls f4, f7, f9
/* 8015AD84 001562C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8015AD88 001562C8  EC 67 02 32 */	fmuls f3, f7, f8
/* 8015AD8C 001562CC  EC 26 28 2A */	fadds f1, f6, f5
/* 8015AD90 001562D0  EC 44 10 2A */	fadds f2, f4, f2
/* 8015AD94 001562D4  EC 63 00 2A */	fadds f3, f3, f0
/* 8015AD98 001562D8  4B EB C1 E9 */	bl func_80016F80
/* 8015AD9C 001562DC  38 61 00 08 */	addi r3, r1, 8
/* 8015ADA0 001562E0  38 9C 00 4C */	addi r4, r28, 0x4c
/* 8015ADA4 001562E4  38 BC 00 40 */	addi r5, r28, 0x40
/* 8015ADA8 001562E8  4B EB DE 2D */	bl func_80018BD4
/* 8015ADAC 001562EC  38 7C 00 7C */	addi r3, r28, 0x7c
/* 8015ADB0 001562F0  38 81 00 08 */	addi r4, r1, 8
/* 8015ADB4 001562F4  4B EB DD 61 */	bl func_80018B14
/* 8015ADB8 001562F8  38 9C 00 7C */	addi r4, r28, 0x7c
/* 8015ADBC 001562FC  38 7C 00 88 */	addi r3, r28, 0x88
/* 8015ADC0 00156300  7C 85 23 78 */	mr r5, r4
/* 8015ADC4 00156304  48 28 A2 01 */	bl func_803E4FC4
/* 8015ADC8 00156308  39 61 00 30 */	addi r11, r1, 0x30
/* 8015ADCC 0015630C  48 3B C7 B5 */	bl func_80517580
/* 8015ADD0 00156310  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015ADD4 00156314  7C 08 03 A6 */	mtlr r0
/* 8015ADD8 00156318  38 21 00 30 */	addi r1, r1, 0x30
/* 8015ADDC 0015631C  4E 80 00 20 */	blr 

.global func_8015ADE0
func_8015ADE0:
/* 8015ADE0 00156320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015ADE4 00156324  7C 08 02 A6 */	mflr r0
/* 8015ADE8 00156328  7C 86 23 78 */	mr r6, r4
/* 8015ADEC 0015632C  7C A4 2B 78 */	mr r4, r5
/* 8015ADF0 00156330  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015ADF4 00156334  30 06 FF FF */	addic r0, r6, -1
/* 8015ADF8 00156338  7C 00 31 10 */	subfe r0, r0, r6
/* 8015ADFC 0015633C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8015AE00 00156340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015AE04 00156344  7C 7F 1B 78 */	mr r31, r3
/* 8015AE08 00156348  7C 63 02 14 */	add r3, r3, r0
/* 8015AE0C 0015634C  38 63 00 28 */	addi r3, r3, 0x28
/* 8015AE10 00156350  4B EB DD 05 */	bl func_80018B14
/* 8015AE14 00156354  7F E3 FB 78 */	mr r3, r31
/* 8015AE18 00156358  48 00 00 75 */	bl func_8015AE8C
/* 8015AE1C 0015635C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015AE20 00156360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015AE24 00156364  7C 08 03 A6 */	mtlr r0
/* 8015AE28 00156368  38 21 00 10 */	addi r1, r1, 0x10
/* 8015AE2C 0015636C  4E 80 00 20 */	blr 

.global func_8015AE30
func_8015AE30:
/* 8015AE30 00156370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015AE34 00156374  7C 08 02 A6 */	mflr r0
/* 8015AE38 00156378  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015AE3C 0015637C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015AE40 00156380  7C 7F 1B 78 */	mr r31, r3
/* 8015AE44 00156384  38 63 00 58 */	addi r3, r3, 0x58
/* 8015AE48 00156388  4B EB DC CD */	bl func_80018B14
/* 8015AE4C 0015638C  38 7F 00 58 */	addi r3, r31, 0x58
/* 8015AE50 00156390  48 28 A0 61 */	bl func_803E4EB0
/* 8015AE54 00156394  7F E3 FB 78 */	mr r3, r31
/* 8015AE58 00156398  48 00 00 35 */	bl func_8015AE8C
/* 8015AE5C 0015639C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015AE60 001563A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015AE64 001563A4  7C 08 03 A6 */	mtlr r0
/* 8015AE68 001563A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8015AE6C 001563AC  4E 80 00 20 */	blr 

.global func_8015AE70
func_8015AE70:
/* 8015AE70 001563B0  D0 23 00 8C */	stfs f1, 0x8c(r3)
/* 8015AE74 001563B4  48 00 00 18 */	b func_8015AE8C

.global func_8015AE78
func_8015AE78:
/* 8015AE78 001563B8  30 04 FF FF */	addic r0, r4, -1
/* 8015AE7C 001563BC  7C 00 21 10 */	subfe r0, r0, r4
/* 8015AE80 001563C0  7C 63 02 14 */	add r3, r3, r0
/* 8015AE84 001563C4  98 A3 00 9C */	stb r5, 0x9c(r3)
/* 8015AE88 001563C8  4E 80 00 20 */	blr 

.global func_8015AE8C
func_8015AE8C:
/* 8015AE8C 001563CC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8015AE90 001563D0  7C 08 02 A6 */	mflr r0
/* 8015AE94 001563D4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8015AE98 001563D8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8015AE9C 001563DC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0
/* 8015AEA0 001563E0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8015AEA4 001563E4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0
/* 8015AEA8 001563E8  C0 42 BF 8C */	lfs f2, lbl_806A720C-_SDA2_BASE_(r2)
/* 8015AEAC 001563EC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8015AEB0 001563F0  7C 7F 1B 78 */	mr r31, r3
/* 8015AEB4 001563F4  C0 02 BF 84 */	lfs f0, lbl_806A7204-_SDA2_BASE_(r2)
/* 8015AEB8 001563F8  C0 23 00 8C */	lfs f1, 0x8c(r3)
/* 8015AEBC 001563FC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8015AEC0 00156400  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015AEC4 00156404  40 80 00 08 */	bge lbl_8015AECC
/* 8015AEC8 00156408  FC 20 08 50 */	fneg f1, f1
lbl_8015AECC:
/* 8015AECC 0015640C  C0 02 BF 98 */	lfs f0, lbl_806A7218-_SDA2_BASE_(r2)
/* 8015AED0 00156410  3C C0 80 60 */	lis r6, lbl_805FB300@ha
/* 8015AED4 00156414  38 C6 B3 00 */	addi r6, r6, lbl_805FB300@l
/* 8015AED8 00156418  38 9F 00 34 */	addi r4, r31, 0x34
/* 8015AEDC 0015641C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8015AEE0 00156420  38 BF 00 28 */	addi r5, r31, 0x28
/* 8015AEE4 00156424  FC 00 00 1E */	fctiwz f0, f0
/* 8015AEE8 00156428  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8015AEEC 0015642C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8015AEF0 00156430  54 00 1B F8 */	rlwinm r0, r0, 3, 0xf, 0x1c
/* 8015AEF4 00156434  7C C6 02 14 */	add r6, r6, r0
/* 8015AEF8 00156438  C0 06 00 04 */	lfs f0, 4(r6)
/* 8015AEFC 0015643C  D0 03 00 90 */	stfs f0, 0x90(r3)
/* 8015AF00 00156440  38 61 00 14 */	addi r3, r1, 0x14
/* 8015AF04 00156444  4B EB DC D1 */	bl func_80018BD4
/* 8015AF08 00156448  38 61 00 14 */	addi r3, r1, 0x14
/* 8015AF0C 0015644C  48 28 9F A5 */	bl func_803E4EB0
/* 8015AF10 00156450  C0 22 BF 9C */	lfs f1, lbl_806A721C-_SDA2_BASE_(r2)
/* 8015AF14 00156454  38 61 00 14 */	addi r3, r1, 0x14
/* 8015AF18 00156458  48 28 AA 45 */	bl func_803E595C
/* 8015AF1C 0015645C  2C 03 00 00 */	cmpwi r3, 0
/* 8015AF20 00156460  41 82 00 10 */	beq lbl_8015AF30
/* 8015AF24 00156464  38 7F 00 64 */	addi r3, r31, 0x64
/* 8015AF28 00156468  4B EB DB 71 */	bl func_80018A98
/* 8015AF2C 0015646C  48 00 01 50 */	b lbl_8015B07C
lbl_8015AF30:
/* 8015AF30 00156470  38 61 00 14 */	addi r3, r1, 0x14
/* 8015AF34 00156474  38 9F 00 58 */	addi r4, r31, 0x58
/* 8015AF38 00156478  4B EC 20 0D */	bl func_8001CF44
/* 8015AF3C 0015647C  FC 20 08 50 */	fneg f1, f1
/* 8015AF40 00156480  38 61 00 14 */	addi r3, r1, 0x14
/* 8015AF44 00156484  38 9F 00 58 */	addi r4, r31, 0x58
/* 8015AF48 00156488  38 BF 00 64 */	addi r5, r31, 0x64
/* 8015AF4C 0015648C  48 2E 5F AD */	bl func_80440EF8
/* 8015AF50 00156490  38 7F 00 64 */	addi r3, r31, 0x64
/* 8015AF54 00156494  48 28 9F 5D */	bl func_803E4EB0
/* 8015AF58 00156498  C0 22 BF 9C */	lfs f1, lbl_806A721C-_SDA2_BASE_(r2)
/* 8015AF5C 0015649C  38 7F 00 64 */	addi r3, r31, 0x64
/* 8015AF60 001564A0  48 28 A9 FD */	bl func_803E595C
/* 8015AF64 001564A4  2C 03 00 00 */	cmpwi r3, 0
/* 8015AF68 001564A8  41 82 00 10 */	beq lbl_8015AF78
/* 8015AF6C 001564AC  38 7F 00 64 */	addi r3, r31, 0x64
/* 8015AF70 001564B0  4B EB DB 29 */	bl func_80018A98
/* 8015AF74 001564B4  48 00 01 08 */	b lbl_8015B07C
lbl_8015AF78:
/* 8015AF78 001564B8  38 61 00 20 */	addi r3, r1, 0x20
/* 8015AF7C 001564BC  4B EB B6 35 */	bl func_800165B0
/* 8015AF80 001564C0  C0 22 BF 8C */	lfs f1, lbl_806A720C-_SDA2_BASE_(r2)
/* 8015AF84 001564C4  38 61 00 08 */	addi r3, r1, 8
/* 8015AF88 001564C8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8015AF8C 001564CC  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8015AF90 001564D0  EC 81 00 32 */	fmuls f4, f1, f0
/* 8015AF94 001564D4  C0 62 BF A0 */	lfs f3, lbl_806A7220-_SDA2_BASE_(r2)
/* 8015AF98 001564D8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8015AF9C 001564DC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8015AFA0 001564E0  EF C3 01 32 */	fmuls f30, f3, f4
/* 8015AFA4 001564E4  D0 41 00 08 */	stfs f2, 8(r1)
/* 8015AFA8 001564E8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8015AFAC 001564EC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8015AFB0 001564F0  48 35 BC A5 */	bl func_804B6C54
/* 8015AFB4 001564F4  38 61 00 08 */	addi r3, r1, 8
/* 8015AFB8 001564F8  7C 64 1B 78 */	mr r4, r3
/* 8015AFBC 001564FC  48 35 BC 11 */	bl func_804B6BCC
/* 8015AFC0 00156500  FC 20 F0 90 */	fmr f1, f30
/* 8015AFC4 00156504  48 3C BD 01 */	bl sin
/* 8015AFC8 00156508  FF E0 08 18 */	frsp f31, f1
/* 8015AFCC 0015650C  FC 20 F0 90 */	fmr f1, f30
/* 8015AFD0 00156510  48 3C B8 E9 */	bl cos
/* 8015AFD4 00156514  FD 20 08 18 */	frsp f9, f1
/* 8015AFD8 00156518  C1 01 00 08 */	lfs f8, 8(r1)
/* 8015AFDC 0015651C  C0 02 BF 80 */	lfs f0, lbl_806A7200-_SDA2_BASE_(r2)
/* 8015AFE0 00156520  38 9F 00 64 */	addi r4, r31, 0x64
/* 8015AFE4 00156524  C0 C1 00 0C */	lfs f6, 0xc(r1)
/* 8015AFE8 00156528  EC 88 02 32 */	fmuls f4, f8, f8
/* 8015AFEC 0015652C  EC A0 48 28 */	fsubs f5, f0, f9
/* 8015AFF0 00156530  C0 E1 00 10 */	lfs f7, 0x10(r1)
/* 8015AFF4 00156534  EC 26 01 B2 */	fmuls f1, f6, f6
/* 8015AFF8 00156538  38 61 00 20 */	addi r3, r1, 0x20
/* 8015AFFC 0015653C  EC 07 01 F2 */	fmuls f0, f7, f7
/* 8015B000 00156540  7C 85 23 78 */	mr r5, r4
/* 8015B004 00156544  EC 85 01 32 */	fmuls f4, f5, f4
/* 8015B008 00156548  EC 25 00 72 */	fmuls f1, f5, f1
/* 8015B00C 0015654C  EC 05 00 32 */	fmuls f0, f5, f0
/* 8015B010 00156550  EC 89 20 2A */	fadds f4, f9, f4
/* 8015B014 00156554  EC 29 08 2A */	fadds f1, f9, f1
/* 8015B018 00156558  EC 09 00 2A */	fadds f0, f9, f0
/* 8015B01C 0015655C  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8015B020 00156560  EC 65 02 32 */	fmuls f3, f5, f8
/* 8015B024 00156564  EC 45 01 B2 */	fmuls f2, f5, f6
/* 8015B028 00156568  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8015B02C 0015656C  EC 9F 01 F2 */	fmuls f4, f31, f7
/* 8015B030 00156570  EC A6 00 F2 */	fmuls f5, f6, f3
/* 8015B034 00156574  EC 3F 01 B2 */	fmuls f1, f31, f6
/* 8015B038 00156578  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8015B03C 0015657C  EC 67 00 F2 */	fmuls f3, f7, f3
/* 8015B040 00156580  EC C5 20 28 */	fsubs f6, f5, f4
/* 8015B044 00156584  EC 85 20 2A */	fadds f4, f5, f4
/* 8015B048 00156588  EC A3 08 2A */	fadds f5, f3, f1
/* 8015B04C 0015658C  EC 23 08 28 */	fsubs f1, f3, f1
/* 8015B050 00156590  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 8015B054 00156594  EC 67 00 B2 */	fmuls f3, f7, f2
/* 8015B058 00156598  EC 1F 02 32 */	fmuls f0, f31, f8
/* 8015B05C 0015659C  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 8015B060 001565A0  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8015B064 001565A4  EC 43 00 28 */	fsubs f2, f3, f0
/* 8015B068 001565A8  EC 03 00 2A */	fadds f0, f3, f0
/* 8015B06C 001565AC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8015B070 001565B0  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8015B074 001565B4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8015B078 001565B8  4B EB B5 75 */	bl func_800165EC
lbl_8015B07C:
/* 8015B07C 001565BC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0
/* 8015B080 001565C0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8015B084 001565C4  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0
/* 8015B088 001565C8  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8015B08C 001565CC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8015B090 001565D0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8015B094 001565D4  7C 08 03 A6 */	mtlr r0
/* 8015B098 001565D8  38 21 00 80 */	addi r1, r1, 0x80
/* 8015B09C 001565DC  4E 80 00 20 */	blr 
