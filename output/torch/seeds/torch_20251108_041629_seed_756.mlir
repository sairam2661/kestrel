"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_bool, !torch_constant_float) -> !torch_constant_float, sym_name = "fuzz_test_func"}> ({
    ^bb0(%arg0: !torch_constant_bool, %arg1: !torch_constant_float):
      %cst1 = "torch.constant.bool"() <{value = true}> : () -> !torch_constant_bool
      %cst2 = "torch.constant.float"() <{value = 3.14}> : () -> !torch_constant_float
      %cst3 = "torch.constant.float"() <{value = 2.71}> : () -> !torch_constant_float
      %0 = "torch.aten.add.Tensor"(%arg1, %cst3) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
      %1 = "torch.aten.eq.Tensor"(%arg0, %cst1) : (!torch_constant_bool, !torch_constant_bool) -> !torch_constant_bool
      %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_constant_bool) -> !torch_constant_float
      %3 = "torch.aten.add.Tensor"(%0, %2) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
      "func.return"(%3) : (!torch_constant_float) -> ()
  }) : () -> ()
}) : () -> ()