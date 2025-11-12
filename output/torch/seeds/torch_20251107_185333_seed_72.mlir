"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %0 = "torch.aten.size.int"(%arg0, %c0_i32) : (!torch_vtensor, !torch_int) -> !torch_int
    %1 = "torch.aten.size.int"(%arg0, %c1_i32) : (!torch_vtensor, !torch_int) -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %5 = "torch.aten.slice.Tensor"(%arg0, %c0_i32, %c0_i64, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %6 = "torch.aten.slice.Tensor"(%arg1, %c0_i32, %c0_i64, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %7 = "torch.aten.slice.Tensor"(%arg2, %c0_i32, %c0_i64, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %8 = "torch.aten.cat"(%5, %c0_i32) <{dim = 0}> : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %9 = "torch.aten.cat"(%6, %c0_i32) <{dim = 0}> : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %10 = "torch.aten.cat"(%7, %c0_i32) <{dim = 0}> : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %11 = "torch.aten.view"(%8, %10, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    %12 = "torch.aten.add.Tensor"(%9, %11) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%12) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()

#ssa_id_list
		= [
		"%arg0: !torch_vtensor",
		"%arg1: !torch_vtensor",
		"%arg2: !torch_vtensor"
		]

#ssa_use_list
		= [
		"%arg0",
		"%arg1",
		"%arg2"
		]

#constant_list
		= [
		"%c0_i32: !torch_int",
		"%c0_i64: !torch_int",
		"%c2_i32: !torch_int",
		"%c1_i32: !torch_int",
		"%c0_i32: !torch_int"
		]

#operation_list
		= [
		"%0 = \"torch.aten.size.int\"(%arg0, %c0_i32) : (!torch_vtensor, !torch_int) -> !torch_int",
		"%1 = \"torch.aten.size.int\"(%arg0, %c1_i32) : (!torch_vtensor, !torch_int) -> !torch_int",
		"%2 = \"torch.constant.int\"() <{value = 2 : i64}> : () -> !torch_int",
		"%3 = \"torch.constant.int\"() <{value = 1 : i64}> : () -> !torch_int",
		"%4 = \"torch.constant.int\"() <{value = 0 : i64}> : () -> !torch_int",
		"%5 = \"torch.aten.slice.Tensor\"(%arg0, %c0_i32, %c0_i64, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor",
		"%6 = \"torch.aten.slice.Tensor\"(%arg1, %c0_i32, %c0_i64, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor",
		"%7 = \"torch.aten.slice.Tensor\"(%arg2, %c0_i32, %c0_i64, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor",
		"%8 = \"torch.aten.cat\"(%5, %c0_i32) <{dim = 0}> : (!torch_vtensor, !torch_int) -> !torch_vtensor",
		"%9 = \"torch.aten.cat\"(%6, %c0_i32) <{dim = 0}> : (!torch_vtensor, !torch_int) -> !torch_vtensor",
		"%10 = \"torch.aten.cat\"(%7, %c0_i32) <{dim = 0}> : (!torch_vtensor, !torch_int) -> !torch_vtensor",
		"%11 = \"torch.aten.view\"(%8, %10, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor",
		"%12 = \"torch.aten.add.Tensor\"(%9, %11) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor",
		"\"func.return\"(%12) : (!torch_vtensor) -> ()"
		] 

#ssavar_list
		= [
		"%0: !torch_int",
		"%1: !torch_int",
		"%2: !torch_int",
		"%3: !torch_int",
		"%4: !torch_int",
		"%5: !torch_vtensor",
		"%6: !torch_vtensor",
		"%7: !torch_vtensor",
		"%8: !torch_vtensor",
		"%9: !torch_vtensor",
		"%10: !torch_vtensor",
		"%11: !torch_vtensor",
		"%12: !torch_vtensor"
		] 

#attribute_list
		= [
		"<{dim = 0}>"
		] 

#property_list
		= [
		"<{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = \"complex_fuzz\"}>"
		] 

#module_list
		= [
		"\"builtin.module\"()"
		] 

#function_list
		= [
		"\"func.func\"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = \"complex_fuzz\"}>"
		] 

#block_list
		= [
		"^{bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):}"
		] 

#mlir_file
		= [
		"\"builtin.module\"() ({} : () -> ())"
		] 

#definition_and_module_list
		= [
		"definition_list? module_list"
		] 

#definition_list
		= [
		"definition+"
		] 

#module_list
		= [
		"(module | generic_module)+"
		] 

#function_list
		= [
		"function+"
		] 

#definition
		= [
		"type_alias_def | attribute_alias_def | map_or_set_def"
		] 

#ssa_id_list
		= [
		"SSA_ID (\",\" SSA_ID)*"
		] 

#ssa_use
		= [
		"SSA_ID | CONSTANT"
		] 

#ssa_use_list
		= [
		"ssa_use (\",\" ssa_use)*"
		] 

#complex_type
		= [
		"\"complex\" \"<\" type \">\""
		] 

#tuple_type
		= [
		"\"tuple\" \"<\" type_list_no_parens \">\""
		] 

#vector_element_type
		= [
		"FLOAT_TYPE | INTEGER_TYPE"
		] 

#vector_type
		= [
		"\"vector\" \"<\" static_dimension_list vector_element_type \">\""
		] 

#tensor_memref_element_type
		= [
		"vector_element_type | vector_type | complex_type | TYPE_ALIAS"
