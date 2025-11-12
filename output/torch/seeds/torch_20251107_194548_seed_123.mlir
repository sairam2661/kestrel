"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_list_construct, !torch_constant_int) -> !torch_vtensor_literal, sym_name = "torch.index_select_and_cat"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_list_construct, %arg2: !torch_constant_int):
      %3 = "torch.aten.index_select"(%arg0, %arg2, %arg1) : (!torch_vtensor_literal, !torch_constant_int, !torch_list_construct) -> !torch_vtensor_literal
      %4 = "torch.aten.cat"(%3) : (!torch_vtensor_literal) -> !torch_vtensor_literal
      "func.return"(%4) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()