"builtin.module"() ({
  "func.func"() <{function_type = (!torchvTensorType, !torchvTensorType) -> !torchvTensorType, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torchvTensorType, %arg1: !torchvTensorType):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvTensorType, !torchvTensorType) -> !torchvTensorType
      %1 = "torch.aten.mul.Tensor"(%0, %0) : (!torchvTensorType, !torchvTensorType) -> !torchvTensorType
      %2 = "torch.aten.sin"(%1) : (!torchvTensorType) -> !torchvTensorType
      %3 = "torch.aten.cos"(%1) : (!torchvTensorType) -> !torchvTensorType
      %4 = "torch.aten.add.Tensor"(%2, %3) : (!torchvTensorType, !torchvTensorType) -> !torchvTensorType
      "func.return"(%4) : (!torchvTensorType) -> ()
  }) : () -> ()
}) : () -> ()