"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "tensor_op_mixer"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torchfloat
      %2 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %0) : (!torchvtensor, !torchint, !torchint, !torchint) -> !torchvtensor
      %3 = "torch.aten.slice.Tensor"(%arg1, %0, %0, %0) : (!torchvtensor, !torchint, !torchint, !torchint) -> !torchvtensor
      %4 = "torch.aten.add.Tensor"(%2, %3) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %5 = "torch.aten.mul.Scalar"(%4, %1) : (!torchvtensor, !torchfloat) -> !torchvtensor
      "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()