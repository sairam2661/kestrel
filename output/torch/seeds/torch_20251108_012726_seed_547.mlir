"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "complex_shape_interactions"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_literal) -> !torch_vtensor_literal
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor_literal) -> !torch_vtensor_literal
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_list
      %3 = "torch.aten._shape_as_tensor"(%2) : (!torch_vtensor_list) -> !torch_vtensor_literal
      %4 = "torch.aten.view"(%arg0, %3) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %5 = "torch.aten.index_select"(%arg1, %0, %4) : (!torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      "func.return"(%5) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()