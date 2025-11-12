"builtin.module"() ({
  "func.func"() <{function_type = (!torch_float, !torch_float) -> !torch_float, sym_name = "fuzz_add_divide"}> ({
    ^bb0(%arg0: !torch_float, %arg1: !torch_float):
      %cst1 = "torch.constant.float"() <{value = 1.000000e+00 : f32}> : () -> !torch_float
      %cst2 = "torch.constant.float"() <{value = 2.000000e+00 : f32}> : () -> !torch_float
      %cst3 = "torch.constant.float"() <{value = 3.000000e+00 : f32}> : () -> !torch_float
      %cst4 = "torch.constant.float"() <{value = 4.000000e+00 : f32}> : () -> !torch_float
      %cst5 = "torch.constant.float"() <{value = 5.000000e+00 : f32}> : () -> !torch_float
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_float, !torch_float) -> !torch_float
      %1 = "torch.aten.div.Tensor"(%0, %cst2) : (!torch_float, !torch_float) -> !torch_float
      %2 = "torch.aten.add.Tensor"(%1, %cst3) : (!torch_float, !torch_float) -> !torch_float
      %3 = "torch.aten.div.Tensor"(%2, %cst4) : (!torch_float, !torch_float) -> !torch_float
      %4 = "torch.aten.add.Tensor"(%3, %cst5) : (!torch_float, !torch_float) -> !torch_float
      "func.return"(%4) : (!torch_float) -> ()
  }) : () -> ()
}) : () -> ()