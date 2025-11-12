"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantint, !torchconstantfloat) -> !torchconstantbool, sym_name = "torch.aten.eq.Tensor$complex"}> ({
    ^bb0(%arg0: !torchconstantbool, %arg1: !torchconstantint, %arg2: !torchconstantfloat):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchconstantint
      %1 = "torch.constant.float"() <{value = 1.0 : f32}> : () -> !torchconstantfloat
      %2 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torchconstantint) -> !torchconstantfloat
      %3 = "torch.aten.add.Tensor"(%arg2, %2, %0) : (!torchconstantfloat, !torchconstantfloat, !torchconstantint) -> !torchconstantfloat
      %4 = "torch.aten.eq.Tensor"(%arg2, %3) : (!torchconstantfloat, !torchconstantfloat) -> !torchconstantbool
      "func.return"(%4) : (!torchconstantbool) -> ()
  }) : () -> ()
}) : () -> ()