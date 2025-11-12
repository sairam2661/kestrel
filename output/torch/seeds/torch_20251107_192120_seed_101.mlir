"builtin.module"() ({
  "func.func"() <{function_type = () -> !torchv16, sym_name = "test_tensor_interactions"}> ({
    ^bb0():
      %0 = "torch.vtensor.literal"() <{value = dense<1.0> : tensor<2x2xf32>}> : () -> !torchv16
      %1 = "torch.vtensor.literal"() <{value = dense<2.0> : tensor<2x2xf32>}> : () -> !torchv16
      %2 = "torch.aten.add.Tensor"(%0, %1) : (!torchv16, !torchv16) -> !torchv16
      %3 = "torch.aten.view"(%2, %c2, %c2) : (!torchv16, !torchint, !torchint) -> !torchv16
      %4 = "torch.aten.slice.Tensor"(%3, %c0, %c0, %c2) : (!torchv16, !torchint, !torchint, !torchint) -> !torchv16
      %5 = "torch.aten.view"(%4, %c2) : (!torchv16, !torchint) -> !torchv16
      %6 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
      %7 = "torch.aten.item"(%5) : (!torchv16) -> !torchf32
      "func.return"(%7) : (!torchf32) -> ()
    }) : () -> ()
}) : () -> ()