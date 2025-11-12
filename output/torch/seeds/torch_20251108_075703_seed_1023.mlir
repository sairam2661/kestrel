"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_bool, !torch_constant_int) -> !torch_constant_int, sym_name = "fuzz_test"}> ({
    ^bb0(%arg0: !torch_constant_bool, %arg1: !torch_constant_int):
      %0 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torch_constant_int) -> !torch_constant_int
      %1 = "torch.aten.add.Tensor"(%arg1, %0) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
      %2 = "torch.aten.eq.Tensor"(%arg0, %arg0) : (!torch_constant_bool, !torch_constant_bool) -> !torch_constant_bool
      %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_constant_int
      %4 = "torch.aten.add.Tensor"(%1, %3) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
      "func.return"(%4) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()