.include "macros.inc"

.text

.global func_80404A08
func_80404A08:
/* 80404A08 003FFF48  3C 80 80 5D */	lis r4, lbl_805D2338@ha
/* 80404A0C 003FFF4C  38 00 00 00 */	li r0, 0
/* 80404A10 003FFF50  38 84 23 38 */	addi r4, r4, lbl_805D2338@l
/* 80404A14 003FFF54  90 03 00 00 */	stw r0, 0(r3)
/* 80404A18 003FFF58  90 83 00 04 */	stw r4, 4(r3)
/* 80404A1C 003FFF5C  4E 80 00 20 */	blr 

.global func_80404A20
func_80404A20:
/* 80404A20 003FFF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404A24 003FFF64  7C 08 02 A6 */	mflr r0
/* 80404A28 003FFF68  2C 03 00 00 */	cmpwi r3, 0
/* 80404A2C 003FFF6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80404A30 003FFF70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80404A34 003FFF74  7C 7F 1B 78 */	mr r31, r3
/* 80404A38 003FFF78  41 82 00 10 */	beq lbl_80404A48
/* 80404A3C 003FFF7C  2C 04 00 00 */	cmpwi r4, 0
/* 80404A40 003FFF80  40 81 00 08 */	ble lbl_80404A48
/* 80404A44 003FFF84  48 00 50 FD */	bl __dl__FPv
lbl_80404A48:
/* 80404A48 003FFF88  7F E3 FB 78 */	mr r3, r31
/* 80404A4C 003FFF8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80404A50 003FFF90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80404A54 003FFF94  7C 08 03 A6 */	mtlr r0
/* 80404A58 003FFF98  38 21 00 10 */	addi r1, r1, 0x10
/* 80404A5C 003FFF9C  4E 80 00 20 */	blr 

.global func_80404A60
func_80404A60:
/* 80404A60 003FFFA0  2C 04 00 00 */	cmpwi r4, 0
/* 80404A64 003FFFA4  40 82 00 0C */	bne lbl_80404A70
/* 80404A68 003FFFA8  38 60 00 00 */	li r3, 0
/* 80404A6C 003FFFAC  4E 80 00 20 */	blr 
lbl_80404A70:
/* 80404A70 003FFFB0  90 83 00 00 */	stw r4, 0(r3)
/* 80404A74 003FFFB4  38 60 00 01 */	li r3, 1
/* 80404A78 003FFFB8  4E 80 00 20 */	blr 

.global func_80404A7C
func_80404A7C:
/* 80404A7C 003FFFBC  90 83 00 04 */	stw r4, 4(r3)
/* 80404A80 003FFFC0  4E 80 00 20 */	blr 

.global func_80404A84
func_80404A84:
/* 80404A84 003FFFC4  80 63 00 04 */	lwz r3, 4(r3)
/* 80404A88 003FFFC8  4E 80 00 20 */	blr 

