"builtin.module"() ({
  "func.func"() <{function_type = (!torchvvector, !torchvvector) -> !torchvvector, sym_name = "torch.aten.add$big_tensors"}> ({
  ^bb0(%arg0: !torchvvector, %arg1: !torchvvector):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torchvvector, !torchvvector) -> !torchvvector
    "func.return"(%0) : (!torchvvector) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchvvector) -> !torchvvector, sym_name = "torch.aten.neg$big_tensor"}> ({
  ^bb0(%arg0: !torchvvector):
    %0 = "torch.aten.neg"(%arg0) : (!torchvvector) -> !torchvvector
    "func.return"(%0) : (!torchvvector) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchvvector, !torchvvector) -> !torchvvector, sym_name = "torch.aten.mul$big_tensors"}> ({
  ^bb0(%arg0: !torchvvector, %arg1: !torchvvector):
    %0 = "torch.aten.mul"(%arg0, %arg1) : (!torchvvector, !torchvvector) -> !torchvvector
    "func.return"(%0) : (!torchvvector) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchvvector) -> !torchvvector, sym_name = "torch.aten.abs$big_tensor"}> ({
  ^bb0(%arg0: !torchvvector):
    %0 = "torch.aten.abs"(%arg0) : (!torchvvector) -> !torchvvector
    "func.return"(%0) : (!torchvvector) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torchvvector, sym_name = "torch.aten.vtensor.literal$big_vector"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<1234567890> : tensor<1000000xsi64>}> : () -> !torchvvector
    "func.return"(%0) : (!torchvvector) -> ()
  }) : () -> ()
}) : () -> ()