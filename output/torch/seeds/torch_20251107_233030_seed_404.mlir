"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint) -> (!torchint, !torchint), sym_name = "fuzz_torch_int_ops"}> ({
  ^bb0(%arg0: !torchint, %arg1: !torchint):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
    %1 = "torch.aten.sub.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
    %2 = "torch.aten.mul.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
    %3 = "torch.aten.div.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
    %4 = "torch.aten.pow.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
    %5 = "torch.aten.mod.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
    "func.return"(%5, %4) : (!torchint, !torchint) -> ()
  }) : () -> ()
}) : () -> ()