.global func_80404A8C
func_80404A8C:
/* 80404A8C 003FFFCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404A90 003FFFD0  7C 08 02 A6 */	mflr r0
/* 80404A94 003FFFD4  80 A3 00 00 */	lwz r5, 0(r3)
/* 80404A98 003FFFD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80404A9C 003FFFDC  30 05 FF FF */	addic r0, r5, -1
/* 80404AA0 003FFFE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80404AA4 003FFFE4  7C 00 29 11 */	subfe. r0, r0, r5
/* 80404AA8 003FFFE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80404AAC 003FFFEC  7C 7E 1B 78 */	mr r30, r3
/* 80404AB0 003FFFF0  40 82 00 0C */	bne lbl_80404ABC
/* 80404AB4 003FFFF4  38 60 FF FF */	li r3, -1
/* 80404AB8 003FFFF8  48 00 00 5C */	b lbl_80404B14
lbl_80404ABC:
/* 80404ABC 003FFFFC  41 82 00 0C */	beq lbl_80404AC8
/* 80404AC0 00400000  83 E5 00 04 */	lwz r31, 4(r5)
/* 80404AC4 00400004  48 00 00 08 */	b lbl_80404ACC
lbl_80404AC8:
/* 80404AC8 00400008  3B E0 00 00 */	li r31, 0
lbl_80404ACC:
/* 80404ACC 0040000C  7C 83 23 78 */	mr r3, r4
/* 80404AD0 00400010  48 01 15 A9 */	bl func_80416078
/* 80404AD4 00400014  38 C0 00 00 */	li r6, 0
/* 80404AD8 00400018  38 80 00 00 */	li r4, 0
/* 80404ADC 0040001C  7F E9 03 A6 */	mtctr r31
/* 80404AE0 00400020  2C 1F 00 00 */	cmpwi r31, 0
/* 80404AE4 00400024  40 81 00 2C */	ble lbl_80404B10
lbl_80404AE8:
/* 80404AE8 00400028  80 1E 00 00 */	lwz r0, 0(r30)
/* 80404AEC 0040002C  7C A0 22 14 */	add r5, r0, r4
/* 80404AF0 00400030  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80404AF4 00400034  7C 03 00 40 */	cmplw r3, r0
/* 80404AF8 00400038  40 82 00 0C */	bne lbl_80404B04
/* 80404AFC 0040003C  7C C3 33 78 */	mr r3, r6
/* 80404B00 00400040  48 00 00 14 */	b lbl_80404B14
lbl_80404B04:
/* 80404B04 00400044  38 C6 00 01 */	addi r6, r6, 1
/* 80404B08 00400048  38 84 00 0C */	addi r4, r4, 0xc
/* 80404B0C 0040004C  42 00 FF DC */	bdnz lbl_80404AE8
lbl_80404B10:
/* 80404B10 00400050  38 60 FF FF */	li r3, -1
lbl_80404B14:
/* 80404B14 00400054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80404B18 00400058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80404B1C 0040005C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80404B20 00400060  7C 08 03 A6 */	mtlr r0
/* 80404B24 00400064  38 21 00 10 */	addi r1, r1, 0x10
/* 80404B28 00400068  4E 80 00 20 */	blr 

.global func_80404B2C
func_80404B2C:
/* 80404B2C 0040006C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404B30 00400070  7C 08 02 A6 */	mflr r0
/* 80404B34 00400074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80404B38 00400078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80404B3C 0040007C  7C 7F 1B 78 */	mr r31, r3
/* 80404B40 00400080  4B FF FF 4D */	bl func_80404A8C
/* 80404B44 00400084  2C 03 00 00 */	cmpwi r3, 0
/* 80404B48 00400088  40 80 00 0C */	bge lbl_80404B54
/* 80404B4C 0040008C  38 60 00 07 */	li r3, 7
/* 80404B50 00400090  48 00 00 14 */	b lbl_80404B64
lbl_80404B54:
/* 80404B54 00400094  1C 03 00 0C */	mulli r0, r3, 0xc
/* 80404B58 00400098  80 7F 00 00 */	lwz r3, 0(r31)
/* 80404B5C 0040009C  7C 63 02 14 */	add r3, r3, r0
/* 80404B60 004000A0  88 63 00 1B */	lbz r3, 0x1b(r3)
lbl_80404B64:
/* 80404B64 004000A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80404B68 004000A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80404B6C 004000AC  7C 08 03 A6 */	mtlr r0
/* 80404B70 004000B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80404B74 004000B4  4E 80 00 20 */	blr 

