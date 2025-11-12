"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "torch.aten.cat.non_uniform_shapes"}> ({
  ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.none"() : () -> !torch_none
    %2 = "torch.aten.cat"(%arg0, %arg1, %0, %1) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_int, !torch_none) -> !torch_vtensorliteral
    "func.return"(%2) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()