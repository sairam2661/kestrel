"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_constant_int, sym_name = "test_unusual_sequence"}> ({
    ^bb0(%arg0: !torch_constant_int, %arg1: !torch_constant_int, %arg2: !torch_constant_int, %arg3: !torch_constant_int):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
      %1 = "torch.aten.mul.Tensor"(%0, %arg2) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
      %2 = "torch.aten.sub.Tensor"(%1, %arg3) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
      %3 = "torch.aten.div.Tensor"(%2, %arg0) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
      "func.return"(%3) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()