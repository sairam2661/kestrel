"builtin.module"() ({
  "func.func"() <{function_type = (!torchnone, !torchint) -> (!torchbool), sym_name = "torch_complex_op"}> ({
    ^bb0(%arg0: !torchnone, %arg1: !torchint):
      %0 = "torch.constant.bool"() <{value = false}> : () -> !torchbool
      %1 = "torch.constant.int"() <{value = 123 : i64}> : () -> !torchint
      %2 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torchfloat
      %3 = "torch.vtensor.literal"() <{value = dense<1.000000e+00> : tensor<2x2xf32>}> : () -> !torchvtensor2x2xf32
      %4 = "torch.aten.size.int"(%3) : (!torchvtensor2x2xf32) -> !torchint
      %5 = "torch.aten.eq.Tensor"(%4, %1) : (!torchint, !torchint) -> !torchbool
      %6 = "torch.prim.ListConstruct"(%1, %1, %1) : (!torchint, !torchint, !torchint) -> !torchlistint
      %7 = "torch.constant.str"() <{value = "hello"}> : () -> !torchstr
      %8 = "torch.vtensor.literal"() <{value = dense<2.000000e+00> : tensor<2x2xf32>}> : () -> !torchvtensor2x2xf32
      %9 = "torch.aten.add.Tensor"(%3, %8) : (!torchvtensor2x2xf32, !torchvtensor2x2xf32) -> !torchvtensor2x2xf32
      %10 = "torch.aten.view"(%9, %6) : (!torchvtensor2x2xf32, !torchlistint) -> !torchvtensor3x2xf32
      %11 = "torch.aten._shape_as_tensor"(%10) : (!torchvtensor3x2xf32) -> !torchtensor1xi64
      %12 = "torch.aten.cat"(%10, %11) : (!torchvtensor3x2xf32, !torchtensor1xi64) -> !torchvtensor3x3xf32
      "func.return"(%5) : (!torchbool) -> ()
  }) : () -> ()
}) : () -> ()