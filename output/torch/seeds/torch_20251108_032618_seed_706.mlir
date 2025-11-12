"builtin.module"() ({
  "func.func"() <{function_type = (!torchvTensorType, !torchvTensorType) -> !torchvTensorType, sym_name = "complex_fuzz_function"}> ({
    ^bb0(%arg0: !torchvTensorType, %arg1: !torchvTensorType):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
      %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torchfloat
      %2 = "torch.constant.int"() <{value = 5 : i32}> : () -> !torchint
      %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torchbool, !torchfloat, !torchint) -> !torchlist
      %4 = "torch.aten.slice.Tensor"(%arg0, %2, %2, %2) : (!torchvTensorType, !torchint, !torchint, !torchint) -> !torchvTensorType
      %5 = "torch.aten.view"(%4, %3) : (!torchvTensorType, !torchlist) -> !torchvTensorType
      %6 = "torch.aten.add.Tensor"(%arg1, %5) : (!torchvTensorType, !torchvTensorType) -> !torchvTensorType
      %7 = "torch.aten.eq.Tensor"(%6, %5) : (!torchvTensorType, !torchvTensorType) -> !torchbool
      "func.return"(%7) : (!torchbool) -> ()
  }) : () -> ()
}) : () -> ()