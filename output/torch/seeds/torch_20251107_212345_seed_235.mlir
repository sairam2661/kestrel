"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "fuzz_cat_and_eq"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral, %arg2: !torch_vtensorliteral):
      %0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensorliteral, !torch_int) -> !torch_int
      %1 = "torch.aten.size.int"(%arg1, %c0) : (!torch_vtensorliteral, !torch_int) -> !torch_int
      %2 = "torch.aten.size.int"(%arg2, %c0) : (!torch_vtensorliteral, !torch_int) -> !torch_int
      %3 = "torch.prim.ListConstruct"(%arg0, %arg1, %arg2) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> !torch_list
      %4 = "torch.aten.cat"(%3, %c0) : (!torch_list, !torch_int) -> !torch_vtensorliteral
      %5 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %6 = "torch.aten.eq.Tensor"(%arg1, %arg2) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %7 = "torch.aten.add.Tensor"(%5, %6, %c0) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_int) -> !torch_vtensorliteral
      "func.return"(%7) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()

  "builtin.constant"()   ({
    "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
  }) : () -> ()