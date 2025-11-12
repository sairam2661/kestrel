"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "torch.aten.index_select_mixed_types"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_literal) -> !torch_int
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor_literal) -> !torch_int
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %3 = "torch.prim.ListConstruct"(%2) : (!torch_int) -> !torch_list_int
      %4 = "torch.aten.index_select"(%arg0, %0, %3) : (!torch_vtensor_literal, !torch_int, !torch_list_int) -> !torch_vtensor_literal
      %5 = "torch.aten.index_select"(%arg1, %1, %3) : (!torch_vtensor_literal, !torch_int, !torch_list_int) -> !torch_vtensor_literal
      %6 = "torch.aten.cat"(%4, %5) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      "func.return"(%6) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()