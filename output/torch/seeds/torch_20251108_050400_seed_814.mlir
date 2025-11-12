"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "torch.aten.cat"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %0 = "torch_constant_int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch_constant_int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch_prim_ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
      %3 = "torch_aten_cat"(%arg0, %arg1, %2) : (!torch_vtensor_literal, !torch_vtensor_literal, !torch_list_int) -> !torch_vtensor_literal
      "func.return"(%3) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()