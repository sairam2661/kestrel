"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_int) -> !torch_vtensor_literal, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_int):
    %c0_i64 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_constant_int
    %c1_i64 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_constant_int
    %c2_i64 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_constant_int
    %c3_i64 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_constant_int
    %c4_i64 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_constant_int

    %list = "torch.prim.ListConstruct"(%c0_i64, %c1_i64, %c2_i64, %c3_i64, %c4_i64) : (!torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_list_int
    %size = "torch.aten.size.int"(%arg0) : (!torch_vtensor_literal) -> !torch_constant_int
    %index_select = "torch.aten.index_select"(%arg0, %c1_i64, %list) : (!torch_vtensor_literal, !torch_constant_int, !torch_list_int) -> !torch_vtensor_literal

    %return_value = "torch.aten.view"(%index_select, %size, %size) : (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal
    "func.return"(%return_value) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()