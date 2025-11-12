"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_constantint) -> !torch_bool, sym_name = "unusual_sequence"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_constantint):
      %0 = "torch.aten.slice.Tensor"(%arg0) <{starts = [0], lengths = [1], steps = [1], axes = [0]}> : (!torch_vtensorliteral) -> !torch_vtensorliteral
      %1 = "torch.aten.add.Tensor"(%0, %arg1) : (!torch_vtensorliteral, !torch_constantint) -> !torch_vtensorliteral
      %2 = "torch.aten.eq.Tensor"(%1, %arg1) : (!torch_vtensorliteral, !torch_constantint) -> !torch_bool
      "func.return"(%2) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()