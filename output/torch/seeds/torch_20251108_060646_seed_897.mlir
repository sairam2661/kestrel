"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "torch_func_example"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %0 = "torch.aten.view"(%arg0, 3, 4) : (!torch_vtensor_literal) -> !torch_vtensor_literal
      %1 = "torch.aten.view"(%arg1, 3, 4) : (!torch_vtensor_literal) -> !torch_vtensor_literal
      %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %3 = "torch.aten.eq.Tensor"(%0, %1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %4 = "torch.aten.view"(%2, 12) : (!torch_vtensor_literal) -> !torch_vtensor_literal
      %5 = "torch.aten.view"(%3, 12) : (!torch_vtensor_literal) -> !torch_vtensor_literal
      %6 = "torch.aten.cat"(%4, %5, 0) : (!torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      "func.return"(%6) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()