"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "complex_nested_ops"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchint
      %2 = "torch.constant.none"() : () -> !torchnone
      %3 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %1) : (!torchvtensor, !torchint, !torchint, !torchint) -> !torchvtensor
      %4 = "torch.aten.index_select"(%arg1, %0, %1) : (!torchvtensor, !torchint, !torchint) -> !torchvtensor
      %5 = "torch.aten.add"(%3, %4) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchvtensor) -> !torchvtensor, sym_name = "tensor_manipulation"}> ({
    ^bb0(%arg0: !torchvtensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %1 = "torch.constant.none"() : () -> !torchnone
      %2 = "torch.aten.size.int"(%arg0, %0) : (!torchvtensor, !torchint) -> i64
      %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %4 = "torch.prim.NumToTensor.Scalar"(%2) : (i64) -> !torchvtensor
      %5 = "torch.aten.add"(%arg0, %4) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()