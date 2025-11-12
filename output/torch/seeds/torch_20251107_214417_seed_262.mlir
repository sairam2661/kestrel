"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral, !torchint) -> !torchint, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torchvtensorliteral, %arg1: !torchint):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %3 = "torch.constant.none"() : () -> !torchnone
      %4 = "torch.aten.index_select"(%arg0, %1, %arg1) : (!torchvtensorliteral, !torchint, !torchint) -> !torchvtensorliteral
      %5 = "torch.aten.add.Tensor"(%4, %2) : (!torchvtensorliteral, !torchint) -> !torchvtensorliteral
      %6 = "torch.aten.eq.Tensor"(%5, %arg0) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
      %7 = "torch.aten.sum"(%6) : (!torchvtensorliteral) -> !torchint
      "func.return"(%7) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()