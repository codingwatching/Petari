#ifndef XF_MEM_H
#define XF_MEM_H

#define XF_TEXGEN_REGULAR	0x00000000
#define XF_TEXGEN_BUMP_MAP	0x00000001
#define XF_TEXGEN_COLOR_STRGBC0	0x00000002
#define XF_TEXGEN_COLOR_STRGBC1	0x00000003
#define XF_TEX_TEXGEN_TYPE_F_UNUSED_4	0x00000004
#define XF_TEX_TEXGEN_TYPE_F_UNUSED_5	0x00000005
#define XF_TEX_TEXGEN_TYPE_F_UNUSED_6	0x00000006
#define XF_TEX_TEXGEN_TYPE_F_UNUSED_7	0x00000007

#define XF_ERROR_F_CTEX_BUG_ENABLE_SIZE	1
#define XF_ERROR_F_CTEX_BUG_ENABLE_SHIFT	0
#define XF_ERROR_F_CTEX_BUG_ENABLE_MASK	0x00000001
#define XF_ERROR_F_GET_CTEX_BUG_ENABLE(xf_error_f) \
	((((unsigned long)(xf_error_f)) & XF_ERROR_F_CTEX_BUG_ENABLE_MASK) >> XF_ERROR_F_CTEX_BUG_ENABLE_SHIFT)

#define XF_ERROR_F_TFAN4_BUG_ENABLE_SIZE	1
#define XF_ERROR_F_TFAN4_BUG_ENABLE_SHIFT	1
#define XF_ERROR_F_TFAN4_BUG_ENABLE_MASK	0x00000002
#define XF_ERROR_F_GET_TFAN4_BUG_ENABLE(xf_error_f) \
	((((unsigned long)(xf_error_f)) & XF_ERROR_F_TFAN4_BUG_ENABLE_MASK) >> XF_ERROR_F_TFAN4_BUG_ENABLE_SHIFT)

#define XF_ERROR_F_TFAN16_BUG_ENABLE_SIZE	1
#define XF_ERROR_F_TFAN16_BUG_ENABLE_SHIFT	2
#define XF_ERROR_F_TFAN16_BUG_ENABLE_MASK	0x00000004
#define XF_ERROR_F_GET_TFAN16_BUG_ENABLE(xf_error_f) \
    ((((unsigned long)(xf_error_f)) & XF_ERROR_F_TFAN16_BUG_ENABLE_MASK) >> XF_ERROR_F_TFAN16_BUG_ENABLE_SHIFT)

#define XF_ERROR_F_DUALTRAN_REG_ENABLE_SIZE	1
#define XF_ERROR_F_DUALTRAN_REG_ENABLE_SHIFT	3
#define XF_ERROR_F_DUALTRAN_REG_ENABLE_MASK	0x00000008
#define XF_ERROR_F_GET_DUALTRAN_REG_ENABLE(xf_error_f) \
    ((((unsigned long)(xf_error_f)) & XF_ERROR_F_DUALTRAN_REG_ENABLE_MASK) >> XF_ERROR_F_DUALTRAN_REG_ENABLE_SHIFT)

#define XF_ERROR_F_BYPASS_BUG_ENABLE_SIZE	1
#define XF_ERROR_F_BYPASS_BUG_ENABLE_SHIFT	4
#define XF_ERROR_F_BYPASS_BUG_ENABLE_MASK	0x00000010
#define XF_ERROR_F_GET_BYPASS_BUG_ENABLE(xf_error_f) \
    ((((unsigned long)(xf_error_f)) & XF_ERROR_F_BYPASS_BUG_ENABLE_MASK) >> XF_ERROR_F_BYPASS_BUG_ENABLE_SHIFT)

#define XF_ERROR_F_FAST_MATRIX_ENABLE_SIZE	1
#define XF_ERROR_F_FAST_MATRIX_ENABLE_SHIFT	5
#define XF_ERROR_F_FAST_MATRIX_ENABLE_MASK	0x00000020
#define XF_ERROR_F_GET_FAST_MATRIX_ENABLE(xf_error_f) \
    ((((unsigned long)(xf_error_f)) & XF_ERROR_F_FAST_MATRIX_ENABLE_MASK) >> XF_ERROR_F_FAST_MATRIX_ENABLE_SHIFT)

