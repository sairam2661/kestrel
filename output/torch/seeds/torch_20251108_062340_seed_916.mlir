"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_int, sym_name = "torch.aten.add.Tensor$complex"}> ({
    ^bb0(%arg0: !torch_constant_int, %arg1: !torch_constant_int, %arg2: !torch_constant_int):
      %0 = "torch_constant_int"() <{value = 5 : i64}> : () -> !torch_constant_int
      %1 = "torch_constant_int"() <{value = 3 : i64}> : () -> !torch_constant_int
      %2 = "torch_constant_int"() <{value = 2 : i64}> : () -> !torch_constant_int
      %3 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_constant_int
      %4 = "torch.aten.add.Tensor"(%3, %2, %1) : (!torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_constant_int
      "func.return"(%4) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()