.global func_80404B78
func_80404B78:
/* 80404B78 004000B8  81 03 00 00 */	lwz r8, 0(r3)
/* 80404B7C 004000BC  1C 65 00 0C */	mulli r3, r5, 0xc
/* 80404B80 004000C0  80 08 00 0C */	lwz r0, 0xc(r8)
/* 80404B84 004000C4  7C 68 1A 14 */	add r3, r8, r3
/* 80404B88 004000C8  80 E8 00 08 */	lwz r7, 8(r8)
/* 80404B8C 004000CC  7C A4 01 D6 */	mullw r5, r4, r0
/* 80404B90 004000D0  88 03 00 1B */	lbz r0, 0x1b(r3)
/* 80404B94 004000D4  7C 88 3A 14 */	add r4, r8, r7
/* 80404B98 004000D8  A0 63 00 18 */	lhz r3, 0x18(r3)
/* 80404B9C 004000DC  2C 00 00 06 */	cmpwi r0, 6
/* 80404BA0 004000E0  7C 05 22 14 */	add r0, r5, r4
/* 80404BA4 004000E4  7C 63 02 14 */	add r3, r3, r0
/* 80404BA8 004000E8  41 82 00 08 */	beq lbl_80404BB0
/* 80404BAC 004000EC  48 00 00 38 */	b lbl_80404BE4
lbl_80404BB0:
/* 80404BB0 004000F0  2C 08 00 00 */	cmpwi r8, 0
/* 80404BB4 004000F4  41 82 00 0C */	beq lbl_80404BC0
/* 80404BB8 004000F8  80 A8 00 00 */	lwz r5, 0(r8)
/* 80404BBC 004000FC  48 00 00 08 */	b lbl_80404BC4
lbl_80404BC0:
/* 80404BC0 00400100  38 A0 00 00 */	li r5, 0
lbl_80404BC4:
/* 80404BC4 00400104  80 88 00 0C */	lwz r4, 0xc(r8)
/* 80404BC8 00400108  7C 08 3A 14 */	add r0, r8, r7
/* 80404BCC 0040010C  80 63 00 00 */	lwz r3, 0(r3)
/* 80404BD0 00400110  7C 85 21 D6 */	mullw r4, r5, r4
/* 80404BD4 00400114  7C 04 02 14 */	add r0, r4, r0
/* 80404BD8 00400118  7C 03 02 14 */	add r0, r3, r0
/* 80404BDC 0040011C  90 06 00 00 */	stw r0, 0(r6)
/* 80404BE0 00400120  48 00 00 08 */	b lbl_80404BE8
lbl_80404BE4:
/* 80404BE4 00400124  90 66 00 00 */	stw r3, 0(r6)
lbl_80404BE8:
/* 80404BE8 00400128  38 60 00 01 */	li r3, 1
/* 80404BEC 0040012C  4E 80 00 20 */	blr 

.global func_80404BF0
func_80404BF0:
/* 80404BF0 00400130  81 03 00 00 */	lwz r8, 0(r3)
/* 80404BF4 00400134  1C 65 00 0C */	mulli r3, r5, 0xc
/* 80404BF8 00400138  80 08 00 0C */	lwz r0, 0xc(r8)
/* 80404BFC 0040013C  7C E8 1A 14 */	add r7, r8, r3
/* 80404C00 00400140  80 68 00 08 */	lwz r3, 8(r8)
/* 80404C04 00400144  7C A4 01 D6 */	mullw r5, r4, r0
/* 80404C08 00400148  88 07 00 1B */	lbz r0, 0x1b(r7)
/* 80404C0C 0040014C  7C 68 1A 14 */	add r3, r8, r3
/* 80404C10 00400150  A0 87 00 18 */	lhz r4, 0x18(r7)
/* 80404C14 00400154  2C 00 00 03 */	cmpwi r0, 3
/* 80404C18 00400158  7C 65 1A 14 */	add r3, r5, r3
/* 80404C1C 0040015C  41 82 00 24 */	beq lbl_80404C40
/* 80404C20 00400160  40 80 00 10 */	bge lbl_80404C30
/* 80404C24 00400164  2C 00 00 00 */	cmpwi r0, 0
/* 80404C28 00400168  41 82 00 18 */	beq lbl_80404C40
/* 80404C2C 0040016C  48 00 00 2C */	b lbl_80404C58
lbl_80404C30:
/* 80404C30 00400170  2C 00 00 05 */	cmpwi r0, 5
/* 80404C34 00400174  41 82 00 1C */	beq lbl_80404C50
/* 80404C38 00400178  40 80 00 20 */	bge lbl_80404C58
/* 80404C3C 0040017C  48 00 00 0C */	b lbl_80404C48
lbl_80404C40:
/* 80404C40 00400180  7C A4 18 2E */	lwzx r5, r4, r3
/* 80404C44 00400184  48 00 00 1C */	b lbl_80404C60
lbl_80404C48:
/* 80404C48 00400188  7C A4 1A 2E */	lhzx r5, r4, r3
/* 80404C4C 0040018C  48 00 00 14 */	b lbl_80404C60
lbl_80404C50:
/* 80404C50 00400190  7C A4 18 AE */	lbzx r5, r4, r3
/* 80404C54 00400194  48 00 00 0C */	b lbl_80404C60
lbl_80404C58:
/* 80404C58 00400198  38 60 00 00 */	li r3, 0
/* 80404C5C 0040019C  4E 80 00 20 */	blr 
lbl_80404C60:
/* 80404C60 004001A0  80 87 00 14 */	lwz r4, 0x14(r7)
/* 80404C64 004001A4  38 60 00 01 */	li r3, 1
/* 80404C68 004001A8  88 07 00 1A */	lbz r0, 0x1a(r7)
/* 80404C6C 004001AC  7C A4 20 38 */	and r4, r5, r4
/* 80404C70 004001B0  7C 80 04 30 */	srw r0, r4, r0
/* 80404C74 004001B4  90 06 00 00 */	stw r0, 0(r6)
/* 80404C78 004001B8  4E 80 00 20 */	blr 

