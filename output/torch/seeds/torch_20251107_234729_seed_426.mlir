"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "torch_aten_cat_mixed_shapes"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_list
      %2 = "torch.aten.cat"(%1, %0) : (!torch_list, !torch_int) -> !torch_vtensor_literal
      "func.return"(%2) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()