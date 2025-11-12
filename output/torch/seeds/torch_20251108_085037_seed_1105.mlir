"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_i32, !torch_constant_i32) -> !torch_constant_i32, sym_name = "custom_mul_add"}> ({
    ^bb0(%arg0: !torch_constant_i32, %arg1: !torch_constant_i32):
      %0 = "torch.aten.mul.Tensor"(%arg0, %arg1) : (!torch_constant_i32, !torch_constant_i32) -> !torch_constant_i32
      %1 = "torch.constant.int"() <{value = 5 : i32}> : () -> !torch_constant_i32
      %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_constant_i32, !torch_constant_i32) -> !torch_constant_i32
      "func.return"(%2) : (!torch_constant_i32) -> ()
  }) : () -> ()
}) : () -> ()