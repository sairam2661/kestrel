"builtin.module"() ({
  "func.func"() <{function_type = (!torchv10tensor, !torchv10tensor) -> !torchv10tensor, sym_name = "torch.aten.add.Tensor$basic"}> ({
  ^bb0(%arg0: !torchv10tensor, %arg1: !torchv10tensor):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchv10tensor, !torchv10tensor) -> !torchv10tensor
    "func.return"(%0) : (!torchv10tensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torchv10tensor, sym_name = "gen_tensor"}> ({
  ^bb0:
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchv10int
    %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchv10int
    %2 = "torch.constant.float"() <{value = 2.5 : f32}> : () -> !torchv10float
    %3 = "torch.constant.float"() <{value = 3.5 : f32}> : () -> !torchv10float
    %4 = "torch.vtensor.literal"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xf32>}> : () -> !torchv10tensor
    %5 = "torch.vtensor.literal"() <{value = dense<[[5, 6], [7, 8]]> : tensor<2x2xf32>}> : () -> !torchv10tensor
    %6 = "torch.aten.add.Tensor"(%4, %5) : (!torchv10tensor, !torchv10tensor) -> !torchv10tensor
    "func.return"(%6) : (!torchv10tensor) -> ()
  }) : () -> ()
}) : () -> ()