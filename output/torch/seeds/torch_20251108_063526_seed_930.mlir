"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "add_tensors_with_constants"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %0 = "torch.constant.float"() <{value = 3.14}> : () -> !torch_float
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %2 = "torch.vtensor.literal"() <{value = dense<2.000000e+00> : tensor<1xf32>}> : () -> !torch_vtensor_literal
      %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %4 = "torch.aten.add.Tensor"(%3, %2) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      "func.return"(%4) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()