"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint) -> !torchint, sym_name = "fuzz_add_multiply"}> ({
  ^bb0(%arg0: !torchint, %arg1: !torchint):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
    %1 = "torch.aten.add.Tensor"(%0, %arg0) : (!torchint, !torchint) -> !torchint
    %2 = "torch.aten.add.Tensor"(%1, %arg1) : (!torchint, !torchint) -> !torchint
    %3 = "torch.aten.add.Tensor"(%2, %arg0) : (!torchint, !torchint) -> !torchint
    %4 = "torch.aten.add.Tensor"(%3, %arg1) : (!torchint, !torchint) -> !torchint
    "func.return"(%4) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()