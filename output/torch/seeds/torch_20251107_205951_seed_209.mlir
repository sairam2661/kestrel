"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_float, !torch_constant_float) -> !torch_constant_float, sym_name = "torch_fuzz_test_function"}> ({
    ^bb0(%arg0: !torch_constant_float, %arg1: !torch_constant_float):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
      %1 = "torch.aten.mul.Tensor"(%0, %arg0) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
      %2 = "torch.aten.sub.Tensor"(%1, %arg1) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
      %3 = "torch.aten.div.Tensor"(%2, %arg0) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
      %4 = "torch.aten.pow.Tensor"(%3, %arg1) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
      "func.return"(%4) : (!torch_constant_float) -> ()
  }) : () -> ()
}) : () -> ()