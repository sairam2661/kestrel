"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0d, !torch_vtensor_0d) -> !torch_vtensor_0d, sym_name = "custom_add"}> ({
    ^bb0(%arg0: !torch_vtensor_0d, %arg1: !torch_vtensor_0d):
      %0 = "torch_constant_int"() <{value = 2}> : () -> !torch_int
      %1 = "torch_constant_float"() <{value = 3.14}> : () -> !torch_float
      %2 = "torch_aten_add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensor_0d, !torch_vtensor_0d, !torch_int) -> !torch_vtensor_0d
      %3 = "torch_aten_mul.Tensor"(%2, %1) : (!torch_vtensor_0d, !torch_float) -> !torch_vtensor_0d
      %4 = "torch_aten_sub.Tensor"(%3, %arg0) : (!torch_vtensor_0d, !torch_vtensor_0d) -> !torch_vtensor_0d
      "func.return"(%4) : (!torch_vtensor_0d) -> ()
  }) : () -> ()
}) : () -> ()