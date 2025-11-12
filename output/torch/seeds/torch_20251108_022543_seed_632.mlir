"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint, !torchint) -> !torchint, sym_name = "complex_add"}> ({
    ^bb0(%arg0: !torchint, %arg1: !torchint, %arg2: !torchint):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
      %1 = "torch.aten.add.Tensor"(%arg2, %0) : (!torchint, !torchint) -> !torchint
      "func.return"(%1) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()