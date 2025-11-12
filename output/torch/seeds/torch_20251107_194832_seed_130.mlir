"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_list, !torch_constantint) -> !torch_vtensorliteral, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_list, %arg2: !torch_constantint):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg0, %arg2) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_constantint) -> !torch_vtensorliteral
    %1 = "torch.aten.slice.Tensor"(%0, %arg2, %arg2, %arg2) : (!torch_vtensorliteral, !torch_constantint, !torch_constantint, !torch_constantint) -> !torch_vtensorliteral
    %2 = "torch.aten.view"(%1, %arg2) : (!torch_vtensorliteral, !torch_constantint) -> !torch_vtensorliteral
    %3 = "torch.aten.cat"(%arg1) : (!torch_list) -> !torch_vtensorliteral
    "func.return"(%3) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()