#define XF_DUALTEXTRAN_F_DUALTEXTRAN_ENABLE_SIZE	1
#define XF_DUALTEXTRAN_F_DUALTEXTRAN_ENABLE_SHIFT	0
#define XF_DUALTEXTRAN_F_DUALTEXTRAN_ENABLE_MASK	0x00000001
#define XF_DUALTEXTRAN_F_GET_DUALTEXTRAN_ENABLE(xf_dualtextran_f) \
    ((((unsigned long)(xf_dualtextran_f)) & XF_DUALTEXTRAN_F_DUALTEXTRAN_ENABLE_MASK) >> XF_DUALTEXTRAN_F_DUALTEXTRAN_ENABLE_SHIFT)

#define XF_PERF0_F(perf_a, perf_b, perf_c, perf_d) \
((((unsigned long)(perf_a)) << XF_PERF0_F_PERF_A_SHIFT) | \
    (((unsigned long)(perf_b)) << XF_PERF0_F_PERF_B_SHIFT) | \
    (((unsigned long)(perf_c)) << XF_PERF0_F_PERF_C_SHIFT) | \
    (((unsigned long)(perf_d)) << XF_PERF0_F_PERF_D_SHIFT))

#define XF_INVERTEXSPEC_F_HOST_COLORS_SIZE	2
#define XF_INVERTEXSPEC_F_HOST_COLORS_SHIFT	0
#define XF_INVERTEXSPEC_F_HOST_COLORS_MASK	0x00000003
#define XF_INVERTEXSPEC_F_GET_HOST_COLORS(xf_invertexspec_f) \
    ((((unsigned long)(xf_invertexspec_f)) & XF_INVERTEXSPEC_F_HOST_COLORS_MASK) >> XF_INVERTEXSPEC_F_HOST_COLORS_SHIFT)

#define XF_INVERTEXSPEC_F_HOST_NORMAL_SIZE	2
#define XF_INVERTEXSPEC_F_HOST_NORMAL_SHIFT	2
#define XF_INVERTEXSPEC_F_HOST_NORMAL_MASK	0x0000000c
#define XF_INVERTEXSPEC_F_GET_HOST_NORMAL(xf_invertexspec_f) \
    ((((unsigned long)(xf_invertexspec_f)) & XF_INVERTEXSPEC_F_HOST_NORMAL_MASK) >> XF_INVERTEXSPEC_F_HOST_NORMAL_SHIFT)

#define XF_INVERTEXSPEC_F_HOST_TEXTURES_SIZE	4
#define XF_INVERTEXSPEC_F_HOST_TEXTURES_SHIFT	4
#define XF_INVERTEXSPEC_F_HOST_TEXTURES_MASK	0x000000f0
#define XF_INVERTEXSPEC_F_GET_HOST_TEXTURES(xf_invertexspec_f) \
    ((((unsigned long)(xf_invertexspec_f)) & XF_INVERTEXSPEC_F_HOST_TEXTURES_MASK) >> XF_INVERTEXSPEC_F_HOST_TEXTURES_SHIFT)

#define XF_INVERTEXSPEC_F_TOTAL_SIZE	8
#define XF_INVERTEXSPEC_F_UNUSED_SIZE	24

#define XF_INVERTEXSPEC_F(host_colors, host_normal, host_textures) \
    ((((unsigned long)(host_colors)) << XF_INVERTEXSPEC_F_HOST_COLORS_SHIFT) | \
    (((unsigned long)(host_normal)) << XF_INVERTEXSPEC_F_HOST_NORMAL_SHIFT) | \
    (((unsigned long)(host_textures)) << XF_INVERTEXSPEC_F_HOST_TEXTURES_SHIFT))
             
#define XF_TEX_RESERVED0_SIZE	1
#define XF_TEX_RESERVED0_SHIFT	0
#define XF_TEX_RESERVED0_MASK	0x00000001
#define XF_TEX_GET_RESERVED0(xf_tex) \
    ((((unsigned long)(xf_tex)) & XF_TEX_RESERVED0_MASK) >> XF_TEX_RESERVED0_SHIFT)

#define XF_TEX_PROJECTION_SIZE	1
#define XF_TEX_PROJECTION_SHIFT	1
#define XF_TEX_PROJECTION_MASK	0x00000002
#define XF_TEX_GET_PROJECTION(xf_tex) \
    ((((unsigned long)(xf_tex)) & XF_TEX_PROJECTION_MASK) >> XF_TEX_PROJECTION_SHIFT)

#define XF_TEX_INPUT_FORM_SIZE	1
#define XF_TEX_INPUT_FORM_SHIFT	2
#define XF_TEX_INPUT_FORM_MASK	0x00000004
#define XF_TEX_GET_INPUT_FORM(xf_tex) \
    ((((unsigned long)(xf_tex)) & XF_TEX_INPUT_FORM_MASK) >> XF_TEX_INPUT_FORM_SHIFT)

