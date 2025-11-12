"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> (!torchvtensor), sym_name = "torch.tensor_comparison_and_type_conversion"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torchvtensor
      %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torchvtensor
      %2 = "torch.prim.NumToTensor.Scalar"(%0) : (!torchvtensor) -> !torchvtensor
      %3 = "torch.prim.NumToTensor.Scalar"(%1) : (!torchvtensor) -> !torchvtensor
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %5 = "torch.aten.eq.Tensor"(%4, %2) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()