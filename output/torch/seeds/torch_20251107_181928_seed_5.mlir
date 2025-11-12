"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "torch.aten.cat_tensor"}> ({
  ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %5 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %6 = "torch.prim.ListConstruct"(%0, %1, %2, %3, %4, %5) : (!torch_int, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list_int
    %7 = "torch.aten.cat"(%arg0, %arg1, %6) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_list_int) -> !torch_vtensorliteral
    "func.return"(%7) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()