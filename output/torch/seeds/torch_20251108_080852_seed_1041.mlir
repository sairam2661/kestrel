"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_int, !torch_constant_float, !torch_constant_bool) -> (!torch_constant_int, !torch_constant_float, !torch_constant_bool), sym_name = "mixed_type_constant_ops"}> ({
    ^bb0(%arg0: !torch_constant_int, %arg1: !torch_constant_float, %arg2: !torch_constant_bool):
      %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_constant_int
      %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_constant_float
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_constant_bool
      %3 = "torch.aten.add.Tensor"(%arg0, %0) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
      %4 = "torch.aten.add.Tensor"(%arg1, %1) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
      %5 = "torch.aten.eq.Tensor"(%arg2, %2) : (!torch_constant_bool, !torch_constant_bool) -> !torch_constant_bool
      "func.return"(%3, %4, %5) : (!torch_constant_int, !torch_constant_float, !torch_constant_bool) -> ()
  }) : () -> ()
}) : () -> ()