"builtin.module"() ({
  "func.func"() <{function_type = (!torchv17TorchTensor, !torchv17TorchTensor) -> !torchv17TorchTensor, sym_name = "add_tensors"}> ({
    ^bb0(%arg0: !torchv17TorchTensor, %arg1: !torchv17TorchTensor):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torchv17TorchTensor, !torchv17TorchTensor) -> !torchv17TorchTensor
      "func.return"(%0) : (!torchv17TorchTensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchv17TorchTensor) -> !torchv17TorchTensor, sym_name = "transpose_tensor"}> ({
    ^bb0(%arg0: !torchv17TorchTensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchv17TorchInt
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv17TorchInt
      %2 = "torch.aten.transpose.int"(%arg0, %0, %1) : (!torchv17TorchTensor, !torchv17TorchInt, !torchv17TorchInt) -> !torchv17TorchTensor
      "func.return"(%2) : (!torchv17TorchTensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchv17TorchTensor) -> !torchv17TorchTensor, sym_name = "negate_tensor"}> ({
    ^bb0(%arg0: !torchv17TorchTensor):
      %0 = "torch.aten.neg"(%arg0) : (!torchv17TorchTensor) -> !torchv17TorchTensor
      "func.return"(%0) : (!torchv17TorchTensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchv17TorchTensor) -> !torchv17TorchTensor, sym_name = "relu_tensor"}> ({
    ^bb0(%arg0: !torchv17TorchTensor):
      %0 = "torch.aten.relu"(%arg0) : (!torchv17TorchTensor) -> !torchv17TorchTensor
      "func.return"(%0) : (!torchv17TorchTensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchv17TorchTensor) -> !torchv17TorchTensor, sym_name = "sqrt_tensor"}> ({
    ^bb0(%arg0: !torchv17TorchTensor):
      %0 = "torch.aten.sqrt"(%arg0) : (!torchv17TorchTensor) -> !torchv17TorchTensor
      "func.return"(%0) : (!torchv17TorchTensor) -> ()
  }) : () -> ()
}) : () -> ()