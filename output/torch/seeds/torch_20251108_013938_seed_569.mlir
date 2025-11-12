"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchint) -> !torchint, sym_name = "fuzz_edge_case"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchint):
      %0 = "torch.aten.size.int"(%arg0) : (!torchvtensor) -> !torchint
      %1 = "torch.aten._shape_as_tensor"(%arg0) : (!torchvtensor) -> !torchvtensor
      %2 = "torch.aten.add.Tensor"(%0, %arg1) : (!torchint, !torchint) -> !torchint
      %3 = "torch.aten.eq.Tensor"(%2, %arg1) : (!torchint, !torchint) -> !torchbool
      %4 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torchint) -> !torchvtensor
      %5 = "torch.aten.cat"(%4, %1) : (!torchvtensor, !torchint) -> !torchvtensor
      "func.return"(%3) : (!torchbool) -> ()
  }) : () -> ()
}) : () -> ()