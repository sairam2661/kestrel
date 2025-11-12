"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "torch.aten.add$unusual_tensor_shape"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      "func.return"(%0) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()