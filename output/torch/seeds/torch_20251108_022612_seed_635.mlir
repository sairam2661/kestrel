"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint, !torchvtensor) -> !torchvtensor, sym_name = "fuzz_add_and_cat"}> ({
    ^bb0(%arg0: !torchint, %arg1: !torchint, %arg2: !torchvtensor):
      %0 = "torch.aten.add.Tensor"(%arg2, %arg0) : (!torchvtensor, !torchint) -> !torchvtensor
      %1 = "torch.aten.add.Tensor"(%0, %arg1) : (!torchvtensor, !torchint) -> !torchvtensor
      %2 = "torch.aten.size.int"(%1) : (!torchvtensor) -> !torchint
      %3 = "torch.prim.NumToTensor.Scalar"(%2) : (!torchint) -> !torchint
      %4 = "torch.aten.cat"(%1, %3) : (!torchvtensor, !torchint) -> !torchvtensor
      "func.return"(%4) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()