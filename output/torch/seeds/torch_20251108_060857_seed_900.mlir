"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "rare_combination_func"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
      %2 = "torch.prim.ListConstruct"(%0, %0) : (!torchint, !torchint) -> !torchlist
      %3 = "torch.aten.size.int"(%arg0, %0) : (!torchvtensor, !torchint) -> !torchint
      %4 = "torch.prim.NumToTensor.Scalar"(%3) : (!torchint) -> !torchvtensor
      %5 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %6 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %7 = "torch.aten._make_per_tensor_quantized_tensor"(%6, %0, %0, %1) : (!torchvtensor, !torchint, !torchint, !torchbool) -> !torchvtensor
      "func.return"(%7) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()