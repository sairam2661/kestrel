"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "tensor_mixer"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensorliteral) -> !torch_int
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensorliteral) -> !torch_int
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.aten.view"(%arg0, %1, %0) : (!torch_vtensorliteral, !torch_int, !torch_int) -> !torch_vtensorliteral
      %4 = "torch.aten.view"(%arg1, %0, %1) : (!torch_vtensorliteral, !torch_int, !torch_int) -> !torch_vtensorliteral
      %5 = "torch.aten.cat"(%3, %4, %2) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_bool) -> !torch_vtensorliteral
      "func.return"(%5) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()