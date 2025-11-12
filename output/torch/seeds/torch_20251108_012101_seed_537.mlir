"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchint, !torchint) -> (!torchvtensor, !torchint, !torchint), sym_name = "complex_tensor_ops"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchint, %arg2: !torchint):
    %0 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torchint
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %3 = "torch.constant.none"() : () -> !torchnone
    %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchint) -> !torchvtensor
    %5 = "torch.aten.size.int"(%4, %1) : (!torchvtensor, !torchint) -> !torchint
    %6 = "torch.aten._shape_as_tensor"(%5) : (!torchint) -> !torchvtensor
    %7 = "torch.aten.eq.Tensor"(%arg2, %5) : (!torchint, !torchint) -> !torchbool
    %8 = "torch.prim.NumToTensor.Scalar"(%0) : (!torchint) -> !torchvtensor
    %9:3 = "torch.aten.cat"(%arg0, %8, %6) : (!torchvtensor, !torchvtensor, !torchvtensor) -> (!torchvtensor, !torchint, !torchint)
    "func.return"(%9#0, %9#1, %9#2) : (!torchvtensor, !torchint, !torchint) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> tensor<*xf32>, sym_name = "identity"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    "func.return"(%arg0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> tensor<*xf32>, sym_name = "simple_pipeline", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "func.call"(%arg0) <{callee = @identity}> : (tensor<*xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> tensor<*xf32>, sym_name = "complex_pipeline"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "func.call"(%arg0) <{callee = @simple_pipeline}> : (tensor<*xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()