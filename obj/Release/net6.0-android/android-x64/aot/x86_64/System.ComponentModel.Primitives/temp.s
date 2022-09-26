.section .text
	.balign 8
jit_code_start:

	.byte 144,144,144,144,144,144,144,144,144,144,144,144,144,144,144,144
.section .text
	.balign 8
jit_code_end:

	.byte 144,144,144,144
.section .data.rel.ro
	.balign 8
method_addresses:
	.local method_addresses
	.type method_addresses,@object
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
method_addresses_end:

.section .text
	.balign 8
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.section .text
	.balign 8
unbox_trampoline_addresses:

	.long 0
.section .text
	.balign 8
method_info_offsets:

	.byte 129,0,0,0,10,0,0,0,13,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,60,0,70,0
	.byte 80,0,90,0,100,0,110,0,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0
.section .text
	.balign 8
method_flags_table:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0
.section .text
	.balign 8
extra_method_table:

	.byte 11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0
.section .text
	.balign 8
extra_method_info_offsets:

	.byte 0,0,0,0
.section .text
	.balign 8
class_name_table:

	.byte 37,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,40,0,0,0,0,0,14,0,0,0,24,0,0,0,5,0
	.byte 0,0,11,0,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0
	.byte 43,0,0,0,0,0,0,0,0,0,2,0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0
	.byte 0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,6,0,41,0,13,0,39,0,4,0,0,0,1,0
	.byte 44,0,9,0,0,0,0,0,0,0,19,0,0,0,18,0,0,0,0,0,0,0,10,0,0,0,12,0,0,0,16,0
	.byte 0,0,17,0,42,0,20,0,0,0,21,0,0,0,22,0,0,0,23,0,0,0
.section .text
	.balign 8
got_info_offsets:

	.byte 22,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,10,0,20,0,1,2,1,1,1,1,1,1,1,2
	.byte 14,2,2,2,3,2,2,3,3,2,38,3
.section .text
	.balign 8
ex_info_offsets:

	.byte 129,0,0,0,10,0,0,0,13,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,60,0,70,0
	.byte 80,0,90,0,100,0,110,0,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0
.section .text
	.balign 8
unwind_info:
.section .text
	.balign 8
class_info_offsets:

	.byte 24,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,10,0,21,0,44,7,23,7,27,27,26,53,28,26
	.byte 129,36,99,27,28,26,23,7,7,52,7,130,83,27,99,27

.section .text
	.balign 16
plt:
mono_aot_System_ComponentModel_Primitives_plt:
	.size mono_aot_System_ComponentModel_Primitives_plt,.-mono_aot_System_ComponentModel_Primitives_plt
plt_end:
.section .text
	.balign 8
image_table:

	.byte 3,0,0,0,83,121,115,116,101,109,46,67,111,109,112,111,110,101,110,116,77,111,100,101,108,46,80,114,105,109,105,116
	.byte 105,118,101,115,0,57,67,56,51,66,69,70,69,45,48,69,70,51,45,52,69,48,50,45,56,65,49,67,45,67,53,68
	.byte 55,65,66,50,55,67,68,66,68,0,0,98,48,51,102,53,102,55,102,49,49,100,53,48,97,51,97,0,0,0,0,0
	.byte 1,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116,101,109,46,80,114,105,118,97
	.byte 116,101,46,67,111,114,101,76,105,98,0,51,68,55,68,69,55,67,49,45,55,54,70,57,45,52,48,65,50,45,66,55
	.byte 54,70,45,54,55,68,48,70,49,70,56,55,53,68,54,0,0,55,99,101,99,56,53,100,55,98,101,97,55,55,57,56
	.byte 101,0,0,0,0,0,0,0,1,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116
	.byte 101,109,46,67,111,108,108,101,99,116,105,111,110,115,46,78,111,110,71,101,110,101,114,105,99,0,55,50,67,48,70,53
	.byte 65,65,45,57,67,57,55,45,52,67,65,55,45,56,50,67,53,45,69,52,66,65,54,51,55,50,49,66,68,68,0,0
	.byte 98,48,51,102,53,102,55,102,49,49,100,53,48,97,51,97,0,0,0,0,0,0,0,0,1,0,0,0,6,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
.section .text
	.balign 8
weak_field_indexes:

	.byte 0,0,0,0
.section .bss
	.balign 8
	.local mono_aot_System_ComponentModel_Primitives_got
	.type mono_aot_System_ComponentModel_Primitives_got,@object
mono_aot_System_ComponentModel_Primitives_got:
	.skip 184
got_end:
.section .text
	.balign 8
