"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral, sym_name = "test_tensor_computation"}> ({
    ^bb0(%arg0: !torch_vtensorLiteral, %arg1: !torch_vtensorLiteral):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %1) : (!torch_vtensorLiteral, !torch_int, !torch_int, !torch_int) -> !torch_vtensorLiteral
      %3 = "torch.aten.view"(%2, %1) : (!torch_vtensorLiteral, !torch_int) -> !torch_vtensorLiteral
      %4 = "torch.aten.eq.Tensor"(%arg1, %3) : (!torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral
      "func.return"(%4) : (!torch_vtensorLiteral) -> ()
  }) : () -> ()
}) : () -> ()