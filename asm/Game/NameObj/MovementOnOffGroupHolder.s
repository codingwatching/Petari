.include "macros.inc"

.text

.global func_80260EF4
func_80260EF4:
/* 80260EF4 0025C434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80260EF8 0025C438  7C 08 02 A6 */	mflr r0
/* 80260EFC 0025C43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80260F00 0025C440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80260F04 0025C444  7C 7F 1B 78 */	mr r31, r3
/* 80260F08 0025C448  48 00 02 55 */	bl func_8026115C
/* 80260F0C 0025C44C  3C 80 80 59 */	lis r4, lbl_805930D0@ha
/* 80260F10 0025C450  38 00 00 00 */	li r0, 0
/* 80260F14 0025C454  38 84 30 D0 */	addi r4, r4, lbl_805930D0@l
/* 80260F18 0025C458  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 80260F1C 0025C45C  7F E3 FB 78 */	mr r3, r31
/* 80260F20 0025C460  90 9F 00 00 */	stw r4, 0(r31)
/* 80260F24 0025C464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80260F28 0025C468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80260F2C 0025C46C  7C 08 03 A6 */	mtlr r0
/* 80260F30 0025C470  38 21 00 10 */	addi r1, r1, 0x10
/* 80260F34 0025C474  4E 80 00 20 */	blr 

.global func_80260F38
func_80260F38:
/* 80260F38 0025C478  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80260F3C 0025C47C  7C 08 02 A6 */	mflr r0
/* 80260F40 0025C480  90 01 00 24 */	stw r0, 0x24(r1)
/* 80260F44 0025C484  39 61 00 20 */	addi r11, r1, 0x20
/* 80260F48 0025C488  48 2B 65 E9 */	bl _savegpr_27
/* 80260F4C 0025C48C  7C 7B 1B 78 */	mr r27, r3
/* 80260F50 0025C490  7C 9C 23 78 */	mr r28, r4
/* 80260F54 0025C494  7C BD 2B 78 */	mr r29, r5
/* 80260F58 0025C498  7C DE 33 78 */	mr r30, r6
/* 80260F5C 0025C49C  48 00 01 2D */	bl func_80261088
/* 80260F60 0025C4A0  2C 03 00 00 */	cmpwi r3, 0
/* 80260F64 0025C4A4  7C 7F 1B 78 */	mr r31, r3
/* 80260F68 0025C4A8  40 82 00 18 */	bne lbl_80260F80
/* 80260F6C 0025C4AC  7F 63 DB 78 */	mr r3, r27
/* 80260F70 0025C4B0  7F 84 E3 78 */	mr r4, r28
/* 80260F74 0025C4B4  7F C5 F3 78 */	mr r5, r30
/* 80260F78 0025C4B8  48 00 00 91 */	bl func_80261008
/* 80260F7C 0025C4BC  7C 7F 1B 78 */	mr r31, r3
lbl_80260F80:
/* 80260F80 0025C4C0  7F E3 FB 78 */	mr r3, r31
/* 80260F84 0025C4C4  7F A4 EB 78 */	mr r4, r29
/* 80260F88 0025C4C8  48 00 A9 8D */	bl func_8026B914
/* 80260F8C 0025C4CC  39 61 00 20 */	addi r11, r1, 0x20
/* 80260F90 0025C4D0  7F E3 FB 78 */	mr r3, r31
/* 80260F94 0025C4D4  48 2B 65 E9 */	bl func_8051757C
/* 80260F98 0025C4D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80260F9C 0025C4DC  7C 08 03 A6 */	mtlr r0
/* 80260FA0 0025C4E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80260FA4 0025C4E4  4E 80 00 20 */	blr 

