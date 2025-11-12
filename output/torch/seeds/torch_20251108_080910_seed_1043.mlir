"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral, !torch_constantint, !torch_constantint) -> (!torch_vtensorliteral, !torch_vtensorliteral), sym_name = "unary_op_sequence"}> ({
  ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral, %arg2: !torch_constantint, %arg3: !torch_constantint):
    %0 = "torch.aten.index_select"(%arg0, %arg2, %arg3) : (!torch_vtensorliteral, !torch_constantint, !torch_constantint) -> !torch_vtensorliteral
    %1 = "torch.aten.slice.Tensor"(%0, %arg2, %arg3, %arg2) : (!torch_vtensorliteral, !torch_constantint, !torch_constantint, !torch_constantint) -> !torch_vtensorliteral
    %2 = "torch.aten.add.Tensor"(%1, %arg1, %arg2) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_constantint) -> !torch_vtensorliteral
    %3 = "torch.aten.eq.Tensor"(%2, %arg0) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    "func.return"(%2, %3) : (!torch_vtensorliteral, !torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()