.global func_80404C7C
func_80404C7C:
/* 80404C7C 004001BC  1C 05 00 0C */	mulli r0, r5, 0xc
/* 80404C80 004001C0  81 03 00 00 */	lwz r8, 0(r3)
/* 80404C84 004001C4  7C E8 02 14 */	add r7, r8, r0
/* 80404C88 004001C8  88 07 00 1A */	lbz r0, 0x1a(r7)
/* 80404C8C 004001CC  2C 00 00 00 */	cmpwi r0, 0
/* 80404C90 004001D0  40 82 00 98 */	bne lbl_80404D28
/* 80404C94 004001D4  80 68 00 0C */	lwz r3, 0xc(r8)
/* 80404C98 004001D8  88 07 00 1B */	lbz r0, 0x1b(r7)
/* 80404C9C 004001DC  7C 84 19 D6 */	mullw r4, r4, r3
/* 80404CA0 004001E0  80 68 00 08 */	lwz r3, 8(r8)
/* 80404CA4 004001E4  2C 00 00 04 */	cmpwi r0, 4
/* 80404CA8 004001E8  A0 A7 00 18 */	lhz r5, 0x18(r7)
/* 80404CAC 004001EC  7C 68 1A 14 */	add r3, r8, r3
/* 80404CB0 004001F0  7C 84 1A 14 */	add r4, r4, r3
/* 80404CB4 004001F4  41 82 00 3C */	beq lbl_80404CF0
/* 80404CB8 004001F8  40 80 00 10 */	bge lbl_80404CC8
/* 80404CBC 004001FC  2C 00 00 00 */	cmpwi r0, 0
/* 80404CC0 00400200  41 82 00 14 */	beq lbl_80404CD4
/* 80404CC4 00400204  48 00 00 64 */	b lbl_80404D28
lbl_80404CC8:
/* 80404CC8 00400208  2C 00 00 06 */	cmpwi r0, 6
/* 80404CCC 0040020C  40 80 00 5C */	bge lbl_80404D28
/* 80404CD0 00400210  48 00 00 38 */	b lbl_80404D08
lbl_80404CD4:
/* 80404CD4 00400214  80 67 00 14 */	lwz r3, 0x14(r7)
/* 80404CD8 00400218  3C 03 00 01 */	addis r0, r3, 1
/* 80404CDC 0040021C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80404CE0 00400220  40 82 00 48 */	bne lbl_80404D28
/* 80404CE4 00400224  7C 05 20 2E */	lwzx r0, r5, r4
/* 80404CE8 00400228  90 06 00 00 */	stw r0, 0(r6)
/* 80404CEC 0040022C  48 00 00 34 */	b lbl_80404D20
lbl_80404CF0:
/* 80404CF0 00400230  80 07 00 14 */	lwz r0, 0x14(r7)
/* 80404CF4 00400234  28 00 FF FF */	cmplwi r0, 0xffff
/* 80404CF8 00400238  40 82 00 30 */	bne lbl_80404D28
/* 80404CFC 0040023C  7C 05 22 AE */	lhax r0, r5, r4
/* 80404D00 00400240  90 06 00 00 */	stw r0, 0(r6)
/* 80404D04 00400244  48 00 00 1C */	b lbl_80404D20
lbl_80404D08:
/* 80404D08 00400248  80 07 00 14 */	lwz r0, 0x14(r7)
/* 80404D0C 0040024C  28 00 00 FF */	cmplwi r0, 0xff
/* 80404D10 00400250  40 82 00 18 */	bne lbl_80404D28
/* 80404D14 00400254  7C 05 20 AE */	lbzx r0, r5, r4
/* 80404D18 00400258  7C 00 07 74 */	extsb r0, r0
/* 80404D1C 0040025C  90 06 00 00 */	stw r0, 0(r6)
lbl_80404D20:
/* 80404D20 00400260  38 60 00 01 */	li r3, 1
/* 80404D24 00400264  4E 80 00 20 */	blr 
lbl_80404D28:
/* 80404D28 00400268  38 60 00 00 */	li r3, 0
/* 80404D2C 0040026C  4E 80 00 20 */	blr 