.global func_80260FA8
func_80260FA8:
/* 80260FA8 0025C4E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80260FAC 0025C4EC  7C 08 02 A6 */	mflr r0
/* 80260FB0 0025C4F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80260FB4 0025C4F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80260FB8 0025C4F8  48 2B 65 81 */	bl func_80517538
/* 80260FBC 0025C4FC  48 00 00 CD */	bl func_80261088
/* 80260FC0 0025C500  7C 7E 1B 78 */	mr r30, r3
/* 80260FC4 0025C504  3B A0 00 00 */	li r29, 0
/* 80260FC8 0025C508  3B E0 00 00 */	li r31, 0
/* 80260FCC 0025C50C  48 00 00 18 */	b lbl_80260FE4
lbl_80260FD0:
/* 80260FD0 0025C510  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80260FD4 0025C514  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80260FD8 0025C518  48 18 E9 55 */	bl func_803EF92C
/* 80260FDC 0025C51C  3B BD 00 01 */	addi r29, r29, 1
/* 80260FE0 0025C520  3B FF 00 04 */	addi r31, r31, 4
lbl_80260FE4:
/* 80260FE4 0025C524  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80260FE8 0025C528  7C 1D 00 00 */	cmpw r29, r0
/* 80260FEC 0025C52C  41 80 FF E4 */	blt lbl_80260FD0
/* 80260FF0 0025C530  39 61 00 20 */	addi r11, r1, 0x20
/* 80260FF4 0025C534  48 2B 65 91 */	bl func_80517584
/* 80260FF8 0025C538  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80260FFC 0025C53C  7C 08 03 A6 */	mtlr r0
/* 80261000 0025C540  38 21 00 20 */	addi r1, r1, 0x20
/* 80261004 0025C544  4E 80 00 20 */	blr 

.global func_80261008
func_80261008:
/* 80261008 0025C548  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026100C 0025C54C  7C 08 02 A6 */	mflr r0
/* 80261010 0025C550  90 01 00 24 */	stw r0, 0x24(r1)
/* 80261014 0025C554  39 61 00 20 */	addi r11, r1, 0x20
/* 80261018 0025C558  48 2B 65 1D */	bl func_80517534
/* 8026101C 0025C55C  7C 7C 1B 78 */	mr r28, r3
/* 80261020 0025C560  7C 9D 23 78 */	mr r29, r4
/* 80261024 0025C564  7C BE 2B 78 */	mr r30, r5
/* 80261028 0025C568  38 60 00 18 */	li r3, 0x18
/* 8026102C 0025C56C  48 1A 8A CD */	bl func_80409AF8
/* 80261030 0025C570  2C 03 00 00 */	cmpwi r3, 0
/* 80261034 0025C574  7C 7F 1B 78 */	mr r31, r3
/* 80261038 0025C578  41 82 00 14 */	beq lbl_8026104C
/* 8026103C 0025C57C  7F A4 EB 78 */	mr r4, r29
/* 80261040 0025C580  7F C5 F3 78 */	mr r5, r30
/* 80261044 0025C584  48 00 A7 FD */	bl func_8026B840
/* 80261048 0025C588  7C 7F 1B 78 */	mr r31, r3
lbl_8026104C:
/* 8026104C 0025C58C  7F E3 FB 78 */	mr r3, r31
/* 80261050 0025C590  48 00 01 BD */	bl func_8026120C
/* 80261054 0025C594  80 BC 00 8C */	lwz r5, 0x8c(r28)
/* 80261058 0025C598  39 61 00 20 */	addi r11, r1, 0x20
/* 8026105C 0025C59C  7F E3 FB 78 */	mr r3, r31
/* 80261060 0025C5A0  38 85 00 01 */	addi r4, r5, 1
/* 80261064 0025C5A4  54 A0 10 3A */	slwi r0, r5, 2
/* 80261068 0025C5A8  90 9C 00 8C */	stw r4, 0x8c(r28)
/* 8026106C 0025C5AC  7C 9C 02 14 */	add r4, r28, r0
/* 80261070 0025C5B0  93 E4 00 0C */	stw r31, 0xc(r4)
/* 80261074 0025C5B4  48 2B 65 0D */	bl func_80517580
/* 80261078 0025C5B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026107C 0025C5BC  7C 08 03 A6 */	mtlr r0
/* 80261080 0025C5C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80261084 0025C5C4  4E 80 00 20 */	blr 

