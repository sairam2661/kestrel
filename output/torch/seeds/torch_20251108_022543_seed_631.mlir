"builtin.module"() ({
  "func.func"() <{function_type = (!torchvint, !torchvint, !torchvint) -> !torchvint, sym_name = "fuzz_unusual_sequence"}> ({
    ^bb0(%arg0: !torchvint, %arg1: !torchvint, %arg2: !torchvint):
      %0 = "torch.prim.NumToTensor.Scalar"(%arg0) : (!torchvint) -> !torchvtensor
      %1 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torchvint) -> !torchvtensor
      %2 = "torch.aten.add.Tensor"(%0, %1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %3 = "torch.prim.NumToTensor.Scalar"(%arg2) : (!torchvint) -> !torchvtensor
      %4 = "torch.aten.cat"(%2, %3) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %5 = "torch.aten.size.int"(%4) : (!torchvtensor) -> !torchvint
      "func.return"(%5) : (!torchvint) -> ()
  }) : () -> ()
}) : () -> ()