"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_int) -> !torch_vtensor_literal, sym_name = "complex_index_select"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_int):
      %0 = "torch.aten.size.int"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_constant_int) -> !torch_constant_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_constant_int
      %2 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %1, %1, %1) : (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal
      %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_constant_int
      %4 = "torch.aten.index_select"(%2, %3, %arg1) : (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal
      "func.return"(%4) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()