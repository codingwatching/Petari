.include "macros.inc"

.text

.global func_802274C0
func_802274C0:
/* 802274C0 00222A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802274C4 00222A04  7C 08 02 A6 */	mflr r0
/* 802274C8 00222A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 802274CC 00222A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802274D0 00222A10  7C 7F 1B 78 */	mr r31, r3
/* 802274D4 00222A14  4B FD B9 2D */	bl func_80202E00
/* 802274D8 00222A18  3C 80 80 59 */	lis r4, lbl_8058B5B0@ha
/* 802274DC 00222A1C  7F E3 FB 78 */	mr r3, r31
/* 802274E0 00222A20  38 84 B5 B0 */	addi r4, r4, lbl_8058B5B0@l
/* 802274E4 00222A24  90 9F 00 00 */	stw r4, 0(r31)
/* 802274E8 00222A28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802274EC 00222A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802274F0 00222A30  7C 08 03 A6 */	mtlr r0
/* 802274F4 00222A34  38 21 00 10 */	addi r1, r1, 0x10
/* 802274F8 00222A38  4E 80 00 20 */	blr 
/* 802274FC 00222A3C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80227500 00222A40  7C 08 02 A6 */	mflr r0
/* 80227504 00222A44  90 01 01 14 */	stw r0, 0x114(r1)
/* 80227508 00222A48  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8022750C 00222A4C  7C 9F 23 78 */	mr r31, r4
/* 80227510 00222A50  93 C1 01 08 */	stw r30, 0x108(r1)
/* 80227514 00222A54  7C 7E 1B 78 */	mr r30, r3
/* 80227518 00222A58  48 1B 25 65 */	bl func_803D9A7C
/* 8022751C 00222A5C  7F E5 FB 78 */	mr r5, r31
/* 80227520 00222A60  38 61 00 08 */	addi r3, r1, 8
/* 80227524 00222A64  38 80 01 00 */	li r4, 0x100
/* 80227528 00222A68  48 1B 86 9D */	bl func_803DFBC4
/* 8022752C 00222A6C  7F C3 F3 78 */	mr r3, r30
/* 80227530 00222A70  38 81 00 08 */	addi r4, r1, 8
/* 80227534 00222A74  38 A0 00 00 */	li r5, 0
/* 80227538 00222A78  38 C0 00 00 */	li r6, 0
/* 8022753C 00222A7C  4B F3 E4 89 */	bl func_801659C4
/* 80227540 00222A80  7F C3 F3 78 */	mr r3, r30
/* 80227544 00222A84  48 1C 83 D5 */	bl func_803EF918
/* 80227548 00222A88  7F C3 F3 78 */	mr r3, r30
/* 8022754C 00222A8C  48 1B 50 61 */	bl func_803DC5AC
/* 80227550 00222A90  7F C3 F3 78 */	mr r3, r30
/* 80227554 00222A94  4B FD BA 09 */	bl func_80202F5C
/* 80227558 00222A98  7F C3 F3 78 */	mr r3, r30
/* 8022755C 00222A9C  38 81 00 08 */	addi r4, r1, 8
/* 80227560 00222AA0  48 1C 1F E5 */	bl func_803E9544
/* 80227564 00222AA4  2C 03 00 00 */	cmpwi r3, 0
/* 80227568 00222AA8  41 82 00 2C */	beq lbl_80227594
/* 8022756C 00222AAC  7F C3 F3 78 */	mr r3, r30
/* 80227570 00222AB0  38 80 00 01 */	li r4, 1
/* 80227574 00222AB4  4B F3 E5 45 */	bl func_80165AB8
/* 80227578 00222AB8  7F C3 F3 78 */	mr r3, r30
/* 8022757C 00222ABC  48 19 AD 69 */	bl func_803C22E4
/* 80227580 00222AC0  7C 65 1B 78 */	mr r5, r3
/* 80227584 00222AC4  7F C3 F3 78 */	mr r3, r30
/* 80227588 00222AC8  38 81 00 08 */	addi r4, r1, 8
/* 8022758C 00222ACC  38 C0 00 00 */	li r6, 0
/* 80227590 00222AD0  48 1B 6B E9 */	bl func_803DE178
lbl_80227594:
/* 80227594 00222AD4  C0 22 E2 D8 */	lfs f1, lbl_806A9558-_SDA2_BASE_(r2)
/* 80227598 00222AD8  7F C3 F3 78 */	mr r3, r30
/* 8022759C 00222ADC  48 1B 27 D9 */	bl func_803D9D74
/* 802275A0 00222AE0  81 9E 00 00 */	lwz r12, 0(r30)
/* 802275A4 00222AE4  7F C3 F3 78 */	mr r3, r30
/* 802275A8 00222AE8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802275AC 00222AEC  7D 89 03 A6 */	mtctr r12
/* 802275B0 00222AF0  4E 80 04 21 */	bctrl 
/* 802275B4 00222AF4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802275B8 00222AF8  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 802275BC 00222AFC  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 802275C0 00222B00  7C 08 03 A6 */	mtlr r0
/* 802275C4 00222B04  38 21 01 10 */	addi r1, r1, 0x110
/* 802275C8 00222B08  4E 80 00 20 */	blr 
/* 802275CC 00222B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802275D0 00222B10  7C 08 02 A6 */	mflr r0
/* 802275D4 00222B14  2C 03 00 00 */	cmpwi r3, 0
/* 802275D8 00222B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802275DC 00222B1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802275E0 00222B20  7C 9F 23 78 */	mr r31, r4
/* 802275E4 00222B24  93 C1 00 08 */	stw r30, 8(r1)
/* 802275E8 00222B28  7C 7E 1B 78 */	mr r30, r3
/* 802275EC 00222B2C  41 82 00 1C */	beq lbl_80227608
/* 802275F0 00222B30  38 80 00 00 */	li r4, 0
/* 802275F4 00222B34  4B FD ED 4D */	bl func_80206340
/* 802275F8 00222B38  2C 1F 00 00 */	cmpwi r31, 0
/* 802275FC 00222B3C  40 81 00 0C */	ble lbl_80227608
/* 80227600 00222B40  7F C3 F3 78 */	mr r3, r30
/* 80227604 00222B44  48 1E 25 3D */	bl __dl__FPv
lbl_80227608:
/* 80227608 00222B48  7F C3 F3 78 */	mr r3, r30
/* 8022760C 00222B4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80227610 00222B50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80227614 00222B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80227618 00222B58  7C 08 03 A6 */	mtlr r0
/* 8022761C 00222B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80227620 00222B60  4E 80 00 20 */	blr 