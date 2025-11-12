"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_str) -> !torch_vtensor_literal, sym_name = "torch.aten.slice.Tensor$fuzzing"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_str):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.aten.slice.Tensor"(%arg0, %1, %0) : (!torch_vtensor_literal, !torch_int, !torch_int) -> !torch_vtensor_literal
      "func.return"(%2) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()