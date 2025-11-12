"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantfloat) -> !torchfloat, sym_name = "complex_fuzz"}> ({
    ^bb0(%arg0: !torchconstantbool, %arg1: !torchconstantfloat):
      %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torchint
      %1 = "torch.constant.float"() <{value = -1.5 : f64}> : () -> !torchfloat
      %2 = "torch.constant.none"() : () -> !torchnone
      %3 = "torch.prim.NumToTensor.Scalar"(%0) : (!torchint) -> !torchvtensor
      %4 = "torch.prim.NumToTensor.Scalar"(%1) : (!torchfloat) -> !torchvtensor
      %5 = "torch.aten.add.Tensor"(%3, %4) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %6 = "torch.aten.item"(%5) : (!torchvtensor) -> !torchfloat
      "func.return"(%6) : (!torchfloat) -> ()
  }) : () -> ()
}) : () -> ()