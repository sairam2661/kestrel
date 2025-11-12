"builtin.module"() ({
  "func.func"() <{function_type = (!torchvvector, !torchvvector) -> (!torchvvector), sym_name = "tensor_manipulation_function"}> ({
    ^bb0(%arg0: !torchvvector, %arg1: !torchvvector):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
      %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchint
      %4 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torchfloat
      %5 = "torch.constant.str"() <{value = "hello"}> : () -> !torchstr
      %6 = "torch.aten.size.int"(%arg0, %0) : (!torchvvector, !torchint) -> !torchint
      %7 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2) : (!torchvvector, !torchint, !torchint, !torchint) -> !torchvvector
      %8 = "torch.aten.index_select"(%arg1, %0, %3) : (!torchvvector, !torchint, !torchint) -> !torchvvector
      %9 = "torch.aten.cat"(%arg0, %arg1) : (!torchvvector, !torchvvector) -> !torchvvector
      %10 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchvvector, !torchvvector) -> !torchvvector
      %11 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %4, %0, %0) : (!torchvvector, !torchfloat, !torchint, !torchint) -> !torchvvector
      "func.return"(%11) : (!torchvvector) -> ()
  }) : () -> ()
}) : () -> ()