"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_int, !torch_constant_int) -> !torch_constant_int, sym_name = "complex_add"}> ({
  ^bb0(%arg0: !torch_constant_int, %arg1: !torch_constant_int):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
    %1 = "torch.aten.item"(%0) : (!torch_constant_int) -> !torch_constant_int
    "func.return"(%1) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()