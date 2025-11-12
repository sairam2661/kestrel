"builtin.module"() ({
  "func.func"() <{function_type = (!torchfloat, !torchint, !torchfloat) -> !torchfloat, sym_name = "mixed_ops$stress_test"}> ({
  ^bb0(%arg0: !torchfloat, %arg1: !torchint, %arg2: !torchfloat):
    %c0_i32 = "torch.constant.int"() <{value = 0 : i32}> : () -> !torchint
    %c1_i32 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torchint
    %0 = "torch.aten.add.Tensor"(%arg0, %arg2) : (!torchfloat, !torchfloat) -> !torchfloat
    %1 = "torch.aten.eq.Tensor"(%arg1, %c0_i32) : (!torchint, !torchint) -> !torchint
    %2 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torchint) -> !torchfloat
    %3 = "torch.aten.view"(%2, %c1_i32) : (!torchfloat, !torchint) -> !torchfloat
    %4 = "torch.aten.slice.Tensor"(%0, %c0_i32, %c0_i32, %c1_i32) : (!torchfloat, !torchint, !torchint, !torchint) -> !torchfloat
    "func.return"(%4) : (!torchfloat) -> ()
  }) : () -> ()
}) : () -> ()