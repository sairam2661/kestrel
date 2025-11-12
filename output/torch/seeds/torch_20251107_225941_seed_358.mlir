"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "torch_aten_add_complex_example"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral, %arg2: !torch_vtensorliteral):
      %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_int) -> !torch_vtensorliteral
      %2 = "torch.aten.add.Tensor"(%1, %arg2, %0) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_int) -> !torch_vtensorliteral
      "func.return"(%2) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()