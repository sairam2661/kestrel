"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint) -> !torchint, sym_name = "complex_addition"}> ({
    ^bb0(%arg0: !torchint, %arg1: !torchint):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %2 = "torch.aten.add.Tensor"(%0, %1) : (!torchint, !torchint) -> !torchint
      "func.return"(%2) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()