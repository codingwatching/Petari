.include "macros.inc"

.text

.global func_80159BBC
func_80159BBC:
/* 80159BBC 001550FC  C0 02 BF 38 */	lfs f0, lbl_806A71B8-_SDA2_BASE_(r2)
/* 80159BC0 00155100  38 80 FF FF */	li r4, -1
/* 80159BC4 00155104  38 00 00 00 */	li r0, 0
/* 80159BC8 00155108  90 83 00 0C */	stw r4, 0xc(r3)
/* 80159BCC 0015510C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80159BD0 00155110  D0 03 00 04 */	stfs f0, 4(r3)
/* 80159BD4 00155114  D0 03 00 08 */	stfs f0, 8(r3)
/* 80159BD8 00155118  90 03 00 10 */	stw r0, 0x10(r3)
/* 80159BDC 0015511C  4E 80 00 20 */	blr 
