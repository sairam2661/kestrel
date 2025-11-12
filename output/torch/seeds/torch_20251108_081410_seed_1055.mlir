"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint, !torchint) -> !torchint, sym_name = "torch.aten.cat_with_add"}> ({
  ^bb0(%arg0: !torchint, %arg1: !torchint, %arg2: !torchint):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
    %1 = "torch.aten.cat"(%0, %arg2) : (!torchint, !torchint) -> !torchint
    "func.return"(%1) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()