blob:

	.byte 0,11,0,35,37,45,49,51,31,47,54,8,54,9,54,10,54,11,54,12,54,128,255,6,87,6,95,6,128,184,6,129
	.byte 5,6,90,6,128,164,6,128,142,6,128,141,0,128,144,16,0,0,1,4,128,144,16,0,0,1,193,0,2,92,193,0
	.byte 2,89,193,0,2,88,193,0,2,87,0,128,144,16,0,0,1,7,128,196,32,17,24,0,1,30,29,193,0,2,88,193
	.byte 0,2,87,31,193,0,1,120,193,0,1,119,8,128,224,40,8,0,8,38,37,193,0,2,88,193,0,2,87,40,193,0
	.byte 1,120,193,0,1,119,39,11,128,230,50,41,32,8,0,8,193,0,2,92,193,0,2,89,48,41,42,43,44,46,45,43
	.byte 42,13,128,144,16,0,0,1,193,0,2,92,193,0,2,89,193,0,2,88,193,0,2,87,194,0,0,55,194,0,0,52
	.byte 194,0,0,54,194,0,0,53,194,0,0,56,194,0,0,56,194,0,0,52,52,51,8,128,228,61,24,8,0,8,59,58
	.byte 193,0,2,88,193,0,2,87,60,193,0,1,120,193,0,1,119,55,7,128,160,40,0,0,8,68,67,193,0,2,88,193
	.byte 0,2,87,193,0,1,121,193,0,1,120,66,7,128,228,76,24,32,0,8,73,72,193,0,2,88,193,0,2,87,74,193
	.byte 0,1,120,75,23,128,144,20,0,0,4,193,0,1,235,193,0,5,248,193,0,1,236,193,0,2,87,193,0,1,237,193
	.byte 0,1,238,193,0,1,241,193,0,1,242,193,0,1,243,193,0,1,244,193,0,1,245,193,0,1,246,193,0,1,247,193
	.byte 0,1,248,193,0,1,249,193,0,1,250,193,0,1,251,193,0,1,252,193,0,1,253,193,0,1,254,193,0,1,255,193
	.byte 0,1,240,193,0,2,0,7,128,196,82,20,32,0,4,80,79,193,0,2,88,193,0,2,87,81,193,0,1,120,193,0
	.byte 1,119,8,128,228,91,24,8,0,8,89,88,193,0,2,88,193,0,2,87,90,193,0,1,120,193,0,1,119,85,7,128
	.byte 160,40,0,0,8,97,96,193,0,2,88,193,0,2,87,193,0,1,121,193,0,1,120,95,4,128,144,16,0,0,1,193
	.byte 0,2,92,193,0,2,89,193,0,2,88,193,0,2,87,0,128,144,16,0,0,1,0,128,144,16,0,0,1,11,128,160
	.byte 128,152,0,0,8,193,0,2,92,193,0,2,89,193,0,2,55,193,0,2,87,193,0,6,108,193,0,2,59,193,0,6
	.byte 108,193,0,2,53,193,0,2,50,193,0,6,109,193,0,6,111,0,128,144,16,0,0,1,7,128,196,115,17,24,0,1
	.byte 113,112,193,0,2,88,193,0,2,87,114,193,0,1,120,193,0,1,119,7,128,196,121,17,24,0,1,119,118,193,0,2
	.byte 88,193,0,2,87,120,193,0,1,120,193,0,1,119,23,128,144,20,0,0,4,193,0,1,235,193,0,5,248,193,0,1
	.byte 236,193,0,2,87,193,0,1,237,193,0,1,238,193,0,1,241,193,0,1,242,193,0,1,243,193,0,1,244,193,0,1
	.byte 245,193,0,1,246,193,0,1,247,193,0,1,248,193,0,1,249,193,0,1,250,193,0,1,251,193,0,1,252,193,0,1
	.byte 253,193,0,1,254,193,0,1,255,193,0,1,240,193,0,2,0,7,128,196,127,20,24,0,4,125,124,193,0,2,88,193
	.byte 0,2,87,126,193,0,1,120,193,0,1,119,4,128,144,16,0,0,1,193,0,2,92,193,0,2,89,193,0,2,88,193
	.byte 0,2,87,115,103,101,110,0
.section .text
runtime_version:
	.string ""
.section .text
assembly_guid:
	.string "9C83BEFE-0EF3-4E02-8A1C-C5D7AB27CDBD"
.section .text
assembly_name:
	.string "System.ComponentModel.Primitives"
.section .data
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 182,0
	.balign 8
	.quad mono_aot_System_ComponentModel_Primitives_got
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad jit_code_start
	.balign 8
	.quad jit_code_end
	.balign 8
	.quad method_addresses
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad blob
	.balign 8
	.quad class_name_table
	.balign 8
	.quad class_info_offsets
	.balign 8
	.quad method_info_offsets
	.balign 8
	.quad ex_info_offsets
	.balign 8
	.quad extra_method_info_offsets
	.balign 8
	.quad extra_method_table
	.balign 8
	.quad got_info_offsets
	.balign 8
	.quad 0
	.balign 8
	.quad image_table
	.balign 8
	.quad weak_field_indexes
	.balign 8
	.quad method_flags_table
	.balign 8
	.quad mem_end
	.balign 8
	.quad assembly_guid
	.balign 8
	.quad runtime_version
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad assembly_name
	.balign 8
	.quad plt
	.balign 8
	.quad plt_end
	.balign 8
	.quad unwind_info
	.balign 8
	.quad unbox_trampolines
	.balign 8
	.quad unbox_trampolines_end
	.balign 8
	.quad unbox_trampoline_addresses

	.long 22,22,184,176,1,129,0,32
	.long 374417919,0,771,128,8,8,7,9
	.long 8388607,0,5,22,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0
	.byte 47,70,188,35,104,212,41,214,97,97,40,68,60,87,39,62
.section .text
	.balign 8
mem_end:
