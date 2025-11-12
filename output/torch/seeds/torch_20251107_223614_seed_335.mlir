"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_int, %arg2: !torch_constant_int):
    %3 = "torch.constant.none"() : () -> !torch_none
    %4 = "torch.constant.str"() <{value = "example"}> : () -> !torch_str
    %5 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %6 = "torch.aten.index_select"(%arg0, %arg1, %arg2) : (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal
    %7 = "torch.aten.cat"(%6, %arg0) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    "func.return"(%7) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()