#define XF_TEX_RESERVED1_SIZE	1
#define XF_TEX_RESERVED1_SHIFT	3
#define XF_TEX_RESERVED1_MASK	0x00000008
#define XF_TEX_GET_RESERVED1(xf_tex) \
    ((((unsigned long)(xf_tex)) & XF_TEX_RESERVED1_MASK) >> XF_TEX_RESERVED1_SHIFT)

#define XF_TEX_TEXGEN_TYPE_SIZE	3
#define XF_TEX_TEXGEN_TYPE_SHIFT	4
#define XF_TEX_TEXGEN_TYPE_MASK	0x00000070
#define XF_TEX_GET_TEXGEN_TYPE(xf_tex) \
    ((((unsigned long)(xf_tex)) & XF_TEX_TEXGEN_TYPE_MASK) >> XF_TEX_TEXGEN_TYPE_SHIFT)

#define XF_TEX_SOURCE_ROW_SIZE	5
#define XF_TEX_SOURCE_ROW_SHIFT	7
#define XF_TEX_SOURCE_ROW_MASK	0x00000f80
#define XF_TEX_GET_SOURCE_ROW(xf_tex) \
    ((((unsigned long)(xf_tex)) & XF_TEX_SOURCE_ROW_MASK) >> XF_TEX_SOURCE_ROW_SHIFT)

#define XF_TEX_BUMP_MAP_SOURCE_SIZE	3
#define XF_TEX_BUMP_MAP_SOURCE_SHIFT	12
#define XF_TEX_BUMP_MAP_SOURCE_MASK	0x00007000
#define XF_TEX_GET_BUMP_MAP_SOURCE(xf_tex) \
    ((((unsigned long)(xf_tex)) & XF_TEX_BUMP_MAP_SOURCE_MASK) >> XF_TEX_BUMP_MAP_SOURCE_SHIFT)

#define XF_TEX_BUMP_MAP_LIGHT_SIZE	3
#define XF_TEX_BUMP_MAP_LIGHT_SHIFT	15
#define XF_TEX_BUMP_MAP_LIGHT_MASK	0x00038000
#define XF_TEX_GET_BUMP_MAP_LIGHT(xf_tex) \
    ((((unsigned long)(xf_tex)) & XF_TEX_BUMP_MAP_LIGHT_MASK) >> XF_TEX_BUMP_MAP_LIGHT_SHIFT)

#define XF_TEX_TOTAL_SIZE	18
#define XF_TEX_UNUSED_SIZE	14

#define XF_TEX(reserved0, projection, input_form, reserved1, texgen_type, source_row, bump_map_source, bump_map_light) \
    ((((unsigned long)(reserved0)) << XF_TEX_RESERVED0_SHIFT) | \
        (((unsigned long)(projection)) << XF_TEX_PROJECTION_SHIFT) | \
        (((unsigned long)(input_form)) << XF_TEX_INPUT_FORM_SHIFT) | \
        (((unsigned long)(reserved1)) << XF_TEX_RESERVED1_SHIFT) | \
        (((unsigned long)(texgen_type)) << XF_TEX_TEXGEN_TYPE_SHIFT) | \
        (((unsigned long)(source_row)) << XF_TEX_SOURCE_ROW_SHIFT) | \
        (((unsigned long)(bump_map_source)) << XF_TEX_BUMP_MAP_SOURCE_SHIFT) | \
        (((unsigned long)(bump_map_light)) << XF_TEX_BUMP_MAP_LIGHT_SHIFT))
    
#define XF_DUALTEX_F_DUALMATRIX_ADRS_SIZE	6
#define XF_DUALTEX_F_DUALMATRIX_ADRS_SHIFT	0
#define XF_DUALTEX_F_DUALMATRIX_ADRS_MASK	0x0000003f
#define XF_DUALTEX_F_GET_DUALMATRIX_ADRS(xf_dualtex_f) \
    ((((unsigned long)(xf_dualtex_f)) & XF_DUALTEX_F_DUALMATRIX_ADRS_MASK) >> XF_DUALTEX_F_DUALMATRIX_ADRS_SHIFT)

#define XF_DUALTEX_F_RESERVED0_SIZE	2
#define XF_DUALTEX_F_RESERVED0_SHIFT	6
#define XF_DUALTEX_F_RESERVED0_MASK	0x000000c0
#define XF_DUALTEX_F_GET_RESERVED0(xf_dualtex_f) \
    ((((unsigned long)(xf_dualtex_f)) & XF_DUALTEX_F_RESERVED0_MASK) >> XF_DUALTEX_F_RESERVED0_SHIFT)

