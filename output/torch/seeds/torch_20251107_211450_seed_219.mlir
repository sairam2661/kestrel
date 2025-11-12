"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_int, !torch_constant_int) -> !torch_constant_int, sym_name = "torch.aten.add$with_constants"}> ({
  ^bb0(%arg0: !torch_constant_int, %arg1: !torch_constant_int):
    %0 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch_constant_int
    %1 = "torch.constant.int"() <{value = 20 : i64}> : () -> !torch_constant_int
    %2 = "torch.constant.int"() <{value = 30 : i64}> : () -> !torch_constant_int
    %3 = "torch.aten.add.Tensor"(%arg0, %0, %1) : (!torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_constant_int
    %4 = "torch.aten.add.Tensor"(%arg1, %2, %3) : (!torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_constant_int
    "func.return"(%4) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()