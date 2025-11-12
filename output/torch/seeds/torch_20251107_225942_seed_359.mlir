"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral, sym_name = "torch.aten.add.Tensor"}> ({
    ^bb0(%arg0: !torch_vtensorLiteral, %arg1: !torch_vtensorLiteral):
      %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensorLiteral, !torch_vtensorLiteral, !torch_int) -> !torch_vtensorLiteral
      "func.return"(%1) : (!torch_vtensorLiteral) -> ()
  }) : () -> ()
}) : () -> ()