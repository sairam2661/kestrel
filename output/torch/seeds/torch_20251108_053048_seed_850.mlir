"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "torch_aten_cat_fuzzer"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %2 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_literal) -> !torch_int
      %3 = "torch.aten.size.int"(%arg1) : (!torch_vtensor_literal) -> !torch_int
      %4 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %5 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %6 = "torch.aten.add.Tensor"(%arg0, %arg1, %2) : (!torch_vtensor_literal, !torch_vtensor_literal, !torch_int) -> !torch_vtensor_literal
      "func.return"(%6) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()