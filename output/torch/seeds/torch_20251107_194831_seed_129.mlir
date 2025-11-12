"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral, sym_name = "torch_tensor_tensor_add"}> ({
    ^bb0(%arg0: !torchvtensorliteral, %arg1: !torchvtensorliteral):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %1 = "torch.aten.size.int"(%arg0, %0) : (!torchvtensorliteral, !torchint) -> !torchint
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
      %3 = "torch.aten.slice.Tensor"(%arg0, %0, %2, %1, %0) : (!torchvtensorliteral, !torchint, !torchint, !torchint, !torchint) -> !torchvtensorliteral
      %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
      %5 = "torch.aten.slice.Tensor"(%arg1, %0, %2, %1, %0) : (!torchvtensorliteral, !torchint, !torchint, !torchint, !torchint) -> !torchvtensorliteral
      %6 = "torch.aten.add.Tensor"(%3, %5) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
      "func.return"(%6) : (!torchvtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()