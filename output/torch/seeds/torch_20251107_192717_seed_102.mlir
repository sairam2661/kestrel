"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchint, !torchbool) -> !torchvtensor, sym_name = "custom_fuzz_case"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchint, %arg2: !torchbool):
      %0 = "torch.aten.size.int"(%arg0) : (!torchvtensor) -> !torchint
      %1 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torchint) -> !torchvtensor
      %2 = "torch.aten.add.Tensor"(%arg0, %1, %1) : (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
      %4 = "torch.aten.eq.Tensor"(%arg2, %3) : (!torchbool, !torchbool) -> !torchbool
      %5 = "torch.vtensor.literal"() <{value = dense<2> : tensor<si32>}> : () -> !torchvtensor
      %6 = "torch.aten.cat"(%2, %5) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%6) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()