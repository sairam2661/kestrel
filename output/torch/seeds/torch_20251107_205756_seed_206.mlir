"builtin.module"() ({
  "func.func"() <{function_type = (!torchvvector_type2xsi32, !torchvvector_type2xsi32) -> !torchvvector_type2xsi32, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: !torchvvector_type2xsi32, %arg1: !torchvvector_type2xsi32):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %3 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2) : (!torchvvector_type2xsi32, !torchint, !torchint, !torchint) -> !torchvvector_type1xsi32
    %4 = "torch.aten.slice.Tensor"(%arg1, %0, %1, %2) : (!torchvvector_type2xsi32, !torchint, !torchint, !torchint) -> !torchvvector_type1xsi32
    %5 = "torch.aten.add.Tensor"(%3, %4) : (!torchvvector_type1xsi32, !torchvvector_type1xsi32) -> !torchvvector_type1xsi32
    %6 = "torch.aten.view"(%5, %0) : (!torchvvector_type1xsi32, !torchint) -> !torchvvector_type2xsi32
    "func.return"(%6) : (!torchvvector_type2xsi32) -> ()
  }) : () -> ()
}) : () -> ()