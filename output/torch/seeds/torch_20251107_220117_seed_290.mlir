"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteraltensor2xi32tensor4xi32, !torchvtensorliteraltensor2xi32tensor4xi32) -> !torchvtensortensor4xi1, sym_name = "test_tensor_comparisons"}> ({
    ^bb0(%arg0: !torchvtensorliteraltensor2xi32tensor4xi32, %arg1: !torchvtensorliteraltensor2xi32tensor4xi32):
      %0 = "torch.vtensor.literal"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> !torchvtensortensor2xi32
      %1 = "torch.vtensor.literal"() <{value = dense<[[5, 6], [7, 8]]> : tensor<2x2xi32>}> : () -> !torchvtensortensor2xi32
      %2 = "torch.aten.cat"(%0, %1) : (!torchvtensortensor2xi32, !torchvtensortensor2xi32) -> !torchvtensortensor4xi32
      %3 = "torch.aten.eq.Tensor"(%2, %2) : (!torchvtensortensor4xi32, !torchvtensortensor4xi32) -> !torchvtensortensor4xi1
      "func.return"(%3) : (!torchvtensortensor4xi1) -> ()
  }) : () -> ()
}) : () -> ()