"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "torch.aten.add.Tensor$with_quantized_input"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
      %0 = "torch.constant.int"() <{value = 8 : i32}> : () -> !torch_int
      %1 = "torch.constant.float"() <{value = 0.000000e+00 : f32}> : () -> !torch_float
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %1, %0, %2) : (!torch_vtensorliteral, !torch_float, !torch_int, !torch_bool) -> !torch_vtensorliteral
      %4 = "torch.aten.add.Tensor"(%3, %arg1, %0) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_int) -> !torch_vtensorliteral
      "func.return"(%4) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()