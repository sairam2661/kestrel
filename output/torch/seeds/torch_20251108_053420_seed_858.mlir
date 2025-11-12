"builtin.module"() ({
  "func.func"() <{function_type = (!torchv10tensor, !torchv10tensor) -> (!torchv10tensor, !torchv10tensor), sym_name = "torch.aten.addcmul$basic"}> ({
  ^bb0(%arg0: !torchv10tensor, %arg1: !torchv10tensor):
    %0 = "torch.constant.float"() <{value = 5.000000e+00 : f64}> : () -> !torchfloat
    %1 = "torch.aten.mul.Tensor"(%arg0, %arg1) : (!torchv10tensor, !torchv10tensor) -> !torchv10tensor
    %2 = "torch.aten.add.Tensor"(%arg0, %1, %0) : (!torchv10tensor, !torchv10tensor, !torchfloat) -> !torchv10tensor
    %3 = "torch.aten.neg"(%arg1) : (!torchv10tensor) -> !torchv10tensor
    %4 = "torch.aten.add.Tensor"(%arg0, %3, %0) : (!torchv10tensor, !torchv10tensor, !torchfloat) -> !torchv10tensor
    "func.return"(%2, %4) : (!torchv10tensor, !torchv10tensor) -> ()
  }) : () -> ()
}) : () -> ()