"builtin.module"() ({
  "func.func"() <{function_type = (!torchv14tensor, !torchv14tensor, !torchv14tensor) -> !torchv14tensor, sym_name = "torch.aten._make_per_tensor_quantized_tensor"}> ({
  ^bb0(%arg0: !torchv14tensor, %arg1: !torchv14tensor, %arg2: !torchv14tensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchv14int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv14int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchv14int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torchv14int, !torchv14int, !torchv14int) -> !torchv14list
    %4 = "torch.prim.NumToTensor.Scalar"(%0) : (!torchv14int) -> !torchv14tensor
    %5 = "torch.aten.add.Tensor"(%arg0, %4) : (!torchv14tensor, !torchv14tensor) -> !torchv14tensor
    %6 = "torch.aten._make_per_tensor_quantized_tensor"(%5, %arg1, %arg2, %3) : (!torchv14tensor, !torchv14tensor, !torchv14tensor, !torchv14list) -> !torchv14tensor
    "func.return"(%6) : (!torchv14tensor) -> ()
  }) : () -> ()
}) : () -> ()