"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint) -> !torchint, sym_name = "fuzz_example"}> ({
    ^bb0(%arg0: !torchint, %arg1: !torchint):
      %0 = "torch.aten.size.int"(%arg0) : (!torchint) -> !torchint
      %1 = "torch.aten.size.int"(%arg1) : (!torchint) -> !torchint
      %2 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
      %3 = "torch.prim.NumToTensor.Scalar"(%2) : (!torchint) -> !torchint
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
      %5 = "func.return"(%4) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()