.global func_80404D30
func_80404D30:
/* 80404D30 00400270  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80404D34 00400274  7C 08 02 A6 */	mflr r0
/* 80404D38 00400278  90 01 00 34 */	stw r0, 0x34(r1)
/* 80404D3C 0040027C  39 61 00 30 */	addi r11, r1, 0x30
/* 80404D40 00400280  48 11 27 F5 */	bl func_80517534
/* 80404D44 00400284  7C 7C 1B 78 */	mr r28, r3
/* 80404D48 00400288  7C 9D 23 78 */	mr r29, r4
/* 80404D4C 0040028C  7C BE 2B 78 */	mr r30, r5
/* 80404D50 00400290  7C DF 33 78 */	mr r31, r6
/* 80404D54 00400294  48 00 00 44 */	b lbl_80404D98
lbl_80404D58:
/* 80404D58 00400298  7F 83 E3 78 */	mr r3, r28
/* 80404D5C 0040029C  7F E4 FB 78 */	mr r4, r31
/* 80404D60 004002A0  7F A5 EB 78 */	mr r5, r29
/* 80404D64 004002A4  38 C1 00 08 */	addi r6, r1, 8
/* 80404D68 004002A8  4B CB 3A 75 */	bl func_800B87DC
/* 80404D6C 004002AC  80 61 00 08 */	lwz r3, 8(r1)
/* 80404D70 004002B0  7F C4 F3 78 */	mr r4, r30
/* 80404D74 004002B4  4B FF 87 55 */	bl isEqualStringCase__2MRFPCcPCc
/* 80404D78 004002B8  2C 03 00 00 */	cmpwi r3, 0
/* 80404D7C 004002BC  41 82 00 18 */	beq lbl_80404D94
/* 80404D80 004002C0  93 81 00 0C */	stw r28, 0xc(r1)
/* 80404D84 004002C4  7F 83 E3 78 */	mr r3, r28
/* 80404D88 004002C8  7F E4 FB 78 */	mr r4, r31
/* 80404D8C 004002CC  93 E1 00 10 */	stw r31, 0x10(r1)
/* 80404D90 004002D0  48 00 00 30 */	b lbl_80404DC0
lbl_80404D94:
/* 80404D94 004002D4  3B FF 00 01 */	addi r31, r31, 1
lbl_80404D98:
/* 80404D98 004002D8  80 7C 00 00 */	lwz r3, 0(r28)
/* 80404D9C 004002DC  2C 03 00 00 */	cmpwi r3, 0
/* 80404DA0 004002E0  40 82 00 0C */	bne lbl_80404DAC
/* 80404DA4 004002E4  38 00 00 00 */	li r0, 0
/* 80404DA8 004002E8  48 00 00 08 */	b lbl_80404DB0
lbl_80404DAC:
/* 80404DAC 004002EC  80 03 00 00 */	lwz r0, 0(r3)
lbl_80404DB0:
/* 80404DB0 004002F0  7C 1F 00 00 */	cmpw r31, r0
/* 80404DB4 004002F4  41 80 FF A4 */	blt lbl_80404D58
/* 80404DB8 004002F8  7F 83 E3 78 */	mr r3, r28
/* 80404DBC 004002FC  4B F4 15 BD */	bl func_80346378
lbl_80404DC0:
/* 80404DC0 00400300  39 61 00 30 */	addi r11, r1, 0x30
/* 80404DC4 00400304  48 11 27 BD */	bl func_80517580
/* 80404DC8 00400308  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80404DCC 0040030C  7C 08 03 A6 */	mtlr r0
/* 80404DD0 00400310  38 21 00 30 */	addi r1, r1, 0x30
/* 80404DD4 00400314  4E 80 00 20 */	blr 

