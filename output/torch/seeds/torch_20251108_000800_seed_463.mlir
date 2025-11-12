"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_int) -> !torch_vtensor_literal, sym_name = "tensor_view_and_add"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_int):
      %2 = "torch.aten.size.int"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_constant_int) -> !torch_constant_int
      %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_constant_int
      %4 = "torch.aten.eq.Tensor"(%2, %3) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_bool
      %5 = "torch.vtensor.literal"() <{value = dense<[1.0, 2.0, 3.0, 4.0]> : tensor<4xf32>}> : () -> !torch_vtensor_literal
      %6 = "torch.vtensor.literal"() <{value = dense<[5.0, 6.0, 7.0, 8.0]> : tensor<4xf32>}> : () -> !torch_vtensor_literal
      %7 = "torch.aten.add.Tensor"(%5, %6) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      "func.return"(%7) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()