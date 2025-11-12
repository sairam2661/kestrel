"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "complex_torch_operations"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.aten.cat"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %1 = "torch.aten.size.int"(%arg0) : (!torchvtensor) -> !torchint
      %2 = "torch.aten.size.int"(%arg1) : (!torchvtensor) -> !torchint
      %3 = "torch.aten.add.Tensor"(%1, %2) : (!torchint, !torchint) -> !torchint
      %4 = "torch.prim.NumToTensor.Scalar"(%3) : (!torchint) -> !torchvtensor
      %5 = "torch.aten._shape_as_tensor"(%4) : (!torchvtensor) -> !torchvtensor
      %6 = "torch.aten.eq.Tensor"(%5, %4) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%6) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()