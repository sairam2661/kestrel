"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "torch.aten.cat_and_add"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %0 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_vtensor_literal, !torch_int) -> !torch_vtensor_literal
      "func.return"(%2) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()