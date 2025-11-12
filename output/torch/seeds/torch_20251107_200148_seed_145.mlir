"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvvector) -> !torchvvector, sym_name = "torch.cross_dialect_interaction"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvvector):
      %0 = "torch.constant.float"() <{value = 3.000000e+00 : f64}> : () -> !torchvfloat
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchvint
      %2 = "torch.aten.size.int"(%arg0, %1) : (!torchvtensor, !torchvint) -> !torchvint
      %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchvint
      %4 = "torch.prim.ListConstruct"(%2, %3) : (!torchvint, !torchvint) -> !torchvlist
      %5 = "torch.aten.reshape"(%arg0, %4) : (!torchvtensor, !torchvlist) -> !torchvvector
      %6 = "torch.aten.add.Tensor"(%5, %arg1) : (!torchvvector, !torchvvector) -> !torchvvector
      %7 = "torch.constant.none"() : () -> !torchvnone
      %8 = "torch.aten._make_per_tensor_quantized_tensor"(%6, %0, %3) : (!torchvvector, !torchvfloat, !torchvint) -> !torchvqvector
      %9 = "torch.aten.dequantize.self"(%8) : (!torchvqvector) -> !torchvvector
      "func.return"(%9) : (!torchvvector) -> ()
  }) : () -> ()
}) : () -> ()