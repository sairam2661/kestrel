"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "torch_fuzzer_example"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
      %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchint
      %3 = "torch.constant.none"() : () -> !torchnone
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %5 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torchvtensor, !torchvtensor, !torchint) -> !torchvtensor
      %6 = "torch.aten._shape_as_tensor"(%4) : (!torchvtensor) -> !torchvtensor
      %7 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %2, %3, %6) : (!torchvtensor, !torchint, !torchint, !torchvtensor) -> !torchvtensor
      %8 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%7) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()