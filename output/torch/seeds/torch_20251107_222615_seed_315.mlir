"builtin.module"() ({
  "func.func"() <{function_type = (!torchvTensor_literal) -> !torchvTensor_literal, sym_name = "complex_tensor_manipulation"}> ({
    ^bb0(%arg0: !torchvTensor_literal):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
      %1 = "torch.constant.none"() : () -> !torchnone
      %2 = "torch.vtensor.literal"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> !torchvTensor_literal
      %3 = "torch.aten.size.int"(%2) : (!torchvTensor_literal) -> !torchint
      %4 = "torch.aten.slice.Tensor"(%2, %3, %3, %3) : (!torchvTensor_literal, !torchint, !torchint, !torchint) -> !torchvTensor_literal
      %5 = "torch.aten.add.Tensor"(%4, %4, %3) : (!torchvTensor_literal, !torchvTensor_literal, !torchint) -> !torchvTensor_literal
      %6 = "torch.aten.view"(%5, %3, %3) : (!torchvTensor_literal, !torchint, !torchint) -> !torchvTensor_literal
      %7 = "torch.aten.index_select"(%6, %3, %3) : (!torchvTensor_literal, !torchint, !torchint) -> !torchvTensor_literal
      %8 = "torch.aten.eq.Tensor"(%7, %6) : (!torchvTensor_literal, !torchvTensor_literal) -> !torchvTensor_literal
      %9 = "torch.aten.item"(%8) : (!torchvTensor_literal) -> !torchint
      %10 = "torch.constant.str"() <{value = "test"}> : () -> !torchstr
      %11 = "torch.prim.ListConstruct"(%9, %10, %1) : (!torchint, !torchstr, !torchnone) -> !torchlist
      "func.return"(%11) : (!torchlist) -> ()
  }) : () -> ()
}) : () -> ()