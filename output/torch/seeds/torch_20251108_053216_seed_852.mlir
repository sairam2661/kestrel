"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "unusual_index_select"}> ({
  ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %4 = "torch.aten.index_select"(%arg0, %0, %3) : (!torch_vtensorliteral, !torch_int, !torch_list_int) -> !torch_vtensorliteral
    %5 = "torch.aten.index_select"(%arg1, %1, %3) : (!torch_vtensorliteral, !torch_int, !torch_list_int) -> !torch_vtensorliteral
    %6 = "torch.aten.cat"(%4, %5) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    "func.return"(%6) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()