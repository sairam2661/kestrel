"builtin.module"() ({
  "func.func"() <{function_type = (!torchvTensor, !torchvTensor) -> (!torchvTensor), sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torchvTensor, %arg1: !torchvTensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchvTensor
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchvTensor
      %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchvTensor
      %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torchvTensor, !torchvTensor, !torchvTensor) -> !torchvTensor
      %4 = "torch.aten.view"(%arg0, %3) : (!torchvTensor, !torchvTensor) -> !torchvTensor
      %5 = "torch.aten.slice.Tensor"(%arg1, %0, %1, %2) : (!torchvTensor, !torchvTensor, !torchvTensor, !torchvTensor) -> !torchvTensor
      %6 = "torch.aten.add.Tensor"(%4, %5) : (!torchvTensor, !torchvTensor) -> !torchvTensor
      "func.return"(%6) : (!torchvTensor) -> ()
  }) : () -> ()
}) : () -> ()