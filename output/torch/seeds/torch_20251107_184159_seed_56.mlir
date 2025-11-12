"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_int, !torch_constant_int) -> !torch_constant_int, sym_name = "add_and_slice"}> ({
    ^bb0(%arg0: !torch_constant_int, %arg1: !torch_constant_int):
      %0 = "torch.add.Tensor"(%arg0, %arg1) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_constant_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_constant_int
      %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_constant_int
      %4 = "torch.aten.slice.Tensor"(%0, %1, %2, %3, %3) : (!torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_constant_int
      "func.return"(%4) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()