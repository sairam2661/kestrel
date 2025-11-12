"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral_0, !torch_vtensorliteral_1, !torch_vtensorliteral_2, !torch_vtensorliteral_3, !torch_vtensorliteral_4) -> !torch_vtensorliteral_5, sym_name = "torch_cat_unusual"}> ({
  ^bb0(%arg0: !torch_vtensorliteral_0, %arg1: !torch_vtensorliteral_1, %arg2: !torch_vtensorliteral_2, %arg3: !torch_vtensorliteral_3, %arg4: !torch_vtensorliteral_4):
    %0 = "torch.aten.cat"(%arg0, %arg1, %arg2, %arg3, %arg4) : (!torch_vtensorliteral_0, !torch_vtensorliteral_1, !torch_vtensorliteral_2, !torch_vtensorliteral_3, !torch_vtensorliteral_4) -> !torch_vtensorliteral_5
    "func.return"(%0) : (!torch_vtensorliteral_5) -> ()
  }) : () -> ()
}) : () -> ()