.global func_80404DD8
func_80404DD8:
/* 80404DD8 00400318  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80404DDC 0040031C  7C 08 02 A6 */	mflr r0
/* 80404DE0 00400320  90 01 00 34 */	stw r0, 0x34(r1)
/* 80404DE4 00400324  39 61 00 30 */	addi r11, r1, 0x30
/* 80404DE8 00400328  48 11 27 45 */	bl _savegpr_26
/* 80404DEC 0040032C  80 C3 00 00 */	lwz r6, 0(r3)
/* 80404DF0 00400330  7C 7A 1B 78 */	mr r26, r3
/* 80404DF4 00400334  7C 9B 23 78 */	mr r27, r4
/* 80404DF8 00400338  7C BC 2B 78 */	mr r28, r5
/* 80404DFC 0040033C  2C 06 00 00 */	cmpwi r6, 0
/* 80404E00 00400340  3B E0 00 00 */	li r31, 0
/* 80404E04 00400344  41 82 00 0C */	beq lbl_80404E10
/* 80404E08 00400348  83 C6 00 00 */	lwz r30, 0(r6)
/* 80404E0C 0040034C  48 00 00 68 */	b lbl_80404E74
lbl_80404E10:
/* 80404E10 00400350  3B C0 00 00 */	li r30, 0
/* 80404E14 00400354  48 00 00 60 */	b lbl_80404E74
lbl_80404E18:
/* 80404E18 00400358  7C 1F F2 14 */	add r0, r31, r30
/* 80404E1C 0040035C  7F 43 D3 78 */	mr r3, r26
/* 80404E20 00400360  7C 00 0E 70 */	srawi r0, r0, 1
/* 80404E24 00400364  7F 65 DB 78 */	mr r5, r27
/* 80404E28 00400368  7F A0 01 94 */	addze r29, r0
/* 80404E2C 0040036C  38 C1 00 08 */	addi r6, r1, 8
/* 80404E30 00400370  7F A4 EB 78 */	mr r4, r29
/* 80404E34 00400374  4B CB 39 A9 */	bl func_800B87DC
/* 80404E38 00400378  80 61 00 08 */	lwz r3, 8(r1)
/* 80404E3C 0040037C  7F 84 E3 78 */	mr r4, r28
/* 80404E40 00400380  48 11 99 F1 */	bl strcmp
/* 80404E44 00400384  2C 03 00 00 */	cmpwi r3, 0
/* 80404E48 00400388  40 82 00 18 */	bne lbl_80404E60
/* 80404E4C 0040038C  93 41 00 0C */	stw r26, 0xc(r1)
/* 80404E50 00400390  7F 43 D3 78 */	mr r3, r26
/* 80404E54 00400394  7F A4 EB 78 */	mr r4, r29
/* 80404E58 00400398  93 A1 00 10 */	stw r29, 0x10(r1)
/* 80404E5C 0040039C  48 00 00 28 */	b lbl_80404E84
lbl_80404E60:
/* 80404E60 004003A0  40 80 00 08 */	bge lbl_80404E68
/* 80404E64 004003A4  3B FD 00 01 */	addi r31, r29, 1
lbl_80404E68:
/* 80404E68 004003A8  2C 03 00 00 */	cmpwi r3, 0
/* 80404E6C 004003AC  41 80 00 08 */	blt lbl_80404E74
/* 80404E70 004003B0  7F BE EB 78 */	mr r30, r29
lbl_80404E74:
/* 80404E74 004003B4  7C 1F F0 00 */	cmpw r31, r30
/* 80404E78 004003B8  41 80 FF A0 */	blt lbl_80404E18
/* 80404E7C 004003BC  7F 43 D3 78 */	mr r3, r26
/* 80404E80 004003C0  4B F4 14 F9 */	bl func_80346378
lbl_80404E84:
/* 80404E84 004003C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80404E88 004003C8  48 11 26 F1 */	bl _restgpr_26
/* 80404E8C 004003CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80404E90 004003D0  7C 08 03 A6 */	mtlr r0
/* 80404E94 004003D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80404E98 004003D8  4E 80 00 20 */	blr 