"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_int) -> !torch_vtensor_literal, sym_name = "torch_aten_add_tensor$complex_case"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_int):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_constant_int
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_constant_int
      %2 = "torch.aten.slice.Tensor"(%arg0, %1, %0, %0, %0) : (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal
      %3 = "torch.aten.add.Tensor"(%2, %arg1) : (!torch_vtensor_literal, !torch_constant_int) -> !torch_vtensor_literal
      %4 = "torch.aten.slice.Tensor"(%3, %0, %0, %0, %0) : (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal
      "func.return"(%4) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()