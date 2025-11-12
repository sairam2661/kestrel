"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_constant_int, sym_name = "custom_fuzz_func"}> ({
  ^bb0(%arg0: !torch_constant_int, %arg1: !torch_constant_int, %arg2: !torch_constant_int, %arg3: !torch_constant_int, %arg4: !torch_constant_int, %arg5: !torch_constant_int):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
    %1 = "torch.aten.add.Tensor"(%arg2, %arg3) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
    %2 = "torch.aten.add.Tensor"(%arg4, %arg5) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
    %3 = "torch.aten.add.Tensor"(%0, %1) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
    %4 = "torch.aten.add.Tensor"(%3, %2) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
    "func.return"(%4) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()