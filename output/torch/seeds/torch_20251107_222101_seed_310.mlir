"builtin.module"() ({
  "func.func"() <{function_type = (!torchv0tensor, !torchv1tensor) -> !torchv1tensor, sym_name = "complex_function"}> ({
    ^bb0(%arg0: !torchv0tensor, %arg1: !torchv1tensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg0) : (!torchv0tensor, !torchv0tensor) -> !torchv0tensor
      %1 = "torch.prim.NumToTensor.Scalar"() <{value = 2.0 : f32}> : () -> !torchv1tensor
      %2 = "torch.aten.cat"(%0, %1) : (!torchv0tensor, !torchv1tensor) -> !torchv1tensor
      %3 = "torch.aten.eq.Tensor"(%2, %2) : (!torchv1tensor, !torchv1tensor) -> !torchv1tensor
      %4 = "torch.aten._shape_as_tensor"(%3) : (!torchv1tensor) -> !torchv0tensor
      %5 = "torch.aten.size.int"(%4) : (!torchv0tensor) -> !torchv1tensor
      "func.return"(%5) : (!torchv1tensor) -> ()
  }) : () -> ()
}) : () -> ()