.global func_80261088
func_80261088:
/* 80261088 0025C5C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026108C 0025C5CC  7C 08 02 A6 */	mflr r0
/* 80261090 0025C5D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80261094 0025C5D4  39 61 00 20 */	addi r11, r1, 0x20
/* 80261098 0025C5D8  48 2B 64 99 */	bl _savegpr_27
/* 8026109C 0025C5DC  7C 7B 1B 78 */	mr r27, r3
/* 802610A0 0025C5E0  7C 9C 23 78 */	mr r28, r4
/* 802610A4 0025C5E4  3B A0 00 00 */	li r29, 0
/* 802610A8 0025C5E8  3B E0 00 00 */	li r31, 0
/* 802610AC 0025C5EC  48 00 00 30 */	b lbl_802610DC
lbl_802610B0:
/* 802610B0 0025C5F0  7F DB FA 14 */	add r30, r27, r31
/* 802610B4 0025C5F4  7F 84 E3 78 */	mr r4, r28
/* 802610B8 0025C5F8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802610BC 0025C5FC  80 63 00 04 */	lwz r3, 4(r3)
/* 802610C0 0025C600  48 19 C3 E1 */	bl func_803FD4A0
/* 802610C4 0025C604  2C 03 00 00 */	cmpwi r3, 0
/* 802610C8 0025C608  41 82 00 0C */	beq lbl_802610D4
/* 802610CC 0025C60C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802610D0 0025C610  48 00 00 1C */	b lbl_802610EC
lbl_802610D4:
/* 802610D4 0025C614  3B BD 00 01 */	addi r29, r29, 1
/* 802610D8 0025C618  3B FF 00 04 */	addi r31, r31, 4
lbl_802610DC:
/* 802610DC 0025C61C  80 1B 00 8C */	lwz r0, 0x8c(r27)
/* 802610E0 0025C620  7C 1D 00 40 */	cmplw r29, r0
/* 802610E4 0025C624  41 80 FF CC */	blt lbl_802610B0
/* 802610E8 0025C628  38 60 00 00 */	li r3, 0
lbl_802610EC:
/* 802610EC 0025C62C  39 61 00 20 */	addi r11, r1, 0x20
/* 802610F0 0025C630  48 2B 64 8D */	bl func_8051757C
/* 802610F4 0025C634  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802610F8 0025C638  7C 08 03 A6 */	mtlr r0
/* 802610FC 0025C63C  38 21 00 20 */	addi r1, r1, 0x20
/* 80261100 0025C640  4E 80 00 20 */	blr 
/* 80261104 0025C644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80261108 0025C648  7C 08 02 A6 */	mflr r0
/* 8026110C 0025C64C  2C 03 00 00 */	cmpwi r3, 0
/* 80261110 0025C650  90 01 00 14 */	stw r0, 0x14(r1)
/* 80261114 0025C654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80261118 0025C658  7C 9F 23 78 */	mr r31, r4
/* 8026111C 0025C65C  93 C1 00 08 */	stw r30, 8(r1)
/* 80261120 0025C660  7C 7E 1B 78 */	mr r30, r3
/* 80261124 0025C664  41 82 00 1C */	beq lbl_80261140
/* 80261128 0025C668  38 80 00 00 */	li r4, 0
/* 8026112C 0025C66C  48 00 00 89 */	bl func_802611B4
/* 80261130 0025C670  2C 1F 00 00 */	cmpwi r31, 0
/* 80261134 0025C674  40 81 00 0C */	ble lbl_80261140
/* 80261138 0025C678  7F C3 F3 78 */	mr r3, r30
/* 8026113C 0025C67C  48 1A 8A 05 */	bl __dl__FPv
lbl_80261140:
/* 80261140 0025C680  7F C3 F3 78 */	mr r3, r30
/* 80261144 0025C684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80261148 0025C688  83 C1 00 08 */	lwz r30, 8(r1)
/* 8026114C 0025C68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80261150 0025C690  7C 08 03 A6 */	mtlr r0
/* 80261154 0025C694  38 21 00 10 */	addi r1, r1, 0x10
/* 80261158 0025C698  4E 80 00 20 */	blr 