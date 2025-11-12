"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral1d, !torch_vtensorliteral1d) -> !torch_vtensorliteral1d, sym_name = "tensor_addition_with_constants"}> ({
    ^bb0(%arg0: !torch_vtensorliteral1d, %arg1: !torch_vtensorliteral1d):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %2 = "torch.vtensor.literal"() <{value = dense<1> : tensor<3xi64>}> : () -> !torch_vtensorliteral1d
      %3 = "torch.vtensor.literal"() <{value = dense<2> : tensor<3xi64>}> : () -> !torch_vtensorliteral1d
      %4 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list_int
      %5 = "torch.aten.view"(%2, %4) : (!torch_vtensorliteral1d, !torch_list_int) -> !torch_vtensorliteral1d
      %6 = "torch.aten.add.Tensor"(%arg0, %5) : (!torch_vtensorliteral1d, !torch_vtensorliteral1d) -> !torch_vtensorliteral1d
      %7 = "torch.aten.add.Tensor"(%arg1, %6) : (!torch_vtensorliteral1d, !torch_vtensorliteral1d) -> !torch_vtensorliteral1d
      "func.return"(%7) : (!torch_vtensorliteral1d) -> ()
  }) : () -> ()
}) : () -> ()