#define XF_DUALTEX_F_NORMAL_ENABLE_SIZE	1
#define XF_DUALTEX_F_NORMAL_ENABLE_SHIFT	8
#define XF_DUALTEX_F_NORMAL_ENABLE_MASK	0x00000100
#define XF_DUALTEX_F_GET_NORMAL_ENABLE(xf_dualtex_f) \
    ((((unsigned long)(xf_dualtex_f)) & XF_DUALTEX_F_NORMAL_ENABLE_MASK) >> XF_DUALTEX_F_NORMAL_ENABLE_SHIFT)

#define XF_DUALTEX_F_TOTAL_SIZE	9
#define XF_DUALTEX_F_UNUSED_SIZE	23

#define XF_DUALTEX_F(dualmatrix_adrs, reserved0, normal_enable) \
    ((((unsigned long)(dualmatrix_adrs)) << XF_DUALTEX_F_DUALMATRIX_ADRS_SHIFT) | \
        (((unsigned long)(reserved0)) << XF_DUALTEX_F_RESERVED0_SHIFT) | \
        (((unsigned long)(normal_enable)) << XF_DUALTEX_F_NORMAL_ENABLE_SHIFT))

#define XF_PERF0_F_PERF_A_SIZE	5
#define XF_PERF0_F_PERF_A_SHIFT	0
#define XF_PERF0_F_PERF_A_MASK	0x0000001f
#define XF_PERF0_F_GET_PERF_A(xf_perf0_f) \
    ((((unsigned long)(xf_perf0_f)) & XF_PERF0_F_PERF_A_MASK) >> XF_PERF0_F_PERF_A_SHIFT)

#define XF_PERF0_F_PERF_B_SIZE	5
#define XF_PERF0_F_PERF_B_SHIFT	5
#define XF_PERF0_F_PERF_B_MASK	0x000003e0
#define XF_PERF0_F_GET_PERF_B(xf_perf0_f) \
    ((((unsigned long)(xf_perf0_f)) & XF_PERF0_F_PERF_B_MASK) >> XF_PERF0_F_PERF_B_SHIFT)

#define XF_PERF0_F_PERF_C_SIZE	5
#define XF_PERF0_F_PERF_C_SHIFT	10
#define XF_PERF0_F_PERF_C_MASK	0x00007c00
#define XF_PERF0_F_GET_PERF_C(xf_perf0_f) \
    ((((unsigned long)(xf_perf0_f)) & XF_PERF0_F_PERF_C_MASK) >> XF_PERF0_F_PERF_C_SHIFT)

#define XF_PERF0_F_PERF_D_SIZE	5
#define XF_PERF0_F_PERF_D_SHIFT	15
#define XF_PERF0_F_PERF_D_MASK	0x000f8000
#define XF_PERF0_F_GET_PERF_D(xf_perf0_f) \
    ((((unsigned long)(xf_perf0_f)) & XF_PERF0_F_PERF_D_MASK) >> XF_PERF0_F_PERF_D_SHIFT)

#define XF_PERF0_F_TOTAL_SIZE	20
#define XF_PERF0_F_UNUSED_SIZE	12

#define XF_PERF0_F(perf_a, perf_b, perf_c, perf_d) \
    ((((unsigned long)(perf_a)) << XF_PERF0_F_PERF_A_SHIFT) | \
        (((unsigned long)(perf_b)) << XF_PERF0_F_PERF_B_SHIFT) | \
        (((unsigned long)(perf_c)) << XF_PERF0_F_PERF_C_SHIFT) | \
        (((unsigned long)(perf_d)) << XF_PERF0_F_PERF_D_SHIFT))

#define XF_PERF1_F_PERF_TARGET_SIZE	7
#define XF_PERF1_F_PERF_TARGET_SHIFT	0
#define XF_PERF1_F_PERF_TARGET_MASK	0x0000007f
#define XF_PERF1_F_GET_PERF_TARGET(xf_perf1_f) \
    ((((unsigned long)(xf_perf1_f)) & XF_PERF1_F_PERF_TARGET_MASK) >> XF_PERF1_F_PERF_TARGET_SHIFT)

#define XF_PERF1_F_TOTAL_SIZE	7
#define XF_PERF1_F_UNUSED_SIZE	25

#define XF_PERF1_F(perf_target) \
    ((((unsigned long)(perf_target)) << XF_PERF1_F_PERF_TARGET_SHIFT))

#endif // XF_MEM_H
